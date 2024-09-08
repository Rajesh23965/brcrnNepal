<?php if(!empty($video)): extract($video); endif?>


<span class='about-title'><i class='fa fa-video pe-3 '></i>भिडियो</span>
<hr />
<div class="text-justify">
<?php if(!empty($video_url)): $videoId = getYoutubeVideoID($video_url); endif?>
<iframe src="https://www.youtube.com/embed/<?php if(!empty($videoId)): echo esc($videoId); endif?>" frameborder="0" allowfullscreen
                            style="height: 300px; width:100%;">
</iframe>
    <p class="text-end py-4"><a href="<?=base_url().'video-gallery'?>">Viewall <i class="fa fa-arrow-right"></i></a></p>
</div>