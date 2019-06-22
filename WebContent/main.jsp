<%@ page contentType="text/html;charset=utf-8" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>LV眼镜店</title>
	<style>
		 *{
			margin: 0px;
			padding: 0;
			}
		body{
			font-size: 16px;
			color: #673929;
		}
		#container{
			width: 900px;
			margin: 0 auto;
		}
		#header{
			height: 250px;
			margin-bottom: 5px;
			position: relative;
		}
		#icon-list{
			position: absolute;
			top: 170px;
			right: 30px;
			width: 130px;
			height: 20px;
			/*font-size: 0px;*/
		}
		#nav{
			width:895px;
			height: 30px;
			line-height: 30px;
			margin: 5px;
			background-color: pink;
			font: 18px/30px;
			text-align: center;
			color: #fff;
			letter-spacing: 2px;
		}
		#nav a{
			text-decoration: none;
		}
		a:link{
			color:#4D0708;
		}
		a:visited{
			color: #fff;
		}
		a:hover{
			color:yellow;
		}
		a:active{
			color: yellow;
		}
		#main{
			background-color:#FFFFFF;
			height: 1000px;
		}
		#aside{
			float: left;
			width: 300px;
			height:1000px;
			background-color: pink;
			text-align: center;
			font-size: 14px;
		}
		#aside h2{
			margin: 20px;
		}
		#imglist{
			width: 130px;
			margin: 0 auto;
		}
		.pol{
			width: 85px;
			padding: 10px;
			background-color: #eee;
			border: 1px solid #bfbfbf;
			box-shadow: 2px 2px 4px #aaa;
			border-radius: 5px;
		}
		#imglist img{
			height:95px;
			width: 85px;
			margin: 0 auto;
		}
		.rotate-left{
			-webkit-transform:rotate(7deg);
			-ms-transform:rotate(7deg);
			-o-transform:rotate(7deg);
			transform: rotate(7deg);
		}
		.rotate-right{
			-webkit-transform:rotate(-7deg);
			-ms-transform:rotate(-7deg);
			-o-transform:rotate(-7deg);
			transform: rotate(-7deg);
		}
		#content{
			float:right;
			width:595px;
			height: 1000px;
			margin-bottom: 5px;
			background-color:pink;
		}
		.subcon{
			width: 570px;
			margin: 10px auto;
			clear: both;
		}
		.subcon img{
			margin: 5px;
			padding: 5px;
			float: left;
			border: 1px dashed #FFFFFF;
		}
		.subcon .subtext{
			width: 60%;
			float: left;
			margin: 5px;
		}
		.subcon h2{
			margin: 5px;
		}
		.subcon p{
			font: 16px/2em;	
		}
		#footer{
			height: 60px;
			line-height: 60px;
			background-color: pink;
			clear:both;
			text-align: center;
		}
	</style>
</head>
<body>
	<div id="container">
		<div id="header">
			<img src="images/img1.jpg" width="900" height="250"alt="">
			<div id="icon-list">
				<img src="images/e1.jpg" width="27" height="27" alt="">
				<img src="images/e2.jpg" width="27" height="27" alt="">
				<img src="images/e3.jpg" width="27" height="27" alt="">
				<img src="images/e4.jpg" width="27" height="27" alt="">
		</div>
		<div id="nav">
			<a href="main1.jsp">主要功能</a>
			<a href="Index.jsp">返回首页</a>
		</div>
		<div id="main">
			<div id="aside">
				<h2>卡里卡里kalikali</h2>
				<table >
					<tr>
						<th></th>
						<th>博士眼镜</th>
						<th>宝岛眼镜</th>
						<th>亮视点</th>
						<th>吴良材</th>
						<th>暴龙眼镜</th>
					</tr>
					<tr>
						<th scope="row" >防蓝光</th>
						<td>999</td>
						<td>880</td>
						<td>666</td>
						<td>787</td>
						<td>656</td>
					</tr>
					<tr>
						<th scope="row" >抗疲劳</th>
						<td>686</td>
						<td>999</td>
						<td>888</td>
						<td>676</td>
						<td>565</td>
					</tr>
					<tr>
						<th scope="row" >防近视</th>
						<td>888</td>
						<td>999</td>
						<td>565</td>
						<td>677</td>
						<td>700</td>
					</tr>
				</table>
				<div id="imglist">
					<div class="pol rotate-left"><img src="images/a4.jpg" alt=""></div>
					<div class="pol rotate-right"><img src="images/a5.jpg" alt=""></div>
					<div class="pol rotate-left"><img src="images/a6.jpg" alt=""></div>
					<div class="pol rotate-right"><img src="images/b7.jpg" alt=""></div>
					<div class="pol rotate-left"><img src="images/b2.jpg" alt=""></div>
					<div class="pol rotate-right"><img src="images/b5.jpg" alt=""></div>
				</div>
			</div>
			<div id="content">
				<div class="subcon">
					<img src="images/a0.jpg" width="170" height="170"alt="">
					<div class="subtext">
						<h2>LV小故事</h2>
						<p>前几天有一位顾客来修理他的lv墨镜，一说起lv我们想到的都是它的皮具，很少有人知道lv还有眼镜，是的，lv是还卖眼镜，在lv的门店里，眼镜属于皮具配套的衍生产品，老实说，lv的眼镜能见度不高，明显要低于同样是时尚奢侈品的宝格丽，普拉达等</p>
					</div>
				</div>
				<div class="subcon">
					<img src="images/c7.jpg"  width="170" height="170" alt="">
					<div class="subtext">
						<h2>保护眼睛的食物</h2>
						<p>花青素可以促进眼睛视紫质的生成，提高眼部微血管的弹性，并促进血液循环。此外，花青素还可以减少自由基对眼睛的伤害。代表食物有蓝莓、黑莓、樱桃、紫米等。</p>
					</div>
				</div>
				<div class="subcon">
					<img src="images/a2.jpg"  width="170" height="170" alt="">
					<div class="subtext">
						<h2>隐形眼镜的危害</h2>
						<p>人的角膜直接从空气中摄取氧气呼吸，现在，上面盖了一层“轻纱”，摄取的氧气便少了。而且，隐形眼镜毕竟是放置在角膜上的异物，眼睛的每一次眨动，都会使隐形眼镜与眼球表面产生一定的摩擦。</p>
					</div>
				</div>
				<div class="subcon">
					<img src="images/a3.jpg"  width="170" height="170"alt="">
					<div class="subtext">
						<h2>眼镜重要性</h2>
						<p>近视眼镜可以矫正视力。近视眼因为远方的光线不能在视网膜上聚焦，造成视远物不清楚，而配戴了近视镜后，就可以获得清晰的物像，从而使视力得以矫正。</p>
					</div>
				</div>
				<div class="subcon">
					<img src="images/b0.jpg"  width="170" height="170"alt="">
					<div class="subtext">
						<h2>近视的危害</h2>
						<p>视力低下，眼睛经常干涩和疲劳，影响学习、生活和工作质量。长期戴镜，会导致生活工作不便。中高度近视，会导致眼球突出，眼睑松弛，影响容貌。升学、参军、考公务员和找工作受限。</p>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<p>眼镜店管理系统@君君制作</p>
		</div>
	</div>
</body>
</html>
