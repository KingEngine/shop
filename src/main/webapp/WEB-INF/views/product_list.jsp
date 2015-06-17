<%@page contentType="text/html; charset=utf-8" %>
<%@page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>金义兴华</title>
<script type="text/javascript" src="js/jquery.pack.js"></script>
<link href="css/all.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<%@include file="tag.tag"%>
</head>
<div class="c w1016">
  <div class="w l">
    <div class="logo l"><img src="images/logo.gif" alt="返回酷衣轩"></div>
    <div w l>
    	<a href="<%=request.getContextPath()%>/loginPre.do" target="_self">登陆</a>
    	<a href="<%=request.getContextPath()%>/register.do" target="_self">注册</a>
    </div>
  </div>
</div>
<div class="w l nav bga bgc">
  <div class="w1016 c">
    <ul class="w l j-nav f14 fwb lili lile">
     <li><a href="<%=request.getContextPath()%>/getCenter.do">首页</a><em></em></li>
      <c:forEach items="${firstMenu}" var="item">
      		<li><a href="<%=request.getContextPath()%>/getProductList.do?productCategoryId=${item.categoryId}">${item.categoryName}</a><em></em></li>
      </c:forEach>
    </ul>
  </div>
</div>
<div class="w1016 c">
	<hr/>
		<table background="<%=request.getContextPath()%>/images/buystep0.jpg"
			style="width: 538px;height: 48px;" cellspacing="0" cellpadding="0" border="0" >
			<tbody>
				<tr>
					<td width="193" height="22">&nbsp;</td>
					<td width="113">
						<div align="center"><strong><font color="#FFFFFF">浏览商品</font></strong></div>
					</td>
					<td width="112">
						<div align="center">
							购物车
						</div>
					</td>
					<td width="120">
						<div align="center">结算</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="goodlist l">
				<c:if test="${fn:length(products)<=0 }">
					<center><font style="color: red;font-size: 16px;">对不起,商品还没上架</font></center>
				</c:if> 
				<c:if test="${fn:length(products)>0 }">
					<ul class="w l lili lile f12">
				</c:if> 
				<c:forEach items="${products}" var="product">
					<li  class="ce">
						<div class="pic w l">
							<a href=""><img src="<%=request.getContextPath() %>/images/products/${product.productImagetPath}" "></a>
						</div>
						<div class="hits w l">
							<span class="l"><label>${product.productCurrentPrice}</label></span> 
						</div>
						<div class="g_title w l"><a href="javascript:void(0)"><h3>${product.productName}</h3></a></div>
						<div class="g_title w l">
							<a href="<%=request.getContextPath()%>/addCart.do?productId=${product.id}"><img src="<%=request.getContextPath()%>/images/goumai.gif" /></a>
						</div>
					</li>
				</c:forEach>
			<c:if test="${fn:length(products)>0 }">
					</ul>
				</c:if> 
		</div>
</div>
<div id="foot" class="w l foot f12" style="margin-top: 12%;">
  <div class="w1016 c">
    <div class="w l">
      <ul class="footnav lili lile w l">
        <li>网站导航</li>
      </ul>
    </div>
    <div class="w l sx">
        <span style="float: left;height: 21px;line-height: 21px;margin-left: 50%;">
        		<a href="http://www.miitbeian.gov.cn/" target="_blank"><font style="color: rgb(156,156,156);font-family:'microsoft yahei';font-size: 12px;">京ICP备：15030907号</font></a>
   		</span>
    </div>
  </div>
</div>