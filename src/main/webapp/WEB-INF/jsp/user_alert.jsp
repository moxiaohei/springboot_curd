<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/user/updateUser" method="get">
		<table align="center" width="80%">
			<tr>
				<td>学生编号:<input name="uid" type="text" value="${user.uid }" readonly="readonly"></td>
			</tr>
			<tr>
				<td>学生权限:<input name="uauth" type="text" value="${user.uauth }"></td>
			</tr>
			<tr>
				<td>学生姓名:<input name="username" type="text" value="${user.username }"></td>
			</tr>
			<tr>
				<td>学生密码:<input name="password" type="password" value="${user.password }"></td>
			</tr>
			<tr>
				<td>学生状态:<input name="ustatus" type="text" value="${user.ustatus }"></td>
			</tr>
			<tr>
				<td>学生别名:<input name="uname" type="text" value="${user.uname }"></td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="提交">
					<input type="button" value="取消" onclick="">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>