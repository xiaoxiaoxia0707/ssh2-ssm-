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
    <title>修改学生信息</title>
	<link rel="stylesheet" type="text/css" href="index.css">
  </head>
  
  <body>
  
    <form action="update.action" method="post">
    <a href="javascript:history.go(-1);" style="margin-left:20px;">返回上一页</a>
    <h3>修改学生信息</h3>
	<label>学号:<input type="text" name="student.id" value="${param.id}" readonly="readonly"></label><!-- id设置为只读 -->
	<label>学院:<input type="text" name="student.college" value="" class='college'></label>
	<label>专业:<input type="text" name="student.specialty" value="" class='specialty'></label>
	<label>姓名:<input type="text" name="student.name" value="" class='name'></label><!-- 获取表单输入的值 -->
	<input type="submit" value="修改">
	</form>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script> 
	function GetRequest() {
    var url = decodeURI(decodeURI(location.search)); //获取url中"?"符后的字串，使用了两次decodeRUI解码
    var theRequest = new Object();
    if (url.indexOf("?") != -1) {
        var str = url.substr(1);
        strs = str.split("&");
        for (var i = 0; i < strs.length; i++) {
            theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
        }
        return theRequest;
    }
}
var postData = GetRequest();
var college = postData.college;//获取该活动的地区选择
var specialty = postData.specialty;//获取该活动的地区选择
var name = postData.name;//获取该活动的地区选择
$(".college").val(college);
$(".specialty").val(specialty);
$(".name").val(name);
	</script>
  </body>
</html>
