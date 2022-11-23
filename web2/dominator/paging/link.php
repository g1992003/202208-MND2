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
<link rel="stylesheet" href="../css/jquery-ui.css" />
<link rel="stylesheet" href="../css/icheck/flat/blue.css" />
<link rel="stylesheet" href="../css/select2.css" />
<link rel="stylesheet" href="../css/unicorn.css" />
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

		$title = ($p == 1) ? "系統連結管理" : "好站連結管理";
		$db_name = "link";
		$id_name = "l_id";
		$title_name = "l_title";
		$type_name = "l_type";
		$text_name = "l_text";
		$url_name = "l_url";
		$page_name = "l_page";
		$status_name = "l_status";
		$order_name = "l_order";

		$type_data = array("1" => "連結", "2" => "文章");
		$view_data = ($p == 1) ? "edi_system.php" : "edi_link.php";
		$status_data = array("0" => "草稿", "1" => "發布中");


		$paging = false; //如果不使用php分頁，請改為：false
		$paging_where = "WHERE l_page = $p";

		//資訊
		$query = "SELECT * FROM $db_name $paging_where ORDER BY $order_name ASC";
		if ($paging) $query .= $paging_limit; //分頁用limit
		$data = sql_data($query, $link);
		if ($data) $count = count($data); //排序使用
		$link = null;
		?>
		<div id="content">
			<div id="content-header" class="mini">
				<h1><?php echo $title; ?></h1>

			</div>
			<div id="breadcrumb">
				<a href="index.php" title="<?php echo $cms_lang[9][$language]; ?>" class="tip-bottom"><i class="fa fa-home"></i> <?php echo $cms_lang[10][$language]; ?></a>
				<a class="current"><?php echo $title; ?></a>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="widget-box">
						<div class="widget-title">
							<span class="icon">
								<i class="fa fa-th"></i>
							</span>
							<h5><?php echo $title; ?></h5>
							<div style="padding-top: 3px;">
								<a href="<?php echo $db_name; ?>_add.php?p=<?php echo (int) $p; ?>" class="btn btn-default btn-xs"><i class="fa fa-plus"></i> <?php echo $cms_lang[22][$language]; ?></a>
							</div>
						</div>
						<div class="widget-content nopadding">
							<table class="table table-bordered table-striped table-hover data-table">
								<thead>
									<tr>
										<th><?php echo $cms_lang[21][$language]; ?></th>
										<th><?php echo $cms_lang[42][$language]; ?></th>
										<th>文章類型</th>
										<th>標題</th>
										<th>文章狀態</th>
									</tr>
								</thead>
								<tbody>
									<?php
									if (isset($data) && $data != "") {
										foreach ($data as $k => $v) {
									?>
											<tr>
												<td style="text-align: center; vertical-align: middle;" width="20%" id="td_img">
													<div class="btn-group">
														<button data-toggle="dropdown" class="btn btn-xs btn-<?php echo $v[$status_name] == "0" ? "danger" : "info"; ?> dropdown-toggle" id="button_<?php echo $v[$id_name]; ?>">操作 <span class="caret"></span></button>
														<ul class="dropdown-menu dropdown-yellow">
															<li><a href="<?php echo $db_name; ?>_update.php?id=<?php echo (int) $v[$id_name]; ?>&p=<?php echo (int) $p; ?>"><?php echo $cms_lang[23][$language]; ?></a></li>
															<li class="divider"></li>
															<li><a href="#" onclick="del(<?php echo (int) $v[$id_name]; ?>);return false;"><?php echo $cms_lang[24][$language]; ?></a></li>
														</ul>
													</div>
												</td>
												<td style="text-align: center; vertical-align: middle; word-break:break-all;" width="15%">
													<?php include '../quote/order_select.php'; //排序功能
													?>
												</td>
												<td style="text-align: center; vertical-align: middle; word-break:break-all;font-size:30px;" width="10%">
													<?php
													echo ($v[$type_name] == 1) ? '<i class="fa fa-external-link" aria-hidden="true"></i>' : '<i class="fa fa-file-image-o" aria-hidden="true"></i>';
													?>

												</td>
												<td style="text-align: center; vertical-align: middle; word-break:break-all;" width="50%">
													<?php echo html_decode($v[$title_name]); ?>
												</td>
												<td style="text-align: center; vertical-align: middle; word-break:break-all;" width="20%">
													<?php if ($v[$type_name] == 1) { ?>
														<button data-toggle="dropdown" class="btn btn-xs btn-info dropdown-toggle" style="margin-right:5px;" onclick="window.open('<?php echo $v[$url_name]; ?>')">查看 </button>
													<?php } else { ?>
														<button data-toggle="dropdown" class="btn btn-xs btn-info dropdown-toggle" style="margin-right:5px;" onclick="window.open('<?php echo $url_set . $_SERVER['HTTP_HOST'] . '/' . $view_data . '?id=' . $v[$id_name]; ?>')">查看 </button>
													<?php } ?>
													<select onchange="select_check('<?php echo $v[$id_name]; ?>');" id="check_<?php echo $v[$id_name]; ?>">
														<?php
														foreach ($status_data as $k1 => $v1) {
														?>
															<option value="<?php echo $k1; ?>" <?php echo $v[$status_name] == $k1 ? "selected" : ""; ?>><?php echo $v1; ?></option>
														<?php
														}
														?>
													</select>
												</td>
											</tr>
									<?php
										}
									}
									?>
								</tbody>
							</table>
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
	<script src="../js/bootbox.min.js"></script>
	<script src="../js/jquery.icheck.min.js"></script>
	<script src="../js/select2.min.js"></script>
	<script src="../js/jquery.dataTables.min.js"></script>
	<script src="../js/jquery.nicescroll.min.js"></script>
	<script src="../js/unicorn.js"></script>
	<script src="../js/unicorn.tables.js"></script>
	<script src="../js/window_load.js"></script>
	<script type="text/javascript">
		<?php include '../quote/del_box.php'; //刪除功能
		?>
	</script>
	<?php include '../control/status_check.php'; //文章狀態
	?>
	<?php include '../quote/order_send.php'; //排序from表
	?>
</body>

</html>