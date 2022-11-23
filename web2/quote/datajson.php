<?php
header("Content-Type: text/html; charset=utf-8");
include '../dominator/system/ready.mak';

if (!isset($id)) {
     exit();
} else {
     $query = "SELECT 2 n_id,n_title,n_name,n_unit,n_tag,n_text,
               DATE_FORMAT(n_date,'%Y') AS n_year,
               DATE_FORMAT(n_date,'%m/%d') AS n_date
               FROM news WHERE n_status = 1 AND n_page = 1 AND dc_id = $id ORDER BY n_order LIMIT 2";
     $data = sql_data($query, $link);
     foreach ($data as $k => $v) {
          $data[$k]["n_text"] = mb_substr(str_replace('&nbsp;', '', strip_tags(html_decode($v["n_text"]))), 0, 300, "utf-8");
     }
     $link = null; //關閉資料庫
     echo json($data);
}
