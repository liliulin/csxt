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
<html>
<body>
<center>
<h1>亲！小怪兽想告诉你，今天没有上线的内容！</h1>
<img alt="" src="./image/timg.gif"><br>
<a href="./index.jsp">若没有跳转，请点这里</a>
</center>
</body>
</html>
