<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>添加学生信息</title>
	<link rel="stylesheet" type="text/css" href="index.css">
  </head>
  
  <body>
  
    <form action="save.action" method="post">
    	<a href="javascript:history.go(-1);" style="margin-left:20px;">返回上一页</a>
    	<h3>新增学生信息</h3>
    	<label>学院：<input type="text" name="student.college"></label>
    	<label>专业：<input type="text" name="student.specialty"></label>
    	<label>姓名：<input type="text" name="student.name"></label>
    	<input type="submit" value="添加">
    </form>

  </body>
</html>
