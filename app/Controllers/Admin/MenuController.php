<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\Admin\Menumodel;
use App\Models\Admin\Pagemodel;
use App\Models\Admin\Postmodel;
use App\Models\Admin\Categorymodel;


class MenuController extends BaseController
{
    public function index()
    {

        echo "Silence is golden";

    }

    public function __construct()
    {

        $this->Menumodel = new Menumodel();
        $this->Pagemodel = new Pagemodel();
        $this->Postmodel = new Postmodel();
        $this->Categorymodel = new Categorymodel();


    }

    public function setUpMenu()
    {

        $data['page_menu'] = $this->Pagemodel->getpagelist();
        $data['post_menu'] = $this->Postmodel->getAllpostList();
        $data['caty_menu'] = $this->Categorymodel->getAllcategoryList();
        $data['get_parent_m_list'] = $this->Menumodel->getAllmenu();
        echo view('admin/layouts/adminheader');
        echo view('admin/menu', $data);
        echo view('admin/layouts/adminfooter');
    }


    private function save_menu_item( $item, $parent_id )
 {
        $label = $item['label'];
        $url = empty( $item['url'] ) ? '#' : $item['url'];
        $content_id = $item['pid'];
        $content_type = $item['content'];

        $has_child = 0;
        if ( array_key_exists( 'children', $item ) && !empty( $item['children'] ) ) {
            $has_child = 1;
        }

        $data = array(
            'label_menu' => $label,
            'url_menu' => $url,
            'content_id' => $content_id,
            'content_type' => $content_type,
            'parent_id' => $parent_id,
            'has_child' => $has_child
        );

        $this->Menumodel->save( $data );
        $id = $this->Menumodel->insertID();

        if ( $has_child ) {
            foreach ( $item['children'] as $child_item ) {
                $this->save_menu_item( $child_item, $id );
            }
        }
    }

    public function saveMenu()
    {

        $menu = $this->request->getPost( 'menudata' );
        $menu_array = json_decode( $menu, true );

        if ( !empty( $menu_array ) ) {
            $this->Menumodel->truncate( 'menu' );
            foreach ( $menu_array as $value ) {
                $this->save_menu_item( $value, 0 );
            }
        } else {
            $this->Menumodel->truncate( 'menu' );
        }
       return redirect()->to('menubar')->with('success','Changes Saved');
        
    }

}
