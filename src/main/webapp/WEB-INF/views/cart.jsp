<%@page contentType="text/html; charset=utf-8" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>金义兴华</title>
<head><script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.pack.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jQuery.blockUI.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.SuperSlide.js"></script>
<link href="<%=request.getContextPath()%>/css/all.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" type="text/css" />
<%@include file="resource.tag" %>
<%@include file="tag.tag"%>  

<script type="text/javascript">
	/**
	 * 删除某一行
	 */
	function deleteOne(productSN){
		//ajax请求
		$.ajax({
			  type: 'POST',
			  url: "cartDelete.do",
			  data: {productSN:productSN},
			  success: function(data){
				  $("#"+productSN).remove();
				  $("#total").html(data);
			  }
			});
	}
	function addProduct(productSN,count){
		console.log(productSN);
		console.log(count);
		//ajax请求
		$.ajax({
			  type: 'POST',
			  url: "ajaxAddCart.do",
			  data: {productSN:productSN,productCount:count},
			  success: function(data){
				  var array=data.split(",");
				  $("#total").html(array[0]);
				  $("#"+productSN+"_productPrice").html(array[1]);
			  }
			});
	}

</script>
</head>
<div class="c w1016">
  <div class="w l">
    <div class="logo l"><img src="images/logo.gif" alt="返回酷衣轩"></div>
    <div style="margin-top: 47px;margin-left: 800px;">
    	<c:choose>
    		<c:when test="${customer!=null}">
    			<font color="#FF6600">欢迎您,尊敬的${customer.customerNickname}</font>
    			<a href="<%=request.getContextPath()%>/exit.do">退出</a>
    		</c:when>
    		<c:otherwise>
	    		<a href="<%=request.getContextPath()%>/loginPre.do" target="centerFrame"><font color="#FF6600">登陆</font></a>
		    	<a href="<%=request.getContextPath()%>/register.do" target="centerFrame"><font color="#FF6600">注册</font></a>
    		</c:otherwise>
    	</c:choose>
    </div>
  </div>
</div>
<div class="w l nav bga bgc">
  <div class="w1016 c">
    <ul class="w l j-nav f14 fwb lili lile">
     <li><a href="<%=request.getContextPath()%>/getCenter.do" target="_self">首页</a><em></em></li>
      <c:forEach items="${firstMenu}" var="item">
      		<li><a href="<%=request.getContextPath()%>/getProductList.do?productCategoryId=${item.categoryId}" target="_self">${item.categoryName}</a><em></em></li>
      </c:forEach>
    </ul>
  </div>
</div>
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
        <!--购物车抬头  -->
		<table background="<%=request.getContextPath()%>/images/buystep2.jpg"
			style="width: 538px;height: 48px;margin-top: 5px;" cellspacing="0" cellpadding="0" border="0" >
			<tbody>
				<tr>
					<td width="193" height="22">&nbsp;</td>
					<td width="113">
						<div align="center">浏览商品</div>
					</td>
					<td width="112">
						<div align="center">
							<strong><font color="#FFFFFF">购物车</font></strong>
						</div>
					</td>
					<td width="120">
						<div align="center">结算</div>
					</td>
				</tr>
			</tbody>
		</table>
		<hr color="red">
		<table cellspacing="0" cellpadding="0" border="0">
   	 		<tr>
   	 			<!-- 返回上页  begin -->
    	 		<td><img width="10" height="36" src="<%=request.getContextPath()%>/images/gwc_6.gif"></td>
    	 		<td><img width="25" height="36" src="<%=request.getContextPath()%>/images/gwc_8.gif"></td>
    	 		<td background="<%=request.getContextPath()%>/images/gwc_10.gif">
    	 				<a href="javascript:window.history.back(-2);">返回上页,继续购物</a>
    	 		</td>
    	 		<td><img width="25" height="36" src="<%=request.getContextPath()%>/images/gwc_12.gif"></td>
    	 		<!-- 返回上页  end -->
    	 		<td><img src="<%=request.getContextPath()%>/images/gwc_14.gif"></td>
    	 		<!-- 去结算 begin -->
    	 		<td><img width="10" height="36" src="<%=request.getContextPath()%>/images/gwc_6.gif"></td>
    	 		<td><img width="25" height="36" src="<%=request.getContextPath()%>/images/gwc_16.gif"></td>
    	 		<td background="<%=request.getContextPath()%>/images/gwc_10.gif">
    	 				<a href=";">去结算</a>
    	 		</td>
    	 		<td><img width="25" height="36" src="<%=request.getContextPath()%>/images/gwc_12.gif"></td>
   	 		  	<!-- 去结算  end -->
   	 		</tr>
	     </table>
     	 <table width="100%" align="center" cellspacing="1" cellpadding="2" border="0" align="center" style="line-height:140%;" id="cartTable">
			<tr bgcolor="#CCCCCC">
				<td height="30px;" align="center"><font color="#666666"><strong>序号</strong></font></td>
				<td height="30px;" align="center"><font color="#666666"><strong>商品号</strong></font></td>
				<td height="30px;" align="center"><font color="#666666"><strong>商品名</strong></font></td>
				<td height="30px;" align="center"><font color="#666666"><strong>单价</strong></font></td>
				<td height="30px;" align="center"><font color="#666666"><strong>数量</strong></font></td>
				<td height="30px;" align="center"><font color="#666666"><strong>金额</strong></font></td>
				<td height="30px;" align="center"><font color="#666666"><strong>操作</strong></font></td>
			</tr>
			<c:forEach items="${SHOPPING_CART.cartProducts}" var="item" varStatus="status">
				<tr bgcolor="#FaFaFa" id="${item.productSN}">
					<td height="25" align="center">${status.index + 1}</td>
					<td height="25" align="center">${item.productSN}</td>
					<td height="25" align="center">${item.productName}</td>
					<td height="25" align="center">${item.unitPrict}</td>
					<td height="25" align="center">
						<input type="text" value="${item.productCount}" style="width: 29px;" onblur="addProduct('${item.productSN}',this.value);"/>
					</td>
					<td height="25" align="center" id="${item.productSN}_productPrice">${item.productPrice}</td>
					<td height="25" align="center">
						<a href="javascript:void(0);" onclick="deleteOne('${item.productSN}');">删除</a>
					</td>
				</tr>
			</c:forEach>
			<tr bgcolor="#CCCCCC">
				<td height="23" colspan="5" align="right"><font color="#666666"><strong>合计:</strong></font></td>
				<td height="23" colspan="2" align="center" id="total"><font color="#666666"><strong>
						${SHOPPING_CART.totalPrice}</strong></font>
				</td>
			</tr>
		</table>
		<table width="720" cellspacing="0" cellpadding="0" border="0"
			align="center">
			<tbody>
				<tr bgcolor="#ffffff">
					<td height="46" align="center" colspan="6">
					<input
						type="button"
						onclick="if(!confirm('确认清空购物车吗?')) return false;location.href='orderpro_del.asp?kind=qingkong';"
						style="BACKGROUND: url(images/gwc_28.gif) no-repeat; border: 0; width: 101px; height: 29px; CURSOR: pointer;"
						value=" " name="delall"> &nbsp;&nbsp;&nbsp; 
					<input
						type="button"
						onclick="javascript:window.location.href='orderjs.asp';"
						style="background-image: url(images/gwc_jiesuan.gif); border: 0; width: 101px; height: 29px; CURSOR: pointer;"
						value=" " name="df"> &nbsp;&nbsp;&nbsp; &nbsp;
					<input
						type="hidden" name="maxi" value="1"></td>
				</tr>
			</tbody>
		</table>
			</div>
    </div>
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
</html>
