<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script type="text/javascript">
	function submitForm() {
		document.searchReportByDate.submit();
		//alert("OK")
	}
</script>
<title>添加上线周知内容</title>
<html>
<body>
	<form name="addAllKnowReport" action="../addAllKnowAction.do" method="post">
	<table border=1  width="80%" heigh="80%" cellspacing="0">
	<tr>
		<td colspan=5 align="center" >华沁上线测试报告</td>
	</tr>
	<tr>
		<td colspan=5>上线项目：<input type="text" name="projectName"></td>
	</tr>
	<tr>
	<td colspan=5>上线分支:<input type="text" name="branch"></td>
	</tr>
	<tr>
	<td colspan=5 align="center" bgcolor=greenyellow>本次上线内容</td>
	</tr>
	<tr bgcolor=greenyellow align="center">
		<td align="center">类型</td>
		<td align="center">上线内容描述</td>
		<td align="center">测试结果</td>
		<td>负责人</td>
	</tr>
	
	<tr>
		<td align="center">
			<select name="type">
				<option value="需求" selectted="需求">需求</option>
			    <option value="BUG">BUG</option>
			</select>
		</td>
		<td><input type="textArea" name="content" row="2" cols="50"></textArea></td>
			<td align="center">
				<select name="result">
				<option value="通过" selected="通过">通过</option>
				<option value="不通过">不通过</option>
				</select>
			</td>
		<td><input type="text" name="onwer"></td>
	</tr>
	
	<tr>
		<td align="center">报告人</td>
		<td>
			<select name="reporter" style="width:100px;">
				<option value="曹越">曹越</option>
				<option value="史令天">史令天</option>
				<option value="刘思妍">刘思妍</option>
				<option value="王刚">王刚</option>
			</select>
		</td>
		<td colspan="2">
			<input type="submit" name="submit" value="添加保存">
		</td>
	</tr>

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
</form>
</body>
</html>
