<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="<%=request.getContextPath()%>/images/eye.ico?" type="image/x-icon"/>
    <%@include file="../resource.tag" %>
</head>
<body class="easyui-layout">
		 <div data-options="region:'west',collapsible:false" title="功能菜单" style="width:180px;overflow:hidden;" id="leftTree">
			<iframe src="<%=request.getContextPath()%>/getLeft.do" frameborder="0" style="overflow:hidden;height:100%;" scrolling="no"></iframe>
		 </div> 
		<div data-options="region:'center',title:' '" id="rightMain" >
		   <iframe id="rightMainUrl" src="<%=request.getContextPath()%>/getWelcome.do" name="rightFrame" frameborder="0" height="100%" width="100%" frameborder ="1" style="overflow:auto;">
		   </iframe>
		</div>
		<div data-options="region:'south',split:false" style="height:30px;width:100%;overflow:hidden; background:#EEF4F5 no-repeat;" id="southDiv">
		   <iframe src="<%=request.getContextPath()%>/getFoot.do" frameborder="0" scrolling="no" style="overflow: hidden;" width="100%"></iframe> 
		</div>
</body>
</html>