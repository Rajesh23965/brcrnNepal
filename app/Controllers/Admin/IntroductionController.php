<?php
namespace App\Controllers\Admin;
use App\Controllers\BaseController;
use App\Models\Admin\Introductionmodel;
use App\Models\Admin\Mediamodel;

class IntroductionController extends BaseController
{

    public function index()
    {

        echo "Silence is golder";
    }

    public function __construct()
    {

        $this->Introductionmodel = new Introductionmodel();
        $this->mediaModel = new Mediamodel();
    }

    public function setupIntroduction()
    {

        $id = 1;
        $medaiObj = $this->mediaModel;        
        $mediaList = getMediaList('document_tbl',$medaiObj);
        $data['intro'] = $this->Introductionmodel->singleData($id);
        echo view('admin/layouts/adminheader');
        echo view('admin/introduction', $data+$mediaList);
        echo view('admin/layouts/adminfooter');
    }

    public function saveIntroduction()
    {

        $id = 1;
        $title = $this->request->getPost('title');
        $description = $this->request->getPost('description');

        $introDuction = array(

            'id' => $id,
            'title' => $title,
            'description' => $description,
        );

        $this->Introductionmodel->save($introDuction);

        return redirect()->to('introduction-setup')->with('success', 'Changes Saved Succesfully');

    }

}