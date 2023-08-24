<?php
include 'dominator/system/ready.mak';
include 'quote/include_data.php';

$id = (!isset($id)) ?  $first_depart["dc_id"] : $id;
$id = html_decode($id);
$id = preg_replace("/[^0-9]/", "", $id);
$id = ($id == "") ?  $first_depart["dc_id"] : $id;

$check = 5; //分頁數量
$page_set = "?id=" . $id . "&p="; //頁碼
$where = "WHERE n_status = 1 AND n_page = 1 AND dc_id = $id";

try {
    //分頁設定開始
    $query = "SELECT COUNT(n_id) FROM news $where";

    if (!isset($p) || !is_numeric($p) || $p < 1) $p = 1;

    $result = $link->prepare($query);
    $result->execute();
    $r = $result->fetchColumn();
    $total = $r;
    $maxPage = $total > 0 ? ceil($total / $check) : 1;
    $p = $p > $maxPage ? 1 : $p;
    $start = ($p - 1) * $check;
    $end_page = $p + 2 <= $maxPage ? $p + 2 : $maxPage;
    $start_page = $end_page - 4 >= 1 ? $end_page - 4 : 1;

    if ($end_page - $start_page < 4) $end_page = $start_page + 4 <= $maxPage ? $start_page + 4 : $maxPage;

    //一令到位
    $query = "SELECT n_id,n_title,n_name,n_unit,n_tag,n_text,
            convert(varchar(4), n_date, 111) AS n_year,
            convert(varchar(5), n_date, 101) AS n_date
        FROM news $where ORDER BY n_order offset {$start} rows fetch next {$check} rows only";

    $data = sql_data($query, $link, 2, "n_id");

    if (!$data && !isset($depart_title[$id])) {
        include("error404.html");
        exit();
    }
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

$title_var =  "最新消息 | " . $depart_title[$id]["dc_title"] . ' | ' . $title_var;

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
        <div class="container">
            <ul class="top_menu depart top_menu_news">
                <?php foreach ($depart_title as $k => $v) { ?>
                    <li <?php echo (isset($id) && $id == $k) ? 'class="active"' : ''; ?>>
                        <a href="news.php?id=<?php echo $k ?>"><?php echo $v["dc_title"]; ?></a>
                    </li>
                <?php } ?>
            </ul>
            <?php if ($data) { ?>
                <ul class="list_news">
                    <?php foreach ($data as $k => $v) { ?>
                        <li>
                            <a href="news-detail.php?id=<?php echo $k; ?>">
                                <div>
                                    <div class="day">
                                        <p><?php echo $v["n_year"]; ?></p>
                                        <p><?php echo $v["n_date"]; ?></p>
                                    </div>
                                    <div class="tag">
                                        <?php echo $v["n_tag"]; ?>
                                    </div>
                                </div>
                                <div>
                                    <div class="txt">
                                        <div class="title">
                                            <?php echo $v["n_title"]; ?>
                                        </div>
                                        <div class="name">
                                            <?php echo $v["n_unit"] . $v["n_name"]; ?>
                                        </div>
                                    </div>
                                    <div class="intro">
                                        <?php echo mb_substr(str_replace('&nbsp;', '', strip_tags(html_decode($v["n_text"]))), 0, 300, "utf-8"); ?>
                                    </div>
                                </div>
                            </a>
                        </li>
                    <?php } ?>
                </ul>
            <?php } ?>
            <?php include "quote/template/page_list.php"; ?>
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