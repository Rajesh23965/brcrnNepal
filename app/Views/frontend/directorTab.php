<?php

if(!empty($officers)):    
$count =count($officers);
if ($count <= 2): 
foreach ($officers as $ofcr): ?>

<div class="col-sm-12 col-md-12 col-lg-12 border mb-2 py-3 details-box bg-light ">
    <div class="col-sm-12 col-md-12 col-lg-12 officer_image ">
        <img class="rounded-circle  object-fit-cover overflow-hidden w-100"
            src="<?=base_url() . 'assets/uploads/' . (isset($ofcr['officer_image']) ? $ofcr['officer_image'] : 'default.png');?>"
            alt="">
    </div>
    <div class="col-sm-12 col-md-12 col-lg-12">
        <div class="details-box">
            <?php if (!empty($ofcr['officer_name'])): ?><span
                class="title text-danger fw-bold pt-2"><b><?php echo $ofcr['officer_name']; ?></b></span>
            <?php endif?>

            <?php if (!empty($ofcr['designation'])): ?><span
                class="designation py-1 fw-bold txt-blue"><?php echo $ofcr['designation'] ?></span>
            <?php endif?>

            <?php if (!empty($ofcr['mobile'])): ?><span class="designation py-1"><?php echo $ofcr['mobile'] ?></span>
            <?php endif?>
            <?php if (!empty($ofcr['email'])): ?>
            <span class="designation py-1"><?php echo $ofcr['email'] ?></span>
            <?php endif?>
            <hr class="m-0 py-2 cs-w">
            <?php if (!empty($ofcr['officer_id'])): ?>
            <span class="border rounded bg-primary px-3"><a class="text-light"
                    href="<?= base_url().'officer?id='.$ofcr['officer_id'].'&name='?><?=$ofcr['officer_name'] ? createCustomSlug($ofcr['officer_name']) :''?>">view
                    details</a></span>
            <?php endif?>
        </div>
    </div>
</div>

<?php endforeach; else: foreach ($officers as $ofcr):?>

<div class="col-sm-12 col-md-12 col-lg-12 border m-0 p-0 justify-content-between d-flex flex-wrap mb-2">

    <div class="col-sm-12 col-md-4 col-lg-4 p-2">
        <img class="rounded-circle  object-fit-cover overflow-hidden w-100"
            src="<?=base_url() . 'assets/uploads/' . (isset($ofcr['officer_image']) ? $ofcr['officer_image'] : 'default.png');?>"
            alt="">
    </div>

    <div class="col-sm-12 col-md-8 col-lg-8">
        <div class="details-box align-items-start">
            <?php if (!empty($ofcr['officer_name'])): ?><span
                class="title text-danger fw-bold pt-2"><b><?php echo $ofcr['officer_name']; ?></b></span>
            <?php endif?>

            <?php if (!empty($ofcr['designation'])): ?><span
                class="designation py-1 fw-bold h3 txt-blue"><?php echo $ofcr['designation'] ?></span>
            <?php endif?>

            <?php if (!empty($ofcr['mobile'])): ?><span class="designation py-1"><?php echo $ofcr['mobile'] ?></span>
            <?php endif?>
            <?php if (!empty($ofcr['email'])): ?>
            <span class="designation py-1"><?php echo $ofcr['email'] ?></span>
            <?php endif?>
            <hr class="m-0 py-2 cs-w">
            <?php if (!empty($ofcr['officer_id'])): ?>
            <a
                href="<?= base_url().'officer?id='.$ofcr['officer_id'].'&name='?><?=$ofcr['officer_name'] ? createCustomSlug($ofcr['officer_name']) :''?>">view
                details<< </a>
                    <?php endif?>
        </div>
    </div>

</div>

<?php endforeach; endif; endif;?>