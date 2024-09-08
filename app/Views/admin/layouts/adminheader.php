<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Panel</title>
    <!-- Google Font: Source Sans Pro -->
    <link rel="icon" type="image/x-icon" href="<?php base_url() . ''?>">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url('assets/admin/plugins/fontawesome-free/css/all.min.css') ?>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url('assets/admin/css/adminlte.min.css') ?>">
    <!-- overlayScrollbars -->
    <link rel="stylesheet"
        href="<?php echo base_url('assets/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css') ?>">

    <link rel="stylesheet" href="<?php echo base_url('assets/admin/css/style.css') ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/admin/css/nepali_date.min.css') ?>">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
    <!-- <link rel="stylesheet" href="//cdn.jsdelivr.net/jquery.nestable/1.1.0/jquery.nestable.min.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">




</head>


<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link w-100" data-widget="pushmenu" href="#" role="button"><i
                            class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item my-auto ">
                    <h4>
                        <small class="text-red">Welcome to content management system</small>
                    </h4>
                </li>

            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto px-4">


                <li class="nav-item dropdown">
                    <div class="profile-dropdown">
                        <img class="profile-pic rounded-circle"
                            src="<?=base_url() . 'assets/uploads/'.(session('userImage') ? session('userImage') : 'avatar5.png') ?>"
                            alt="Profile Picture" width="50px">
                        <ul class="dropdown-menu">
                            <li><span data-bs-toggle="modal" data-bs-target="#profileModal">View Profile</span></li>
                            <li><span data-bs-toggle="modal" data-bs-target="#changePassword">Change Password</span>
                            </li>
                            <li><a href="<?php echo base_url() . 'logout' ?>">Logout</a></li>
                        </ul>
                    </div>


                </li>

            </ul>
        </nav>
        <!-- /.navbar -->
        userImage
        <!-- Main Sidebar Container -->
        <aside class="main-sidebar bg-light elevation-4">
            <!-- Brand Logo -->
            <a href="" class="brand-link">
                <img src="<?=base_url() . 'assets/uploads/nepal-logo.png' ?>" alt="Nepal Logo"
                    class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light text-light">Admin Panel</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar px-0">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel d-flex">
                    <div class="adminImg d-flex">
                        <img class="circle"
                            src="<?=base_url() . 'assets/uploads/'.(session('userImage') ? session('userImage') : 'avatar5.png') ?>"
                            alt="">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block txt-blue "><?=session('username') ? session('username') : ''?></a>
                        <a href="<?=base_url()?>" target="_blank"><small>Visit Site</small></a>
                    </div>
                </div>


                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

                        <li class="nav-item ">
                            <a href="<?php echo base_url() . 'dashboard' ?>" class="nav-link w-100">
                                <i class="fa-solid fa-dashboard pr-1"></i>
                                <p>
                                    Dashboard
                                </p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="#" class="nav-link w-100">
                                <i class="nav-icon fas fa-copy"></i>
                                <p>
                                    Pages
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'add-page' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Add New Page</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'view-all-page-list' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>All Pages</p>
                                    </a>
                                </li>

                            </ul>

                        </li>
                        <li class="nav-item ">
                            <a href="#" class="nav-link w-100">
                                <i class="nav-icon fas fa-copy"></i>
                                <p>
                                    Post & Activities
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'view-all-post-list' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>All Posts</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'add-post' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Add New Post</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'category-setup' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Category</p>
                                    </a>
                                </li>
                            </ul>

                        </li>
                        <li class="nav-item ">
                            <a href="#" class="nav-link w-100">
                                <i class="nav-icon fas fa-home"></i>
                                <p>
                                    Home Setting
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'top-bar-setup' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Top bar</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'header' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Header</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'menubar' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Menu</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'slider-setup' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Slider setup</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'news-ticker' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>News ticker</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'officer-setup' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Officer setup</p>
                                    </a>
                                </li>
                                

                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'introduction-setup' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Introduction Setup</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'video' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Video Setup</p>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'tabs-setup' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Tabs Setup</p>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'related-links-setup' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Related Links</p>
                                    </a>
                                </li>
                                

                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'navigation' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Navigation</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'location-setup' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Our Location</p>
                                    </a>
                                </li> 
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'gallery' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Gallery</p>
                                    </a>
                                </li>                                

                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'footer-setup' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Footer</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            
                            <a href="" class="nav-link w-100">
                                <i class="fa-solid fa-people-group pr-1"></i>
                                <p>
                                    Employee Setup
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'employee-list' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Manage Employee</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url() . 'employee-layout' ?>" class="nav-link w-100">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Employee Layout</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url() . 'popup-setup' ?>" class="nav-link w-100">
                                <i class="fa-solid fa-pen pr-1"></i>
                                <p>
                                    Popup setup
                                </p>
                            </a>
                        </li>


                        <li class="nav-item">
                            <a href="<?php echo base_url() . 'user' ?>" class="nav-link w-100">
                                <i class="fa-solid fa-people-group pr-1"></i>
                                <p>
                                    User Register
                                </p>
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a href="<?php echo base_url() . 'logout' ?>" class="nav-link w-100">
                                <i class="fa-solid fa-sign-out pr-1"></i>
                                <p>
                                    Logout
                                </p>
                            </a>
                        </li>
                </nav>
            </div>
        </aside>
        <!-- Button trigger modal -->


        <!-- Modal -->
        <div class="modal fade" id="profileModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">User Profile</h5>
                        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="profile-container">

                            <table class=" table table-bordered ">
                                <tr>
                                    <th> <label class="ps-2" for="fullname">Full Name:</label></th>
                                    <td><span class="ps-2"> <?=session()->get('fullname') ?: ''?></span></td>
                                </tr>
                                <tr>
                                    <th> <label class="ps-2" id="username">Username</label></th>
                                    <td><span class="ps-2"> <?=session()->get('username') ?: ''?></span></td>
                                </tr>
                                <tr>
                                    <th> <label class="ps-2" id="email">Email</label></th>
                                    <td><span class="ps-2"> <?=session()->get('email') ?: ''?></span></td>
                                </tr>
                                <tr>
                                    <th> <label class="ps-2" id="role">Role</label></th>
                                    <td><span class="ps-2">
                                            <?=(session()->get('role') == 1) ? 'Admin' : 'Editor'?></span></td>
                                </tr>
                                <tr>
                                    <th> <label class="ps-2" id="gender">Gender</label></th>
                                    <td><span class="ps-2">
                                            <?=(session()->get('gender') == 1) ? 'Male' : ((session()->get('gender') == 2) ? 'Female' : 'Others')?></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th> <label class="ps-2" id="status">Status</label></th>
                                    <td><span class="ps-2">
                                            <?=(session()->get('status') == 1) ? 'Active' : 'Inactive'?></span></td>
                                </tr>

                            </table>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Button trigger modal -->


        <!-- Modal -->

        <div class="modal fade" id="changePassword" tabindex="-1" role="dialog" aria-labelledby="changePassword"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="changePassword">Change password</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="changePassword">
                        <div class="modal-body">

                            <table class="table table-group-divider table-light ">
                                <tr>
                                    <th>
                                        <label class="" for="">Old password</label>
                                        <input class="form-control" type="text" name="oldpassword" id="oldpassword"
                                            required>
                                    </th>
                                </tr>
                                <tr>
                                    <th>
                                        <label class="" for="">New password</label>
                                        <input class="form-control" type="text" name="newpassword" id="password"
                                            required>
                                    </th>
                                </tr>
                                <tr>
                                    <th>
                                        <label class="" for="">Confirm New password</label>
                                        <input class="form-control" type="text" name="confirmpassword"
                                            id="confirm_password" required>
                                    </th>
                                </tr>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="content-wrapper">