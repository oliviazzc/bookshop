<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://localhost:8080/mango/cart/list.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<title>订单页面</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css"/>

</head>
<body>

<div class="container header">
	
	
	<%@ include file="menu.jsp" %>
	
</div>	

<div class="container cart">

		<div class="span24">
		
			<div class="step step1">
				<ul>
					
					<li  class="current"></li>
					<li  >生成订单成功</li>
				</ul>
			</div>
	
		
				<table>
					<tbody>
					<tr>
						<th colspan="5">订单编号:<s:property value="model.oid"/>&nbsp;&nbsp;&nbsp;&nbsp;</th>
					</tr>
					<tr>
						<th>图片</th>
						<th>商品</th>
						<th>价格</th>
						<th>数量</th>
						<th>小计</th>
					</tr>
						<s:iterator var="orderItem" value="model.orderItems">
						<tr>
							<td width="60">
								<img src="${ pageContext.request.contextPath }/<s:property value="#orderItem.product.image"/>"/>
							</td>
							<td>
								<s:property value="#orderItem.product.pname"/>
							</td>
							<td>
								<s:property value="#orderItem.product.shop_price"/>
							</td>
							<td class="quantity" width="60">
								<s:property value="#orderItem.count"/>
							</td>
							<td width="140">
								<span class="subtotal">￥<s:property value="#orderItem.subtotal"/></span>
							</td>
							
						</tr>
						</s:iterator>
				</tbody>
			</table>
				<dl id="giftItems" class="hidden" style="display: none;">
				</dl>
				<div class="total">
					<em id="promotion"></em>
					商品金额: <strong id="effectivePrice">￥<s:property value="model.total"/>元</strong>
				</div>
			<form id="orderForm" action="${ pageContext.request.contextPath }/order_payOrder.action" method="post">
				<input type="hidden" name="oid" value="<s:property value="model.oid"/>"/>
				<div class="span24">
					<p>
							收货地址：<input name="addr" type="text" value="<s:property value="model.user.addr"/>" style="width:350px" />
								<br />
							收货人&nbsp;&nbsp;&nbsp;：<input name="name" type="text" value="<s:property value="model.user.name"/>" style="width:150px" />
								<br /> 
							联系方式：<input name="phone" type="text"value="<s:property value="model.user.phone"/>" style="width:150px" />
							    <br/>
                            <!--付款送货方式起  -->
                               <p>    付款方式：
                           	<input type="radio" name="payway" value="支付宝" checked="checked"/>支付宝
							<img src="${ pageContext.request.contextPath }/bank_img/icbc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="payway" value="微信"/>微信
							<img src="${ pageContext.request.contextPath }/bank_img/bc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="payway" value="网上银行"/>网上银行
							<img src="${ pageContext.request.contextPath }/bank_img/abc.bmp" align="middle"/>
							<br/>
							</p>
							<p>快递方式：                           	
							<input type="radio" name="sendway" value="顺丰" checked="checked"/>顺丰
							<img src="${ pageContext.request.contextPath }/bank_img/bj.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="sendway" value="申通"/>申通
							<img src="${ pageContext.request.contextPath }/bank_img/cib.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="sendway" value="圆通"/>圆通
							<img src="${ pageContext.request.contextPath }/bank_img/hx.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="sendway" value="百世汇通"/>百世
							<img src="${ pageContext.request.contextPath }/bank_img/sh.bmp" align="middle"/>
							</p>
                              <!--付款送货方式末  -->
						</p>
						<hr />
						<!-- 
						<p>
							付款方式（银行）：<br/>
							<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked"/>工商银行
							<img src="${ pageContext.request.contextPath }/bank_img/icbc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行
							<img src="${ pageContext.request.contextPath }/bank_img/bc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>农业银行
							<img src="${ pageContext.request.contextPath }/bank_img/abc.bmp" align="middle"/>
							<br/>
			
						</p>
						<hr />
							<p>
							快递方式：<br/>
							<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>交通银行
							<img src="${ pageContext.request.contextPath }/bank_img/bcc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpId" value="PINGANBANK-NET"/>平安银行
							<img src="${ pageContext.request.contextPath }/bank_img/pingan.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>建设银行
							<img src="${ pageContext.request.contextPath }/bank_img/ccb.bmp" align="middle"/>
							<br/>
						</p>
						<hr />
						 -->
						<p style="text-align:right">
							<a href="javascript:document.getElementById('orderForm').submit();">
								<img src="${pageContext.request.contextPath}/images/finalbutton.gif" width="204" height="51" border="0" />
							</a>
						</p>
				</div>
			</form>
		</div>
		
	</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
					<img src="image\r___________renleipic_01/footer.jpg" alt="我们的优势" title="我们的优势" height="52" width="950">
</div>
</div>
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