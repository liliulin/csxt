<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<script language="javascript" type="text/javascript"> 
	var i = 1; 
	var intervalid; 
	intervalid = setInterval("fun()", 1000); 
	function fun() { 
		if (i == 0) { 
		window.location.href = "../views/allKnowReport.jsp"; 
		clearInterval(intervalid); 
	} 
	document.getElementById("mes").innerHTML = i; 
	i--; 
} 
	</head>
</script>
<head>
    <meta charset="UTF-8">
    <title>没有上线的内容！</title>
    <link href="../css/normalize.css" rel="stylesheet" type="text/css">
    <link href="../css/demo.css" rel="stylesheet" type="text/css">
    <link href="../css/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../css/no.css">
</head> 
<html>
<body>

<div class="satic-area">
    <div class="dynamic-area1"></div>
    <div class="dynamic-area2"></div>
</div>
<center>
    <h3>亲！小怪兽想告诉你，今天没有上线的内容！</h3>
    &nbsp&nbsp<img alt="" src="../image/three.png" class="img">
    <a href="../index.jsp" class="an">
        <button class="btn">
            若没有跳转，请点这里
        </button>
    </a>
</center>
</body>
</html>
