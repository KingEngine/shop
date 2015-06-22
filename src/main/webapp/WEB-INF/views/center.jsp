<%@page contentType="text/html; charset=utf-8" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>金义兴华</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.pack.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jQuery.blockUI.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.SuperSlide.js"></script>
<link href="<%=request.getContextPath()%>/css/all.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" type="text/css" />
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
<div class="block10 w l"></div>
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
        <div class="wx-yh-t-l l">
            <div id="slideBox" class="slideBox">
              <div class="hd f12">
                <ul>
                  <li>1</li>
                  <li>2</li>
                  <li>3</li>
                  <li>4</li>
                  <li>5</li>
                </ul>
              </div>
              <div class="bd">
                <ul>
                  <li><img src="images/ad0.jpg" /></li>
                  <li><img src="images/ad1.jpg" /></li>
                  <li><img src="images/ad2.jpg" /></li>
                  <li><img src="images/ad3.jpg" /></li>
                  <li><img src="images/ad4.jpg" /></li>
                </ul>
              </div>
            </div>
            <script type="text/javascript">jQuery(".slideBox").slide( { mainCell:".bd ul",effect:"top",autoPlay:true} );</script> 
        </div>
        <div class="wx-yh-t-r l">
        	<div class="yh-1 l">
            	<a href=""><img src="images/ad_top.jpg" border="0" width="180"></a>
            </div>
            <div class="yh-2 l">
            	<img src="images/ad_hd.jpg" border="0" width="180" height="160">
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="block10 w l"></div>
<div class="w1016 c">
	<div class="w l">
    	<div class="cattitle w l"><h2 class="l c3">最热商品</h2></div>
    	<div class="hot l">
    	<div class="hot_l w l">
                <div class="w l hot_bq">
                	<h3 class="w l f14 c6 ">热门标签</h3>
                	<ul class="w l lili lile">
                    	<li><a href="">童装</a><em></em></li>
                	</ul>  
                </div> 
                <div class="w l hot_lx">
                <h3 class="w l f14 c6">本季流行</h3>
                	<ul class="w l f12 lili lile">
                    	<li><a href=""><img src="images/cz1.gif"></a><a href="">短袖</a></li>
                    </ul>
                </div>
        	</div>
            <div class="hot_r l">
            	<div id="autoPage" class="leftLoop w l">
						<div class="hd">
							<a class="next"></a>
							<ul></ul>
							<a class="prev"></a>
						</div>
						<div class="bd">
							<ul class="picList w l f12">
							<li>
                                <dl>
                                	<c:forEach items="${hotProducts}" var="product">
                                		<dd>
                                            <div class="pic"><a href=""><img src="<%=request.getContextPath() %>/images/products/${product.productImagetPath}" /></a></div>
                                            <div class="title"><a href="javascript:void(0);" title="${product.productName}">${fn:substring(product.productName,0,11)}</a></div>
                                            <div class="price">￥${product.productCurrentPrice}</div>
                                            <div class="title"><a href="<%=request.getContextPath()%>/addCart.do?productId=${product.id}"><img src="<%=request.getContextPath()%>/images/goumai.gif" /></a></div>
                                        </dd>
                                	</c:forEach>
								 </dl>
                                </li>
							</ul>
						</div>
					</div>
					<script type="text/javascript">jQuery("#autoPage").slide({ titCell:".hd ul", mainCell:".bd ul",effect:"left",vis:1,scroll:1,autoPlay:true,autoPage:true});</script>
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
