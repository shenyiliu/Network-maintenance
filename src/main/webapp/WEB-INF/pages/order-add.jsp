<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>订单管理</title>
<meta name="description" content="订单管理">
<meta name="keywords" content="订单管理">

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">

<link rel=“stylesheet”
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->

		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<div class="content-wrapper">

			<!-- 内容头部 -->
			<section class="content-header">
			<h1>
				订单管理 <small>全部订单</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/url/main"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="${pageContext.request.contextPath}/url/order-list">订单管理</a></li>
				<li class="active">订单详情</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content"> <!--订单信息-->
			<div class="panel panel-default">
				<div class="panel-heading">订单信息</div>
				<input type="hidden" id="user_id" value="${sessionScope.userInfo.id}">
				<div class="row data-type">

					<div class="col-md-2 title">订单号</div>
					<div class="col-md-4 data">
						<input type="text" id="orderCode" class="form-control" placeholder="hbgc—+学号"
							   value="">
					</div>
					<div class="col-md-2 title">姓名</div>
					<div class="col-md-4 data">
						<input type="text" id="name" class="form-control" placeholder="姓名"
							value="">
					</div>

					<div class="col-md-2 title">下单时间</div>
					<div class="col-md-4 data">
						<div class="input-group date">
							<div class="input-group-addon">
								<i class="fa fa-calendar"></i>
							</div>
							<input type="text" class="orderTime form-control pull-right"
								id="datepicker-a3"
								value="">
						</div>
					</div>
					<div class="col-md-2 title">电话</div>
					<div class="col-md-4 data">
						<input type="text" id="phone" class="form-control" placeholder="联系电话"
							value="">
					</div>

					<div class="col-md-2 title">地址</div>
					<div class="col-md-10 data">
						<input type="text" class="form-control" id="address" placeholder="维修所在地"
							value="">
					</div>


				</div>
			</div>

			<div class="box-tools text-center">
				<button type="btn bg-maroon" id="btnSave" class="saveOrder btn bg-maroon">保存</button>
				<button type="button" class="btn bg-default"
						onclick="history.back(-1);">返回</button>
			</div>
			<!--工具栏/--> </section>
			<!-- 正文区域 /-->


		</div>
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 1.2.0
		</div>
			<strong>
				湖北工程学院
			</strong>
		<!-- 底部导航 /-->
		</footer>
	</div>

	<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script
			SRC="${pageContext.request.contextPath}/plugins/layer/layer.js"></script>
	<script type="text/javascript">
		var $webName = "${pageContext.request.contextPath}";
	</script>
	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});
		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}
		
		$(document).ready(function() {
			
			$.fn.datetimepicker.dates['zh-CN'] = {
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$('#datepicker-a3').datetimepicker({
				format : "yyyy-mm-dd hh:ii",
				autoclose : true,
				todayBtn : true,
				minuteStep:1,
				language : "zh-CN"
			});
		});

		$(document).ready(function() {
			// 激活导航位置
			setSidebarActive("admin-order");

			// 列表按钮
			$("#dataList td input[type='checkbox']").iCheck({
				checkboxClass : 'icheckbox_square-blue',
				increaseArea : '20%'
			});
			// 全选操作
			$("#selall").click(function() {
				var clicks = $(this).is(':checked');
				if (!clicks) {
					$("#dataList td input[type='checkbox']").iCheck("uncheck");
				} else {
					$("#dataList td input[type='checkbox']").iCheck("check");
				}
				$(this).data("clicks", !clicks);
			});
		});

		$(document).on("click",".editOrder",function(){
			var text = $(this).text();

			var orderId = $(this).attr("paramOid");
			var travellerId = $(this).attr("paramTid");
			if(text == "删除"){
				$(this).text("添加");
				//执行删除订单旅客表中的旅客 
				$.ajax({
					url:$webName + "/order/deleteOrderByTraveller",
					type:"post",
					data:"orderId=" + orderId + "&travellerId=" + travellerId,
					success:function(count){	
						console.log(count);
						//成功 
						if(count >= 0){
							$("#peopleCount").val(count);
						}
					}						
				})
			}else if(text == "添加"){
				$(this).text("删除");
				$.ajax({
					url:$webName + "/order/insertOrderByTraveller",
					type:"post",
					data:"orderId=" + orderId + "&travellerId=" + travellerId,
					success:function(count){	
						console.log(count);
						//成功 
						if(count >= 0){
							$("#peopleCount").val(count);
						}
					}						
				})
			}				
		});		
		

		//1.保存按钮
		$(document).on("click","#btnSave",function () {
			var user_id=$("#user_id").val();
			var name=$("#name").val();
			var orderTime=$(".orderTime").val();
			var phone=$("#phone").val();
			var address=$("#address").val();
			var orderCode=$("#orderCode").val();
			if (name!=""&&orderTime!=""&&phone!=""&&address!=""){
				$.ajax({
					url:$webName+"/order/insertOrder",
					data:{
						user_id:user_id,
						name:name,
						orderTime:orderTime,
						phone:phone,
						address:address,
						orderCode:orderCode
					},
					dataType:"json",
					type:"post",
					success:function (info) {
						if (info>0){
							layer.msg("添加成功");
							window.location.href="${pageContext.request.contextPath}/url/order-list";
						}else {
							alert("添加失败");
						}
					}

				})
			}else {
				layer.msg("请检查信息是否填写完整");
			}

		});

		$("#orderCode").blur(function () {
			var orderCode=$("#orderCode").val();
			$.ajax({
				url:$webName+"/order/selectOrderUserCode",
				data:{
					orderCode:orderCode
				},
				dataType:"json",
				type:"post",
				success:function (info) {
					if (info!=""){
						layer.msg("订单号已存在，请重新输入！");
						$("#orderCode").val("");
					}
				}

			})
		});


	</script>
</body>


</html>