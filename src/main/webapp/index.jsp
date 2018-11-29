<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function submitForm() {
		document.report.submit();
		alert("OK");
	}
</script>
<html>
<body>
<form name="report" action="action" method="post">
<a href="./views/searchReport.jsp">让小怪兽告诉你测试周知报告</a><br>
<a href="">让小怪兽告诉你测试详细报告</a><br>
<a href="">让小怪兽告诉你上线统计表</a>
</form>
</body>
</html>
