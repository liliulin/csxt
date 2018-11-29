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
<html>
<body>
<!-- onload="submitForm(); -->
<form name="searchReportByDate" id ="searchReportByDate" action="../allKnowAction.do" method="post">
	告诉小怪兽你要搜索哪天的周知报告,若不输入默认为当前小怪兽给您推荐当天的周知报告情况：
	<input type="text" name="reportDate"><input type="submit" value="搜索"><br>
</form>
<br>
<a href="../index.jsp">回到首页</a>
</body>
</html>
