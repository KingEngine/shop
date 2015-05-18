<%@page contentType="text/html; charset=utf-8" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>网上超市-用户登陆</title>
<%@include file="resource.tag" %>
<%@include file="tag.tag"%>  
</head>
	<body>
		<form action="<%=request.getContextPath()%>/login.do" method="post">
			<input type="hidden" name="nextPath" id="nextPath" value="${nextPath}">
			<table>
				<tr>
					
					<td>用户名：</td>
					<td><input class="easyui-textbox" name="customerNickname"><c:out value="${nextPath}"></c:out>+""</input></td>
				</tr>
				<tr>
					<td>登录密码：</td>
					<td><input class="easyui-textbox" type="password" name="customerPwd"></td>
					<td><font color="red">*</font></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="登录" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
