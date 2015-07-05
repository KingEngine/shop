<%@page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>注册用户查询</title>
        <meta http-equiv="pragma" content="no-cache"/>
        <meta http-equiv="cache-control" content="no-cache"/>
        <meta http-equiv="Expires" content="0"/>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <%@include file="../resource.tag" %> 
        <script type="text/javascript" src="<%=request.getContextPath() %>/js/common.js"></script>
 </head>
 <script type="text/javascript">
	// 查询操作员列表
	function query() {
		ajaxFormSearch("searchForm","alertEventFollowSearch.do","list",1);
	}
 </script>
<body>
<div class="easyui-panel" title="查询条件">
   <form id="searchForm" name="searchForm" method="post"> 
     <table width="100%" border="0" cellspacing="0" style="height: 50px;">	
        <tr>
         <td>
             <a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="query();" style="margin-left: 150px;">查询</a>
         </td>
        </tr>
      </table>
	</form> 
	<table class="easyui-datagrid" title="查询列表" align="center" id="list"
		    data-options="singleSelect:true,pagination:true,loadMsg:'数据加载中,请稍后...',rownumbers:true" 
		    width="100%" border="0" cellspacing="0" >
		<thead>
			<tr>
			    <th data-options="field:'alertType',align:'center'">报警类型</th>
				<th data-options="field:'alertDate',align:'center',formatter:dateFmt">发生时间</th>
				<th data-options="field:'alertContent',align:'center',formatter:contentFormatter">短信/邮件内容</th>
				<th data-options="field:'alertReceiver',align:'center',formatter:contentFormatter">接收手机号/邮箱</th>
				<th data-options="field:'alertRuleAlias',align:'center'">触发规则</th>
				<th data-options="field:'alertRecord',align:'center',formatter:contentFormatter">处理记录</th>
				<th data-options="field:'alertJnlsId',width:100,align:'center',formatter:handlerButton">操作</th>
			</tr>
		</thead>
	 </table>
	 <div id="handlerDiv"></div>
  </div>
</body>
</html>