<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/slider.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>
<title>网上商城</title>
</head>
<body>

   <div class="container header">

	<%@ include file="menu.jsp" %>

   </div>	
<center>
<div id="divcontent">
<table width="850px" border="0" cellspacing="0">
  <tr>
    <td style="padding:30px; text-align:center"><table width="60%" border="0" cellspacing="0" style="margin-top:70px">
      <tr>
        <td style="width:98"><img src="${pageContext.request.contextPath}/images/IconTexto_WebDev_009.jpg" width="128" height="128" /></td>
        <td style="padding-top:30px"><font style="font-weight:bold; color:#FF0000">
	        <s:actionmessage/>
	        <s:actionerror/>
        </font>
        <br />
            <br />
          <a href="${ pageContext.request.contextPath }/index.action">返回首页</a>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="${ pageContext.request.contextPath }/user_registPage.action">注册</a>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="${ pageContext.request.contextPath }/user_loginPage.action">立即登录</a>
         </td>
      </tr>
    </table>
    <h1>&nbsp;</h1></td>
    </tr>
</table>
</div>
</center>
</body>
</html>