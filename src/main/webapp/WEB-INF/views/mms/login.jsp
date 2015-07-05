<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>金义兴华后台</title>
<meta name="Keywords" content="Travel, Flight, Airline" />
<meta http-equiv="windows-target" content="_top" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<%@include file="../resource.tag" %>
<script type="text/javascript">
	
</script>
</head>
<body style="background-image: url('<%=request.getContextPath()%>/images/welcome-bg.jpg');">
		<div style="margin-left: 50%;margin-top: 20%;border: 1px solid;width: 250px;height: 100px;border-color: green;">
			<form action="<%=request.getContextPath()%>/adminLogin.do" method="post">
				<table>
					<tr>
						<td>用户名:</td>
						<td><input type="text" name="adminName" style="border:1px solid;width: 150px;"></input></td>
					</tr>
					<tr>
						<td>密码:</td>
						<td><input type="password" name="adminPwd" style="border:1px solid;width: 150px;"></input></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit" value="提交" style="cursor: pointer;"></input></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><font color="red">${errMsg}</font></td>
					</tr>
				</table>
			</form>
		</div>
</body>
</html>
