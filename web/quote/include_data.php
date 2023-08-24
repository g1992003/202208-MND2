<?php

header("Strict-Transport-Security: max-age=31536000; includeSubDomains");

date_default_timezone_set('Asia/Taipei');

$id_account = !isset($_COOKIE["PHPSESSID"]) ? "" : $_COOKIE["PHPSESSID"];
$id_account = preg_replace("/[^A-Za-z0-9 ]/", "", $id_account);

$this_page = $url_set . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];

try {
    //TITLE資訊
    $query = "SELECT d_id,d_text FROM document WHERE d_id IN(1,2,3,4,5,6,7,8,21,22,23,24,25,26,27)";
    $meta_data = sql_data($query, $link, 2, "d_id");
    $title_var = $meta_data[1]["d_text"];

    //關於本部
    $query = "SELECT a_id,a_title,a_title_2 FROM about WHERE a_id > 5 AND a_status = 1 ORDER BY a_order";
    $about_title = sql_data($query, $link, 2, "a_id");
    $about_title_nav = array_chunk($about_title, 10);

    //處室分類
    $query = "SELECT dc_id,dc_title,dc_title_2 FROM d_class ORDER BY dc_order";
    $depart_title = sql_data($query, $link, 2, "dc_id");
    $first_depart = reset($depart_title);
    $depart_title_nav = array_chunk($depart_title, 10);

    //系統連結
    $query = "SELECT l_id,l_title,l_title_2,l_url,l_type FROM link WHERE l_page = 1 AND l_status = 1 ORDER BY l_order";
    $sys_link_title = sql_data($query, $link);
    $sys_link_title_nav = $sys_link_title;
    $sys_link_title0 = array(); // 1~8
    foreach ($sys_link_title_nav as $k => $v) {
        if ($k <= 8) {
            array_push($sys_link_title0, $v);
            unset($sys_link_title_nav[$k]);
        }
    }
    $sys_link_title_nav = array_chunk($sys_link_title_nav, 10);

    //好站連結
    $query = "SELECT l_id,l_title,l_title_2,l_url,l_type FROM link WHERE l_page = 2 AND l_status = 1 ORDER BY l_order";
    $link_title = sql_data($query, $link, 2, "l_id");
    $link_title_nav = array_chunk($link_title, 10);


    //直屬單位
    $query = "SELECT * FROM about WHERE a_id IN (1,2,3,4,5)";
    $article_data = sql_data($query, $link);
} catch (PDOException $e) {
    $msg =  $e->getMessage();
    $error_text = "[" . date("Y/m/d H:i:s") . "] " . $msg . "\n";
    $error_text = $error_text . $e->getTraceAsString() . "\n";
    error_log($error_text, 3, "/xampp/apache/logs/pdo-errors.log");
    $link = null;
    header('Location:errorDB.html');
}
