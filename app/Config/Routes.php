<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->get('/', 'Frontend\Home::index');
$routes->get('getTimestamp','Frontend\Home::getTimeStamp');
$routes->get('/page', 'Frontend\Home::page');
$routes->get('/category', 'Frontend\Home::category');
$routes->get('/post', 'Frontend\Home::post');
$routes->get('officer', 'Frontend\Home::Officerprofile');
$routes->get('set-visitor-counter', 'Frontend\Home::setVisitorCounter');
$routes->get('video-gallery','Frontend\Home::videoGallery');
$routes->get('get-employee-list','Frontend\Home::employeeList');


$routes->group('', ['filter' => 'islogin'], function ($routes) {
        $routes->get('dashboard', 'Admin\Admincontroller::index');
        $routes->get('view-all-page-list', 'Admin\PageController::getAllPageList');
        $routes->get('add-page', 'Admin\PageController::ViewPageEditor');
        // Add more routes here if needed

        /** Page Route Starts from here */

        $routes->get('edit-page/(:num)', 'Admin\PageController::viewPageEditor/$1');
        $routes->post('save-page', 'Admin\PageController::savePage');
        $routes->post('save-page/(:num)', 'Admin\PageController::savePage/$1');
        $routes->get('delete-page/(:num)', 'Admin\PageController::deletePage/$1');
        $routes->get('deactivate-page/(:num)', 'Admin\PageController::deactivatePage/$1');
        $routes->get('activate-page/(:num)', 'Admin\PageController::activatePage/$1');
        /** Page Route Starts from here */

        /** Post Route Starts from here */
        $routes->get('view-all-post-list', 'Admin\PostController::getAllpostList');
        $routes->get('add-post', 'Admin\PostController::viewpostEditor');
        $routes->get('edit-post/(:num)', 'Admin\PostController::viewpostEditor/$1');
        $routes->post('save-post', 'Admin\PostController::savepost');
        $routes->post('save-post/(:num)', 'Admin\PostController::savepost/$1');
        $routes->get('delete-post/(:num)', 'Admin\PostController::deletepost/$1');
        $routes->get('deactivate-post/(:num)', 'Admin\PostController::deactivatepost/$1');
        $routes->get('activate-post/(:num)', 'Admin\PostController::activatepost/$1');
        $routes->get('remove-feature-image/(:num)', 'Admin\PostController::removeFeatureImage/$1');
        $routes->get('delete-post-file/(:num)', 'Admin\PostController::downloadFileremove/$1');
         /** Post Route Ends from here */

        /** Media Route Starts from here */
        $routes->get('getImageGallery', 'Admin\MediaController::getMediaList');
        $routes->post('add-media', 'Admin\MediaController::addMediatoLibrary');
        $routes->post('remove-media-from-library', 'Admin\MediaController::removeMediaFromLibrary');
        /** Media Route Ends from here */

        /**Category Route starts from here */
        $routes->get('category-setup', 'Admin\CategoryController::getCategory');
        $routes->post('add-category', 'Admin\CategoryController::addCategory');
        $routes->post('delete-category-by-id', 'Admin\CategoryController::deleteCategoryById'); //id passed through js request

        $routes->post('add-categoy-to-post', 'Admin\CategoryController::addCategory');
        /**Category Route Ends here */

        /**Topbar setting Starts From Here */
        $routes->get('top-bar-setup', 'Admin\TopbarController::setUptopBar');
        $routes->post('save-topbar', 'Admin\TopbarController::saveTopbar');

        /**Topbar setting Starts From Here */

        /**Header setting Starts From Here */
        $routes->get('header', 'Admin\HeaderController::setUpheader');
        $routes->post('save-header', 'Admin\HeaderController::saveHeader');

         /**Header setting Starts From Here */

        /**Menu setting Starts From Here */
        $routes->get('menubar', 'Admin\MenuController::setUpMenu');
        $routes->post('save-menu', 'Admin\MenuController::saveMenu');
        /**Menu setting Starts From Here */

        /**News Ticker setting Starts From Here */
        $routes->get('news-ticker', 'Admin\NewstickerController::SetUpnewsTicker');
        $routes->post('save-news-ticker', 'Admin\NewstickerController::saveNewsTicker');
        /**News Ticker setting Starts From Here */

        /**officer setup Route Starts here */
        $routes->get('officer-setup', 'Admin\OfficerController::SetupOfficer');
        $routes->get('edit-officer-details/(:num)', 'Admin\OfficerController::SetupOfficer/$1');
        $routes->get('show-officer-list', 'Admin\OfficerController::getOfficerList');
        $routes->post('save-officer', 'Admin\OfficerController::saveOfficer');
        $routes->post('save-officer/(:num)', 'Admin\OfficerController::saveOfficer/$1');
        $routes->get('delete-officer/(:num)', 'Admin\OfficerController::deleteOfficer/$1');
        /**officer setup Route ends here */

         /**Slider setup Route starts here */
        $routes->get('slider-setup', 'Admin\SliderController::setupSlider');
        $routes->post('save-slider', 'Admin\SliderController::saveSlider');
        $routes->get('delete-slider/(:num)', 'Admin\SliderController::deleteSlider/$1');
        /**Slider setup Route ends here */

        /**Introduction setup Route starts here */
        $routes->get('introduction-setup', 'Admin\IntroductionController::setupIntroduction');
        $routes->post('save-introduction', 'Admin\IntroductionController::saveIntroduction');
        /**Introduction setup Route ends here */


        /**tabs setup Route starts here */
        $routes->get('tabs-setup', 'Admin\Tabcontroller::setupTabs');
        $routes->get('tabs-setup/(:num)', 'Admin\Tabcontroller::setupTabs/$1');
        $routes->post('save-tab-details', 'Admin\Tabcontroller::saveTabDetails');
        $routes->post('save-tab-details/(:num)', 'Admin\Tabcontroller::saveTabDetails/$1');
        $routes->get('delete_tab','Admin\Tabcontroller::deleteTab');

        /**tabs setup Route ends here */


        /**related links setup Route start here */

        $routes->get('related-links-setup','Admin\RelatedLinksController::setupRelatedLinks');
        $routes->post('save-related-links','Admin\RelatedLinksController::saverelatedLinks');
        $routes->get('delete-link','Admin\RelatedLinksController::deleteLinks');


        /**related links setup Route ends here */



        /**Employee setup Route starts here */

        $routes->get('employee-list','Admin\EmployeeController::employeeList');
        $routes->get('add-employee','Admin\EmployeeController::employeeSetup');
        $routes->post('save-employee','Admin\EmployeeController::saveEmployee');
        $routes->post('save-employee/(:num)','Admin\EmployeeController::saveEmployee/$1');
        $routes->get('delete-employee','Admin\EmployeeController::changeDeleteStatus');

        $routes->get('get-employee-trash-list','Admin\EmployeeController::getEmployeeTrashList');
        $routes->post('delete-multiple-employee','Admin\EmployeeController::deletemultipleEmployee');
        $routes->post('delete-multiple-selected-employee-permanenlty','Admin\EmployeeController::deleteSelectedEmployeePermanently');
        $routes->get('delete-all-employee-permanently','Admin\EmployeeController::deleteAllEmployeePermanently');
        $routes->get('delete-employee-this-premanently','Admin\EmployeeController::deletethisemployee');

        $routes->get('employee-layout','Admin\EmployeeController::manageEmployeeLayout');
        $routes->post('save-employee-layout','Admin\EmployeeController::saveEmployeeLayout');


        /**Employee setup Route ends here */

        /**Video Route starts here */

        $routes->get('video','Admin\VideoController::videoSetup');
        $routes->post('save-video','Admin\VideoController::saveVideo');
        $routes->get('delete-video','Admin\VideoController::deleteVideo');


        /**Video Route ends here */
        

        /**Footer setup Route Starts here */

        $routes->get('footer-setup', 'Admin\FooterController::setupFooter');
        $routes->get('footer-setup/(:num)', 'Admin\FooterController::setupFooter/$1');
        $routes->get('footer-list', 'Admin\FooterController::footerList');
        $routes->post('save-footer', 'Admin\FooterController::saveFooter');
        $routes->post('save-footer/(:num)', 'Admin\FooterController::saveFooter/$1');
        $routes->get('delete-footer/(:num)', 'Admin\FooterController::deleteFooter');
         /**Footer setup Route Ends here */

        /**User setup Route Ends here */
        $routes->get('user', 'Admin\Usercontroller::userSetup');
        $routes->get('user/(:num)', 'Admin\Usercontroller::userSetup/$1');
        $routes->post('save-user', 'Admin\Usercontroller::saveUser');
        $routes->post('save-user/(:num)', 'Admin\Usercontroller::saveUser/$1');
        $routes->get('delete-user/(:num)', 'Admin\Usercontroller::deleteUser/$1');
        /**User setup Route Ends here */

        /** Change Password route starts */
        $routes->post('changepassword', 'Admin\Usercontroller::changePassword');
        /** change password ends */


         /** Navigation route starts */
        $routes->get('navigation', 'Admin\Navigationcontroller::navigationSetup');
        $routes->post('save-navigation', 'Admin\Navigationcontroller::saveNavigation');
        $routes->get('delete-nav-item', 'Admin\Navigationcontroller::deleteNavigation');        
         /** Navigation route ends */


        /** location route starts */
        $routes->get('location-setup','Admin\LocationController::locationsetup');
        $routes->post('save-location','Admin\LocationController::saveLocation');

        /** location route ends */



         $routes->get('gallery','Admin\Gallerycontroller::gallerySetup');
         $routes->post('create-gallery','Admin\Gallerycontroller::createGallery');


        //  popup routes starts from here
        $routes->get('popup-setup','Admin\Popupcontroller::popupSetup');
        $routes->post('save-popup','Admin\Popupcontroller::savePopup');
        $routes->get('delete-popup','Admin\Popupcontroller::deletepopup');
        $routes->get('update-popup-status','Admin\Popupcontroller::updateStatus');
        //  popup routes ends here



        // multiple actiono routes
        $routes->post('delete-multiple-page','Admin\PageController::deletemultiplePage');
        $routes->post('delete-multiple-post','Admin\PostController::deletemultiplePost');

        $routes->get('deleted-pages','Admin\PageController::showDeletedPage');
        $routes->get('deleted-posts','Admin\PostController::showDeletedPost');

        $routes->get('delete-page-permanently','Admin\PageController::deletpagepermanently');
        $routes->get('delete-post-permanently','Admin\PostController::deletpostpermanently');

        $routes->get('delete-all-page-permanently','Admin\PageController::deleteAllPermanently');
        $routes->get('delete-all-post-permanently','Admin\PostController::deleteAllPermanently');


        $routes->post('delete-multiple-selected-page-permanenlty','Admin\PageController::deleteSelectedPagePermanently');
        $routes->post('delete-multiple-selected-post-permanenlty','Admin\PostController::deleteSelectedPostPermanently');

        //ends multiple action routes
       




});

        /**Login setup Route Ends here */
        $routes->post('login', 'Admin\LoginController::login');
        $routes->get('login', 'Admin\LoginController::login');
        $routes->get('admin/login', 'Admin\LoginController::login');
        $routes->post('admin/login', 'Admin\LoginController::login');
        $routes->get('logout', 'Admin\LoginController::logout');

        /**Login setup Route Ends here */


        /** Reset routes Starts here */

        $routes->get('forget-password', 'Admin\ResetController::forgetPassword');
        $routes->post('create-Link-to-Change-Password', 'Admin\ResetController::createLink');
        $routes->get('reset', 'Admin\ResetController::verifyemail');
        $routes->post('update-password','Admin\ResetController::savePassword');

        /** Reset routes Starts here */

        /**Reselink routes starts here */

        $routes->get('reset-link', 'Admin\ResetLinkController::viewresetform');
        $routes->post('update-link','Admin\ResetLinkController::updatelinks');

        /**Reselink routes ends here */