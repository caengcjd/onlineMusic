<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<div id="navigation">
    <ul style="text-align:center"><li style="float:left;padding:0px 0px 0px 0px"><a href="song.do?action=main" class="navigation">首页</a> |</li> 
<logic:iterate id="song" name="navigation" type="com.model.SongTypeForm" scope="request" indexId="ind">
      <li style="float:left"><a  style="margin:30px"   class="navigation" href="song.do?action=songQuery&songType_more=<bean:write name="song" property="id" filter="true"/>"><bean:write name="song" property="typeName" filter="true"/></a> |</li>
 	</logic:iterate>
<% if(request.getSession().getAttribute("username")!=null){%>
  <li style="float:right"><a  style="margin:30px"   class="navigation" href="logout.jsp">logout</a></li>
 <li style="float:right;"><%="Welcome!"+request.getSession().getAttribute("username") %></li>
 
<% }else{ %>
   <li style="float:right"><a  style="margin:30px"   class="navigation" href="./login.jsp">用户登录</a> </li>
   <li style="float:right"><a  style="margin:30px"   class="navigation" href="./register.jsp">我要注册</a> </li>
<% }%>
	</ul>
</div>