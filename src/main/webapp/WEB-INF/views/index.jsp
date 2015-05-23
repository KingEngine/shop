<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>网上超市-主页</title>
</head>
	<frameset rows="22%,*,15%" frameborder="no" style="overflow: auto;" framespacing="-4px">
		<frame src="<%=request.getContextPath()%>/getTop.do"  noresize="noresize"/>
		<frame src="<%=request.getContextPath()%>/getCenter.do" name="centerFrame" id="centerFrame" noresize="noresize"/>
		<frame src="<%=request.getContextPath()%>/getFoot.do" noresize="noresize"/>
	</frameset>
	<iframe></iframe>
</html>
