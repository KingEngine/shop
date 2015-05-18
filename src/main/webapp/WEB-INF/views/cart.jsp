<%@page contentType="text/html; charset=utf-8" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>网上超市-购物车</title>
<%@include file="resource.tag" %>
<%@include file="tag.tag"%>  
</head>
	<body>
		<c:forEach items="${sessionScope.SHOPPING_CART.cartProducts}" var="item">
			${item.productName}></br>
		</c:forEach>
	</body>
</html>
