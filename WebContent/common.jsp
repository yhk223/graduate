<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.ssm.util.JDBCTEST"%>
<%@page import="com.ssm.entity.lbmessages"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="981" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
     
    <td valign="top" class="rightbj"><table width="98%" border="0" cellspacing="0" cellpadding="0" style="margin:15PX 0 0 15px" >
      <tr>
        <td width="3%" height="39"><img src="/tongxuewang/frontfiles/images/lsxd.jpg" width="12" height="12" /></td>
        <td width="33%" align="left"><strong>留言板</strong></td>
        <td width="64%" align="right" class="index_bk3" style="padding-right:10px"> </td>
      </tr>
      <tr>
        <td height="1" colspan="3" bgcolor="#F3F3F3"></td>
      </tr>
    </table>
    <table width="98%" border="0" cellspacing="0" cellpadding="0" style="margin:0 0 0 15px" class="link" >
          
          <tr>
            <td valign="top" ><div align="left">



 
<table width="100%" border="0" cellspacing="0" cellpadding="0">

 
 
    <% List<lbmessages> list= JDBCTEST.findlbmessage();
	for(lbmessages lb:list){ 
     %>
        <tr>
          <td width="" height="32" align="left" valign="middle" class="dd">
          
           <font color=orange> <%=lb.getSaver()%>  
          &nbsp;&nbsp;
           (<%=lb.getSavetime() %>) : </font> 
          
          <table><tr><td height="1"></td></tr></table>
          
          <%=lb.getContent() %>
          
           <table><tr><td height="1"></td></tr></table>
           
           <font color=gray>
          管理员回复 ： <%=lb.getRecontent().equals(null)?"暂无":(String)lb.getRecontent() %>        
           </font>
          <table><tr><td height="10"></td></tr></table>
          </td>
         
          </tr>
          
          
          
          
 <%} %>

  
  
    <tr align="center" valign="middle">
    <td height="39" colspan="3" id="page">
		 	     
		 	</td>
  </tr>
        
</table>
 

 </div></td>
          </tr>
      </table></td>
  </tr>
</table>
</body>
</html>