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
    <div w l>
    	<a href="<%=request.getContextPath()%>/loginPre.do" target="_self">登陆</a>
    	<a href="<%=request.getContextPath()%>/register.do" target="_self">注册</a>
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
      	<h3>---用户登陆</h3>
      	<hr color="red">
     	 <form action="<%=request.getContextPath()%>/login.do" method="post">
			<input type="hidden" name="nextPath" id="nextPath" value="${nextPath}">
			<table>
				<tr>
					<td>用户名：</td>
					<td><input class="easyui-textbox" name="customerNickname" data-options="iconCls:'icon-man'" style="width:200px;"></input></td>
				</tr>
				<tr>
					<td>登录密码：</td>
					<td><input class="easyui-textbox" type="password" name="customerPwd"  style="width:200px;"></td>
					<td><font color="red">*</font></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" style="background: rgba(0, 0, 0, 0) url(<%=request.getContextPath()%>/images/btn_bg.gif) no-repeat scroll 0 0;border-width: 0;color: rgb(255, 255, 255); font-size: 14px;font-weight: 700;height: 25px;width: 111px;  border-color: rgb(102, 102, 102);border-style: solid;" value="登录"/>
					</td>
				</tr>
			</table>
		</form>
      </div>
    </div>
  </div>
</div>
<div id="foot" class="w l foot f12" style="margin-top: 10%;">
  <div class="w1016 c">
    <div class="w l">
      <ul class="footnav lili lile w l">
        <li>网站导航</li>
      </ul>
    </div>
    <div class="w l sx">
      <ul class="lxnav lili lile l">
        <li><a href="">关于本站</a></li>
      </ul>
      <div class="bq lili lile r"> www.jinyixinghua.com</div>
    </div>
  </div>
</div>
</html>
