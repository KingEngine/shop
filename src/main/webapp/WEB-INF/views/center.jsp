<%@page contentType="text/html; charset=utf-8" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>网上超市-首页</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.pack.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jQuery.blockUI.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.SuperSlide.js"></script>
<link href="<%=request.getContextPath()%>/css/all.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" type="text/css" />
<%@include file="tag.tag"%>
</head>
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
                                    	<dd>
                                            <div class="pic"><a href=""><img src="images/0001/13420124357x.jpg" /></a></div>
                                            <div class="title"><a href="">最美季侯风-果色手镯</a></div>
                                            <div class="price">￥80</div>
                                            <div class="title"><a href=""><img src="<%=request.getContextPath()%>/images/goumai.gif" /></a></div>
                                        </dd>
                                        <dd>
                                            <div class="pic"><a href=""><img src="images/ads2.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
                                        <dd>
                                            <div class="pic"><a href=""><img src="images/ads1.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
                                        <dd>
                                            <div class="pic"><a href=""><img src="images/ads1.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
                                        <dd>
                                            <div class="pic"><a href=""><img src="images/ads2.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
                                        <dd>
                                            <div class="pic"><a href=""><img src="images/ads1.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
                                        <dd>
                                            <div class="pic"><a href=""><img src="images/ads1.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
                                        <dd>
                                            <div class="pic"><a href=""><img src="images/ads1.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
									</dl>
                                </li>
								<li>
                                	<dl>
                                    	<dd>
                                            <div class="pic"><a href=""><img src="images/ads1.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
                                        <dd>
                                            <div class="pic"><a href=""><img src="images/ads1.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
                                        <dd>
                                            <div class="pic"><a href=""><img src="images/ads2.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
                                        <dd>
                                            <div class="pic"><a href=""><img src="images/ads1.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
                                        <dd>
                                            <div class="pic"><a href=""><img src="images/ads2.jpg" /></a></div>
                                            <div class="title"><a href="">效果图1</a></div>
                                        </dd>
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
