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
<title>上线周知报告</title>
<html>
<body>
	<form name="allKnowReport" action="../allKnowAction.do" method="post">
	<table border=1  width="80%" heigh="80%" cellspacing="0">
	<tr>
		<td colspan=5 align="center" >华沁上线测试报告</td>
	</tr>
	<tr>
		<td colspan=5>上线项目：maxBox后台服务；微信前端</td>
	</tr>
	<tr>
	<td colspan=5>上线分支:master</td>
	</tr>
	<tr>
	<td colspan=5 align="center" bgcolor=greenyellow>本次上线内容</td>
	</tr>
	<tr bgcolor=greenyellow align="center">
		<td align="center">序号</td>
		<td align="center">类型</td>
		<td align="center">上线内容描述</td>
		<td align="center">测试结果</td>
		<td>负责人</td>
	</tr>
<%
    allKnowReportList = (List<AllKnownReportBean>)request.getAttribute("allKnowList");
	if(allKnowReportList !=null) {
		for(int i=0;i<allKnowReportList.size();i++) {
			allKnowBean = allKnowReportList.get(i);
%>	
	<tr>
		<td align="center"><%=allKnowBean.getId() %></td>
		<td align="center"><%=allKnowBean.getType() %></td>
		<td><%=allKnowBean.getContent() %></td>
		<td align="center"><%=allKnowBean.getResult() %></td>
		<td><%=allKnowBean.getTestOnwer()%></td>
	</tr>
	
<%		
		}
%>
	<tr>
		<td colspan=2 align="center">报告人</td>
		<td><%=allKnowBean.getReporter() %></td>
		<td align="center">报告时间</td>
		<td><%=allKnowBean.getReportDate() %></td>
	</tr>
<% 
	}
%>
<!-- 
	<tr>
		<td>002</td>
		<td>需求</td>
		<td>需求id=24 怪兽家总部店面不加创建新品校验</td>
		<td>通过</td>
		<td>产品：运营-董猛<br>研发：彭国辉 <br>测试：王刚</td>
	<tr>
	<tr>
		<td>003</td>
		<td>需求</td>
		<td>需求id=24 怪兽家总部店面不加创建新品校验</td>
		<td>通过</td>
		<td>产品：运营-董猛<br>研发：彭国辉 <br>测试：王刚</td>
	<tr>
	 -->
</table>
<br>
<a href="./views/searchReport.jsp">我返回至选择时间界面</a>
</form>
</body>
</html>
