<?php
include 'dominator/system/ready.mak';
include 'quote/include_data.php';


try {

    $id = (!isset($id)) ?  $first_depart["dc_id"] : $id;
    $id = html_decode($id);
    $id = preg_replace("/[^0-9 ]/", "", $id);
    $id = ($id == "") ?  $first_depart["dc_id"] : $id;

    //處室介紹
    $where = ($id_account != "") ? "dc_id = $id" : "d_status = 1 AND dc_id = $id";
    $query = "SELECT * FROM depart WHERE $where ORDER BY d_order";
    $data = sql_data($query, $link, 2, "d_id");

    if (!$data && !isset($depart_title[$id])) {
        include("error404.html");
        exit();
    }
    if ($data) {
        $first_data = reset($data);
        $no = (!isset($no) || !is_numeric($id)) ? $first_data["d_id"] : $no;
    }
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

$link = null;
$title_var =  "處室介紹 | " . $depart_title[$id]["dc_title"] . " | " . $title_var;

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
            <h1>處室介紹<i></i></h1>
        </div>
        <div class="container">
            <ul class="top_menu depart">
                <?php foreach ($depart_title as $k => $v) { ?>
                    <li <?php echo (isset($id) && $id == $k) ? 'class="active"' : ''; ?>>
                        <a href="departments.php?id=<?php echo $k ?>"><?php echo $v["dc_title"]; ?></a>
                    </li>
                <?php } ?>
            </ul>
            <?php if ($data) { ?>
                <ul class="top_menu_2">
                    <?php foreach ($data as $k => $v) { ?>
                        <li <?php echo (isset($no) && $no == $k) ? 'class="active"' : ''; ?>>
                            <a href="departments.php?id=<?php echo $id; ?>&no=<?php echo $k; ?>"><?php echo $v["d_title"]; ?></a>
                        </li>
                    <?php } ?>
                </ul>
                <div class="editor_Content">
                    <div class="editor_box">
                        <?php if (isset($data[$no])) {
                            echo html_decode($data[$no]["d_text"]);
                        } ?>
                    </div>
                </div>
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