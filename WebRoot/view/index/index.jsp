<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="/css/index.css" rel="stylesheet" type="text/css" />

<title>学生学籍管理系统</title>
</head>
<body>
<div id="center">
	<div id="header"></div>
	
	<div id="content">
	
		<div  id="rightMenu">
			<div class="login"><a href="/index/login" target="mainFrame">>>登录</a><br/><a href="/index/register" target="mainFrame">>>注册</a></div>
			
			<div class="menu">
				<div class="item"><a href="/index/query" target="mainFrame">>>学生注册信息查询</a></div>
				<div class="item"><a href="/index">>>item-2</a></div>
				<div class="item"><a href="/index">>>item-3</a></div>
				<div class="item"><a href="/index">>>item-4</a></div>
				<div class="item"><a href="/index">>>item-5</a></div>
				<div class="item"><a href="/index">>>item-6</a></div>
			</div>
			
			<div class="return"><a href="/index">>>返回主页</a></div>
		</div>
		
		<div  id="leftContent">
			<iframe name="mainFrame" src="/index/welcome">
			</iframe>
		</div>
	
	</div>
	
	<div id="footer"></div>
</div>	
	
</body>
</html>