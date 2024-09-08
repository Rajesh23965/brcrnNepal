<?php if (isset($get_post_details_by_id)) {
    extract($get_post_details_by_id);
} ?>

<div class="wrapper-body">
    <div class="container-fluid px-0 featured-area"
         style="background: url('<?php echo !empty($featured_image) ? base_url() . 'assets/frontend/image/IMG-20230819-WA0009.jpg' : ''; ?>')">

        <div class="bread-holder container-fluid bread-con">
            <div class="container bg-transparent p-5">
                <h5 class="page-title text-light"><?php echo isset($post_title) ? $post_title : ''; ?></h5>
                <ul class="bread-list d-flex px-0">
                    <li class="list-item"><a href="<?php echo base_url() ?>"><b>Home</b></a><small><i
                                    class="fa fa-angle-double-right text-light px-2"></i></small></li>
                    <li class="list-item"><a href="#"><b><?php echo isset($post_title) ? $post_title : ''; ?></b></a>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="px-5 bg-banner ">
        <div class="col row ">
            <div class="col-sm-12 col-md-12 col-lg-12 py-5 ">
                <div class="inner-container">
                    <div class="col-sm-12 col-md-12 col-lg-12 row">
                        <?php if (!empty($featured_image) && !empty($content_section)): ?>
                            <div class="col-sm-12 col-md-6 col-lg-6">
                                <div class="border p-2">
                                    <img class="w-100 object-fit-fill"
                                         src="<?=$featured_image ? base_url() . 'assets/uploads/' . $featured_image : '' ?>" width="100%">
                                </div>
                            </div>
                            <div class="col-sm-12 col-lg-6 col-md-6">
                                <div class="border p-2">
                                    <?= $content_section ? $content_section : ''; ?>
                                </div>
                            </div>
                        <?php elseif (!empty($featured_image)): ?>
                            <div class="border p-2 text-center">
                                <img class="w-75 object-fit-cover "
                                     src="<?= $featured_image ? base_url() . 'assets/uploads/' . $featured_image : '' ?>"
                                     width="100%">
                            </div>
                        <?php elseif (!empty($content_section)): ?>
                            <div class="border p-2">
                                <?=$content_section ? $content_section :''?>
                            </div>
                        <?php endif ?>
                    </div>
                </div>
                <?php if (!empty($downloadable_file)) : ?>
                    <div class="container-fluid mt-5 px-5">
                        <table class="table table-bordered ">
                            <thead>
                            <tr>
                                <th class="text-center">क्र.स</th>
                                <th class="ps-3 w-75">शिर्षक</th>
                                <th class="text-center">डाउनलोड</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="text-center">1.</td>
                                <td class="w-75"><?php echo isset($post_title) ? $post_title : ''; ?></td>
                                <td class="text-center"><a href="<?php echo isset($downloadable_file) ? base_url() . 'assets/uploads/' . $downloadable_file : ''; ?>"><i
                                                class="fa fa-download"></i></a></td>
                            </tr>
                            </tbody>
                        </table>
                        <object data="<?php echo isset($downloadable_file) ? base_url() . 'assets/uploads/' . $downloadable_file : ''; ?>" type="application/pdf" style="width:100%; height:1060px">
                        <embed src="<?php echo isset($downloadable_file) ? base_url() . 'assets/uploads/' . $downloadable_file : ''; ?>" type="application/pdf">
                    </object>
                    </div>
                <?php endif ?>

            </div>
        </div>
    </div>
</div>
