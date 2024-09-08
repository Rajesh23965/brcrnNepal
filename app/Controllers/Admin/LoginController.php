<?php
namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\Admin\Headermodel;
use App\Models\Admin\Usermodel;
use App\Models\Admin\Loginattemptsmodel;



class LoginController extends BaseController
{

    public function index()
    {
        echo "Silence is golden";
    }

    public function __construct()
    {
        $this->userModel = new Usermodel();
        $this->headerModel = new Headermodel();
        $this->loginattemptsModel = new Loginattemptsmodel();

        $this->uri = service('uri');

    }

    public function login()
    {

        if ($this->session->get('logged_in')) {
            return redirect()->to('dashboard');
        }

        if ($this->isMaxLoginAttemptsExceeded()) {
            $this->session->setFlashdata('btn', '<button class="btn w-100 btn-outline-primary btn-block mb-2" type="submit">Login</button>');
        } else {
            $this->session->setFlashdata('btn', '<p class="text-danger text-center">Multiple attempts reached. Please try after 15 Minutes</p>');
        }

        $data['public_header'] = $this->userModel->getAllUser();

        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');

        $hashedString = (!empty($password)) ? md5($password) : '';

        if (!empty($username) && !empty($hashedString)) {

            $user = $this->userModel->getDataByemail($username);

            if (!empty($user['password']) && $hashedString === $user['password']) {

                $this->clearlogindetails();
                $sessionData = [
                    'logged_in' => true,
                    'fullname' =>$user['first_name'].' '.$user['middle_name'].' '.$user['last_name'],
                    'role'  =>$user['role'],
                    'gender'  =>$user['gender'],
                    'status'  =>$user['status'],
                    'username' => $user['username'],
                    'email' => $user['email'],
                    'userImage' => $user['userImage'],
                    'id' => $user['id'],
                    'role' => $user['role'],
                ];
                $header = $this->headerModel->singleData($id = 1);
                $sessionData['officeName'] = $header['office_name'];
                $sessionData['officeLocation'] = $header['office_location'];
                $sessionData['favicon'] = $header['left_logo'];

                $this->session->set($sessionData);
                return redirect()->to('dashboard');
            } else {

                $this->saveloginattempts();
                $this->session->setFlashdata('msg', 'Invalid login details..!!');
                return view('admin/login');
            }
        } else {
            // If username or password is empty, load login view
            return view('admin/login', $data);
        }
    }

    private function isMaxLoginAttemptsExceeded()
    {
        $maxAttempts = 4; // Maximum number of login attempts allowed
        $clientIP = $this->request->getIPAddress(true);
        // echo $clientIP; die;
        
        $query = $this->loginattemptsModel->getAllIpAddress($clientIP);
        $count = count($query);

        if ($count >= 3 && $count <= 4) {
            $this->session->setFlashdata('warning_msg', '<p class="text-warning text-center">Warning !! You have attempted multiple times.</p>');
        } else {
            $this->session->setFlashdata('warning_msg', ''); // Clear the warning message if not needed
        }

        if ($count <= $maxAttempts) {
            return true;
        } else {
            return false;
        }

    }

    private function saveloginattempts()
    {
        $ipAddress = $this->request->getIPAddress(true);
        $this->loginattemptsModel->save(array('ip_address' => $ipAddress));
    }

    private function clearlogindetails()
    {
        $ipAddress = $this->request->getIPAddress(true);
        $this->loginattemptsModel->truncate();
    }

    public function logout()
    {
        // Load the session library
        $session = session();

        // Remove user-specific session data
        $session->remove(['logged_in', 'username', 'email', 'id', 'role']);

        // Redirect the user to the login page or any other page after logout
        return redirect()->to('login');
    }

}
