<?php
namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\Admin\Newstickermodel;

class NewstickerController extends BaseController
{
    public function index()
    {

        echo "Silence is golden";

    }

    public function __construct()
    {
        $this->Newstickermodel = new Newstickermodel();

    }

    public function SetUpnewsTicker()
    {
        $data['category'] = $this->Newstickermodel->getAllticker();
        echo view('admin/layouts/adminheader');
        echo view('admin/news_ticker', $data);
        echo view('admin/layouts/adminfooter');
    }

    public function saveNewsTicker()
    {
        $cat_id = $this->request->getPost('cat_id');

        // Truncate the new_ticker table before inserting new records
        $this->Newstickermodel->truncate();

        foreach ($cat_id as $ca) {
            $cats[] = ['category_id' => $ca];
        }
        if ($this->Newstickermodel->insertBatch($cats)) {

            return redirect()->to('news-ticker')->with('success', 'Changes Saved Sucefully');
        }else{

            return redirect()->to('news-ticker')->with('errors', 'something Went wrong. Please try again.');

        }

    }

}
