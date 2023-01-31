<?php
require_once 'dominator' . DIRECTORY_SEPARATOR . 'system' . DIRECTORY_SEPARATOR . 'ready.mak';
require_once 'dominator' . DIRECTORY_SEPARATOR . 'system' . DIRECTORY_SEPARATOR . 'LDAP.php';
if (!empty($_POST['logout'])) {
    try {
        @setcookie(session_name(), '', time() - 1, '/');
        $_SESSION = array();
        session_destroy(); //清空session

        header('Content-Type: application/json; charset=utf-8');
        exit(json_encode(array(
            'status' => '200',
            'message' => 'Logout Success!'
        )));
    } catch (\Exception $e) {
        header('HTTP/1.0 400 Bad Request');
        exit(json_encode(array(
            'status' => '400',
            'message' => 'Logout Fail!'
        )));
    }
}else if (!empty($_POST['account']) && !empty($_POST['pwds'])) {
    $username = str_replace(array("'", '"'), "", $_POST['account']);
    $pwds = str_replace(array("'", '"'), "", $_POST['pwds']);
    $username = htmlspecialchars($username, ENT_QUOTES);
    $pwds = htmlspecialchars($pwds, ENT_QUOTES);
    $username = str_replace("&amp;amp;", "&amp;", $username);
    $pwds = str_replace("&amp;amp;", "&amp;", $pwds);

    if (\LDAP::login($username, $pwds)) {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) $myip = $_SERVER['HTTP_CLIENT_IP'];
        else if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) $myip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else $myip = $_SERVER['REMOTE_ADDR'];

        //並寫入登入紀錄
        $sql = "INSERT INTO record (r_date,r_text,r_name,r_account,r_ip) VALUES(getdate(),'登入',:r_name,:r_account,:myip)";
        $stmt = $link->prepare($sql);
        $stmt->bindParam(':r_name', $username, PDO::PARAM_STR);
        $stmt->bindParam(':r_account', $username, PDO::PARAM_STR);
        $stmt->bindParam(':myip', $myip, PDO::PARAM_STR);
        $stmt->execute();

        //開啟session暫存需要的資料
        session_start();
        $_SESSION["front_account"] = $username;
        $_SESSION["front_ip"] = $myip;

        header('Content-Type: application/json; charset=utf-8');
        exit(json_encode(array(
            'status' => '200',
            'message' => 'Login Success!'
        )));
    } else {
        header('HTTP/1.0 400 Bad Request');
        exit(json_encode(array(
            'status' => '400',
            'message' => $cms_lang[16][$language]
        )));
    }
}else{
    header('HTTP/1.0 400 Bad Request');
    exit(json_encode(array(
        'status' => '400',
        'message' => $cms_lang[16][$language]
    )));
}