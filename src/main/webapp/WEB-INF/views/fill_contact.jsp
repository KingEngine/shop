<%@page contentType="text/html; charset=utf-8" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
      	<h3>填写地址</h3>
      	<hr color="red">
     	 <form action="<%=request.getContextPath()%>/fillContact.do" method="post">
			<table>
				<tr>
					<td>手机号：</td>
					<td><input class="easyui-textbox" name="customerPhone" data-options="iconCls:'icon-man'" style="width:200px;"></input></td>
				</tr>
				<tr>
					<td>邮编：</td>
					<td><input class="easyui-textbox" name="customerAddress"  style="width:200px;"></td>
				</tr>
				<tr>
					<td>地址：</td>
					<td><input class="easyui-textbox" name="customerPostalCode"  style="width:200px;"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="提交" />
					</td>
				</tr>
			</table>
		</form>
      </div>
    </div>
  </div>
</div>
</html>
