<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/register.css">

<title>注册</title>
</head>
<body>
<center>
	<div id="registerForm">
		<form action="/index/save" method="post">
			<input type="hidden" name="register.id" value="${register.id}"/>
			<table>
			<tr><th colspan="2">新用户注册</th></tr>
			<tr><td>用   户 名:</td><td><input class="text" type="text" name="register.user_name" value="${register.user_name }"></td></tr>
			<tr><td>账&nbsp&nbsp号:</td><td><input class="text" type="text" name="register.acount" value="${register.acount }"></td></tr>
			<tr><td>密&nbsp&nbsp码:</td><td><input class="text" type="password" name="register.pass_word" value="${register.pass_word }"></td></tr>
			<tr><td>电子邮箱:</td><td><input class="text" type="text" name="register.email" value="${register.email}"></td></tr>
			<tr><td colspan="2"><input class="button" type="submit" value="注册"><input class="button" type="reset" name="reset" value="重置"/></td></tr>
			</table>
		</form>
	</div>
</center>
</body>
</html>