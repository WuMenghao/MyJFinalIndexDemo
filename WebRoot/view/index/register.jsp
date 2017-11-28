<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/register.css">
<script type="text/javascript" src="/js/register.js"></script>
<title>注册</title>
</head>
<body>
	<div id="registerForm">
		<form action="/index/save" method="post">
			<input type="hidden" name="register.id" value="${register.id}"/>
			<div id="title"><h3>新用户注册</h3></div>
			
			<span class="right">用 &nbsp 户 名:</span>
			<input id="username" type="text" name="register.user_name" >
			<br/>
			<span class="right">账 &nbsp &nbsp &nbsp 号:</span>
			<input id="acount" type="text" name="register.acount" >
			<br/>
			<span class="right">密 &nbsp &nbsp &nbsp 码:</span>
			<input id="password" type="password" name="register.pass_word" >
			<br/>
			<span class="right">电子邮箱:</span>
			<input id="email" type="text" name="register.email" >
			<br/>
			<input id="submit" type="submit" value="注册" onclick="return checkForm();">
			<input  type="reset" name="reset" value="重置"/>
		</form>	
	</div>
</body>
</html>