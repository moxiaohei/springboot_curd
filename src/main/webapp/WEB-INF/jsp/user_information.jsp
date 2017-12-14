<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息页面</title>
</head>
<body>
	<h2 align="center">学生所有信息</h2>
	<a href="/user/toAddUser">添加用户信息</a>
	<table width="80%" align="center">
		<tr align="center">
			<td>用户编号</td>
			<td>用户权限</td>
			<td>用户姓名</td>
			<td>用户密码</td>
			<td>用户状态</td>
			<td>用户别名</td>
			<td>管        理</td>
		</tr>
		<c:forEach items="${list}" var="user" >
			<tr align="center">
				<td>${user.uid }</td>
				<td>${user.uauth }</td>
				<td>${user.username }</td>
				<td>${user.password }</td>
				<td>${user.ustatus }</td>
				<td>${user.uname }</td>
				<td>
					<a href="/user/getUser${user.uid }">修改</a>
					<a href="/user/deletUser${user.uid }">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>