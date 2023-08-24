<?php
session_start();
include 'dominator/system/ready.mak';
include 'quote/include_data.php';

try {
    //主視覺
    $query = "SELECT * FROM document WHERE d_id IN (26,27)";
    $banner = sql_data($query, $link, 2, "d_id");

    //處室
    $query = "SELECT d_class.dc_id,dc_title FROM d_class INNER JOIN news ON d_class.dc_id = news.dc_id WHERE n_status = 1 AND n_page = 1 ORDER BY dc_order";
    $depart_data = sql_data($query, $link, 2, "dc_id");

    //忠信報
    $query = "SELECT * FROM image ORDER BY i_order";
    $img_data = sql_data($query, $link);
} catch (Exception $e) {
    $msg =  $e->getMessage();
    $error_text = "[" . date("Y/m/d H:i:s") . "] " . $msg . "\n";
    $error_text = $error_text . $e->getTraceAsString() . "\n";
    error_log($error_text, 3, "/xampp/apache/logs/pdo-errors.log");
    $link = null;
    header('Location:errorDB.html');
} finally {
    $link = null;
}

include "quote/template/head.php";
?>
<link rel="stylesheet" href="dist/css/index.css" />
</head>

<body class="lang_tw <?= empty($_SESSION["front_account"]) ? 'logIn' : 'logOut' ?>">
    <?php
    include "quote/template/nav.php";
    ?>
    <main>
        <section class="banner porel">
            <?php if ($banner[27]["d_text"] != "") { ?>
                <div class="video">
                    <video autoplay loop muted id="vid">
                        <source type="video/mp4" src="upload/<?php echo $banner[27]["d_text"]; ?>">
                        </source>
                    </video>
                </div>
            <?php } else { ?>
                <div class="img">
                    <img src="upload/<?php echo $banner[26]["d_text"]; ?>" alt="banner首頁圖" />
                    <div class="text_box">
                        <p class="tw">網路安全防護 / 滲透攻擊測試 / 資訊數據偵蒐</p>
                        <p class="en">OPRATE, DEFEND, ATTACT, INFLUNCE, INFORM</p>
                        <div href="javascript:;" class="scroll-animate">
                            <div class="arrow_1"><img src="dist/images/1.png" alt=""></div>
                            <div class="arrow_2"><img src="dist/images/1.png" alt=""></div>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <i class="start_0"></i>
            <i class="target_0"></i>
        </section>
        <section class="section_2 move_top" id="section_2">
            <ul class="main_box">
                <?php foreach ($article_data as $k => $v) { ?>
                    <li>
                        <a href="javascript:;">
                            <img src="dist/images/b<?php echo $k; ?>.jpg" alt="" />
                            <p class="name"><?php echo $v["a_title"]; ?><i></i><i></i></p>
                        </a>
                        <div class="editor_Content">
                            <div class="editor_box">
                                <?php echo html_decode($v["a_text"]); ?>
                            </div>
                        </div>
                    </li>
                <?php } ?>
            </ul>
            <i class="start_1"></i>
            <i class="target_1"></i>
        </section>
        <section class="news move_top">
            <div class="container">
                <div class="title">最新消息</div>
                <div id="top-menu-ul" class="top-menu-ul">
                    <div class="item_Menu">
                        <div class="item_menu_Box">
                            <ul class="item_menu_list slides">
                                <?php $i = -1;
                                foreach ($depart_data as $k => $v) {
                                    $i++;
                                ?>
                                    <li>
                                        <a href="javascript:render(<?php echo $i . ',' . $k; ?>);"><?php echo $v["dc_title"]; ?></a>
                                    </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                    <div class="flex-direction-nav">
                        <a href="javascript:;" class="lbtn arrow flex-prev">
                            <div></div>
                        </a>
                        <a href="javascript:;" class="rbtn arrow flex-next">
                            <div></div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="container" id="list-temp"></div>
            <a href="news.php" class="btn_more">
                <span class="txt">MORE</span>
                <span class="icon"></span>
            </a>
            <i class="start_2"></i>
            <i class="target_2"></i>
        </section>
        <?php if ($img_data) { ?>
            <section class="life move_top">
                <div class="container">
                    <div class="title">忠信報</div>
                </div>
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <?php foreach ($img_data as $k => $v) { ?>
                            <div class="swiper-slide porel">
                                <a href="<?php echo $v["i_url"]; ?>" target="_blank" rel="nofollow" class="list_swiper">
                                    <img src="upload/<?php echo $v["i_img"]; ?>" />
                                    <div class="pic_title"><span><?php echo $v["i_title"]; ?></span></div>
                                </a>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>

                <a href="javascript:;" class="btn_more" target="_blank" rel="nofollow">
                    <span class="txt">MORE</span>
                    <span class="icon"></span>
                </a>
                <i class="start_3"></i>
                <i class="target_3"></i>
            </section>
        <?php } ?>
    </main>
    <?php include "quote/template/footer.php"; ?>
    <script src="dist/js/function.js"></script>
    <script src="dist/js/index.js"></script>
    <script>
        render(0, <?php echo reset($depart_data)["dc_id"]; ?>);

        function render(active, id) {
            console.log(active)
            const dom = document.querySelector('#list-temp');
            $('.item_menu_list li').removeClass('active');
            $('.item_menu_list li').eq(active).addClass('active');
            $.ajax({
                type: "POST",
                async: true,
                url: "quote/datajson.php",
                dataType: "json",
                data: {
                    "id": id,
                },
                success: function(obj) {
                    let template = ""
                    Object.values(obj).forEach(function(item) {
                        template += `<ul class="list_news"><li>
                                        <a href="news-detail.php?id=${item.n_id}">
                                            <div>
                                                <div class="day">
                                                    <p> ${item.n_year}</p>
                                                    <p> ${item.n_date}</p>
                                                </div>
                                                <div class="tag">
                                                ${item.n_tag}
                                                </div>
                                            </div>
                                            <div>
                                                <div class="txt">
                                                    <div class="title">
                                                    ${item.n_title}
                                                    </div>
                                                    <div class="name">
                                                    ${item.n_unit} ${item.n_name}
                                                    </div>
                                                </div>
                                                <div class="intro">
                                                ${item.n_text}
                                                </div>
                                            </div>
                                        </a>
                                    </li></ul>`
                    });
                    dom.innerHTML = template;
                }
            })
        }
    </script>
</body>

</html>