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
    <title>上线周知报告</title>
    <link href="../css/normalize.css" rel="stylesheet" type="text/css">
    <link href="../css/demo.css" rel="stylesheet" type="text/css">
    <link href="../css/style.css" rel="stylesheet" type="text/css">
    <link href="../css/addkonw.css" rel="stylesheet" type="text/css">
</head>

<html>
<body>

    
    <div class="satic-area" id="satic-area">
    <div class="dynamic-area1"></div>
    <div class="dynamic-area2"></div>
    </div>
    
	<form name="allKnowReport" action="../allKnowAction.do" method="post" class="contact" id="con">
	
	<fieldset class="contact-inner" ></fieldset>
	<h1>华沁上线测试报告</h1>
        <p class="contact-input">
            上线项目:&nbsp&nbsp&nbsp&nbspmaxBox后台服务\微信前端
        </p>
        <p class="contact-input">
            上线分支:&nbsp&nbsp&nbsp&nbspmaster
        </p>
        <p class="contact-input" id="center" >
            本次上线内容
        </p>
        <div class="contact-input" id="con">
            <ul>
                <li class="li1">序号</li>
                <li class="li2">类型</li>
                <li class="li3">上线内容描述</li>
                <li class="li4">测试结果</li>
                <li class="li5">负责人</li>
            </ul>
            <%allKnowReportList = (List<AllKnownReportBean>)request.getAttribute("allKnowList");
	if(allKnowReportList !=null) {
		for(int i=0;i<allKnowReportList.size();i++) {
			allKnowBean = allKnowReportList.get(i);%>	
	<ul>
		<li class="li6"><%=allKnowBean.getId() %></li>
		<li class="li7"><%=allKnowBean.getType() %></li>
		<li class="li8"><%=allKnowBean.getContent() %></li>
		<li class="li9"><%=allKnowBean.getResult() %></li>
		<li class="li10"><%=allKnowBean.getTestOnwer()%></li>
	</ul>
	
<%}%>
	         <ul>
                <li class="li11">报告人</li>
                <li class="li12"><%=allKnowBean.getReporter() %></li>
                <li class="li13">报告时间</li>
                <li class="li14"><%=allKnowBean.getReportDate() %></li>
            </ul>
<% }%>
           

         </div>
         
         <p class="contact-submit" id="btn-con">
            <input type="submit" value="我返回至选择时间界面" id="btn">
        </p>
   </form>
</body>
</html>
