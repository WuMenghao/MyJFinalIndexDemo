<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/login.css">
<script type="text/javascript" src="/js/login.js"></script>
<title>登录</title>
</head>
<body>
 	<div id="loginForm">
        <form action="/index/check" method="post" name="login">
        	<div id="title"><h3>用户登录</h3></div>
            <span class="right">账号:</span>
            <input type="text" name="login,acount" id="acount"><br>
            <span class="right">密码:</span>
            <input type="password" name="login.pass_word" id="password" ><br>
            <input type="submit" value="登录" id="submit" onclick="return checkForm();"/>
            <input type="reset" name="reset" value="重置" />
        </form>
    </div>
</body>
</html>