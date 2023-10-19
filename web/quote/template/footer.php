<a href="javascript:;" class="top-btn">
    <span></span>
</a>
<footer class="move_top">
    <ul class="footer">
        <li>
            <span>關於本部<br>ABOUT US</span>
            <ul>
                <?php foreach ($about_title as $k => $v) { ?>
                    <li>
                        <a href="ediPage.php?id=<?php echo $k; ?>">
                            <?php echo $v["a_title"] . "<br>" . $v["a_title_2"]; ?>
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </li>
        <li class="units">
            <span>直屬單位<br>UNITS</span>
            <ul>
                <?php foreach ($article_data as $k => $v) { ?>
                    <li>
                        <a href="./?active=<?php echo $k - 1 ?>">
                            <?php echo $v["a_title"] . "<br>" . $v["a_title_2"]; ?>
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </li>
        <li>
            <span>處室介紹<br>DEPARTMENTS</span>
            <ul>
                <?php foreach ($depart_title as $k => $v) { ?>
                    <li>
                        <a href="departments.php?id=<?php echo $k; ?>">
                            <?php echo $v["dc_title"] . "<br>" . $v["dc_title_2"]; ?>
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </li>
        <li class="logInShow">
            <span>系統連結<br>SYSTEM</span>
            <ul>
                <li>
                    <a href=" regulation.php">
                        行政規則<br>Regulation
                    </a>
                </li>
                <li>
                    <a href="policy.php">
                        一令到位<br>Orders
                    </a>
                </li>
                <?php foreach ($sys_link_title as $k => $v) { ?>
                    <li>
                        <a <?php echo ($v["l_type"] == 1) ? 'href="' . $v["l_url"] . '" target="_blank" rel="nofollow"' : 'href="edi_system.php?id=' . $v["l_id"] . '"'; ?>>
                            <?php echo $v["l_title"] . "<br>" . $v["l_title_2"]; ?>
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </li>
        <li>
            <span>好站連結<br>LINKS</span>
            <ul>
                <?php foreach ($link_title as $k => $v) { ?>
                    <li>
                        <a <?php echo ($v["l_type"] == 1) ? 'href="' . $v["l_url"] . '" target="_blank" rel="nofollow"' : 'href="edi_link.php?id=' . $k . '"'; ?>>
                            <?php echo $v["l_title"] . "<br>" . $v["l_title_2"]; ?>
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </li>
    </ul>
    <div class="info">
        <div><?php echo $meta_data[21]["d_text"]; ?></div>
        <div><a href="mailto:<?php echo $meta_data[25]["d_text"]; ?>"><?php echo $meta_data[25]["d_text"]; ?></a></div>
        <div><a href="tel:<?php echo $meta_data[24]["d_text"]; ?>"><?php echo $meta_data[24]["d_text"]; ?></a></div>
        <div><a href="<?php echo $meta_data[23]["d_text"]; ?>" target="_blank" rel="nofollow"><?php echo $meta_data[22]["d_text"]; ?></a></div>
    </div>
</footer>