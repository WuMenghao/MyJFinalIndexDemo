<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/login.css">
<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/js/login.js"></script>
<title>登录</title>
</head>
<body>
	<center>
		<div id="loginForm">
			<form action="/index/check" method="post" name="login">
				<table>
					<tr>
						<th colspan="2">用户登录</th>
					</tr>
					<tr>
						<td>账号:</td>
						<td><div><input type="text" 
								name="login.acount" id="acount"></div></td>
					</tr>
					<tr>
						<td>密码:</td>
						<td>
							<input type="password" 
								name="login.pass_word" id="password">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit"
							     value="登录" id="submit"/>
							<input 
								type="reset" name="reset" value="重置" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>