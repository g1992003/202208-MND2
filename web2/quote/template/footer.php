<a href="javascript:;" class="top-btn">
    <span></span>
</a>
<footer class="move_top">
    <ul class="footer">
        <li>
            <span>關於本部</span>
            <ul>
                <?php foreach ($about_title as $k => $v) { ?>
                    <li>
                        <a href="ediPage.php?id=<?php echo $k; ?>"><?php echo $v["a_title"]; ?></a>
                    </li>
                <?php } ?>
            </ul>
        </li>
        <li class="units">
            <span>直屬單位</span>
            <ul>
                <?php foreach ($article_data as $k => $v) { ?>
                    <li>
                        <a href="./?active=<?php echo $k-1 ?>">
                            <?php echo $v["a_title"]; ?>
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </li>
        <li>
            <span>處室介紹</span>
            <ul>
                <?php foreach ($depart_title as $k => $v) { ?>
                    <li>
                        <a href="departments.php?id=<?php echo $k; ?>"><?php echo $v["dc_title"]; ?></a>
                    </li>
                <?php } ?>
            </ul>
        </li>
        <li class="logInShow">
            <span>系統連結</span>
            <ul>
                <?php foreach ($sys_link_title as $k => $v) { ?>
                    <li>
                        <a <?php echo ($v["l_type"] == 1) ? 'href="' . $v["l_url"] . '" target="_blank"' : 'href="edi_system.php?id=' . $k . '"'; ?>> <?php echo $v["l_title"]; ?></a>
                    </li>
                <?php } ?>
                <li>
                    <a href="regulation.php">行政規則</a>
                </li>
                <li>
                    <a href="policy.php">一令到位</a>
                </li>
            </ul>
        </li>
        <li>
            <span>好站連結</span>
            <ul>
                <?php foreach ($link_title as $k => $v) { ?>
                    <li>
                        <a <?php echo ($v["l_type"] == 1) ? 'href="' . $v["l_url"] . '" target="_blank"' : 'href="edi_link.php?id=' . $k . '"'; ?>> <?php echo $v["l_title"]; ?></a>
                    </li>
                <?php } ?>
            </ul>
        </li>
    </ul>
    <div class="info">
        <div><?php echo $meta_data[21]["d_text"]; ?></div>
        <div><a href="mailto:<?php echo $meta_data[25]["d_text"]; ?>"><?php echo $meta_data[25]["d_text"]; ?></a></div>
        <div><a href="tel:<?php echo $meta_data[24]["d_text"]; ?>"><?php echo $meta_data[24]["d_text"]; ?></a></div>
        <div><a href="<?php echo $meta_data[23]["d_text"]; ?>" target="blank"><?php echo $meta_data[22]["d_text"]; ?></a></div>
    </div>
</footer>