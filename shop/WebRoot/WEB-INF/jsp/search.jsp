<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>网上商城</title>
<link href="${pageContext.request.contextPath}/css/slider.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css"/>

</head>
<body>

<div class="container header">

	
	<%@ include file="menu.jsp" %>

</div>	

<div class="container index">
		


		
				<div class="span24">
			<div id="searchProduct" class="hotProduct clearfix">
					<div class="title">
						<strong>所查询商品</strong>
						<!-- <a  target="_blank"></a> -->
					</div>
					<ul class="tab">
							<li class="current">
								<a target="_blank"></a>
							</li>
							<li>
								<a  target="_blank"></a>
							</li>
							<li>
								<a target="_blank"></a>
							</li>
					</ul>
					
<div class="span18 last">
			
			<!-- 蔬菜 - Powered By Mango Team.htm -->
			<form id="productForm" action="${pageContext.request.contextPath}/image/1.jpg" method="post">
					
				<div id="result" class="result table clearfix">
						<ul>
							<s:iterator var="s" value="slist">
								<li>
										<a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#s.pid"/>">
										
											<img src="${pageContext.request.contextPath}/<s:property value="#s.image"/>" width="170" height="170"  style="display: inline-block;">
											   
											<span style='color:green'>
											 <s:property value="#s.pname"/>
											</span>
											 
											<span class="price">
												商城价： ￥<s:property value="#s.shop_price"/>
											</span>
											 
										</a>
								</li>
								<hr/>
							</s:iterator>	
								
						</ul>
				</div>
		
		</form>
		
		
		<div class="span24">
			<div class="friendLink">
				<dl>
					<dt>指南:</dt>
							<dd>
								<a  target="_blank">支付方式</a>
								|
							</dd>
							<dd>
								<a  target="_blank">配送方式</a>
								|
							</dd>
							<dd>
								<a  target="_blank">售后服务</a>
								|
							</dd>
							<dd>
								<a  target="_blank">帮助</a>
								|
							</dd>
						
						
					<dd class="more">
						<a >更多</a>
					</dd>
				</dl>
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
</body>
</html>