<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script type="text/javascript">
	function submitForm() {
		document.searchReportByDate.submit();
		//alert("OK")
	}
</script>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/normalize.css" />
<link rel="stylesheet" type="text/css" href="../css/demo.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/addall.css">
<title>添加上线周知内容</title>

</head>

<html>
<body>
	<div class="satic-area">
    <div class="dynamic-area1"></div>
    <div class="dynamic-area2"></div>
</div>
<form name="addAllKnowReport" action="../addAllKnowAction.do" method="post" class="contact" id="con">
    <fieldset class="contact-inner" >
        <h1>华沁上线测试报告</h1>
        <p class="contact-input">
            上线项目<input type="text" name="projectName">
        </p>
        <p class="contact-input">
            上线分支<input type="text" name="branch">
        </p>

        <p class="contact-input" >类型
            <label for="select" class="select" name="type">
                <select name="type" id="select">
                    <option value="Bug">Bug</option>
                    <option value="需求">需求</option>
                </select>
            </label>
        </p>

        <p class="contact-input">
            上线内容描述<input type="text" name="content" placeholder="" autofocus>
        </p>

        <p class="contact-input" >测试结果
            <label for="select" class="select" name="result">
                <select name="result" id="select1">
                    <option value="通过" >通过</option>
                    <option value="不通过">不通过</option>
                </select>
            </label>
        </p>

        <p class="contact-input">
            负责人<input type="text" name="onwer" >
        </p>

        <p class="contact-input">报告人
            <label for="select" class="select"  name="reporter">
                <select name="reporter" id="select2">
                    <option value="曹越" >曹越</option>
                    <option value="史令天">史令天</option>
                    <option value="刘思妍" >刘思妍</option>
                    <option value="王刚">王刚</option>
                </select>
            </label>
        </p>


        <p class="contact-submit" id="btn-con">
            <input type="submit" value="添加保存" id="btn" name="submit">
        </p>
    </fieldset>
</form>
</body>
</html>
