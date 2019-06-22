<%@page import="com.jkxy.service.userservice"%>
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
out.print(glasses_name);
System.out.printf(glasses_name);
stuInfo glass=stuSer.queryStubyGLASSES_NAME(glasses_name);
out.print(glass.getGlasses_name());
out.print(glass.getGlasses_price()); 
%>
<form method="post" action="modifyOneStu_result.jsp">
<table align="center" width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>修改眼镜信息</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right" >眼镜型号：</td>
				<td><input type="text" name="glasses_version" value="<%=glass.getGlasses_version() %>"/></td>
			</tr>
			<tr>
				<td align="right" >眼镜名称：</td>
				<td><input type="text" name="glasses_name" value="<%=glass.getGlasses_name()%>"/></td>
			</tr>
			<tr>
				<td align="right" >生产公司：</td>
				<td><input type="text" name="glasses_made" value="<%=glass.getGlasses_made() %>"/></td>
			</tr>
			<tr>
				<td align="right" >眼镜价钱：</td>
				<td><input type="text" name="glasses_price" value="<%=glass.getGlasses_price() %>"/></td>
			</tr>
			<tr>
				<td align="right" >眼镜功效：</td>
				<td><input type="text" name="glasses_mess" value="<%=glass.getGlasses_mess() %>"/></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
				<input type="submit" value="修改"><input type="hidden" name="glasses_name" value="<%=glass.getGlasses_name()%>"></td>
			</tr>
		</table>
</form>
</body>
</html>