<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.tp.valuebean.VoteSingle" %>
<jsp:useBean id="myDb" class="com.tp.toolbean.DB"/>

<%
	float numAll = 0;
	String sql = "select * from tb_vote order by vote_order";
	List showlist = myDb.selevtVote(sql);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>在线投票</title>
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
		</style>
	</head>
	<body>
		<table id="login_frame"><!--  style="margin: 15% 0 0 40%;" -->
			<tr height="20" >
				<td valign="top" width="40% ">
					<table  style="margin-top: 30px; color: #0066CC; font-size: 20px;">
						<% if(showlist == null || showlist.size() == 0){ %>
						<tr height="200">
							<td align="center" colspan="2">没有选项可显示！</td>
						</tr>
						<%
						}
						else{
							int i = 0;
							while(i < showlist.size()){
								VoteSingle single = (VoteSingle)showlist.get(i);
								numAll += Integer.parseInt(single.getNum());
						%>
						<tr >
							<td><%=single.getTitle() %></td>
							<td align="right"><%=single.getNum() %>票&nbsp;&nbsp;</td>
						</tr>
						<%
							i++;
							}
						}
						%>
						<tr height="25">
							<td colspan="2">
								<a href="vote.jsp">
									<img src="images/img/返回.png" style="width: 38px;height: 38px; margin-top: 37px; margin-left: 10px;" title="返回投票" />
									<p style="font-size: 10px;">返回投票</p>
								</a>		<!-- 返回投票 -->
							</td>
						</tr>
					</table>
				</td>
				<!-- 通过图片显示投票结果 -->
				<td valign="top" width="60%">
					<table  style="margin-top: 28px; color: #0066CC; font-size: 20px;">
						<% if(showlist == null || showlist.size() == 0){ %>
						<tr height="200">
							<td align="center" colspan="2">没有选项可显示！</td>
						</tr>
						<%
						}
						else{
							int i = 0;
							while(i < showlist.size()){
								VoteSingle single = (VoteSingle)showlist.get(i);
								int numOne = Integer.parseInt(single.getNum());
								float picLen = numOne * 145 / numAll;	//计算图片长度
								float per = numOne * 100 / numAll;	//计算票数所占的百分比
								float doPer = ((int)((per + 0.005f) * 10)) / 10f;	//保留百分比后的一位小数，并进行四舍五入
						%>
						<tr height="25">
							<td>
								<img src="images/count.jpg" width="<%=picLen%>" height="15" alt="节目：<%=single.getTitle() %>"  style="margin-left: 30px;">		<!-- 投票结果百分比 -->
							</td>
							<td width="15%" align="right"><%=doPer %></td>
						</tr>
						<%
							i++;
							}
						}
						%>
						<tr height="25">
							<td colspan="2">
								<a href="index.jsp">
									<img src="images/img/返回首页.png" style="width: 50px;height: 50px; margin-top: 32px; margin-left: 1px;" title="返回投票首页" />
									<p style="font-size: 10px;">返回投票首页</p>
								</a>	<!-- 返回首页 -->
							</td>							
						</tr>
						<tr height="25">
							<td colspan="2">
								<a href="add/diff.jsp">
									<img src="images/img/返回首页 (1).png" style="width: 50px;height: 50px; margin-top: 15px; margin-left: -230px;" title="返回系统首页" />
									<p style="font-size: 10px;margin-left: -230px;">返回系统首页</p>
								</a>	<!-- 返回系统首页 -->
							</td>							
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>