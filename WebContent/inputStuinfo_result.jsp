<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>LV眼镜店</title>
</head>
<body style="background:url(images/h.jpg);background-size:cover;background-position: 100% 100%;">
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="stuInfo" class="com.jkxy.model.stuInfo"></jsp:useBean>
<jsp:setProperty property="*" name="stuInfo"/>
<jsp:useBean id="stuserver" class="com.jkxy.service.stuInfoservice"></jsp:useBean>
<%
/* out.print(stuInfo.getGlasses_name());
out.print(stuInfo.getGlasses_price());
out.print(stuInfo.getGlasses_mess()); */
%>
<%
	if(stuserver.addStu(stuInfo))
	out.print("添加成功");
	else
		out.print("添加失败");
%>
</body>
</html>