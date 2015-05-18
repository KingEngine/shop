<%
	response.setHeader("Pragma","No-cache");
	response.setHeader("Cache-Control","no-cache");
	response.setDateHeader("Expires", 0);
	int rand = new java.util.Random().nextInt(10000);
%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.1/themes/bootstrap/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.1/themes/icon.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">

<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery-1.7.2.min.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery-easyui-1.4.1/jquery.easyui.min.js'></script>
<script type="text/javascript"  src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js?<%=rand%>" ></script>
