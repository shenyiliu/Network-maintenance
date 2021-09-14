<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>

<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>数据分析</title>
<meta name="description" content="数据分析">
<meta name="keywords" content="数据分析">

<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">

<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

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
			<input type="hidden" id="roles" value="${sessionScope.roleInfo.name}">
			<!-- 内容头部 -->
			<section class="content-header">
				<h1>
					数据分析 <small>数据图表</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/url/main"><i
							class="fa fa-dashboard"></i> 首页</a></li>
					<li><a href="${pageContext.request.contextPath}/url/yj-list">数据分析</a></li>
					<li class="active">数据分析</li>
				</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content">

				<!-- .box-body -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">图表</h3>
						<input type="hidden" id="user_id" value="${sessionScope.userInfo.id}">
					</div>

					<div class="box-body">
						<div style="width: 100%;height: 600px;float: left;" id="yuanBing">

						</div>
<%--						<div style="width: 50%;height: 600px;float: left;" id="LeiDa">--%>

<%--						</div>--%>
						<div id="zhiFang" style="width: 100%;height: 500px;float: left;">

						</div>

					</div>
					<!-- /.box-body -->

					<!-- .box-footer-->
                <div class="box-footer">
                    <div class="pull-left">
                        <div id="pageDiv" class="form-group form-inline">

                        </div>
                    </div>

                    <div class="box-tools pull-right">
                        <ul id="pageUl" class="pagination">

                        </ul>
                    </div>
                </div>
                <!-- /.box-footer-->
				</div>
			</section>
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
		</footer>
		<!-- 底部导航 /-->

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
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
	<script type="text/javascript">
		var $webName = "${pageContext.request.contextPath}";
	</script>

	<script src="${pageContext.request.contextPath}/plugins/apache-echarts/echarts.js"></script>

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
			// 激活导航位置
			setSidebarActive("admin-fx");

		});

	</script>
</body>
<script type="text/javascript">

	$(document).ready(function () {

		ZXtu();

		SXtu();
	})


	//折线图
	function ZXtu() {
		$.ajax({
			url:"${pageContext.request.contextPath}/order/selectDayNum",
			type:"get",
			dataType:"json",
			success:function (info) {
				var chartDom = document.getElementById('zhiFang');
				var myChart = echarts.init(chartDom);
				var option;

				var xData = (function () {
					var data = [];
					for (var i = 1; i < 31; i++) {
						data.push(i + '日');
					}
					return data;
				})();


				option = {
					backgroundColor: '#1A1835',

					tooltip: {
						trigger: 'axis',
						axisPointer: {
							type: 'shadow',
							textStyle: {
								color: '#fff',
							},
						},
					},
					grid: {
						borderWidth: 0,
						top: 110,
						bottom: 95,
						textStyle: {
							color: '#fff',
						},
					},
					legend: {
						x: '46%',
						top: '11%',
						textStyle: {
							color: '#90979c',
						},
						data: ['订单量'],
					},

					calculable: true,
					xAxis: [
						{
							type: 'category',
							axisLine: {
								lineStyle: {
									color: 'rgba(204,187,225,0.5)',
								},
							},
							splitLine: {
								show: false,
							},
							axisTick: {
								show: false,
							},
							data: xData,
						},
					],

					yAxis: [
						{
							type: 'value',
							splitLine: {
								show: false,
							},
							axisLine: {
								lineStyle: {
									color: 'rgba(204,187,225,0.5)',
								},
							},
						},
					],
					dataZoom: [
						{
							show: true,
							height: 30,
							xAxisIndex: [0],
							bottom: 30,

							start: 10,
							end: 80,
							handleIcon:
									'path://M306.1,413c0,2.2-1.8,4-4,4h-59.8c-2.2,0-4-1.8-4-4V200.8c0-2.2,1.8-4,4-4h59.8c2.2,0,4,1.8,4,4V413z',
							handleSize: '110%',
							handleStyle: {
								color: '#5B3AAE',
							},
							textStyle: {
								color: 'rgba(204,187,225,0.5)',
							},
							fillerColor: 'rgba(67,55,160,0.4)',
							borderColor: 'rgba(204,187,225,0.5)',
						},
						{
							type: 'inside',
							show: true,
							height: 15,
							start: 1,
							end: 35,
						},
					],
					series: [
						{
							name: '订单量',
							type: 'line',
							symbolSize: 10,
							symbol: 'circle',
							itemStyle: {
								color: '#c257F6',
							},
							markPoint: {
								label: {
									normal: {
										textStyle: {
											color: '#fff',
										},
									},
								},
								data: [
									{
										type: 'max',
										name: '最大值',
									},
									{
										type: 'min',
										name: '最小值',
									},
								],
							},
							data: info
						},
					],
				};
				option && myChart.setOption(option);
			}

		});




	}

	//扇形图
	function SXtu() {
		$.ajax({
			url:"${pageContext.request.contextPath}/order/selectOrderStateNum",
			type:"get",
			dataType:"json",
			success:function (info) {
				var chartDom = document.getElementById('yuanBing');
				var myChart=echarts.init(chartDom);
				var option;

				let series = [];
				let pieDatas = [
					{
						"value": info[3],
						"name": "全部订单"
					},
					{
						"value": info[1],
						"name": "已接订单"
					},
					{
						"value": info[0],
						"name": "未接订单"
					},
					{
						"value": info[2],
						"name": "完成订单"
					}
				];
				let maxRadius =  80,
						barWidth = 9,
						barGap =  9;
				let sumValue = 0;
				let showValue = true,showPercent = true;
				pieDatas.map(item => {
					sumValue += item.value;
				})
				let barColor =  [

					{
						"color1": "rgba(53, 198, 215, 1)",
						"color2": ""
					},
					{
						"color1": "rgba(101, 223, 138, 1)",
						"color2": ""
					},
					{
						"color1": "rgba(253, 161, 79, 1)",
						"color2": ""
					},
					{
						"color1": "rgba(68,165,255,1)",
						"color2": ""
					}
				];
				pieDatas.map((item, i) => {
					series.push({
						type: 'pie',
						clockWise: false, //顺时加载
						hoverAnimation: false, //鼠标移入变大
						radius: [(maxRadius - i * (barGap + barWidth)) + '%', (maxRadius - (i + 1) * barWidth - i * barGap) + '%'],
						center: [ "30%", "50%"],
						label: {
							show: false
						},
						itemStyle: {
							label: {
								show: false,
							},
							labelLine: {
								show: false
							},
							borderWidth: 5,
						},
						data: [{
							value: item.value,
							name: item.name,
							itemStyle: {
								color: barColor[i]&&barColor[i].color1 || 'rgba(68,165,255,1)'
							}
						}, {
							value: sumValue - item.value,
							name: '',
							itemStyle: {
								color: "transparent",
							},
							tooltip: {
								show: false
							},
							hoverAnimation: false
						}]
					})
					series.push({
						name: 'blank',
						type: 'pie',
						silent: true,
						z: 0,
						clockWise: false, //顺时加载
						hoverAnimation: false, //鼠标移入变大
						radius: [(maxRadius - i * (barGap + barWidth)) + '%', (maxRadius - (i + 1) * barWidth - i * barGap) + '%'],
						center: [ "30%", "50%"],
						label: {
							show: false
						},
						itemStyle: {
							label: {
								show: false,
							},
							labelLine: {
								show: false
							},
							borderWidth: 5,
						},
						data: [{
							value: 1,
							itemStyle: {
								color: "rgba(255, 255, 255,.13)",
								borderWidth: 0
							},
							tooltip: {
								show: false
							},
							hoverAnimation: false
						}]
					});
				})
				option = {
					grid: {
						left:  0,
						right:  0,
						top:  0,
						bottom:  0,
					},
					backgroundColor: '#1A1835',
					tooltip: {
						show: true,
						trigger: "item",
					},
					legend: {
						show: true,
						left: '60%',
						top: 'middle',
						icon: "circle",
						itemWidth: 10,
						itemHeight: 10,
						itemGap:  20,
						textStyle: {
							fontSize:  16,
							color:  '#fff',
						},
						formatter: (name) => {
							var datas = pieDatas;
							let total = 0;
							datas.map(item => {
								total += (item.value - 0)
							})
							let valueIndex = datas.map(item => item.name).indexOf(name);
							return name + "  " + (showValue ? datas[valueIndex].value + (option.legendValueUnit || '') + ' ' : '') + (showPercent ? ((datas[valueIndex].value / total) * 100).toFixed(2) + "%" : '');
						} ,
					},
					series: series,
				};

				option && myChart.setOption(option);

			}
		});
	}
</script>
</html>