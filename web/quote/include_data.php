<?php
header("Strict-Transport-Security: max-age=31536000; includeSubDomains");
header("X-Frame-Options: DENY");
function start_session($expire = 0)
{
    if ($expire == 0) {
        $expire = ini_get("session.gc_maxlifetime");
    } else {
        ini_set("session.gc_maxlifetime", $expire);
    }
    if (empty($_COOKIE['PHPSESSID'])) {
        session_set_cookie_params($expire);
        session_start([
            'use_only_cookies' => 1,
            'cookie_lifetime' => 0,
            'cookie_secure' => 0,
            'cookie_httponly' => 1
        ]);
    } else {
        session_start([
            'use_only_cookies' => 1,
            'cookie_lifetime' => 0,
            'cookie_secure' => 0,
            'cookie_httponly' => 1
        ]);
        setcookie("PHPSESSID", session_id(), time() + $expire);
    }
}

start_session(600);
$this_page = $url_set . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];

//TITLE資訊
$query = "SELECT d_id,d_text FROM document WHERE d_id IN(1,2,3,4,5,6,7,8,21,22,23,24,25,26,27)";
$meta_data = sql_data($query, $link, 2, "d_id");
$title_var = $meta_data[1]["d_text"];

//關於本部
$query = "SELECT a_id,a_title FROM about WHERE a_id > 5 AND a_status = 1 ORDER BY a_order";
$about_title = sql_data($query, $link, 2, "a_id");

//處室分類
$query = "SELECT dc_id,dc_title FROM d_class ORDER BY dc_order";
$depart_title = sql_data($query, $link, 2, "dc_id");
$first_depart = reset($depart_title);

//系統連結
$query = "SELECT l_id,l_title,l_url,l_type FROM link WHERE l_page = 1 AND l_status = 1 ORDER BY l_order";
$sys_link_title = sql_data($query, $link, 2, "l_id");

//好站連結
$query = "SELECT l_id,l_title,l_url,l_type FROM link WHERE l_page = 2 AND l_status = 1 ORDER BY l_order";
$link_title = sql_data($query, $link, 2, "l_id");
