<?php if (isset($officer_by_id)): extract($officer_by_id);endif?>
<div class="wrapper-body">
    <div class="container-fluid mx-auto px-0 featured-area">
        <div class="bread-holder">
            <div class="bread-con">
                <div class=" container-fluid px-5  py-4">
                    <h5 class="page-title text-light px-1"><?=$officer_name ? $officer_name : ''?></h5>
                    <ul class="bread-list d-flex px-1">
                        <li class="list-item"><a href="<?php echo base_url() ?>"><b>Home</b></a><small><i
                                    class="fa fa-angle-double-right text-light px-2"></i></small></li>
                        <li class="list-item"><a href="#"><b><?=$officer_name ? $officer_name : ''?></b></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <section class="content-section row">
        <div class="col-sm-12 col-md-12 col-lg-12 py-2 ps-4">
            <table class="table table-bordered ">


                <tr>
                    <th rowspan="5" class="tbl-csw">
                        <img class="w-100 shadow "
                            src="<?=$officer_image ? base_url() . 'assets/uploads/' . $officer_image : base_url() . ''?>"
                            alt="">
                    </th>



                </tr>
                <tr>
                    <th>
                        <span><label for=""><b>Name:</b></label> <?=$officer_name ? $officer_name : ''?></span>
                    </th>
                </tr>
                <tr>
                    <th><span><label for=""><b>Designation:</b></label> <?=$designation ? $designation : ''?></span><br>
                    </th>
                </tr>
                <tr>
                    <th><span><label for=""><b>Mobile:</b></label> <?=$mobile ? $mobile : ''?></span><br></th>
                </tr>
                <tr>
                    <th><span><label for=""><b>Email:</b></label> <?=$email ? $email : ''?></span></th>
                </tr>


            </table>
        </div>
    </section>
</div>