create table admin(
	id int primary key AUTO_INCREMENT comment'主键',
	admin_name unique key varchar(50) comment'用户名',
	admin_pwd  varchar(50) comment'用户密码'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into admin(admin_name,admin_pwd)values("admin","670B14728AD9902AECBA32E22FA4F6BD");