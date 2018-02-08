<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

 <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>学生信息列表</title>
	<style>
	
	td{
	text-align: center;
	width:200px;
}
	</style>

</head>
<body>
	<a href="add.jsp">添加</a>
	<form action="selectOne.action" method="post">
	<input type="text" name="student.id">
	<input type="submit" value="id查询">
	</form>
	<table border="1">
	<tr>
	    <td>学号</td>
		<td>学院</td>
		<td>专业</td>
		<td>姓名</td>
		<td>修改学生信息</td>
		<td>删除学生信息</td>
	</tr>
	<c:forEach items="${list}" var="student">
	<tr>
	    <td>${student.id}</td>		
		<td>${student.college}</td>
		<td>${student.specialty}</td>
		<td>${student.name}</td>
		<td><a href="update.jsp?id=${student.id}&college=${student.college}&specialty=${student.specialty}&name=${student.name}">修改</a></td>
		<td><a href="delete.action?student.id=${student.id}">删除</a></td>
	</tr>
	</c:forEach>
	</table>
	
</body>
</html>
