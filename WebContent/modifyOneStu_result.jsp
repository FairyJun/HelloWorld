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
<jsp:useBean id="stu" class="com.jkxy.model.stuInfo"></jsp:useBean>
<jsp:setProperty property="*" name="stu"/>
<jsp:useBean id="stuSer" class="com.jkxy.service.stuInfoservice"></jsp:useBean>
<%
out.print(stu.getGlasses_name());
//out.print(stu.getGlasses_price());
//out.print(stu.getGlasses_version());
%>
<%
if(stuSer.updateStu(stu))
	out.print("修改成功");
else
	out.print("修改失败");
%>
</body>
</html>