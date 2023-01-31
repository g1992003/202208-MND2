<?php
require_once dirname(dirname(__DIR__)) . DIRECTORY_SEPARATOR . 'dominator' . DIRECTORY_SEPARATOR . 'system' . DIRECTORY_SEPARATOR . 'ready.mak';
?>
<style>
    .login-form{
        min-width: 300px;
        width: auto;
        padding: 10px;
        z-index: 103;
        right: 0;
        left: auto;
        position: absolute;
        top: 130%;
        font-size: 16px;
        text-align: left;
        list-style: none;
        white-space: nowrap;
        border: 1px solid #aaa;
        background: #11326b;
        border-radius: 5px;
        float: left;
        line-height: 2;
        color: #fff;
    }

    .login-form input{
        color: #333;
        height: 30px;
        line-height: 28px;
        border-radius: 5px;
        background: #ffffff;
        position: relative;
        -webkit-appearance: none;
        box-shadow: inset 0 1px 2px rgb(0 0 0 / 8%);
        display: block;
        width: 100%;
        padding: 6px 12px;
        font-size: 16px;
        border: 1px solid #ccc;
        transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    }

    .login-form .control{
        text-align: center;
    }

    .login-form button{
        border-radius: 3px;
        font-size: 16px;
        padding: 4px 20px;
        line-height: 1.39;
        color: #ffffff;
        background-color: rgba(0, 0, 0, 0.2);
        display: inline-block;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        user-select: none;
        background-image: none;
        border: 1px solid #aaa;
        margin: 0;
        text-decoration: none;
    }

    .form-group{
        margin-bottom: 15px;
    }

    .logIn .menu>li:nth-child(4), .logIn .footer>li:nth-child(4){
        display: block;
    }
</style>

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
                <?php if(!empty($_SESSION["front_account"])){ ?>
                <li class="logInShow">
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
                <?php } ?>
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
                    <?=empty($_SESSION["front_account"]) ? '<p class="log">登入</p>' : '<p class="logout">登出</p>'?>
                </a>

                <div class="login-form" style="display: none;">
                    <div class="form-group">
                        <label class="control-label"><?php echo $cms_lang[3][$language]; ?></label>
                        <input type="text" name="account" autocomplete="account">
                    </div>
                    <div class="form-group">
                        <label class="control-label"><?php echo $cms_lang[4][$language]; ?></label>
                        <input type="password" name="pwds" autocomplete="false">
                    </div>
                    <div class="control">
                        <button class="login"><?php echo $cms_lang[5][$language]; ?></button>
                    </div>
                </div>
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