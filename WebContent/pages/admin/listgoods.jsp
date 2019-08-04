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
					<tr align="left" bgcolor="#F2FDFF">
						<td colspan="20" class="optiontitle">产品信息列表</td>
					</tr>
					<tr align="center">
						<td align="center" bgcolor="#ebf0f7">产品ID</td>
						<td align="center" bgcolor="#ebf0f7">产品图片</td>
						<td align="center" bgcolor="#ebf0f7">产品名称</td>
						<td align="center" bgcolor="#ebf0f7">品牌ID</td>
						<td align="center" bgcolor="#ebf0f7">价格</td>
						<td align="center" bgcolor="#ebf0f7" width="10%">操作</td>
					</tr>
					<c:forEach items="${goodsList}" var="goods">
						<tr align="center" bgcolor="#FFFFFF">
							<td align="center">${goods.mobileid}</td>
							<td align="center">${goods.mobileimg}</td>
							<td align="center">${goods.userstyle}</td>
							<td align="center">${goods.brand}</td>
							<td align="center">${goods.price}</td>
							<td align="center">
							<a
								href="users/deleteGoods.action?id=${goods.mobileid}"
								onclick="{if(confirm('确定要删除吗?')){return true;}return false;}">删除</a></td>
						</tr>
					</c:forEach>
					<tr align="right" bgcolor="#ebf0f7">
						<td colspan="20"><span style="float: left; color: red">${map.msg }</span>&nbsp;<span
							style="float: right;">${html}</span></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>