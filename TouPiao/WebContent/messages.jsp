<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
  String message=(String)session.getAttribute("mess");
  if(message==null)
	  message="";
  session.invalidate();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
    	<title>友情提示</title>
    	<!-- <link style="text/css" rel="stylesheet" href="css/style.css"> -->    	
		<style type="text/css">
			body {
	    			background-size: 100%;
				    background-repeat: no-repeat;
				    background-attachment:fixed;
	    			background-image: url("images/img/l.jpg");
	    			color: #FDE401;
				}
			#login_frame {
				/*让一个div块在整个屏幕居中*/
			    width: 600px;
			    height: 560px;
			    padding: 13px;
			    position: absolute;
			    left: 40%;
			    top: 40%;
			    margin-left: -200px;
			    margin-top: -200px;
				/*设置背景颜色且加透明效果*/
			    background-color: rgba(240, 255, 255, 0.5);
			    border-radius: 10px;
			    text-align: center;
			    background: -webkit-linear-gradient(
			        top,#003366,blue,skyblue,#CCFFFF
			    )    /* 颜色渐变 */
			}
			#login_frame {
				/*让一个div块在整个屏幕居中*/
			    width: 600px;
			    height: 560px;
			    padding: 13px;
			    position: absolute;
			    left: 40%;
			    top: 40%;
			    margin-left: -200px;
			    margin-top: -200px;
				/*设置背景颜色且加透明效果*/
			    background-color: rgba(240, 255, 255, 0.5);
			    border-radius: 10px;
			    text-align: center;
			    background: -webkit-linear-gradient(
			        top,#FFFFAA,#97CBFF,#FFD2D2,#CCFFFF
			    )    /* 颜色渐变 */
			}
			#img1{
				width:65px;
				height:35px;
				font-size:15px;
				border-radius:10px;
				margin-left:35px;
				background: -webkit-linear-gradient(
			        top,#800000,#7FFF00,#FFFACD,#33FFFF
			    )    /* 颜色渐变 */
			}
			#tb{
				color: #FDE401;
				font-size: 20px;
				font-family: STHUPO.TTF;
			}
			#td1{
				height:200px;
				width:760px;
				margin-left:20%;
				background: rgba(224,255,255,0.8);
			}
		</style>
	</head>
	<body bgcolor="#F0F0F0">
	  <center>
        <table border="0" width="760" height="620" style="margin-left: 40px;margin-top: 5%;"><!--  background="images/bg.jpg" -->
            <tr>
            	<td>
            		<table><!--  border="0" cellspacing="0" cellpadding="0" -->
			            <tr><!--  height="100" -->
            			    <td id="td1"><!--  bgcolor="#7688AD" -->
			                	<font color="#1E90FF" size="5px"><%=message%></font>
            			    </td>
			            </tr>
            			<tr height="114">
            				<td align="center" valign="top"><!--  background="images/messE.jpg"  -->
			                    <a href="index.jsp"><img src="images/indexB.jpg" style="border:0"></a><!-- 返回首页 -->
            			        &nbsp;&nbsp;&nbsp;
			                    <a href="vote.jsp"><img src="images/backB.jpg" style="border:0"></a><!-- 返回投票 -->
            			        &nbsp;&nbsp;&nbsp;
			                    <a href="show.jsp"><img src="images/showB.jpg" style="border:0"></a><!-- 查看投票结果 -->
            				</td>
            			</tr>
            		</table>
            	</td>
            </tr>
        </table>
      </center>
	</body>
</html>