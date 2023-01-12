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
                    </div>
                    <ul>
                        <?php foreach ($about_title as $k => $v) { ?>
                            <li>
                                <a href="ediPage.php?id=<?php echo $k; ?>"><?php echo $v["a_title"]; ?></a>
                            </li>
                        <?php } ?>
                    </ul>
                </li>
                <li class="units">
                    <div class="menu-list">
                        <span>直屬單位</span>
                    </div>
                    <ul>
                        <li>
                            <a href="javascript:;">網路戰聯隊</a>
                        </li>
                        <li>
                            <a href="javascript:;">資訊通信聯隊</a>
                        </li>
                        <li>
                            <a href="javascript:;">電子戰中心</a>
                        </li>
                        <li>
                            <a href="javascript:;">訓測中心</a>
                        </li>
                        <li>
                            <a href="javascript:;">招募專區</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="menu-list">
                        <span>處室介紹</span>
                    </div>
                    <ul>
                        <?php foreach ($depart_title as $k => $v) { ?>
                            <li>
                                <a href="departments.php?id=<?php echo $k; ?>"><?php echo $v["dc_title"]; ?></a>
                            </li>
                        <?php } ?>
                    </ul>
                </li>
                <li>
                    <div class="menu-list">
                        <span>系統連結</span>
                    </div>
                    <ul>
                        <?php foreach ($sys_link_title as $k => $v) { ?>
                            <li>
                                <a <?php echo ($v["l_type"] == 1) ? 'href="' . $v["l_url"] . '" target="_blank" rel="nofollow"' : 'href="edi_system.php?id=' . $k . '"'; ?>> <?php echo $v["l_title"]; ?></a>
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
                    <div class="menu-list">
                        <span>好站連結</span>
                    </div>
                    <ul>
                        <?php foreach ($link_title as $k => $v) { ?>
                            <li>
                                <a <?php echo ($v["l_type"] == 1) ? 'href="' . $v["l_url"] . '" target="_blank" rel="nofollow"' : 'href="edi_link.php?id=' . $k . '"'; ?>> <?php echo $v["l_title"]; ?></a>
                            </li>
                        <?php } ?>
                    </ul>
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