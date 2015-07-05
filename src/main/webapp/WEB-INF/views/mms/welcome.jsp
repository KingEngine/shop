<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎页面</title>
<style type="text/css">
 .welcomeClassInfo{
 		font-size: 16px;
	    font-weight: lighter;
	    font-family: 微软雅黑;
 }
</style>
</head>
<body background="<%=request.getContextPath()%>/images/welcome-bg.jpg">
     <div style="margin-top: 30px;">
           <img src="<%=request.getContextPath()%>/images/hi.png" />
           <h1 style="margin-left: 100px;"><font class="welcomeClassInfo"></font></h1>
     </div>
</body>
</html>