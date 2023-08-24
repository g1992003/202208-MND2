<?php
include 'dominator/system/ready.mak';
include 'quote/include_data.php';

$first_arr = reset($about_title);
$id = (!isset($id)) ?  $first_arr["a_id"] : $id;
$id = html_decode($id);
$id = preg_replace("/[^0-9 ]/", "", $id);
$id = ($id == "") ?  $first_arr["a_id"] : $id;

try {
    //關於本部
    $query = "SELECT * FROM about WHERE a_id = $id";
    $data = sql_data($query, $link, 1);
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

if (!$data) {
    to_exit:
    include("error404.html");
    exit();
}

$data["a_status"] = preg_replace("/[^A-Za-z0-9 ]/", "", $data["a_status"]);
if ($data["a_status"] == 0 && $id_account == "") goto to_exit;

$title_var = $data["a_title"] . " | " . $title_var;

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
            <h1>關於本部<i></i></h1>
        </div>
        <div class="container">
            <ul class="top_menu">
                <?php foreach ($about_title as $k => $v) { ?>
                    <li <?php echo (isset($id) && $id == $k) ? 'class="active"' : ''; ?>>
                        <a href="ediPage.php?id=<?php echo $k; ?>"><?php echo $v["a_title"]; ?></a>
                    </li>
                <?php } ?>
            </ul>
            <div class="editor_Content">
                <div class="editor_box">
                    <?php echo html_decode($data["a_text"]); ?>
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