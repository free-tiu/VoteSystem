<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title>投票分类</title>
	<style>
		ul {
		    list-style-type: none;
		    margin: 0;
		    padding: 0;
		    overflow: hidden;
		    border: 1px solid #e7e7e7;
		    background-color: #f3f3f3;
		}
		li {
		    float: left;
		}
		li a {
		    display: block;
		    color: #666;
		    text-align: center;
		    padding: 14px 16px;
		    text-decoration: none;
		}
		li a:hover:not(.active) {
		    background-color: #ddd;
		}
		li a.active {
		    color: white;
		    background-color: #4CAF50;
		}
	</style>
	</head>
	<body>
	
		<ul>
		  <li><a class="active" href="#home"><img src="../images/img/首页.png" style="width: 20px;height: 20px;">首页</a></li>
		  <li style="margin-left: 95px;"><a href="../index.jsp"><img src="../images/img/分类 (1).png" style="width: 20px;height: 20px;">歌剧舞台类</a></li>
		  <li style="margin-left: 95px;"><a href="#news"><img src="../images/img/分类 (1).png" style="width: 20px;height: 20px;">舞蹈类</a></li>
		  <li style="margin-left: 95px;"><a href="#news"><img src="../images/img/分类 (1).png" style="width: 20px;height: 20px;">戏曲类</a></li>
		  <li style="margin-left: 95px;"><a href="#contact"><img src="../images/img/联系.png" style="width: 20px;height: 20px;">联系</a></li>
		  <li style="margin-left: 95px;"><a href="#about"><img src="../images/img/关于.png" style="width: 20px;height: 20px;">关于</a></li>
		</ul>
	
	</body>
</html>