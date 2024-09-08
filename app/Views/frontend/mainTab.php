<div class="notice">
   
    <?php
    $i = 0;
    $defaultopen = '';
    foreach ($get_tab as $gt) {
        $i++;
        if ($i == 1) {
            $defaultopen = 'defaultOpen';
        }
    ?>
    <div class="notice-tab <?php if ($i == 1) echo "active"; ?>"
        onclick="openNoticeTab(event, '<?php if (isset($gt['tab_id'])) echo 'tab_id' . $gt['tab_id']; ?>')"
        id="<?php if (isset($defaultopen)) echo $defaultopen; ?>">
        <i class="fas <?php if (isset($gt['tab_icon'])) echo $gt['tab_icon']; ?>"></i>&nbsp;<?php if (isset($gt['tab_items'])) echo $gt['tab_items']; ?>
    </div>
    <?php } ?>

    <?php
    $i = 0;
    foreach ($get_tab as $gt) {
        $i++;
    ?>
    <div id="<?php if (isset($gt['tab_id'])) echo 'tab_id' . $gt['tab_id']; ?>" class="notice-tab-content" style="display: <?php if ($i == 1) echo "block"; else echo "none"; ?>">
        <?php foreach ($get_post_list_of_tab as $gplt) {
                $cmstring = $gplt['post_caty_id'];
                $catty = explode(",", $cmstring);
            ?>

        <?php if(in_array($gt['category_id'], $catty)){?>
        <li>
            <i class="fa fa-link mx-0 px-2"></i>
            <div class="list">
                <a href="<?php echo 'post?id='.$gplt['post_id'];?><?=$gplt['post_title'] ? '&title='.$gplt['slug'] : ''?>"><?php if(isset($gplt['post_title'])) echo $gplt['post_title'] ?>
                </a>
                <br />
                    <span>प्रकाशित मिति :
                        <p><?php if(isset($gplt['added_on'])) echo $gplt['added_on']; ?></p>
                    </span>
            </div>
            
            <a class="d-flex align-content-center " href="<?php echo 'post?id='.$gplt['post_id'];?><?=$gplt['post_title'] ? '&title='.$gplt['post_title'] : ''?>">View <i class="fa fa-arrow-right my-auto ms-2"></i></a>
           

        </li>
        <?php } }?>
    </div>

    <?php } ?>
</div>