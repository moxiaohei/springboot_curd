<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户界面</title>
</head>
<body>
	<h2 align="center">添加用户界面</h2>
	
	<form action="/user/addUser" method="get">
		<table align="center" width="80%">
			<tr align="center">
				<td>学生编号:<input name="uid" type="text"></td>
			</tr>
			<tr align="center">
				<td>学生权限:<input name="uauth" type="text"></td>
			</tr>
			<tr align="center">
				<td>学生姓名:<input name="username" type="text"></td>
			</tr>
			<tr align="center">
				<td>学生密码:<input name="password" type="password"></td>
			</tr>
			<tr align="center">
				<td>学生状态:<input name="ustatus" type="text"></td>
			</tr>
			<tr align="center">
				<td>学生别名:<input name="uname" type="text"></td>
			</tr>
			<tr align="center">
				<td>
					<input type="submit" value="提交">
					<input type="button" value="取消">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>