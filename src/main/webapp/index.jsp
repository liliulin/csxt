<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function submitForm() {
		document.report.submit();
		alert("OK");
	}
</script>

<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/index.css">
<title>怪兽家报告系统</title>
</head>
<body>
<div class="satic-area">
	<div class="dynamic-area1"></div>
	<div class="dynamic-area2"></div>
</div>
<div id="con">
	<ul>
		<li class="li1">
			<a href="./views/addAllKnowReport.jsp">
				<img src="image/chushi1.png">
				<h4>添加今天上线的内容</h4>
			</a>
		</li>
		<li class="li2">
			<a href="./views/searchReport.jsp">
				<img src="image/tongji1.png">
				<h4>测试周知报告</h4>
			</a>
		</li>
		<li class="li3">
			<a href="#">
				<img src="image/three.png">
				<h4>测试详细报告</h4>
			</a>
		</li>
		<li class="li4">
			<a href="#">
				<img src="image/ceshixiangxi1.png">
				<h4>上线统计表</h4>
			</a>
		</li>
	</ul>
</div>
</body>
</html>
