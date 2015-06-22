<%@page contentType="text/html; charset=utf-8" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>金义兴华</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.pack.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jQuery.blockUI.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.SuperSlide.js"></script>
<link href="<%=request.getContextPath()%>/css/all.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" type="text/css" />
<%@include file="resource.tag" %>
<%@include file="tag.tag"%>  
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
	    		<a href="<%=request.getContextPath()%>/loginPre.do"><font color="#FF6600">登陆</font></a>
		    	<a href="<%=request.getContextPath()%>/register.do"><font color="#FF6600">注册</font></a>
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
    <!-- 结算页面 beign -->
    <form action="https://95epay.cn/sslpayment" method="post">
		<input type="hidden" name="MerNo" value="${MerNo}" /> 
		<input type="hidden" name="BillNo" value="${BillNo}" /> 
		<input type="hidden" name="Amount" value="${Amount}" />
		<input type="hidden" name="PaymentType" value="${PaymentType}" /> 
		<input type="hidden" name="PayType" value="${PayType}"> 
		<input type="hidden" name="ReturnURL" value="${ReturnURL}" /> 
		<input type="hidden" name="NotifyURL" value="${NotifyURL}" /> 
		<input type="hidden" name="MD5info" value="${MD5info}" /> 
		<input type="hidden" name="MerRemark" value="${MerRemark}" />
		<input type="hidden" name="products" value="${Products}" />
	  <div style="background-color: #fff;border: 1px solid #f0f0f0;margin-left:267px;">
    	<!-- 收款人信息 begin -->
    	<div style="color: #333;height: 40px;line-height: 40px;">
    		<font style="margin-left: 0px;font-size: 16px;font-weight: bolder;">订单已提交,请尽快支付</font>
        </div>
        <div style="color: #333;height: 40px;line-height: 40px;">
                                   支付金额：${SHOPPING_CART.totalPrice}
    		<input type="submit" style="background-color: #e00; color: #fff;float: right;font-size: 16px;height: 36px;font-weight: bolder;cursor: pointer;" value="立即支付"/>
         </div>
      </div>
     <!-- 结算页面 end -->
     </form>
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
