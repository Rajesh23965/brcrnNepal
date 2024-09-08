<?php if (!empty($singlePage)): extract($singlePage);endif?>

<div class="wrapper-body">
    <div class="container-fluid mx-auto px-0 featured-area">
        <div class="bread-holder">
            <div class="bread-con">
                <div class=" container-fluid px-5  py-4">
                    <h5 class="page-title text-light px-1">Employee List</h5>
                    <ul class="bread-list d-flex px-1">
                        <li class="list-item"><a href="<?php echo base_url() ?>"><b>Home</b></a><small><i
                                    class="fa fa-angle-double-right text-light px-2"></i></small></li>
                        <li class="list-item"><a href="#"><b>employee-list</b></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <section class="content-section row py-3">
        <?php if (!empty($employeeList)): ?>
        <?php
            $currentOrderBy = null;
            foreach ($employeeList as $emplylst):
                if ($currentOrderBy !== $emplylst['order_by']):
                    if ($currentOrderBy !== null):
                        // Close the previous row
                        echo '</div>';
                    endif;
                    // Start a new row
                    $currentOrderBy = $emplylst['order_by'];
                    echo '<div class="row my-3 justify-content-center"><hr />';
                endif;
                ?>
	        <div class="col-sm-12 col-md-3 col-lg-2 p-2">
	            <div class="flex-wrap d-flex flex-column gap-2 text-center border p-2 bg-light shadow">
	                <div class="employee-image-box overflow-hidden justify-content-center">
	                    <img class="w-100 h-00 object-fit-cover" src="<?=base_url('assets/uploads/' . $emplylst['image'])?>"
	                        alt="">
	                </div>
	                <div class="d-flex flex-column gap-2">
	                    <span class="fw-bolder text-danger h6 pt-2"><?=$emplylst['employname']?></span><hr class="m-0 p-0">
	                    <span class="fw-bold text-primary"><?=$emplylst['designation']?></span>
	                    <span><?=$emplylst['mobile']?></span>
	                    <span><?=$emplylst['email']?></span>
	                </div>
	            </div>

	        </div>
	        <?php endforeach;?>
        <?php if ($currentOrderBy !== null): ?>
</div>
<?php endif;?>
<?php endif;?>
</section>


</div>