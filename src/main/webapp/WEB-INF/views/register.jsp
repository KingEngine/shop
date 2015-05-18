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
					<td><font color="red">*</font></td>
				</tr>
				<tr>
					<td>确认密码：</td>
					<td><input class="easyui-textbox" type="password" name="customerPwdConfirm"></td>
					<td><font color="red">*</font></td>
				</tr>
				<tr>
					<td>邮箱：</td>
					<td><input class="easyui-textbox" name="customerEmail"></td>
					<td><font color="red">*</font></td>
				</tr>
				<tr>
					<td>手机号：</td>
					<td><input class="easyui-textbox" name="customerPhone"></td>
					<td><font color="red">*</font></td>
				</tr>
				<tr>
					<td>密码找回问题：</td>
					<td><input class="easyui-textbox" name="customerPwdQuestion"></td>
					<td><font color="red">*</font></td>
				</tr>
				<tr>
					<td>密码找回答案：</td>
					<td><input class="easyui-textbox" name="customerPwdAnswer"></td>
					<td><font color="red">*</font></td>
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
