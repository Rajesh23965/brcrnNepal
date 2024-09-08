<div class="d-flex flex-wrap flex-lg-row flex-md-row flex-sm-column ">
    <?php if(!empty($navList)):?>
    <?php foreach ($navList as $nl):?>
    <?php $url=''; if($nl['nav_pg_id']): $url =  base_url().'page?id='.$nl['nav_pg_id'].'&title='.$nl['page_title']; else: $nl['custom_url']; endif?>
    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 p-md-2 p-lg-2">
        <div class="border border-5 border-light bg-light rounded-3 shadow mx-2 col-sm-12 col-xs-12">
            <a class="d-flex flex-column gap-4  text-center m-2 px-2 py-5 fw-semibold text-danger text-nowrap quickButton "
                href="<?=$url ? $url :'';?>">
                <?=$nl['img_icon']? '<span class="bg-danger card-icon rounded-circle py-3 text-light "><i class="fa '.$nl['img_icon'].'"></i></span>' :''?>
                <?= $nl['page_title'] ? '<span class="fw-card">'.$nl['page_title'].'</span>' : ''?>
                <?= $nl['custom_field'] ? '<span class="fw-card">'.$nl['custom_field'].'</span>' : ''?>
            </a>
        </div>
    </div>
    <?php endforeach; endif?>
</div>