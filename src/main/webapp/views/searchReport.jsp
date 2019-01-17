<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.AllKnownReportBean" %>
<%!
	List<AllKnownReportBean>  allKnowReportList;
	AllKnownReportBean allKnowBean ;
%>
<script type="text/javascript">
	function submitForm() {
		document.searchReportByDate.submit();
		//alert("OK")
	}
</script>
<head>
    <meta charset="UTF-8">
    <title>搜索上线内容</title>
    <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="../css/demo.css">
    <link rel="stylesheet" href="../css/style.css">
    <link href="../css/jcDate.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="../css/search.css">
</head>
<html>
<body>
<div class="satic-area">
<div class="dynamic-area1"></div>
<div class="dynamic-area2"></div>
</div>

<center>
    <h3>告诉小怪兽你要哪天的周知报告,你什么也不想要小怪兽给您推荐当天的周知报告情况哦~！</h3>
    <form name="searchReportByDate" id ="searchReportByDate" action="../allKnowAction.do" method="post">
        <img  src="../image/three.png" class="img"/><br>
        <div id="lanrenzhijia">
            <input class="jcDate" style="width:200px; height:28px; line-height:28px; padding:4px;" />
            <input type="submit" value="搜索" id="ipt">

        </div>
       
        <a href="../index.jsp" class="an">
        <button class="btn" id="btn">
            回到首页
        </button>
    </a>
        <br>
    </form>

</center>
<script src="http://www.lanrenzhijia.com/ajaxjs/1.7.2/jquery-1.7.2.min.js"></script>
<script src="../js/jQuery-jcDate.js"></script>
<script>
    $(function (){
        $(".jcDate").jcDate({
            IcoClass : "jcDateIco",
            Event : "click",
            Speed : 100,
            Left : 0,
            Top : 28,
            format : "-",
            Timeout : 100
        });
    });
</script>
</body>
</html>
