<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�����ɹ���</title>
<link href="CSS/style.css" rel="stylesheet">
</head>

<body>
<script language="javascript">
alert("<%=request.getAttribute("info").toString()%>");
window.location.href="song.do?action=adm_search";
</script>
</body>
</html>
