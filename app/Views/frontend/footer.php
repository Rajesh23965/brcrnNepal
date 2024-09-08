<?php if (isset($header)): extract($header);endif?>



<footer class="footer-bg pt-5">
    <div class="container-fluid mx-auto row px-5 footer-container text-light">
        <?php $i = 0;
$count = count($footer_tbl);
switch ($count) {
    case '2':
        $col = 'col-md-6 col-lg-6';
        break;
    case '3':
        $col = 'col-md-4 col-lg-4';
        break;

    default:
        $col = 'col-md-3 col-lg-3';
        break;
}
foreach ($footer_tbl as $ft): $i++;?>

        <div class="col-sm-12 <?=$col ? $col : ''?> footer-box footer footer-section">
            <h4 class="text-light"><?php if (!empty($ft['footer_id'])): echo $ft['footer_title'];
    endif?></p>
            </h4>
            <hr>
            <?php if (!empty($ft['footer_id'])): echo $ft['footer_description'];
    endif?>

        </div>

        <?php endforeach?>
    </div>
    <div class="container-fluid text-center mb-0 copyright-section ">

        <div class="container d-flex justify-content-between">
            <p class="text-light mb-0 py-2">
                <?php if (!empty($visitor)): ?>
                <?php echo 'Our Visitors: ' . str_pad(count($visitor), 3, '0', STR_PAD_LEFT); ?>
                <?php endif;?>
            </p>
            <p class="text-light mb-0 py-2">&copy <?php echo date('Y');?> by
                <?php if (isset($office_name)): echo $office_name . ' ';endif?><?php if (isset($office_location)): echo '||' . ' ' . $office_location;endif?>
            </p>
        </div>
    </div>
</footer>
</main>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src=" https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/js/splide.min.js "></script>
<script src=" <?=base_url('assets/admin/js/config.js')?>"></script>
<script src=" <?=base_url('assets/frontend/js/maintab.js')?>"></script>
<script src=" <?=base_url('assets/frontend/js/splide.js')?>"></script>
<script src=" <?=base_url('assets/frontend/js/frontend.js')?>"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>