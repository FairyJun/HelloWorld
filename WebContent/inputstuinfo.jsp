<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>LV眼镜店</title>
</head>
<body style="background:url(images/h.jpg);background-size:cover;background-position: 100% 100%;">
<form method="post" action="inputStuinfo_result.jsp">
<table align="center" width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>添加眼镜信息</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right" >眼镜型号：</td>
				<td><input type="text" name="glasses_version"/></td>
			</tr>
			<tr>
				<td align="right" >眼镜名称：</td>
				<td><input type="text" name="glasses_name"/></td>
			</tr>
			<tr>
				<td align="right" >生产公司：</td>
				<td><input type="text" name="glasses_made"/></td>
			</tr>
			<tr>
				<td align="right" >眼镜价钱：</td>
				<td><input type="text" name="glasses_price"/></td>
			</tr>
			<tr>
				<td align="right" >眼镜功效：</td>
				<td><input type="text" name="glasses_mess"/></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
				<input type="submit" value="添加"></td>
			</tr>
		</table>
</form>

</body>
</html>