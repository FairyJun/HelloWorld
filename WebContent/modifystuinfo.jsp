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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LV眼镜店</title>
</head>
<body style="background:url(images/h.jpg);background-size:cover;background-position: 100% 100%;">
<%response.setContentType("text/html;charset=UTF-8"); %>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="stuser" class="com.jkxy.service.stuInfoservice"></jsp:useBean>
<%
List stus = stuser.queryAllStu();
//out.print(stus.size());
Iterator iter=stus.iterator();
stuInfo stuInfo;

%>
<table>
<tr><td align="center" colspan="2">
	<h2>修改眼镜信息</h2>
	<hr>
	</td>
	</tr>
<tr><td>型号</td>
	<td>品牌</td>
	<td>产地</td>
	<td>价钱</td>
	<td>功能</td>
	<td></td>
	<%
	int i=0;
	while(iter.hasNext())
	{
		stuInfo glasses=(stuInfo)iter.next();
		%>
		<tr <%if(i%2==0){%>bgcolor="#F0F8FF"<% } %>>
		<td><%=glasses.getGlasses_version() %></td>
		<td><%=glasses.getGlasses_name() %></td>
		<td><%=glasses.getGlasses_made() %></td>
		<td><%=glasses.getGlasses_price() %></td>
		<td><%=glasses.getGlasses_mess() %></td>
		<td><a href="modifyOneStu.jsp?glasses_name=<%=glasses.getGlasses_name()%>">修改</a></td>
		</tr>
		<% 
		i++;
	}
	%>
</table>
</body>
</html>