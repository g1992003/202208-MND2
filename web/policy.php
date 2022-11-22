<?php
include 'dominator/system/ready.mak';
include 'quote/include_data.php';

$id = (!isset($id)) ?  $first_depart["dc_id"] : $id;
if (!is_numeric($id)) {
    header("location:./");
    exit();
}

$check = 10; //分頁數量
$page_set = "?id=" . $id . "&p="; //頁碼
$where = "WHERE n_status = 1 AND n_page = 3 AND dc_id = $id";

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
$query = "SELECT n_id,n_title,n_name,n_unit,n_tag,n_file,
            convert(varchar(4), n_date, 111) AS n_year,
            convert(varchar(5), n_date, 101) AS n_date
        FROM news $where ORDER BY n_order";
// offset {$start} rows fetch next {$check} rows only
$data = sql_data($query, $link, 2, "n_id");

$link = null;

$title_var =  "一令到位 | " . $depart_title[$id]["dc_title"] . " | " . $title_var;

include "quote/template/head.php";
?>
<link rel="stylesheet" href="dist/css/page.css" />
</head>

<body class="lang_tw logOut">
    <?php
    include "quote/template/added.php";
    include "quote/template/nav.php";
    ?>
    <main>
        <div class="banner">
            <h1>一令到位<i></i></h1>
        </div>
        <div class="container">
            <ul class="top_menu depart">
                <?php foreach ($depart_title as $k => $v) { ?>
                    <li <?php echo (isset($id) && $id == $k) ? 'class="active"' : ''; ?>>
                        <a href="policy.php?id=<?php echo $k ?>"><?php echo $v["dc_title"]; ?></a>
                    </li>
                <?php } ?>
            </ul>
            <table class="list" id="newsList">
                <thead>
                    <tr>
                        <th>發布日期</th>
                        <th>消息分類</th>
                        <th>消息標題</th>
                        <th>發布人員</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data as $k => $v) { ?>
                        <tr data-href="upload/<?php echo $v["n_file"]; ?>" style="cursor:pointer" class="list_item">
                            <td class="day">
                                <p><?php echo $v["n_year"]; ?></p>
                                <p><?php echo $v["n_date"]; ?></p>
                            </td>
                            <td class="tag">
                                <?php echo $v["n_tag"]; ?>
                            </td>
                            <td class="title">
                                <?php echo $v["n_title"]; ?>
                            </td>
                            <td class="name">
                                <?php echo $v["n_unit"] . $v["n_name"]; ?>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
            <?php include "quote/template/page_list.php"; ?>
        </div>
    </main>
    <?php include "quote/template/footer.php"; ?>
    <script src="dist/js/function.js"></script>
    <script src="dist/js/newsList.js"></script>
    <script>
        if ($('.top_menu_2 li').length < 2) {
            $('.top_menu_2').css('display', 'none')
        }
    </script>

</body>

</html>