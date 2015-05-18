create table customer(
	id int primary key AUTO_INCREMENT comment'主键',
	customer_nickname varchar(50) unique key not null comment'用户昵称',
	customer_pwd varchar(20) not null comment'用户密码',
	customer_email varchar(50) not null comment'用户邮箱',
	customer_phone varchar(20) not null comment'用户手机号',
	customer_pwd_question varchar(100) not null comment'用户密码问题(用于密码找回)',
	customer_pwd_answer varchar(100) not null comment'用户密码答案(用于密码找回)',
	customer_status varchar(1) not null comment'状态:0:当前可用 1:当前不可用'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;