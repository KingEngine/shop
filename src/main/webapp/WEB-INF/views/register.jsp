<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>网上超市-foot用户注册</title>
<%@include file="resource.tag" %> 
</head>
	<body>
		<form action="registerSubmit.do" method="post">
			<table>
				<tr>
					<td>用户名：</td>
					<td><input class="easyui-textbox" name="customerNickname"></input></td>
					<td><font color="red">*</font> 4-20个字符(a-z，A-Z，0-9)</td>
				</tr>
				<tr>
					<td>登录密码：</td>
					<td><input class="easyui-textbox" type="password" name="customerPwd"></td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="submit" value="提交" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
