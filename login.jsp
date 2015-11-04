<%@page import="java.sql.*" contentType="text/html;charset=GB2312" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

if(request.getParameter("yes")!=null){
  String   username1=new String(request.getParameter("username"));
  String password1=new String(request.getParameter("password"));
    //zhong wen  luan  ma
    byte []b = username1.getBytes("ISO-8859-1");
    username1=new String(b);
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_onlinemusic","root","root");
 Statement stmt=con.createStatement();
  String sql="select * from   user  where    ZHANGHAO='"+username1+"'";
  ResultSet rs=stmt.executeQuery(sql);
  if(rs.next())
  {String password=new String(rs.getString("PASSWORD"));
  if(password.equals(password1))
  {session.setAttribute("username",username1);
  response.sendRedirect("successful.jsp");
  }
  else
{response.sendRedirect("login.jsp");
}
}
else
{response.sendRedirect("login.jsp");
}


}

 %>

<html>
<head>
<style type="text/css">
td {font-size:9pt;}
</style>
<title>管理员登陆</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script type="text/javascript">
document.onkeydown =function (){
    if(window.event.keyCode==13) {
    document.log.submit();
  }
}
</script>
</head>
<body background="image/1_13.gif">
<center><br><br><br><br><br>
<table  width="801" border="0" cellpadding="0" cellspacing="0" bordercolordark="#FFFFFF" style="margin:0; ">
<tr>
<td width="801">
<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolordark="#FFFFFF" style="margin:0; ">
	<tr>
	  <td width="341" rowspan="3" style="background-image:url(image/2_10.gif); background-repeat:no-repeat; "></td>
	  <td height="108" style="background-image:url(image/new.jpg); background-repeat:no-repeat ">&nbsp;</td>
    </tr>
	<tr>
	<td width="460" height="93" style="background-image:url(image/1_12.gif); background-repeat:no-repeat " align="left">
		<table width="188">
		<form  action="login.jsp" name="log" method="post">
			<tr>
				    <td width="180">用 户 名： 
                      <input type="text" name="username" style="color:#ffffff; width:100px; height:13px; background:#7894e4; border:0; border-bottom:1px #000000 dotted" onKeyDown="if(event.keyCode==13) event.keyCode=9"></td>
			</tr>
			<tr>
				    <td>密　　码： 
                      <input type="password" name="password" style="color:#ffffff; width:100px; height:13px; background:#7894e4; border:0; border-bottom:1px #000000 dotted; "></td>
			</tr>
			<tr>
				<td height="21" align="center"><img src="image/log.gif" border="0"   style="cursor:hand;" onClick="log.submit();"></td>
				<input  type="hidden"    name="yes"   value="hehe" / >
			</tr>
		</form>
		</table>
	</td>
	</tr>
</table>
</td>
</tr>

<tr>
<td height="226" valign="top">
<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolordark="#FFFFFF" style="margin-top:0; ">
	<tr>
		<td width="252" height="220">&nbsp;</td>
		<td width="542"  style="background-image:url(image/1_14.gif); background-repeat:no-repeat ">&nbsp;</td>
	</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>