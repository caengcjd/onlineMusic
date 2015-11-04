<%@page import="java.sql.*" contentType="text/html;charset=GB2312" %>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login  successful!</title>
</head>
<body>
<a   href="logout.jsp">logout</a>
<%
 out.println("Welcome!!!<br/>"); 
 
 out.println(session.getAttribute("username")!=null?session.getAttribute("username"):"null");
 
response.sendRedirect("song.do?action=main");%>
</body>
</html>