create table products(
	id int primary key comment'主键',
	product_name varchar(100) not null comment'商品名称',
	product_serial_number varchar(100) not null comment'商品编号',
	product_category varchar(20) comment'类别编码',
	product_stock int comment'商品库存数量',
	product_current_price varchar(100) comment'商品当前价格',
	product_original_price varchar(100) comment'商品原价',
	product_imaget_path varchar(100) comment'商品图片路径',
	product_heat varchar(100) comment'商品热度'
)COMMENT'商品列表' ENGINE=InnoDB DEFAULT CHARSET=utf8;