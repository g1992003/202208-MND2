<?php
include 'ready.mak';

// 	資料庫資訊
$db_set = "users";
$id_set = "u_id";
$name_set = "u_name";
$password_set = "u_password";

if ($type == 3) {
	$db_set = "d_class";
	$id_set = "dc_id";
	$name_set = "dc_account";
	$password_set = "dc_password";
}

$password_md5 = "substring(sys.fn_sqlvarbasetostr(HashBytes('MD5','$password')),3,32)";
$result = $link->prepare("SELECT $id_set FROM $db_set WHERE $id_set = '$id' AND $password_set = $password_md5", array(PDO::ATTR_CURSOR => PDO::CURSOR_SCROLL));
$result->execute();

if ($result->rowCount() > 0) {
	echo "1";
} else {
	echo "0";
}

$link = null;//關閉資料庫
