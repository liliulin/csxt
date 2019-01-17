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
            上线项目<input type="text" name="name" placeholder="maxBox后台服务" autofocus>
        </p>
        <p class="contact-input">
            上线分支<input type="text" name="name" placeholder="master" autofocus>
        </p>

        <p class="contact-input">类型
            <label for="select" class="select">
                <select name="subject" id="select">
                    <option value="" selected>Bug</option>
                    <option value="1">新需求</option>
                </select>
            </label>
        </p>

        <p class="contact-input">
            上线内容描述<input type="text" name="name" placeholder="" autofocus>
        </p>

        <p class="contact-input">测试结果
            <label for="select" class="select">
                <select name="subject" id="select1">
                    <option value="" selected>通过</option>
                    <option value="1">不通过</option>
                </select>
            </label>
        </p>

        <p class="contact-input">
            负责人<input type="text" name="name" placeholder="" autofocus>
        </p>

        <p class="contact-input">报告人
            <label for="select" class="select">
                <select name="subject" id="select2">
                    <option value="" selected>曹越</option>
                    <option value="1">史令天</option>
                    <option value="" selected>刘思妍</option>
                    <option value="1">王刚</option>
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
