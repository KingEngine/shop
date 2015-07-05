<%
	response.setHeader("Pragma","No-cache");
	response.setHeader("Cache-Control","no-cache");
	response.setDateHeader("Expires", 0);
	int rand = new java.util.Random().nextInt(10000);
%>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery-1.7.2.min.js'></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery-easyui/jquery.easyui.min.js'></script>
<script type="text/javascript"  src="<%=request.getContextPath()%>/js/jquery-easyui/locale/easyui-lang-zh_CN.js?<%=rand%>" ></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/validate.js"></script>