create table trade(
	id int primary key AUTO_INCREMENT comment'主键',
	MerNo varchar(50) comment'商户号',
	BillNo varchar(50) comment'订单号',
	Amount varchar(50) comment'金额',
	Result varchar(100) comment'结果',
	Succeed varchar(100) comment'结果码',
	MerRemark varchar(100) comment'备注'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;