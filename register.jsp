
<%@ page language="java" import="java.util.*,com.model.*" pageEncoding="gb2312"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="userBean"   class="com.model.UserBean"  scope="request">
   <jsp:setProperty   name="userBean"   property="*" />
   </jsp:useBean>
    <jsp:useBean   id="regist"  class="com.model.UserRegister" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body   style="border:1px  solid  red;background-color:silver;text-align:center;">
  <%
 // String   userid=request.getParameter("userid");
  
    
  //userBean.setId(userid);
  if(null!=request.getParameter("yes")){
  byte []b ;
  String  zhanghao=request.getParameter("zhanghao");
    b = zhanghao.getBytes("ISO-8859-1");
			zhanghao=new String(b);
  String   password=request.getParameter("password");
    b = password.getBytes("ISO-8859-1");
		password=new String(b);
			
  String   nick_name=request.getParameter("nick_name");
          b = nick_name.getBytes("ISO-8859-1");
		 nick_name=new String(b);
  String   real_name=request.getParameter("real_name");
    b = real_name.getBytes("ISO-8859-1");
		real_name=new String(b);
  String   sex=request.getParameter("sex");
    b = sex.getBytes("ISO-8859-1");
		 sex=new String(b);
		 out.println(sex);
  String    e_mail=request.getParameter("email1")+request.getParameter("email2");
    b = e_mail.getBytes("ISO-8859-1");
		e_mail=new String(b);
  String    birthday=request.getParameter("birthday");
    b = birthday.getBytes("ISO-8859-1");
		birthday=new String(b);
		
   userBean.setZhanghao(zhanghao);
   userBean.setPassword(password);
   userBean.setNick_name(nick_name);
   userBean.setReal_name(real_name);
   userBean.setSex(sex);
   userBean.setEmail(e_mail);
   userBean.setBirthday(birthday);
  
  
  
   %>
   <%
   try{
   
   regist.setUserBean(userBean);
   regist.regist();
   out.println("regist  success!!");  %>
   <br/>
   <table  width="50%" align="center" cellspacing="0"  class="faTable">
   <tr><td align="center"  class="faTdleft" id="info" >���ͳɹ��������ڽ���<span  id="hehe" style="color:red;font-size:30px;">3</span>����Զ���ת</td></tr></table>
<script>
    var time = 4;

function clock(){

time--;

document.getElementById("hehe").innerHTML =time;

if(time==0){

      window.location.href="song.do?action=main";

    }

}setInterval("clock();",1000);</script>
  <%  
   }catch(Exception  e){
   out.println(e.getMessage());
   out.println("regist  failed!!");
   }//catch
   }//if
   else{
 %>
 
<script type="text/javascript">
function userCheck() 
{   if (document.form1.account.value == "") {    
				window.alert("�������˺ţ�");    
				return false;    
	}   
	if (document.form1.psd1.value == "") {    
				window.alert("���������룡");      
				return false; 
  	}    
  	if (document.form1.psd2.value == "")
  	 {   
  	 			window.alert("��ȷ���û����룡");    
  	 			return false;    
  	 }    
  	 if (document.form1.nickname.value == "")
  	 {    
  	 			window.alert("��ȷ���ǳƣ�");
  	 			return false;    
  	 }   
  	 if (document.form1.psd1.value != document.form1.psd2.value) 
  	 {    
  	 			window.alert("��������������벻��ͬ�������������û����룡");   
  	 			return false;      
  	 }      
  	   
  	 var ck = document.getElementsByName("sex");     
  	 for(var i = 0; i < ck.length; i++){     
  	 	if(ck[i].checked){
  	 	       break;     
  	 	}else{     
  	 				alert("��ѡ�������Ա�!");     
  	 				return false;      
  	 	}   
  	 }    
  	 if (document.form1.email1.value == "") 
  	 {    
  	 		window.alert("������E-mail��ַ��");    
  	 		return false;    
  	 }    
  	 var target=document.getElementsByTagName("option")[0]    
  	 if(target.selected){    
  	 		 window.alert("��ѡ��һ������������")      
  	 		 return false;    
  	 }
  	 if(!check()) 
  	    return false;
  	 return true;
}
function check(){  
 var data=document.form1.birthday.value;
 var patrn=/^[0-9]{4}(-)((0[1-9])|(1[0-2]))(-)(([0-2][1-9])|(3[0-1]))$/; 
 if(!patrn.exec(data)){
  alert("��������ȷ���ڣ�");
  return false;
 }
 return true;
}  
</script>
 

  

<script type="text/javascript">//javascript��������У�����Ϣ�Ƿ�Ϊ��  
function userCheck() 
{   if (document.form1.zhanghao.value == "") {    
				window.alert("�������˺ţ�");    
				return false;    
	}   
	if (document.form1.password.value == "") {    
				window.alert("���������룡");      
				return false; 
  	}    
  	if (document.form1.psd.value == "")
  	 {   
  	 			window.alert("��ȷ���û����룡");    
  	 			return false;    
  	 }    
  	 if (document.form1.nick_name.value == "")
  	 {    
  	 			window.alert("��ȷ���ǳƣ�");
  	 			return false;    
  	 }   
  	 if (document.form1.password.value != document.form1.psd.value) 
  	 {    
  	 			window.alert("��������������벻��ͬ�������������û����룡");   
  	 			return false;      
  	 }      
  	   
  	 var ck = document.getElementsByName("sex");     
  	 for(var i = 0; i < ck.length; i++){     
  	 	if(ck[i].checked){
  	 	       break;     
  	 	}else{     
  	 				alert("��ѡ�������Ա�!");     
  	 				return false;      
  	 	}   
  	 }    
  	 if (document.form1.email1.value == "") 
  	 {    
  	 		window.alert("������E-mail��ַ��");    
  	 		return false;    
  	 }    
  	 var target=document.getElementsByTagName("option")[0]    
  	 if(target.selected){    
  	 		 window.alert("��ѡ��һ������������")      
  	 		 return false;    
  	 }
  	 if(!check()) 
  	    return false;
  	 return true;
}
function check(){  
 var data=document.form1.birthday.value;
 var patrn=/^[0-9]{4}(-)((0[1-9])|(1[0-2]))(-)(([0-2][1-9])|(3[0-1]))$/; 
 if(!patrn.exec(data)){
  alert("��������ȷ���ڣ�");
  return false;
 }
 return true;
}  
</script>
  

  	  <body> 
		<br>  
			<table width="600" height="300" border="0" align="center" cellpadding="1" cellspacing="1">  
			 <tr>      
			 <td height="202" valign="top">  
			 <br>  
			 <font size="4pt"><center><b>������ע����Ϣ</b></center></font> 
			  <hr>   
			  <form name="form1" method="post" action="register.jsp" onsubmit="return userCheck()">  
			   <table width="560" border="1" align="center">        
			   <tr>         
			   <td align="center" width="30%">�� &nbsp;&nbsp;&nbsp;��:
               </td>
               <td align="center">
			   <input type="text" name="zhanghao" size="45">
			   </td>
               <td align="center">
			    <font color="red">*</font>         
			    </td>       
			    </tr>      
			    <tr>          
			    <td align="center">��&nbsp;&nbsp;&nbsp;��: 
                </td>
               <td align="center">           
			    <input type="password" name="password" size="45"> 
                </td>
               <td align="center">          
			    <font color="red">*</font>         
			    </td>      
			    </tr>      
			     <tr>          
			     <td align="center">ȷ������:   
                 </td>
               <td align="center">         
			     <input type="password" name="psd" size="45"> 
                 </td>
               <td align="center">
			      <font color="red">*</font>         
			      </td>       
			      </tr>
			      <tr>         
			   <td align="center">��&nbsp;&nbsp;&nbsp;��:
               </td>
               <td align="center">
			   <input type="text" name="nick_name" size="45">
			   </td>
               <td align="center">
			    <font color="red">*</font>         
			    </td>       
			    </tr>       
			      <tr>          
			      <td align="center">��&nbsp;&nbsp;&nbsp;��:  
                  </td>
               <td align="center">        
			      <input type="text" name="real_name" size="45"> 
                  </td>
               <td align="center">      
			      </td>       
			      </tr>
			      <tr>          
			      <td align="center">��&nbsp;&nbsp;&nbsp;��: 
                  </td>
               <td align="center">   
			      <input type="text" name="birthday" size="45"> 
                  </td>
               <td align="center">       
			      </td>       
			      </tr>       
			      <tr>          
			      <td align="center">��&nbsp;&nbsp;&nbsp;��:
                  </td>
               <td align="center">              
			      <input type="radio" name="sex" value="��"   checked="checked" id="1">��             &nbsp;&nbsp;&nbsp;&nbsp;
			      <input type="radio" name="sex" value="Ů" id="1">Ů             </td>
               <td align="center">
			      <font color="red">*</font> 
        			</td>         
        			</tr>        
        			<tr>          
        			<td align="center">E-Mail:
                    </td>
               <td align="center">
               <input type="text" name="email1"  >          
        			<select name="email2">            
        			<option>--��ѡ����������--</option>                
        			<option value="@yahoo.cn">@yahoo.cn</option>
              		<option value="@yahoo.cn">@yahoo.com</option>
              		<option  value="@yahoo.cn">@yahoo.com.cn</option>              
              		<option  value="@yahoo.cn">@sina.com.cn</option>              
              		<option  value="@yahoo.cn">@163.com.cn</option>              
              		<option  value="@yahoo.cn">@hotmail.cn</option>              
              		<option  value="@yahoo.cn">@gmial.com.cn</option>             
              		</select>    
                    </td>
               <td align="center">         
              		<font color="red">*</font>         
              		</td>       
              		</tr> 
              		       
              		<tr>          
              		<td align="center">
              		<input   type="hidden"   name="yes"     value="yes"/>
                    </td>
               <td align="center">
              		<input type="submit" name="Submit" value="ע �� ">
              		<input type="reset" name="Reset" value="�� �� ">
              		 </td>       
              		</tr>        <tr><td></td><td align="center">ע�⣺<font color="red">*</font>Ϊ�������ݣ�</td></tr>     
              		</table>   
              </form>   
             </td>    
             </tr> </table> 
           </body> 
       </html> 
 
		<%  } %>
	 