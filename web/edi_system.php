<?php
include 'dominator/system/ready.mak';
include 'quote/include_data.php';

$id = html_decode($id);
if (!isset($id) || !is_numeric($id)) {
    header("location:./");
    exit();
}

//系統連結
$query = "SELECT * FROM link WHERE l_id = $id";
$data = sql_data($query, $link, 1);

if ($data["l_page"] != 1 ||  $data["l_type"] != 2) {
    header("location:./");
    exit();
}

$id = html_decode($data["l_status"]);
if ($data["l_status"] == 0 && !isset($_SESSION["dominator_account"])) {
    header("location:./");
    exit();
}

$link = null;
$title_var = $data["l_title"] . " | " . $title_var;

include "quote/template/head.php";
?>
<link rel="stylesheet" href="dist/css/page.css" />
</head>

<body class="lang_tw logOut">
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