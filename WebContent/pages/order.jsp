<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE lang="zh-CN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
	
<table class="table table-bordered" border="1" cellspacing="0" cellpadding="0" style="text-align:center ;margin:auto;width:90%">
	<tr>
  		<th colspan="5" style="font-size:18 ;height:50px;" >我的订单</th>
  	</tr>
	<tr>
  		<th style="height:40px;">地址</th>
  		<th>用户名</th>
  		<th>价格</th>
  		<th>描述</th>
  		<th>联系方式</th>
  	</tr>
  	<c:forEach  var="orders" items="${orders}">
  	<tr>
  		<td>${orders.address}</td>
  		<td>${orders.alipayname}</td>
  		<td>${orders.alpayaccount}</td>
  		<td style="width:900px">${orders.description}</td>
  		<td>${orders.phone}</td>
  	</tr>
  	</c:forEach>
</table>

</body>
</html>