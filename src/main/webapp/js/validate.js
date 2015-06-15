$(function(){
	$("#register").validate({
		rules:{
			customerNickname : "required",
			customerPwd : {
				required : true
			},
			customerPwdConfirm : {
				required : true,
				equalTo : "#customerPwd"
			},
			customerEmail:{required : true,email:true},
			customerPhone:{required : true},
			customerPwdQuestion:{required : true},
			customerPwdAnswer:{required : true}
		},
		messages : {
			customerNickname : "请输入用户名",
			customerPwd : {
				required:"请输入登录密码"
			},
			customerPwdConfirm:{
				required:"请输入确认密码",
				equalTo:"两次输入密码不一致不一致"
			},
			customerEmail:{required:"请输入邮箱",email:"请输入正确的邮箱地址"},
			customerPhone:{required:"请输入手机号"},
			customerPwdQuestion:{required:"请输入密码找回问题"},
			customerPwdAnswer:{required:"请输入密码找回答案"}
		},
		errorPlacement: function(error, element) {
		    error.appendTo(element.parent());
		}
	});
	
	
	$("#login").validate({
		rules:{
			customerNickname:"required",
			customerPwd:"required"
		},
		messages : {
			customerNickname : "请输入用户名",
			customerPwd : "请输入登录密码"
		},
		errorPlacement: function(error, element) {
		    error.appendTo(element.parent());
		}
	});
});