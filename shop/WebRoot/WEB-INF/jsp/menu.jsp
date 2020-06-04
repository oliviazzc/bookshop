<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="/struts-tags" prefix="s"%>
	
		<div class="span5">
		<div class="logo">
			
				<img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.jpg"/>
			
		</div>
	</div>
	<div class="span9">
<div class="headerAd">


		
	      <form id="searchForm" action="${ pageContext.request.contextPath }/product_search.action"  method="post" novalidate="novalidate">
	      	
					<table >
							<tr><td> &nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
							<tr>
							
							<tr>
									<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>   
								
								<td>
									<input type="text" id="pname" name="pname" class="text" maxlength="20">
								
									
								</td>
								<th>&nbsp;&nbsp;&nbsp;&nbsp;</th>                                                  
								<td>
								<input type="submit" class="submit" value="搜 索" >
								</td>
							</tr>	
						</table>	
				</form>
		
</div>	
</div>
<div class="span10 last">
	<div class="topNav clearfix">
		<ul>
			<s:if test="#session.existUser == null">
			<li id="headerLogin" class="headerLogin" style="display: list-item;">
				<a href="${ pageContext.request.contextPath }/user_loginPage.action">登录</a>|</li>
			<li id="headerRegister" class="headerRegister"
				style="display: list-item;"><a href="${ pageContext.request.contextPath }/user_registPage.action">注册</a>|
			</li>
			</s:if>
			<s:else>
			<li id="headerLogin" class="headerLogin" style="display: list-item;">
				<s:property value="#session.existUser.name"/>
				|</li>
				
			<li id="headerLogin" class="headerLogin" style="display: list-item;">
				<a href="${ pageContext.request.contextPath }/user_edit.action?uid=<s:property value="#session.existUser.uid"/>">修改个人信息</a>
			|</li>
			
			<li id="headerLogin" class="headerLogin" style="display: list-item;">
				<a href="${ pageContext.request.contextPath }/order_findByUid.action?page=1">我的订单</a>
			|</li>
			<li id="headerRegister" class="headerRegister"
				style="display: list-item;"><a href="${ pageContext.request.contextPath }/user_quit.action">退出</a>|
			</li>
			</s:else>
		
			<li><a>帮助</a> |</li>
			<li><a href="${ pageContext.request.contextPath }/admin/index.jsp">后台</a></li>
		</ul>
	</div>
	<div class="cart">
		<a href="${ pageContext.request.contextPath }/cart_myCart.action">我的购物车</a>
	</div>
	<div class="phone">
		客服电话: <strong>13711111111</strong>
	</div>
</div>
<div class="span24">
	<ul class="mainNav">
		<li><a href="${ pageContext.request.contextPath }/index.action">首页</a> |</li>
		<s:iterator var="c" value="#session.cList">
			<li><a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property value="#c.cname"/></a> |</li>
		</s:iterator>

	</ul>
</div>