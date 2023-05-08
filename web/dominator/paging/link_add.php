<?php
include '../system/ready.mak';
if (!isset($p) || !is_numeric($p)) {
	header("location:" . $url_set . $_SESSION["dom_url"]); //導回頁面
	exit();
}
$page_name = "link.php?p=$p";
include '../quote/head.php';
?>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<link rel="stylesheet" href="../css/font-awesome.css" />
<link rel="stylesheet" href="../css/colorpicker.css" />
<link rel="stylesheet" href="../css/datepicker.css" />
<link rel="stylesheet" href="../css/icheck/flat/blue.css" />
<link rel="stylesheet" href="../css/select2.css" />
<link rel="stylesheet" href="../css/jquery-ui.css" />
<link rel="stylesheet" href="../css/unicorn.css" />
<link rel="stylesheet" href="../css/file.css" />
<link rel="stylesheet" href="../css/cropper.min.css">
<!--[if lt IE 9]>
		<script type="text/javascript" src="../js/respond.min.js"></script>
		<![endif]-->
</head>

<body data-color="grey" class="flat">
	<div id="wrapper">
		<?php
		include '../quote/header.php';
		include '../quote/sidebar.php';

		$title = ($p == 1) ? "系統連結管理" : "好站連結管理";
		$db_name = "link";
		$id_name = "l_id";
		$title_name = "l_title";
		$title_name_2 = "l_title_2";
		$type_name = "l_type";
		$text_name = "l_text";
		$url_name = "l_url";
		$page_name = "l_page";
		$status_name = "l_status";
		$order_name = "l_order";

		$type_data = array("1" => "連結", "2" => "文章");

		$link = null;
		$title_current = "連結";

		// 1、型態：input、date、textarea、img、file、select
		// 2、ALL：標題
		// 3、ALL：欄位名
		// 4、input、date、textarea：描述，可不填	 / 	img、file：共用id，請編流水號 	/ 	select：下拉式選單資料陣列
		// 5、img：寬度 	/ 	textarea：HTML編輯器開關，0 or 1 	/ 	select：陣列如為二維，請加第二維key值	 / 	input：限數字值為1
		// 6、img：高度 	/ 	textarea：無HTML編輯器時，為textarea行數
		$group_array = array(
			array("select", "文章類型", $type_name, $type_data, "", ""),
			array("input", "標題《中文》", $title_name, "", "", ""),
			array("input", "標題《英文》", $title_name_2, "", "", ""),
			array("input", "連結", $url_name, "", "", ""),
			array("textarea", "內容", $text_name, "", "1", ""),
		);
		$group_array = g_array($group_array, $data);
		?>
		<div id="content">
			<div id="content-header" class="mini">
				<h1><?php echo $cms_lang[22][$language]; ?> <?php echo $title_current; ?></h1>
			</div>
			<div id="breadcrumb">
				<a href="index.php" title="<?php echo $cms_lang[9][$language]; ?>" class="tip-bottom"><i class="fa fa-home"></i> <?php echo $cms_lang[10][$language]; ?></a>
				<a href="<?php echo $db_name; ?>.php?p=<?php echo (int) $p; ?>"><?php echo $title; ?></a>
				<a class="current"><?php echo $cms_lang[22][$language]; ?> <?php echo $title_current; ?></a>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="fa fa-align-justify"></i>
								</span>
								<h5><?php echo $cms_lang[22][$language]; ?> <?php echo $title_current; ?></h5>
							</div>
							<div class="widget-content nopadding">
								<form action="../control/doadd.php?db=<?php echo $db_name; ?>" method="post" class="form-horizontal" id="form_add" name="form_add" enctype="multipart/form-data">
									<input type="hidden" name="<?php echo $order_name; ?>" value="0" />
									<input type="hidden" name="<?php echo $status_name; ?>" value="0" />
									<input type="hidden" name="<?php echo $page_name; ?>" value="<?php echo (int) $p; ?>" />
									<div class="form-group">
										<label class='col-sm-3 col-md-3 col-lg-2 control-label'></label>
										<div class='col-sm-9 col-md-9 col-lg-10'>
											<b style="color:red">連結或內容，擇一選擇</b>
										</div>
									</div>
									<?php foreach ($group_array as $v)	group($v[0], $v[1], $v[2], $v[3], $v[4], $v[5], $v[6]); ?>
									<div class="form-actions">
										<button type="button" class="btn btn-primary btn-sm" onclick="doadd();"><?php echo $cms_lang[22][$language]; ?></button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<?php include '../quote/footer.php'; ?>
	</div>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/jquery-ui.custom.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/bootstrap-colorpicker.js"></script>
	<script src="../js/bootstrap-datepicker.js"></script>
	<script src="../js/jquery.icheck.min.js"></script>
	<script src="../js/select2.min.js"></script>
	<script src="../js/jquery.nicescroll.min.js"></script>
	<script src="../js/unicorn.js"></script>
	<script src="../js/unicorn.form_common.js"></script>
	<script src="ckeditor/ckeditor.js"></script>
	<script src="../js/window_load.js"></script>
	<script src="../js/cropper.min.js"></script>
	<script type="text/javascript">
		//新增
		function doadd() {
			$("#form_add").submit();
		};
	</script>
</body>

</html>