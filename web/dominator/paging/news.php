<?php
include '../system/ready.mak';
include '../quote/head.php';
if (!isset($p) || !is_numeric($p)) {
	header("location:" . $url_set . $_SESSION["dom_url"]); //導回頁面
	exit();
}
$page_name = "news.php?p=$p";
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

		$db_name = "news";
		$id_name = "n_id";
		$title_name = "n_title";
		$date_name = "n_date";
		$unit_name = "n_unit";
		$name_name = "n_name";
		$text_name = "n_text";
		$file_name = "n_file";
		$tag_name = "n_tag";
		$page_name = "n_page";
		$status_name = "n_status";
		$order_name = "n_order";
		$m_id_name = "dc_id";

		$title = ($p == 1) ? "最新消息管理" : (($p == 2) ? "行政規則管理" : "一令到位管理");
		$veiwurl = ($p == 1) ? "news.php" : "";

		if ($_SESSION["dominator_main"] < 3) {
			//後台管者者
			$paging_where = "WHERE n_page = $p";
			$orderby = "$m_id_name DESC,$order_name ASC";
		} else {
			//處室管理者
			$dc_id = $_SESSION["dominator_id"];
			$dc_title =  $_SESSION["depart_name"];

			$title = html_decode($title . '【' . $dc_title . '】');
			$paging_where = "WHERE n_page = $p AND dc_id = $dc_id";
			$orderby = "$order_name ASC";
		}

		//分類		
		$query = "SELECT dc_id,dc_title FROM d_class";
		$c_data = sql_data($query, $link, 2, "dc_id");

		$status_data = array("0" => "草稿", "1" => "發布中");

		$paging = false; //如果不使用php分頁，請改為：false


		//資訊
		$query = "SELECT * FROM $db_name $paging_where ORDER BY $orderby";
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
										<?php if ($_SESSION["dominator_main"] < 3) {
											echo "<th>分類</th>";
										} ?>
										<th>標題</th>
										<?php if ($p == 1) {
											echo "<th>文章狀態</th>";
										} ?>
									</tr>
								</thead>
								<tbody>
									<?php
									if (isset($data) && $data != "") {
										foreach ($data as $k => $v) {
									?>
											<tr>
												<td style="text-align: center; vertical-align: middle;" width="15%" id="td_img">
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
												<?php if ($_SESSION["dominator_main"] < 3) {
													echo '<th style="text-align: center; vertical-align: middle; word-break:break-all;" width="20%">';
													echo (isset($c_data[$v[$m_id_name]]["dc_title"])) ? html_decode($c_data[$v[$m_id_name]]["dc_title"]) : '';
													echo '</th>';
												} ?>
												<td style="text-align: center; vertical-align: middle; word-break:break-all;" width="30%">
													<?php echo html_decode($v[$title_name]); ?>
												</td>
												<?php if ($p == 1) { ?>
													<td style="text-align: center; vertical-align: middle; word-break:break-all;" width="20%">
														<button data-toggle="dropdown" class="btn btn-xs btn-info dropdown-toggle" style="margin-right:5px;" onclick="window.open('<?php echo $url_set . $_SERVER['HTTP_HOST']; ?>/news-detail.php?id=<?php echo $v[$id_name]; ?>')">查看 </button>
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
												<?php } ?>
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