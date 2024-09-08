<section class="custom-section">
    <div class="col-sm-12 col-md-9 col-lg-9 border p-2">
        <?=view('frontend/slider');?>
        <?= view('frontend/newsTicker',$news_ticker_post); ?>
    </div>

    <div class=" col-sm-12 col-md-3 col-lg-3 border p-2">
        <?=view('frontend/directorTab');?>
    </div>
</section>


<section class="custom-section">
    <div class="col-sm-12 col-md-9 col-lg-9 card m-0 p-4 rounded-0 ">
        <?=view('frontend/introduction')?>
    </div>
    <div class="col-sm-12 col-md-3 col-lg-3 card m-0 px-2 py-4 rounded-0 ">
        <?=view('frontend/frontvideo')?>
    </div>
</section>


<section class="custom-section">
    <div class="col-sm-12 col-md-9 col-lg-9 card m-0 p-4 rounded-0 ">
        <?=view('frontend/mainTab')?>
    </div>
    <div class="col-sm-12 col-md-3 col-lg-3 card m-0 p-4 rounded-0">
        <?=view('frontend/sidebar');?>

    </div>
</section>


<section class="custom-section">
    <div class="col-sm-12 col-md-9 col-lg-9 card m-0 p-4 rounded-0">
        <span class='about-title'><i class="fa fa-link me-2"></i>द्रुत लिङ्क</span>
        <hr>
        <?=view('frontend/navigation')?>
    </div>
    <div class="col-sm-12 col-md-3 col-lg-3 card m-0 p-4 rounded-0">
        <span class='about-title mb-auto '><i class="fa fa-street-view me-2"></i>हाम्रो स्थान</span>
        <hr>
        <?php if(!empty($location)) : extract($location); endif?>
        <?=$location ?? ''?>
    </div>
</section>


<section class="custom-section">
    <?=view('frontend/gallery')?>
</section>