<%@page contentType="text/html; charset=utf-8" %>
<%@page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>网上超市-商品列表</title>
<script type="text/javascript" src="js/jquery.pack.js"></script>
<link href="css/all.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<%@include file="tag.tag"%>
</head>
<body>
<div class="w1016 c">
	<h3>商品列表</h3>
	<hr color="red">
	<div class="goodlist l">
			<ul class="w l lili lile f12">
				<c:if test="${fn:length(products)<=0 }">
					<font color="red">对不起,商品还没上架</font>
				</c:if> 
				<c:forEach items="${products}" var="product">
					<li>
						<div class="pic w l">
							<a href=""><img src="<%=request.getContextPath() %>/images/products/${product.productImagetPath}" "></a>
						</div>
						<div class="hits w l">
							<span class="l"><label>${product.productCurrentPrice}</label></span>
						</div>
						<div class="g_title w l">
							<a href="<%=request.getContextPath()%>/addCart.do?productId=${product.id}"><img src="<%=request.getContextPath()%>/images/goumai.gif" /></a>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
</div>
</body>
</html>