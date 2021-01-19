<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>在线投票首页</title>
		<style type="text/css">
    		body {
    			background-size: 100%;
			    background-repeat: no-repeat;
			    background-attachment:fixed;
    			background-image: url("images/img/l.jpg");
			}
			img{
				margin-top:17%;
				margin-left: 25%;
			}
			#img1{
				width:100px;
				height:35px;
				font-size:15px;
				border-radius:10px;
				margin-left:28%;
				margin-top:40%;
				background: -webkit-linear-gradient(
			        top,#800000,#7FFF00,#FFFACD,#33FFFF
			    )    /* 颜色渐变 */
			}
    	</style>
	</head>
	<body>
		<a href="vote.jsp">
			<!-- <img src="images/voteLink.jpg"> --><!-- 参与投票 -->
			<input id="img1" type="button" value="参与投票"> 
		</a>
		<a href="show.jsp">
			<!-- <img src="images/showLink.jpg"> --><!-- 查看结果 -->
			<input type="button" value="查看结果" id="img1">
			
		</a>
</body>
</html>