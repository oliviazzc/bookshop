<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>修改个人资料</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css"/>

<script>
	function checkForm(){
		// 校验用户名:
		// 获得用户名文本框的值:
		var username = document.getElementById("username").value;
		if(username == null || username == ''){
			alert("用户名不能为空!");
			return false;
		}
		// 校验密码:
		// 获得密码框的值:
		var password = document.getElementById("password").value;
		if(password == null || password == ''){
			alert("密码不能为空!");
			return false;
		}
		// 校验确认密码:
		var repassword = document.getElementById("repassword").value;
		if(repassword != password){
			alert("两次密码输入不一致!");
			return false;
		}
	}
	
	
	
	
	function createXmlHttp(){
		   var xmlHttp;
		   try{ // Firefox, Opera 8.0+, Safari
		        xmlHttp=new XMLHttpRequest();
		    }
		    catch (e){
			   try{// Internet Explorer
			         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			      }
			    catch (e){
			      try{
			         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			      }
			      catch (e){}
			      }
		    }

			return xmlHttp;
		 }
	

	
</script>
</head>
<body>
<div class="container header">
	
	<%@ include file="menu.jsp" %>

</div>	<div class="container register">
		<div class="span24">
			<div class="wrap">
				<div class="main clearfix">
					<div class="title">
						<strong>修改个人信息</strong>
					</div>
					<form id="userAction_save_do" name="Form1" action="${ pageContext.request.contextPath }/user_updateuser.action?uid=<s:property value="#session.existUser.uid"/>"  method="post" novalidate="novalidate" ">
							<input type="hidden" name="uid" value="<s:property value="model.uid"/>" />
			               <input type="hidden" name="state" value="1" />
			               <input type="hidden" name="code" value="<s:property value="model.code"/>" />
							<table>
								<tbody>
								<tr>
								<th>
									<span class="requiredField">*</span>用户名:
								</th>
								<td>
									<input type="text" name="username" value="<s:property value="model.username"/>" id="userAction_save_do_logonName" class="bg" onblur="checkUsername()"/>
									<span id="span1"></span>
								</td>
							</tr>
				 
							<tr>
								<th>
									<span class="requiredField">*</span>密&nbsp;&nbsp;码:
								</th>
								<td>
									<input type="text" name="password" value="<s:property value="model.password"/>" id="userAction_save_do_logonName" class="bg"/>
									<span><s:fielderror fieldName="password"/></span>
								</td>
							</tr>		
							<tr>
								<th>
									E-mail:
								</th>
								<td>
									<input type="text" name="email" value="<s:property value="model.email"/>" id="userAction_save_do_logonName" class="bg"/>
									<span><s:fielderror fieldName="email"/></span>
								</td>
							</tr>
									<tr>
										<th>
											<span class="requiredField">*</span>姓名:
										</th>
										<td>
												<input type="text" name="name" value="<s:property value="model.name"/>" id="userAction_save_do_logonName" class="bg"/>
												<span><s:fielderror fieldName="name"/></span>
										</td>
									</tr>
									
									<tr>
										<th>
											电话:
										</th>
										<td>
												<input type="text" name="phone" value="<s:property value="model.phone"/>" id="userAction_save_do_logonName" class="bg"/>
										</td>
									</tr>
									
									<tr>
										<th>
											<span class="requiredField">*</span>地址:
										</th>
										<td>
												<input type="text" name="addr" value="<s:property value="model.addr"/>" id="userAction_save_do_logonName" class="bg"/>
												<span><s:fielderror fieldName="addr"/></span>
										</td>
									</tr>
							<!--  	<tr>
									<th>
										<span class="requiredField">*</span>验证码:
									</th>
									<td>
										<span class="fieldSet">
											<input type="text" id="checkcode" name="checkcode" class="text captcha" maxlength="4" autocomplete="off"><img id="checkImg" class="captchaImage" src="${pageContext.request.contextPath}/checkImg.action" onclick="change()" title="点击更换验证码">
										</span>
									</td>
								</tr>
									<tr>
						    <th>&nbsp;</th>
								
								<td><s:actionerror /></td>
						</tr>
							-->				
					
				
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<input type="submit" id="userAction_save_do_submit"  class="submit" value="确认修改">
								</td>
							</tr>
							<tr><td> &nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
							<tr><td> &nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
	
						</tbody></table>
			
					</form>
				</div>
			</div>
		</div>
	</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
					<img src="${pageContext.request.contextPath}/image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
</div>	</div>
	<div class="span24">
		<ul class="bottomNav">
					<li>
						<a>关于我们</a>
						|
					</li>
					<li>
						<a>联系我们</a>
						|
					</li>
					<li>
						<a>法律声明</a>
						|
					</li>
					<li>
						<a>Email</a>
						|
					</li>
		</ul>
	</div>
	<div class="span24">
<div class="copyright">all Copyright© 2017。03-2017.05 by软件141  郑小芬，软件142 詹子程    </div>
	</div>
</div>
<div id="_my97DP" style="position: absolute; top: -1970px; left: -1970px;"><iframe style="width: 190px; height: 191px;" src="./会员注册 - Powered By Mango Team_files/My97DatePicker.htm" frameborder="0" border="0" scrolling="no"></iframe></div></body></html>