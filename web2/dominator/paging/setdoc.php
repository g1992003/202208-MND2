<?php
include '../system/ready.mak';
$page_name = basename(__FILE__);
if (isset($p) && $p == 1)  $page_name = "setdoc.php?p=1";
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

		$title = array(0 => "其他基本設定", 21 => "單位名稱",  22 => "地址", 23 => "地址連結", 24 => "電話", 25 => "信箱");
		$id_arr = "21,22,23,24,25";
		if (isset($p) && $p == 1) {
			$title = array(0 => "主視覺設定", 26 => "圖片",  27 => "影片");
			$id_arr = "26,27";
		}
		$db_name = "document";
		$id_name = "d_id";
		$text_name = "d_text";

		$query = "SELECT * FROM $db_name WHERE $id_name IN($id_arr)";
		$data = sql_data($query, $link, 2, "d_id");
		$link = null;
		?>
		<div id="content">
			<div id="content-header" class="mini">
				<h1><?php echo $title[0]; ?></h1>

			</div>
			<div id="breadcrumb">
				<a href="index.php" title="<?php echo $cms_lang[9][$language]; ?>" class="tip-bottom"><i class="fa fa-home"></i> <?php echo $cms_lang[10][$language]; ?></a>
				<a href="#" class="current"><?php echo $title[0]; ?></a>
			</div>
			<div class="container-fluid">
				<?php
				foreach ($data as $k => $v) {
				?>
					<div class="row">
						<div class="col-xs-12">
							<div class="widget-box">
								<div class="widget-title">
									<span class="icon">
										<i class="fa fa-align-justify"></i>
									</span>
									<h5><?php echo $title[$k]; ?></h5>
								</div>
								<div class="widget-content nopadding">
									<form action="../control/doupdate.php?db=<?php echo $db_name; ?>&id_name=<?php echo $id_name; ?>&id=<?php echo $v[$id_name]; ?>" method="post" class="form-horizontal" id="form_update_<?php echo $k; ?>" name="form_update" enctype="multipart/form-data">
										<div class="form-group">
											<label class="col-sm-3 col-md-3 col-lg-2 control-label"><?php echo $title[$k]; ?></label>
											<div class="col-sm-9 col-md-9 col-lg-10">
												<?php
												if ($k < 20) {
												?>
													<textarea name="<?php echo $text_name; ?>" rows="6" style="width: 100%;"><?php echo html_decode($v[$text_name]); ?></textarea>
													<?php
												} elseif ($k == 26 || $k == 27) {
													$field_title = $title[$k];
													$field_name = $text_name;
													$field_id = $k; //上傳的編號
													$field_type = 1; //1：檔案	2:圖片
													$field_size = "【請上傳mp4影音檔】";
													$field_width = "";
													$field_height = "";
													if ($k == 26) {
														$field_type = 2; //1：檔案	2:圖片
														$field_width = 1920; //如為檔案，請註解
														$field_height = 1080; //如為檔案，請註解
														$field_size = "建議尺寸：$field_width*$field_height<span style='color:red;font-weight:bold;'>【請上傳jpg圖檔，圖檔上傳限制大小為4M，圖檔過大時圖片將無法更換】</span>"; //如為檔案，請註解
													}
													if ($v[$field_name] != "") {
													?>
														<div class="form-group">
															<label class="col-sm-3 col-md-3 col-lg-2 control-label"><?php echo $title[$k]; ?></label>
															<div class="col-sm-9 col-md-9 col-lg-10">
																<div class="col-sm-9 col-md-9 col-lg-10">
																	<?php
																	if ($k == 27) {
																		echo "<a href='../../upload/$v[$field_name]' target='_blank'><i class='fa fa-video-camera' aria-hidden='true'></i> 檢視影片</a>";
																	} else {
																		echo "<img src='../../upload/$v[$field_name]' style='max-width:100%'>";
																	}
																	?>
																	<br /><a href='javascript:location.href="../control/delfile.php?db=<?php echo $db_name; ?>&key=<?php echo $field_name ?>&id_name=<?php echo $id_name; ?>&id=<?php echo $field_id; ?>";' class='btn btn-danger btn-xs'><i class='fa fa-times'></i> 刪除檔案《刪除後將無法回復》</a>
																</div>
															</div>
														</div>
													<?php
													}
													?>
													<div class="form-group">
														<label class="col-sm-3 col-md-3 col-lg-2 control-label">更換 <?php echo $title[$k]; ?></label>
														<div class="col-sm-9 col-md-9 col-lg-10">
															<input type='hidden' name='<?php echo ($k == 26) ? $field_name : ''; ?>' id='img_name<?php echo $field_id; ?>'>
															<a class="btn_addPic" href="javascript:void(0);">
																<span class="filebn"><em>+</em>選擇<?php echo $title[$k]; ?></span>
																<?php
																if ($k == 27) {
																	echo "<input class='filePrew' tabindex='3' type='file' name='d_text' id='file_id$field_id' size='3' onchange='file_upload($field_type,$field_id);'>";
																} else {
																	echo "<input class='filePrew' tabindex='3' type='file' id='file_id$field_id' size='3' onchange='file_upload($field_type,$field_id,$field_width,$field_height);'>";
																}
																?>
															</a>
															<span id="filename<?php echo $field_id; ?>">尚未選擇 <?php echo $title[$k] . $field_size; ?></span>
															<div width='100%'>
																<img id='preview<?php echo $field_id; ?>' style='max-width: 600px; max-height: 600px;'>
															</div>
														</div>
													</div>
												<?php
												} else {
												?>
													<input type="text" class="form-control input-sm" name="<?php echo $text_name; ?>" value="<?php echo html_decode($v[$text_name]); ?>" placeholder="請輸入<?php echo $title[$k]; ?><?php echo $k == 2 ? "，關鍵字詞之間請以「,」分隔。" : ""; ?>" />
												<?php
												}
												?>
											</div>
										</div>
										<div class="form-actions">
											<button type="button" class="btn btn-primary btn-sm" onclick="doupdate(<?php echo $k; ?>);"><?php echo $cms_lang[23][$language]; ?></button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				<?php
				}
				?>
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
		//	     		新增備註
		function doupdate(id) {
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
					$("#form_update_" + id).submit();
				}, "json");
			} else {
				$("#form_update_" + id).submit();
			}
		};
	</script>
</body>

</html>