<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\Admin\EmployeelayoutModel;
use App\Models\Admin\EmployeeModel;
use CodeIgniter\HTTP\URI;

class EmployeeController extends BaseController
{
    public function index()
    {
        echo "Silence is golden";
    }

    public function __construct()
    {
        $this->employeeModel = new EmployeeModel();
        $this->employeelayoutModel = new EmployeelayoutModel();

        $this->uri = service('uri');

    }

    public function employeeList()
    {

        $data['employeeList'] = $this->employeeModel->getAllEmployee();
        $data['deletedEmployee'] = $this->employeeModel->where('deleteStatus', '1')->findAll();

        // print_r($data); die;
        echo view('admin/layouts/adminheader');
        echo view('admin/employeeList', $data);
        echo view('admin/layouts/adminfooter');
    }

    public function employeeSetup()
    {
        $employeeId = $this->request->getGet('epmloyeeId');

        $data['singleEmployee'] = $this->employeeModel->getEmployeeById($employeeId);
        $data['allemployee'] = $this->employeeModel->findAll();

        $employee = $this->employeeModel->where('deleteStatus', '0')->orderBy('employeeOrder', 'DESC')->first();

        $last_add_order = $employee ? $employee['employeeOrder'] : null; // Check if $employee is not null
        $data['last_add_order'] = $last_add_order + 1;

        echo view('admin/layouts/adminheader');
        echo view('admin/employeeeditor', $data);
        echo view('admin/layouts/adminfooter');
    }

    public function saveEmployee()
    {
        $featured_image = '';
        $employeeId = $this->uri->getSegment(2);
        $insertBefore = $this->request->getPost('insertBefore');

        if (!empty($insertBefore)) {

            $employeeyOrder = $this->employeeModel->where('employeeId', $insertBefore)->first();
            $employeeyOrder = $employeeyOrder['employeeOrder'];
        } else {

            $employeeyOrder = $this->request->getPost('employeeOrder');

            // echo $employeeyOrder; die;

        }

        if (!empty($employeeId)) {

            $data = $this->employeeModel->getEmployeeById($employeeId);
            $featured_image = $data['image'];
        }

        // echo $employeeId; die;
        $validation = \Config\Services::validation();
        $validation->setRules([
            'employname' => 'required',
            'designation' => 'permit_empty',
            'email' => 'valid_email|permit_empty',
            'mobile' => 'permit_empty',
            'featured_image' => 'permit_empty',
            'employeeOrder' => 'permit_empty|integer',
        ]);

        if (!$validation->withRequest($this->request)->run()) {
            return redirect()->back()->withInput()->with('errors', $validation->getErrors());
        }

        $file = $this->request->getFile('featured_image');

        if ($file && $file->isValid() && !$file->hasMoved()) {

            if (!in_array($file->getExtension(), ['jpg', 'jpeg', 'png', 'gif'])) {
                return redirect()->back()->withInput()->with('errors', 'Invalid image file type. Please upload jpg, jpeg, png, gif types');
            } elseif ($file->getSize() > 10485760) { // 10 MB in bytes
                return redirect()->back()->withInput()->with('errors', 'Filesize exceeds. Please upload file less than 10MB');
            }

            $employeeFile = $file->getRandomName();
            if ($file->move(FCPATH . 'assets/uploads', $employeeFile)) {
                $featured_image = $employeeFile;
            } else {
                return redirect()->back()->withInput()->with('errors', 'Failed to upload the image.');
            }
        }

        $data = [
            'employeeId' => $employeeId,
            'employname' => $this->request->getPost('employname'),
            'designation' => $this->request->getPost('designation'),
            'email' => $this->request->getPost('email'),
            'mobile' => $this->request->getPost('mobile'),
            'image' => $featured_image,
            'employeeOrder' => $employeeyOrder,
            'level' => $this->request->getPost('level'),
            'serviceCategory' => $this->request->getPost('serviceCategory'),
            'employeeIdnUm' => $this->request->getPost('employeeIdnUm'),
            'address' => $this->request->getPost('address'),
            'activeStatus' => $this->request->getPost('activeStatus') ? 1 : 0,
            'addedby' => 1,
        ];

        if (!empty($insertBefore)) {
            $this->incrementEmployeeOrder($insertBefore);

        }

        $this->employeeModel->save($data);

        if (empty($employeeId)) {
            return redirect()->to('/add-employee')->with('success', 'Employee added successfully.');
        } else {
            return redirect()->to('/add-employee' . ('?epmloyeeId=' . $employeeId . '&&employeeName=' . $this->request->getPost('employname')))->with('success', 'Employee updated successfully.');
        }
    }

    private function incrementEmployeeOrder($insertBefore)
{
    $employee = $this->employeeModel->where('employeeId', $insertBefore)->first();
    if ($employee) {
        $employeeOrder = $employee['employeeOrder'];
        $this->employeeModel
            ->where('employeeOrder >=', $employeeOrder)
            ->set('employeeOrder', 'employeeOrder + 1', false)
            ->update();
    }
}


    public function getEmployeeTrashList()
    {

        $data['employeeTrashList'] = $this->employeeModel->where('deleteStatus', '1')->findAll();
        echo view('admin/layouts/adminheader');
        echo view('admin/employeeTrashBox', $data);
        echo view('admin/layouts/adminfooter');

    }

    public function changeDeleteStatus()
    {
        $employeeId = $this->request->getGet('epmloyeeId');
        updatePage($this->employeeModel, $employeeId, ['deleteStatus' => '1'], 'Deleted');

        return redirect()->to('/employee-list')->with('success', 'Employee deleted successfully.');

    }

    public function deletemultipleEmployee()
    {

        $postID = $this->request->getPost('itemID');
        $bulkAction = $this->request->getPost('bulkAction');
        if (empty($bulkAction)) {

            return redirect()->back()->with('errors', 'Please select action.');
        }

        if (empty($postID)) {

            return redirect()->back()->with('errors', 'Please select items.');
        }

        $employeeIdArray = explode(',', $postID);

        if ($bulkAction == '1') {

            foreach ($employeeIdArray as $id) {
                updatePage($this->employeeModel, $id, ['deleteStatus' => '1'], 'Deleted');
            }

            return redirect()->to('employee-list')->with('success', 'Deleted Succesfully.');
        }

    }

    public function deleteSelectedEmployeePermanently()
    {
        $employeeId = $this->request->getPost('itemID');
        $bulkAction = $this->request->getPost('bulkAction');

        if (empty($bulkAction)) {
            return redirect()->back()->with('errors', 'Please select action.');
        }

        if (empty($employeeId)) {
            return redirect()->back()->with('errors', 'Page not selected.');
        }

        $employeeIdArray = explode(',', $employeeId);

        foreach ($employeeIdArray as $id) {
            if (!is_numeric($id)) {

                return redirect()->back()->with('errors', 'please select Page.');
            }
        }

        if ($bulkAction == '1') {
            foreach ($employeeIdArray as $id) {
                $this->employeeModel->delete($id);
            }

            return redirect()->to('get-employee-trash-list')->with('success', 'Deleted Successfully.');
        } elseif ($bulkAction == '2') {

            foreach ($employeeIdArray as $id) {
                updatePage($this->employeeModel, $id, ['deleteStatus' => '0'], 'Restored');
            }
            return redirect()->to('get-employee-trash-list')->with('success', 'Restored Successfully.');
        }

        return redirect()->back()->with('errors', 'Invalid request');
    }

    public function deleteAllEmployeePermanently()
    {

        $this->employeeModel->where('deleteStatus', '1')->delete();
        return redirect()->to('get-employee-trash-list')->with('success', 'Recyclebin Empty');
    }

    public function manageEmployeeLayout() {
        $selectedEmployee = [];
        $data['employeeList'] = $this->employeeModel->where('deleteStatus', '0')->findAll();
        $employeeLayouts = $this->employeelayoutModel->getEmployeeLayoutList();
    
        if (!empty($employeeLayouts)) {
            $employeeIds = [];
            foreach ($employeeLayouts as $layout) {
                $ids = explode(',', $layout['employeeId']);
                $employeeIds = array_merge($employeeIds, $ids);
            }
            $employeeIds = array_unique($employeeIds);
            $selectedEmployee = $this->employeeModel->whereIn('employeeId', $employeeIds)->findAll();
        }
    
        echo "<pre>";
        print_r($selectedEmployee);
        die;
    
        echo view('admin/layouts/adminheader');
        echo view('admin/employeeLayoutSetup', $data);
        echo view('admin/layouts/adminfooter');
    }
    
    

    public function saveEmployeeLayout()
    {

        $employeeId = $this->request->getPost('employeeId');
        $orderBy = $this->request->getPost('orderBy');
        $emlayoutId = '';

        $employeeId = implode(',', $employeeId);

        $data = array(
            'emlayoutId' => $emlayoutId,
            'employeeId' => $employeeId,
            'order_by' => $orderBy,
        );

        if ($this->employeelayoutModel->save($data)) {

            return redirect()->to('employee-layout')->with('success', 'Layout created Succesfully');
        }
    }


    public function deletethisemployee(){

        $employeeId = $this->request->getGet('employeeId');
        $this->employeeModel->where('employeeId',$employeeId)->delete();
        if (!empty($employeeId)) {
            return redirect()->to('/get-employee-trash-list')->with('success', 'Employee deleted Permanently.');
        
        }
    }

}