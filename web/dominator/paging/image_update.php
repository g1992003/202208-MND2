<?php
include '../system/ready.mak';
$id = filter_var($id, FILTER_SANITIZE_NUMBER_INT);
$id = (int)$id;
if (!isset($id) || !is_numeric($id)) {
	header("location:" . $url_set . $_SESSION["dom_url"]); //導回頁面
	exit();
}

$page_name = "image.php";
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

		$title = "忠信報管理";
		$db_name = "image";
		$id_name = "i_id";
		$title_name = "i_title";
		$img_name = "i_img";
		$url_name = "i_url";
		$order_name = "i_order";

		//資訊
		$query = "SELECT * FROM $db_name WHERE $id_name = '$id'";
		$data = sql_data($query, $link, 1);
		$link = null;
		$title_current = "忠信報";

		// 1、型態：input、date、textarea、img、file、select
		// 2、ALL：標題
		// 3、ALL：欄位名
		// 4、input、date、textarea：描述，可不填	 / 	img、file：共用id，請編流水號 	/ 	select：下拉式選單資料陣列
		// 5、img：寬度 	/ 	textarea：HTML編輯器開關，0 or 1 	/ 	select：陣列如為二維，請加第二維key值	 / 	input：限數字值為1
		// 6、img：高度 	/ 	textarea：無HTML編輯器時，為textarea行數
		$group_array = array(
			array("input", "標題", $title_name, "", "", ""),
			array("img", "圖片", $img_name, "1", "424", "600"),
			array("input", "連結", $url_name, "", "", ""),
		);
		$group_array = g_array($group_array, $data);
		?>
		<div id="content">
			<div id="content-header" class="mini">
				<h1><?php echo $cms_lang[23][$language]; ?> <?php echo $title_current; ?></h1>

			</div>
			<div id="breadcrumb">
				<a href="index.php" title="<?php echo $cms_lang[9][$language]; ?>" class="tip-bottom"><i class="fa fa-home"></i> <?php echo $cms_lang[10][$language]; ?></a>
				<a href="<?php echo $db_name; ?>.php"><?php echo $title; ?></a>
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
								<form action="../control/doupdate.php?db=<?php echo $db_name; ?>&id_name=<?php echo $id_name; ?>&id=<?php echo (int) $id; ?>" method="post" class="form-horizontal" id="form_update" name="form_update" enctype="multipart/form-data">
									<?php foreach ($group_array as $v) group($v[0], $v[1], $v[2], $v[3], $v[4], $v[5], $v[6]); ?>
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

		function doupdate() {
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
					$("#form_update").submit();
				}, "json");
			} else {
				$("#form_update").submit();
			}
		};
	</script>
</body>

</html>