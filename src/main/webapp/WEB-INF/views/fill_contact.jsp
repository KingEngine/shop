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
    <div style="background-color: #fff;border: 1px solid #f0f0f0;margin-left:267px;">
    	<!-- 收款人信息 begin -->
    	<div style="color: #333;height: 40px;line-height: 40px;">
    		<font style="margin-left: 0px;font-size: 16px;font-weight: bolder;">收款人信息</font>
    		<font style="margin-left: 100px;"></font>
        </div>
        <!-- 收款人信息 end -->
        <div style="border-bottom: 1px solid #e6e6e6;height: 0;margin-bottom: 10px;"></div>
        <!-- 结算方式  begin -->
        <div style="color: #333;height: 40px;line-height: 40px;">
    		<font style="margin-left: 0px;font-size: 16px;font-weight: bolder;">支付方式</font>
        </div>
        <div style="border: 2px solid #e4393c;padding: 4px;23px;width: 56px;">
        	在线支付
        </div>
        <!-- 结算方式  end -->
        <div style="border-bottom: 1px solid #e6e6e6;height: 0;margin-bottom: 10px;"></div>
        <!-- 商品列表 begin -->
        <div style="color: #333;height: 40px;line-height: 40px;">
    		<font style="margin-left: 0px;font-size: 16px;font-weight: bolder;">商品列表</font>
        </div>
         <!-- 商品列表 end -->
     </div>
     <!-- 结算页面 end -->
    </div>
  </div>

</html>
