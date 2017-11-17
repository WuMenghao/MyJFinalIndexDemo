<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/quary.css"/>
<title>Insert title here</title>
</head>
<body>
	<div id="queryTable">
		<table>
			<tr>
				<th>序号</th>
				<th>编号</th>
				<th>账号</th>
				<th>用户名</th>
				<th>电子邮件</th>
			</tr>
			<c:forEach items="${users}" var="v" varStatus="state">
				<tr>
					<td>${state.index+1 }</td>
					<td>${v.id}</td>
					<td>${v.acount}</td>
					<td>${v.user_name}</td>
					<td>${v.email}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>