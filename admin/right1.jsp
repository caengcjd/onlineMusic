<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%
String path = request.getContextPath();
HttpSession session1= request.getSession();


String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'right.jsp' starting page</title>
    <h1>Welcome  !!<%=session1.getAttribute("manager")%></h1>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
    <%--<logic:iterate id="logging" name="log" type="com.model.LogBean" scope="request" indexId="ind">
      <tr>
	    <td height="27" bgcolor="#FFFFFF">&nbsp;
        <bean:write name="logging" property="log_user" filter="true"/></td>
        <td bgcolor="#FFFFFF">&nbsp;
        <bean:write name="logging" property="log_info" filter="true"/></td>
        <td bgcolor="#FFFFFF">&nbsp;
        <bean:write name="logging" property="log_time" filter="true"/></td>
        <td bgcolor="#FFFFFF">&nbsp;
       <bean:write name="logging" property="log_ip" filter="true"/></td>
        
      </tr>
	</logic:iterate>--%>
  </body>
</html>
