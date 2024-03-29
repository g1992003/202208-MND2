<?php
include '../system/ready.mak';
if (!isset($p) || !is_numeric($p)) {
	header("location:" . $url_set . $_SESSION["dom_url"]); //導回頁面
	exit();
}
$page_name = "news.php?p=$p";
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

		$title = ($p == 1) ? "最新消息管理" : (($p == 2) ? "行政規則管理" : "一令到位管理");
		$db_name = "news";
		$id_name = "n_id";
		$title_name = "n_title";
		$date_name = "n_date";
		$unit_name = "n_unit";
		$name_name = "n_name";
		$text_name = "n_text";
		$file_name = "n_file";
		$tag_name = "n_tag";
		$no_name = "n_no";
		$page_name = "n_page";
		$status_name = "n_status";
		$order_name = "n_order";
		$m_id_name = "dc_id";

		//分類		
		$query = "SELECT dc_id,dc_title FROM d_class";
		$c_data = sql_data($query, $link, 2, "dc_id");

		if ($_SESSION["dominator_main"] < 3) {
			//後台管者者
			$dc_id = "";
		} else {
			//處室管理者
			$dc_id = (int) $_SESSION["dominator_id"];
			$dc_title =  $_SESSION["depart_name"];
			$title = $title . '【' . $dc_title . '】';
		}

		$status = ($p == 1) ? 0 : 1;

		$link = null;
		$title_current = "文章";


		// 1、型態：input、date、textarea、img、file、select
		// 2、ALL：標題
		// 3、ALL：欄位名
		// 4、input、date、textarea：描述，可不填	 / 	img、file：共用id，請編流水號 	/ 	select：下拉式選單資料陣列
		// 5、img：寬度 	/ 	textarea：HTML編輯器開關，0 or 1 	/ 	select：陣列如為二維，請加第二維key值	 / 	input：限數字值為1
		// 6、img：高度 	/ 	textarea：無HTML編輯器時，為textarea行數
		if ($p == 1) {
			$group_array = array(
				array("date", "日期", $date_name, "", "", ""),
				array("input", "標題", $title_name, "", "", ""),
				array("input", "分類", $tag_name, "", "", ""),
				array("input", "發布單位", $unit_name, "", "", ""),
				array("input", "發布人員", $name_name, "", "", ""),
				array("file", "檔案", $file_name, "1", ".pdf,.docx,.txt,.zip,.mp4", ""),
				array("textarea", "內容", $text_name, "", "1", ""),
			);
		}
		if ($p == 2) {
			$group_array = array(
				array("date", "日期", $date_name, "", "", ""),
				array("input", "標題", $title_name, "", "", ""),
				array("input", "文號", $no_name, "", "", ""),
				array("input", "分類", $tag_name, "", "", ""),
				array("input", "發布單位", $unit_name, "", "", ""),
				array("input", "發布人員", $name_name, "", "", ""),
				array("file", "檔案", $file_name, "1", ".pdf,.docx,.txt,.zip", ""),
			);
		}
		if ($p == 3) {
			$group_array = array(
				array("date", "日期", $date_name, "", "", ""),
				array("input", "標題", $title_name, "", "", ""),
				array("input", "分類", $tag_name, "", "", ""),
				array("input", "發布單位", $unit_name, "", "", ""),
				array("input", "發布人員", $name_name, "", "", ""),
				array("file", "檔案", $file_name, "1", ".pdf,.docx,.txt,.zip", ""),
			);
		}
		$group_array = g_array($group_array, $data);

		$class_array = array(
			array("select", "分類", $m_id_name, $c_data, "dc_title", ""),
		);
		$class_array = g_array($class_array, $data);
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
									<?php
									if ($_SESSION["dominator_main"] < 3) {
										foreach ($class_array as $v) group($v[0], $v[1], $v[2], $v[3], $v[4], $v[5], $v[6]);
									} else {
										echo '<input type="hidden" name="' . $m_id_name . '" value="' . $dc_id . '" />';
									}
									?>
									<input type="hidden" name="<?php echo $order_name; ?>" value="0" />
									<input type="hidden" name="<?php echo $status_name; ?>" value="<?php echo $status; ?>" />
									<input type="hidden" name="<?php echo $page_name; ?>" value="<?php echo (int) $p; ?>" />

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
		var cropper = [];
		var img_w = [];
		var img_h = [];

		function file_upload(type, id, img_width = '', img_height = '') {
			if (type == 1) {
				$("#filename" + id).html($("#file_id" + id).val());
			} else {
				$("#filename" + id).html("<span style='color:red;font-weight:bold;'>請確認圖片剪裁區域。<span>");
				var input = document.querySelector('input[id=file_id' + id + ']');
				if (input.files && input.files[0]) {
					var reader = new FileReader();
					reader.onload = function(e) {
						$('#preview' + id).attr('src', e.target.result);
						if (cropper[id] != undefined) cropper[id].destroy();
						var $image = $('#preview' + id),
							image = $image[0];
						var croppable = false;
						cropper[id] = new Cropper(image, {
							touchDragZoom: false,
							mouseWheelZoom: false,
							zoomable: true,
							dragMode: "none",
							viewMode: 0,
							autoCropArea: 1,
							aspectRatio: img_width / img_height
						});
						img_w[id] = img_width;
						img_h[id] = img_height;
					}
					reader.readAsDataURL(input.files[0]);
				}
			}
		};
		//	     		新增
		function doadd() {
			if (cropper.length) {
				var img = [];
				for (var i in cropper) img[i] = cropper[i].getCroppedCanvas({
					width: img_w[i],
					height: img_h[i],
					fillColor: "#ffffff"
				}).toDataURL('image/jpeg');
				$.post("../control/imgupload.php", {
					imgcode: img
				}, function(data) {
					for (var i in data.msg) $("#img_name" + i).val(data.msg[i]);
					$("#form_add").submit();
				}, "json");
			} else {
				$("#form_add").submit();
			}
		};
	</script>
</body>

</html>