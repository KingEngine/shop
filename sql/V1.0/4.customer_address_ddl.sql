create table customer_address(
	id int primary key AUTO_INCREMENT comment'主键',
	customer_id int not null comment'用户表主键',
	customer_phone varchar(20) not null comment'用户手机号',
	customer_address varchar(20) not null comment'用户地址',
	customer_postal_code varchar(6) not null comment'用户邮政编码'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;