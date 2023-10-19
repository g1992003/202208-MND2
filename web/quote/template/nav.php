<header>
    <div class="container header">
        <a href="./" class="header-logo">
            <img src="dist/images/Logo.png" alt="logo" />
        </a>
        <nav class="container-menu">
            <ul class="menu">
                <li>
                    <div class="menu-list">
                        <span>關於本部</span>
                        <span>ABOUT US</span>
                    </div>
                    <div class="swiper mySwiper1">
                        <div class="swiper-wrapper">
                            <?php foreach ($about_title_nav as $k1 => $v1) { ?>
                                <div class="swiper-slide">
                                    <ul>
                                        <?php foreach ($v1 as $k => $v) { ?>
                                            <li>
                                                <a href="ediPage.php?id=<?php echo $v["a_id"]; ?>">
                                                    <span><?php echo $v["a_title"]; ?></span>
                                                    <span><?php echo $v["a_title_2"]; ?></span>
                                                </a>
                                            </li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </li>
                <li class="units">
                    <div class="menu-list">
                        <span>直屬單位</span>
                        <span>UNITS</span>
                    </div>
                    <div class="swiper mySwiper2">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <ul>
                                    <?php foreach ($article_data as $k => $v) { ?>
                                        <li>
                                            <a href="./?active=<?php echo $k - 1 ?>">
                                                <span><?php echo $v["a_title"]; ?></span>
                                                <span><?php echo $v["a_title_2"]; ?></span>
                                            </a>
                                        </li>
                                    <?php } ?>
                                </ul>
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </li>
                <li>
                    <div class="menu-list">
                        <span>處室介紹</span>
                        <span>DEPARTMENTS</span>
                    </div>
                    <div class="swiper mySwiper3">
                        <div class="swiper-wrapper">
                            <?php foreach ($depart_title_nav as $k1 => $v1) { ?>
                                <div class="swiper-slide">
                                    <ul>
                                        <?php foreach ($v1 as $k => $v) { ?>
                                            <li>
                                                <a href="departments.php?id=<?php echo $v["dc_id"]; ?>">
                                                    <span><?php echo $v["dc_title"]; ?></span>
                                                    <span><?php echo $v["dc_title_2"]; ?></span>
                                                </a>
                                            </li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </li>
                <li>
                    <div class="menu-list">
                        <span>系統連結</span>
                        <span>SYSTEMS</span>
                    </div>
                    <div class="swiper mySwiper4">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <ul>
                                    <li>
                                        <a href="regulation.php">
                                            <span>行政規則</span>
                                            <span>Regulation</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="policy.php">
                                            <span>一令到位</span>
                                            <span>Orders</span>
                                        </a>
                                    </li>
                                    <?php foreach ($sys_link_title0 as $k => $v) { ?>
                                        <li>
                                            <a <?php echo ($v["l_type"] == 1) ? 'href="' . $v["l_url"] . '" target="_blank" rel="nofollow"' : 'href="edi_system.php?id=' . $v["l_id"] . '"'; ?>>
                                                <span><?php echo $v["l_title"]; ?></span>
                                                <span><?php echo $v["l_title_2"]; ?></span>
                                            </a>
                                        </li>
                                    <?php } ?>
                                </ul>
                            </div>
                            <?php foreach ($sys_link_title_nav as $k1 => $v1) { ?>
                                <div class="swiper-slide">
                                    <ul>
                                        <?php foreach ($v1 as $k => $v) { ?>
                                            <li>
                                                <a <?php echo ($v["l_type"] == 1) ? 'href="' . $v["l_url"] . '" target="_blank" rel="nofollow"' : 'href="edi_system.php?id=' . $v["l_id"] . '"'; ?>>
                                                    <span><?php echo $v["l_title"]; ?></span>
                                                    <span><?php echo $v["l_title_2"]; ?></span>
                                                </a>
                                            </li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </li>
                <li>
                    <div class="menu-list">
                        <span>好站連結</span>
                        <span>LINKS</span>
                    </div>
                    <div class="swiper mySwiper5">
                        <div class="swiper-wrapper">
                            <?php foreach ($link_title_nav as $k1 => $v1) { ?>
                                <div class="swiper-slide">
                                    <ul>
                                        <?php foreach ($v1 as $k => $v) { ?>
                                            <li>
                                                <a <?php echo ($v["l_type"] == 1) ? 'href="' . $v["l_url"] . '" target="_blank" rel="nofollow"' : 'href="edi_link.php?id=' . $v["l_id"] . '"'; ?>>
                                                    <span><?php echo $v["l_title"] ?></span>
                                                    <span><?php echo $v["l_title_2"]; ?></span>
                                                </a>
                                            </li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </li>
            </ul>
        </nav>
        <ul class="header_list">
            <li>
                <a href="javascript:;" class="logBox">
                    <div class="icon"></div>
                    <p class="log">登出</p>
                </a>
            </li>
            <li class="hamMenu">
                <div class="burger menu-ham" id="menu-ham">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </li>
        </ul>
    </div>
</header>