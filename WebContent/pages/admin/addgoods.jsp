<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ taglib
	prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/four.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function selimage(){
window.open("<%=basePath%>pages/saveimage.jsp","","toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=yes,copyhistory=no,scrollbars=yes,width=400,height=240,top="+(screen.availHeight-240)/2+",left="+(screen.availWidth-400)/2+"");}
</script>
</head>
<%
	String message = (String) request.getAttribute("message");
	if (message == null) {
		message = "";
	}
	if (!message.trim().equals("")) {
		out.println("<script language='javascript'>");
		out.println("alert('" + message + "');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%><body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr valign="top">
			<td bgcolor="#FFFFFF"><table width="96%" border="0"
					align="center" cellpadding="4" cellspacing="1" bgcolor="#aec3de">
					<div class="AreaR">
			<div class="box">
				<div class="box_1">
					<div class="userCenterBox boxCenterList clearfix"
						style="_height: 1%;">

						<h5>
							<span>添加产品</span>
						</h5>
						<div class="blank"></div>
						<form action="users/addGoods.action" name="myform" method="post">
							<table width="100%" border="0" cellpadding="5" cellspacing="1"
								bgcolor="#dddddd">
								<tr>
									<td width="18%" align="right" bgcolor="#FFFFFF">产品名称：</td>
									<td width="86%" align="left" bgcolor="#FFFFFF"><input
										type="text" placeholder="请输入名称" name="userstyle" size="25"
										class="inputBg" id="userstyle" /></td>
								</tr>
							 	<tr>
									<td width="18%" align="right" bgcolor="#FFFFFF">产品类型：</td>
									<td align="left" bgcolor="#FFFFFF"><select name="brandid"
										class="inputBg" id="brandid"><c:forEach
												items="${cateList}" var="cate">
												<option value="${cate.id}">${cate.name}</option>
											</c:forEach></select></td>
								</tr> 
								<tr>
									<td width="18%" align="right" bgcolor="#FFFFFF">图片：</td>
									<td align="left" bgcolor="#FFFFFF"><input type="text"
										placeholder="请选择图片" name="mobileimg" size="25" class="inputBg"
										id="image" onclick="selimage();" readonly="readonly" /></td>
								</tr>
								<tr>
									<td width="18%" align="right" bgcolor="#FFFFFF">价格：</td>
									<td align="left" bgcolor="#FFFFFF"><input type="text" placeholder="请输入价格"
								name="price" style="width: 160px" id="price" /></td>
								</tr>
								<!-- <tr>
									<td width="18%" align="right" bgcolor="#FFFFFF">品牌ID：</td>
									<td align="left" bgcolor="#FFFFFF"><input type="text" placeholder="请输入品牌ID"
								name="price" style="width: 160px" id="price" /></td>
								</tr>
								<tr>
									<td width="18%" align="right" bgcolor="#FFFFFF">名称：</td>
									<td align="left" bgcolor="#FFFFFF"><input type="text" placeholder="请输入名称"
								name="storage" style="width: 160px" id="storage" /></td>
								</tr> -->
								<tr>
									<td colspan="2" align="center" bgcolor="#FFFFFF"><input
										type="submit" class="bnt_blue_1" style="border: none;"
										value="确认发布" /></td>
								</tr>
							</table>
						</form>

					</div>
				</div>
			</div>
		</div>
					<tr align="right" bgcolor="#ebf0f7">
						<td colspan="20"><span style="float: left; color: red">${map.msg }</span>&nbsp;<span
							style="float: right;">${html}</span></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>