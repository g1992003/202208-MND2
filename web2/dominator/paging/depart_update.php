<?php
include '../system/ready.mak';

$id = filter_var($id, FILTER_SANITIZE_NUMBER_INT);
$id = (int)$id;

if (!isset($id) || !is_numeric($id)) {
	header("location:./");
	exit();
} else {
	$page_name = "d_class.php";
	$sql = "SELECT dc_title,depart.dc_id FROM depart INNER JOIN d_class ON depart.dc_id = d_class.dc_id WHERE d_id = :id";
	$stmt = $link->prepare($sql);
	$stmt->bindParam(':id', $id, PDO::PARAM_INT);
	$stmt->execute();
	$row = $stmt->fetch(PDO::FETCH_NUM);

	$parents_id = html_decode($row[1]);
}
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

		$_SESSION["dom_url"] = $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];

		$db_name = "depart";
		$id_name = "d_id";
		$title_name = "d_title";
		$text_name = "d_text";
		$order_name = "d_order";
		$status_name = "d_status";
		$m_id_name = "dc_id";

		if ($_SESSION["dominator_main"] < 3) {
			//後台管者者
			$title = html_decode("《" . $row[0] . "》介紹管理");
		} else {
			//處室管理者
			$title = html_decode("處室介紹管理【" . $row[0] . "】");
		}

		//資訊
		$query = "SELECT * FROM $db_name WHERE $id_name = '$id'";
		$data = sql_data($query, $link, 1);

		//文章分類
		// $query = "SELECT * FROM [n_class] ORDER BY nc_order";
		// $classify_ary = sql_data($query, $link, 2, "nc_id");

		$link = null;

		$title_current = "處室介紹";

		// 1、型態：input、date、textarea、img、file、select
		// 2、ALL：標題
		// 3、ALL：欄位名
		// 4、input、date、textarea：描述，可不填	 / 	img、file：共用id，請編流水號 	/ 	select：下拉式選單資料陣列
		// 5、img：寬度 	/ 	textarea：HTML編輯器開關，0 or 1 	/ 	select：陣列如為二維，請加第二維key值	 / 	input：限數字值為1
		// 6、img：高度 	/ 	textarea：無HTML編輯器時，為textarea行數

		$group_array = array(
			array("input", "標題", $title_name, "", "", ""),
			array("textarea", "內容", $text_name, "", "1", ""),
		);
		$group_array = g_array($group_array, $data);
		?>
		<div id="content">
			<div id="content-header" class="mini">
				<h1><?php echo $cms_lang[23][$language]; ?> <?php echo $title_current; ?></h1>

			</div>
			<div id="breadcrumb">
				<a href="index.php" title="<?php echo $cms_lang[9][$language]; ?>" class="tip-bottom"><i class="fa fa-home"></i> <?php echo $cms_lang[10][$language]; ?></a>
				<?php if ($_SESSION["dominator_main"] < 3) { ?>
					<a href="<?php echo $page_name; ?>">處室分類管理</a>
				<?php } ?>
				<a href="<?php echo $db_name; ?>.php?id=<?php echo $parents_id; ?>"><?php echo $title; ?></a>
				<a class="current"><?php echo $cms_lang[23][$language]; ?> <?php echo $title_current; ?></a>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="fa fa-align-justify"></i>
								</span>
								<h5><?php echo $cms_lang[23][$language]; ?> <?php echo $title_current; ?></h5>
							</div>
							<div class="widget-content nopadding">
								<form action="../control/doupdate.php?db=<?php echo $db_name; ?>&id_name=<?php echo $id_name; ?>&id=<?php echo $id; ?>" method="post" class="form-horizontal" id="form_update" name="form_update" enctype="multipart/form-data">
									<div class='form-group n_status'>
										<label class='col-sm-3 col-md-3 col-lg-2 control-label'>文章狀態</label>
										<div class='col-sm-9 col-md-9 col-lg-10'>
											<select name='d_status'>
												<option value='0' <?php echo ($data[$status_name] == 0) ? "selected" : ""; ?>>草稿</option>
												<option value='1' <?php echo ($data[$status_name] == 1) ? "selected" : ""; ?>>發布中</option>
											</select>
											<button data-toggle="dropdown" class="btn btn-xs btn-info dropdown-toggle" style="margin-right:5px;" onclick="window.open('<?php echo $url_set . $_SERVER['HTTP_HOST']; ?>/news-detail.php?id=<?php echo $id; ?>')">查看 </button>
										</div>
									</div>
									<?php foreach ($group_array as $v)	group($v[0], $v[1], $v[2], $v[3], $v[4], $v[5], $v[6]); ?>
									<div class="form-actions">
										<button type="button" class="btn btn-primary btn-sm" onclick="doupdate();"><?php echo $cms_lang[23][$language]; ?></button>
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
		function doupdate() {
			$("#form_update").submit();
		};
	</script>
</body>

</html>