<%@page import="com.jkxy.model.stuInfo"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body style="background:url(images/h.jpg);background-size:cover;background-position: 100% 100%;">
<jsp:useBean id="stuSer" class="com.jkxy.service.stuInfoservice"></jsp:useBean>
<%
	String glasses_name=request.getParameter("glasses_name");
	stuInfo glass=stuSer.queryStubyGLASSES_NAME(glasses_name);
	out.print(glass.getGlasses_name());
	if(stuSer.deleteStu(glasses_name))
		out.print("删除成功");
	else
		out.print("删除失败");
%>
</body>
</html>