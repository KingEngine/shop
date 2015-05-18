create table product_category(
	id int primary key comment'主键',
	category_id varchar(20) unique key not null comment'类别编码',
	category_name varchar(100) comment'类别名称',
	category_parent_id varchar(20) comment'类别编码',
	category_level int comment'商品级别',
	category_status varchar(1) comment'类别状态'
)COMMENT'商品类别表' ENGINE=InnoDB DEFAULT CHARSET=utf8;