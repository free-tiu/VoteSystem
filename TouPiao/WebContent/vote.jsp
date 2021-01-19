<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.tp.valuebean.VoteSingle"  %>
<jsp:useBean id="myDb" class="com.tp.toolbean.DB"/>	<!-- 创建一个DB对象 -->
<%
	String sql = "select * from tb_vote order by vote_order";	//生成查询投票选项的SQL语句
	List voList = myDb.selevtVote(sql);		//查询数据表获取所有的投票选项
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>显示投票</title>
		<style type="text/css">
			body {
	    			background-size: 100%;
				    background-repeat: no-repeat;
				    background-attachment:fixed;
	    			background-image: url("images/img/l.jpg");
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
			input{
				width:60px;
				height:35px;
				font-size:15px;
				border-radius:10px;
				margin-top:15px;
				background: -webkit-linear-gradient(
			        top,#800000,#7FFF00,#FFFACD,#CCFFFF
			    )    /* 颜色渐变 */
			}
			#img1{
				width:61px;
				height:35px;
				font-size:15px;
				border-radius:10px;
				margin-left:35px;
				background: -webkit-linear-gradient(
			        top,#800000,#7FFF00,#FFFACD,#33FFFF
			    )    /* 颜色渐变 */
			}
			#img2{
				width:90px;
				height:35px;
				font-size:15px;
				border-radius:10px;
				margin-left:35px;
				background: -webkit-linear-gradient(
			        top,#800000,#7FFF00,#FFFACD,#33FFFF
			    )    /* 颜色渐变 */
			}
			#tb{
				color: #0066CC;
				font-size: 20px;
				font-family: STHUPO.TTF;
			}
		</style>
	</head>
	<body>
		<form action="doVote.jsp" method="post">
			<table  id="login_frame">	<!--  background="images/bg.jpg" -->
				<tr>
					<!-- 显示投票选项 -->
					<td valign="top" width="420">
						<table><!--  bgcolor="#7688AE" -->
							<tr><td colspan="2"></td></tr><!--  background="images/voteT.jpg" -->
							<!-- 如果集合为空 -->
							<%if(voList == null || voList.size()==0){ %>
								<tr>
									<td align="left">没有选项可显示</td>
								</tr>
							<!-- 如果集合为空 -->
							<%}
								else{
							%>
							<tr>
								<td align="center" width="60%">
									<table border="0" width="100%" id="tb">
									<%
										int i = 0;
										while(i < voList.size()){
											VoteSingle single = (VoteSingle)voList.get(i);
									%>
										<tr>
											<td><%=single.getTitle() %></td>
											<td>
												<input type="radio" name="ilike" value="<%=single.getId() %>">
											</td>
										</tr>
									<%
											i++;
										}	//while结束
									%>
									</table>
								</td>
								<td valign="top">
									<img src="images/img/注意.png" style="width: 40px; height: 40px; margin-left: 40px;">
									<b><font color="#0066CC" style="font-size: 25px;">注意事项：</font></b><p>
									<font color="#0066CC">1小时内只能投一次票</font>
								</td>
							</tr>
							<%}	//else结束 %>
							<!-- 显示操作按钮 -->
							<tr height="97">
								<td colspan="2"><!--  background="images/voteE.jpg" -->
									<input type="submit" value="提交" >
									<input type="reset" value="重置">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="show.jsp"><input id="img1" value="查看结果" ></a>	<!-- 查看结果 -->
									<a href="index.jsp"><input id="img2" value="返回投票首页" ></a>		<!-- 返回首页 -->
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>