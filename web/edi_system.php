<?php
include 'dominator/system/ready.mak';
include 'quote/include_data.php';

if (!isset($id) || !is_numeric($id)) {
    to_exit:
    include("error404.html");
    exit();
}
try {
    //系統連結
    $query = "SELECT * FROM link WHERE l_id = $id";
    $data = sql_data($query, $link, 1);
    if (!$data) goto to_exit;

    $data["l_status"] = preg_replace("/[^A-Za-z0-9 ]/", "", $data["l_status"]);
    if ($data["l_status"] == 0 && $id_account == "") goto to_exit;
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
$title_var = $data["l_title"] . " | " . $title_var;

include "quote/template/head.php";
?>
<link rel="stylesheet" href="dist/css/page.css" />
</head>

<body class="lang_tw <?= empty($_SESSION["front_account"]) ? 'logIn' : 'logOut' ?>">
    <?php
    include "quote/template/nav.php";
    ?>
    <main class="link">
        <div class="banner">
            <h1>系統連結<i></i></h1>
        </div>
        <div class="container">
            <div class="editor_Content">
                <div class="editor_box">
                    <?php echo html_decode($data["l_text"]); ?>
                </div>
            </div>
            <a href="javascript:history.back(-1)" class="btn_back">
                <span class="txt">返回</span>
                <span class="back"></span>
            </a>
        </div>
    </main>
    <?php include "quote/template/footer.php"; ?>
    <script src="dist/js/function.js"></script>
    <script src="dist/js/index.js"></script>
</body>

</html>