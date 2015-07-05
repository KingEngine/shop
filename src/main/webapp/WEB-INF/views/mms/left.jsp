<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
    String context = request.getContextPath();
%>
<head>
	 <meta charset="UTF-8">
	 <%@include file="../resource.tag" %> 
</head>
<body >
	<div class="easyui-panel" style="padding:5px;border: 0px;" height="100%">
		<ul class="easyui-tree">
	       <li><span>交易管理</span>
	           <ul>
                    <li><span><a href="<%=request.getContextPath()%>/getCustomerPre.do" target="rightFrame">注册用户查询</a></span></li>
                    <li><span><a href="<%=request.getContextPath()%>/getTradePre.do" target="rightFrame">交易查询</a></span></li>
	           </ul>
	       </li>
		</ul>
	</div>
</body>
</html>