<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset="utf-8">
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<link href=${pageContext.request.contextPath}/css/steyle.css"
    type=text/css rel=stylesheet>
<link href=${pageContext.request.contextPath}/css/boot-crm.css"
    type=text/css rel=stylesheet>
<script 
    src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
</script>
<script>
//判断是登录账号是否为空
function check(){
	var usercode = $("#usercode").val();
	var password = $("#password").val();
	if(usercode=="" || password==""){
		$("#message").text("账号或密码不能为空!");
		return false;
	}
	return true;
}
</script>
</head>
<body lefftMargin=0 topMargin=0 marginWidth="0" marginheight="0"
    background=${pageContext.request.contextPath}/images/rightbg.jpg">
<div ALIGN="center">
<table border="0" width"1140px" cellspacing="0" cellpadding="0"
                                                id="table1">
        <tr>
             <td height="93"></td>
             <td></td>
        </tr>
        <tr>
       <td background="${pageCont.request.contextPath}/images/rights.jpg"
             width="740" height="412">
       </td>
       <td class="login_msg" width="400" align="center">
         <!-- margin:0px auto; 控制当前标签居中 -->
         <fieldset style="width: auto; margin: 0px auto;">
         <legend>
           <font style="font-size:15px" face="宋体">
                          欢迎使用非专业药品采购系统
           </font>
           </legend>
           <fond color="red">
               <%-- 提示信息 --%>
               <span id=""message">${msg}</span>
           </fond>
           <%--提交后的位置: /WEB-INF/customer.jsp --%>
           <from action="${pageContext.request.contextPath }/login.action"
                                  method="post" onsubmit="return check()">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
           账&nbsp;号<input id="usercode" type="text" name="usercode" />
      <br /><br />
           密&nbsp;码<input id="password" type="password" name="password" />
      <br /><br /> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <center><input type="submit" value="登录" /></center>
      </from>
    </fieldset>
    </td>
    </tr>
</table>
</div>    
</body>
</html>