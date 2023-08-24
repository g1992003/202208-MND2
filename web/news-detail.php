<?php
include 'dominator/system/ready.mak';
include 'quote/include_data.php';

if (!isset($id) || !is_numeric($id)) {
    to_exit:
    include("error404.html");
    exit();
}

try {
    //內容
    $query = "SELECT n_id,n_page,n_status,n_title,n_text,n_file,n_tag,n_unit,n_name,
            convert(varchar, n_date, 111) AS n_date
        FROM news WHERE n_id = $id";
    $data = sql_data($query, $link, 1);
    if (!$data) goto to_exit;

    $data["n_status"] = preg_replace("/[^0-9 ]/", "", $data["n_status"]);
    if ($data["n_status"] == 0  && $id_account == "")  goto to_exit;
} catch (PDOException $e) {
    $msg =  $e->getMessage();
    $error_text = "[" . date("Y/m/d H:i:s") . "] " . $msg . "\n";
    $error_text = $error_text . $e->getTraceAsString() . "\n";
    error_log($error_text, 3, "/xampp/apache/logs/pdo-errors.log");
    $link = null;
    header('Location:index.php');
} finally {
    $link = null;
}

$title_var =  "最新消息 | " . $data["n_title"] . " | " . $title_var;

include "quote/template/head.php";
?>
<link rel="stylesheet" href="dist/css/page.css" />
</head>

<body class="lang_tw <?= empty($_SESSION["front_account"]) ? 'logIn' : 'logOut' ?>">
    <?php
    include "quote/template/nav.php";
    ?>
    <main>
        <div class="banner">
            <h1>最新消息<i></i></h1>
        </div>
        <div class="container detail">
            <div class="txt-box">
                <div>
                    <span class="day"><?php echo $data["n_date"]; ?></span>
                    <span class="tag"><?php echo $data["n_tag"]; ?></span>
                </div>
                <div>
                    <span class="name"><?php echo $data["n_name"]; ?></span>
                    <span class="unit"><?php echo $data["n_unit"]; ?></span>
                </div>
            </div>
            <div class="title"><?php echo $data["n_title"]; ?></div>

            <div class="editor_Content">
                <div class="editor_box pc_use">
                    <?php echo html_decode($data["n_text"]); ?>
                </div>
            </div>
            <?php if ($data["n_file"] != "") { ?>
                <a href="upload/<?php echo $data["n_file"]; ?>" target="_blank" rel="nofollow" class="download">檔案下載<i></i></a>
            <?php } ?>
            <a href="javascript:history.back(-1)" class="btn_back">
                <span class="txt">返回</span>
                <span class="back"></span>
            </a>
        </div>
    </main>
    <?php include "quote/template/footer.php"; ?>
    <script src="dist/js/function.js"></script>
    <script>
        if ($('.top_menu_2 li').length < 2) {
            $('.top_menu_2').css('display', 'none')
        }
    </script>

</body>

</html>