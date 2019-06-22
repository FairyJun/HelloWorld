<%@page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>login</title>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
#wrap {
	height: 719px;
	width: 100;
	background-image:url(images/h.jpg);
	background-position: center center;
	position: relative;
	background-size: cover;
}
#head {
	height: 70px;
	width: 100;
	text-align: center;
	position: relative;
	color: #000000;
}
#wrap .logGet {
	height: 408px;
	width: 368px;
	position: absolute;
	background-color: #FFFFFF;
	top: 142px;
	right: 439px;
}
.logC a button {
	width: 100%;
	height: 45px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 18px;
}
.logGet .logD.logDtip .p1 {
	display: inline-block;
	font-size: 28px;
	margin-top: 30px;
	width: 86%;
}
#wrap .logGet .logD.logDtip {
	width: 86%;
	border-bottom: 1px solid #ee7700;
	margin-bottom: 60px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}
.logGet .lgD img {
	position: absolute;
	top: 30px;
	left: 5px;
}
.logGet .lgD input {
	width: 100%;
	height: 42px;
	text-indent: 2.5rem;
}
#wrap .logGet .lgD {
	width: 86%;
	position: relative;
	margin-bottom: 30px;
	margin-top: 30px;
	margin-right: auto;
	margin-left: auto;
}
#wrap .logGet .logC {
	width: 86%;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
 
 
.title {
	font-family: "宋体";
	color: #0F0E0E;
	position: absolute;
	top: 57px;
	left: 631px;
	transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
	font-size: 36px;
	height: 40px;
	width: 30%;
	text-shadow: 0px 0px;
}
 
.copyright {
	font-family: "宋体";
	color: #FFFFFF;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
	height: 60px;
	width: 40%;
	text-align:center;
}
.copyright .img .icon {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
	
.copyright .img .icon1 {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
.copyright .img .icon2 {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
	.form-item 
	{ position: relative; 
		width: 360px;
		margin: 0 auto;
		padding-bottom: 30px;
	}

 .form-item input { 
	 width: 288px;
	 height: 48px;
	 padding-left: 70px;
	 border: 1px solid #fff; 
	 border-radius: 25px; 
	 font-size: 18px; 
	 color: #fff;
	 background-color: transparent; 
	 outline: none;
	}
.form-item button {
	width: 360px;
	height: 50px; border: 0; 
	border-radius: 25px;
	font-size: 18px; 
	color: #1f6f4a; 
	outline: none; 
	cursor: pointer;
	background-color: #fff;
	}
</style>
</head>
 
<body>

	
<div class="wrap" id="wrap">
  <div class="header" id="head">
  		<div class="title">眼镜店商品管理系统</div>
	</div>
	<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">登录</p>
			</div>
			<!-- 输入框 -->
			<form action="validate.jsp" name="login">
			<div class="lgD">
			  <img src="images/login.jpg" width="20" height="20" alt=""/>
				用户名<input type="text" name="username"><br>
			</div>
			<div class="lgD">
				<img src="images/mima.jpg" width="20" height="20" alt=""/>
				密码<input type="password" name="password"><br>
			</div>
			<div class="form-item"><button id="submit">登 录</button></div>
			</form>
		</div>
</div>
</body>
</html>