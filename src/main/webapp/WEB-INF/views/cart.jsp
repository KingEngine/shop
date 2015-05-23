<%@page contentType="text/html; charset=utf-8" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>网上超市-首页</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.pack.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jQuery.blockUI.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.SuperSlide.js"></script>
<link href="<%=request.getContextPath()%>/css/all.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" type="text/css" />
<%@include file="resource.tag" %>
<%@include file="tag.tag"%>  
</head>
<body>
<div class="w1016 c">
  <div class="w l">
    <div class="l wx-type">
      <dl>
      	<c:forEach items="${firstMenu}" var="item">
      		 <dt class="w l f14 fwb c3">${item.categoryName}</dt>
      		 <dd class="w l f12">
          	 <ul class="lili lile">
      		 <c:forEach items="${item.secondMenus}" var="second">
      		 	<li><a href="">${second.categoryName}</a></li>
      		 </c:forEach>
      		 </ul>
      	</c:forEach>
      </dl>
    </div>
    <div class="l wx-yh">
      <div class="wx-yh-t w l">
      	<h3>购物车</h3>
      	<hr color="red">
     	 <table width="100%" align="center" cellspacing="1" cellpadding="2" border="0">
			<tr bgcolor="#CCCCCC">
				<td height="23"><font color="#666666"><strong>序号</strong></font></td>
				<td height="23"><font color="#666666"><strong>商品号</strong></font></td>
				<td height="23"><font color="#666666"><strong>商品名</strong></font></td>
				<td height="23"><font color="#666666"><strong>数量</strong></font></td>
				<td height="23"><font color="#666666"><strong>金额</strong></font></td>
			</tr>
			<c:forEach items="${SHOPPING_CART.cartProducts}" var="item" varStatus="status">
				<tr bgcolor="#dddddd">
					<td height="25">${status.index + 1}</td>
					<td height="25">${item.productSN}</td>
					<td height="25">${item.productName}</td>
					<td height="25">${item.productCount}</td>
					<td height="25">${item.productPrice}</td>
				</tr>
			</c:forEach>
			<tr bgcolor="#CCCCCC">
				<td height="23" colspan="4" align="right"><font color="#666666"><strong>合计:</strong></font></td>
				<td height="23"><font color="#666666"><strong>${SHOPPING_CART.totalPrice}</strong></font></td>
			</tr>
			<tr bgcolor="#CCCCCC">
				<td height="23" colspan="5" align="right"><font color="#666666">
			    <a href="settleCart.do" target="centerFrame">去结算</a>
				</td>
			</tr>
		</table>
      </div>
    </div>
  </div>
</div>
</body>
</html>
