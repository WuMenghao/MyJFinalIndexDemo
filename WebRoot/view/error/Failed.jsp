<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	color:black;
	font-size:14px;
	margin:20px auto;
	}
</style>
</head>
<body>
	<div>
		登录失败.<br/>
		错误提示:${msg}<br/>
		您提交的信息为:<br/>
		用户名:${login.acount}<br/>
		密码:${login.pass_word}<br/>
		<a href="/index/login">返回登录页面</a>
	</div>
</body>
</html>