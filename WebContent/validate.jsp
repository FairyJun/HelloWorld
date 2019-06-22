<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
String path=request.getContextPath();
String basePath=request.getScheme();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body style="background:url(images/h.jpg);background-size:cover;background-position: 100% 100%;">
	<jsp:useBean id="user" class="com.jkxy.model.UserTable"></jsp:useBean>
	<jsp:useBean id="userservice" class="com.jkxy.service.userservice"></jsp:useBean>

	<jsp:setProperty property="*" name="user" />
	<%
	//user.setUsername("aa");
	//out.print(user.getUsername());
	//out.print(user.getPassword());
	if(userservice.valiUser(user))
	{
		session.setAttribute("user",user);
		%>
		<jsp:forward page="main.jsp"></jsp:forward>
		<%
	}
	else
		out.print("用户名或密码错误");
%>
</body>
</html>