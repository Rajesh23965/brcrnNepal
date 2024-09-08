<?php

namespace App\Controllers\Frontend;

use App\Controllers\BaseController;
use App\Libraries\NepaliDateNew;
use App\Models\Admin\Categorymodel;
use App\Models\Admin\Footermodel;
use App\Models\Admin\Gallerymodel;
use App\Models\Admin\Headermodel;
use App\Models\Admin\Introductionmodel;
use App\Models\Admin\Menumodel;
use App\Models\Admin\Navigationmodel;
use App\Models\Admin\Newstickermodel;
use App\Models\Admin\Officermodel;
use App\Models\Admin\Pagemodel;
use App\Models\Admin\Popupmodel;
use App\Models\Admin\Postmodel;
use App\Models\Admin\Slidermodel;
use App\Models\Admin\Tabmodel;
use App\Models\Admin\Topbarmodel;
use App\Models\Admin\VideoModel;
use App\Models\Admin\Visitcountermodel;
use App\Models\Admin\EmployeelayoutModel;
use App\Models\Admin\EmployeeModel;
use App\Models\Admin\RelatedLinkModel;
use App\Models\Admin\LocationModel;





class Home extends BaseController
{
    public function __construct()
    {
        $this->uri = service('uri');
        $this->topbarModel = new Topbarmodel();
        $this->headerModel = new Headermodel();
        $this->footerModel = new Footermodel();
        $this->menuModel = new Menumodel();
        $this->newsTicker = new Newstickermodel();
        $this->sliderModel = new Slidermodel();
        $this->officerModel = new Officermodel();
        $this->introductionModel = new Introductionmodel();
        $this->tabModel = new Tabmodel();
        $this->postModel = new Postmodel();
        $this->pageModel = new Pagemodel();
        $this->categoryModel = new Categorymodel();
        $this->navigationModel = new Navigationmodel();
        $this->galleryModel = new Gallerymodel();
        $this->popupModel = new Popupmodel();
        $this->visitcounterModel = new Visitcountermodel();
        $this->NepaliDateNew = new NepaliDateNew();
        $this->videoModel = new VideoModel();
        $this->employeelayoutModel = new EmployeelayoutModel();
        $this->employeeModel = new EmployeeModel();
        $this->relatedlinkModel = new RelatedLinkModel();
        $this->locationModel = new LocationModel();





        // $this->nepaliCalendar = new NepaliCalender();
    }

    public function index()
    {

        $data = $this->getCommonData();
        $data['mainSlider'] = $this->sliderModel->getAllSlider();
        $data['officers'] = $this->officerModel->getAllOfficer();
        $data['intro'] = $this->introductionModel->singleData($id = 1);
        $data['get_tab'] = $this->tabModel->getAllTabsList();
        $data['get_post_list_of_tab'] = $this->postModel->getAllpostListFortab();
        $data['navList'] = $this->navigationModel->getAllTab();
        $data['galleryList'] = $this->galleryModel->getAllpost();
        $data['popuplist'] = $this->popupModel->getPopup(); // this is
        $data['visitor'] = $this->visitcounterModel->getAllVisitor();
        $data['video'] = $this->videoModel->getLastVideo();
        $data['relatedLinks'] = $this->relatedlinkModel->orderBy('orderBY','Asc')->findAll();
        $data['location'] = $this->locationModel->where('id','1')->first();
        foreach ($data['get_post_list_of_tab'] as &$post) {
            $added_on = $post['added_on'];
            $bsDate = $this->NepaliDateNew->getNepaliDate($added_on);
            $post['added_on'] = $bsDate;
        }

        $this->loadCommonViews($data);
        echo view('frontend/home', $data);
        echo view('frontend/footer', $data);

    }

    private function loadCommonViews($data)
    {
        $data['news_ticker_post'] = $this->newsTicker->getAllpost();
        $data['request'] = $this->request;
        echo view('frontend/topBar', $data);
        echo view('frontend/header', $data);
        echo view('frontend/menu', $data);
    }

    private function getCommonData()
    {
        $data['uri'] = $this->uri;
        $data['today'] = $this->NepaliDateNew->getNepaliDate(date('Y-m-d'));

        // print_r($data['today']); die;
        $data['topbar'] = $this->topbarModel->singleData($id = '1');
        $data['header'] = $this->headerModel->singleData($id = '1');
        $data['get_menubar'] = $this->menuModel->getAllmenu();
        $data['footer_tbl'] = $this->footerModel->getAllfooter();
        return $data;
    }

    public function page()
    {

        $id = $this->request->getGET('id');
        $data = $this->getCommonData();
        $data['singlePage'] = $this->pageModel->getSinglePageData($id);
        $data['officers'] = $this->officerModel->getAllOfficer();
        $this->loadCommonViews($data);
        echo view('frontend/singlepage', $data);
        echo view('frontend/footer');
    }

    public function category()
    {

        $id = $this->request->getGET('id');

        $data = $this->getCommonData();
        $data['category'] = $this->categoryModel->getCategoryById($id);
        $data['get_post_by_category_id'] = $this->postModel->postforcategory($id);
        $data['category_list'] = $this->categoryModel->getAllcategoryList();
        $this->loadCommonViews($data);
        echo view('frontend/category');
        echo view('frontend/footer');

    }

    public function post()
    {

        $id = $this->request->getGET('id');
        $data = $this->getCommonData();

        // $data['category']= $this->categoryModel->getCategoryById($id);
        $data['get_post_details_by_id'] = $this->postModel->getSinglePostData($id);
        // $data['category_list'] = $this->categoryModel->getAllcategoryList();
        $this->loadCommonViews($data);
        echo view('frontend/singlepost');
        echo view('frontend/footer');
    }

    public function Officerprofile()
    {

        $id = $this->request->getGET('id');
        $data = $this->getCommonData();
        $data['officer_by_id'] = $this->officerModel->singleData($id);
        $this->loadCommonViews($data);
        echo view('frontend/officer', $data);
        echo view('frontend/footer');
    }

    public function setVisitorCounter()
    {
        $ipAddress = $this->request->getGet('ip');
        $date = date("Y-m-d");

        $counter = [
            'systemIp' => $ipAddress,
            'visitedTimes' => 1,
            'added_on' => $date,
        ];

        $existingCounter = $this->visitcounterModel->getByIpAndDate($ipAddress, $date);

        if ($existingCounter) {
            $counter['counterId'] = $existingCounter['counterId'];
            $counter['visitedTimes'] = $existingCounter['visitedTimes'] + 1;
        }

        $this->visitcounterModel->save($counter);
    }

    public function videoGallery()
    {

        $data = $this->getCommonData();
        $this->loadCommonViews($data);
        $data['videos'] = $this->videoModel->findAll();

        echo view('frontend/videoGallery', $data);
        echo view('frontend/footer');

    }


    public function employeeList(){

        $data = $this->getCommonData();
        $this->loadCommonViews($data);
        
        $data['employeeList'] = $this->employeeModel->getAllEmployeeWithLayout();


        // echo "<pre>";
        // print_r($data['employeeList']); die;

        echo view('frontend/employee',$data);
        echo view('frontend/footer');
    }

}
