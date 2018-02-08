<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'result.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <a href="query.action">返回首页</a><br>
    查询结果：
    <table border="1">
	<tr>
		<td>学号</td>
		<td>学院</td>
		<td>专业</td>
		<td>姓名</td>
		<td>修改学生信息</td>
		<td>删除学生信息</td>
	</tr>
	<s:iterator var="student" value="student">
	<tr>
		<td>${student.id}</td>
		<td>${student.college}</td>
		<td>${student.specialty}</td>
		<td>${student.name}</td>
		<td><a href="update.jsp?id=${student.id}&college=${student.college}&specialty=${student.specialty}&name=${student.name}">修改</a></td>
		<td><a href="delete.action?student.id=${student.id}">删除</a></td>
	</tr>
	</s:iterator>
	</table>
  </body>
</html>
