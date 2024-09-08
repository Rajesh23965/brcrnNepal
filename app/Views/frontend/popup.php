<section class="bg-opacity">
    <?php if (!empty($popuplist)): ?>
    <?php $i = 1;foreach ($popuplist as $pl): ?>
    <div class="modal fade shadow m-<?php echo $i;
$i++;
$i++; ?>" id="" tabindex="-1"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg ">
            <div class="modal-content rounded-0">
                <div class="modal-header text-center">
                    <h1 class="modal-title fs-5 mx-auto w-100" id="exampleModalLabel"><?=$pl['poup_title'] ?? ''?></h1>
                    <button type="button" class="btn-close" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <?php $extension = pathinfo($pl['popup_img'], PATHINFO_EXTENSION);
                        if (in_array($extension,['jpg,jpeg,png,gif'])): ?>
                    <img class="w-100 h-100" src="<?=base_url() . 'assets/uploads/' . $pl['popup_img'] ?? ''?>" alt="">
                    <?php else: ?>
                    

                        <object data="<?=base_url() . 'assets/uploads/' . $pl['popup_img'] ?? ''?>" type="application/pdf" style="width:100%; height:1060px">
                        <embed src="<?=base_url() . 'assets/uploads/' . $pl['popup_img'] ?? ''?>" type="application/pdf">
                    </object>

                    <?php endif?>
                </div>
            </div>
        </div>
    </div>
    <?php $i++;endforeach;endif?>
</section>