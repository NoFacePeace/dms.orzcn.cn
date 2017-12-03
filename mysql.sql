# 创建数据库 dms
create database if not exists dms;

use dms;

# 用户表：id，用户名，账号，密码
create table if not exists user (

	user_id varchar(36) not null,
	user_name varchar(16) not null,
	user_account varchar(16) not null,
	user_password varchar(16) not null,
	primary key (user_id),
	unique (user_account)
);

# 药品表：id，药品编号，药品名，单价，有效期，生产日期，库存量
create table if not exists drug (

	drug_id varchar(36) not null,
	drug_number varchar(16) not null,
	drug_name varchar(16) not null,
	drug_price decimal(7,2) default 0,
	drug_validity int unsigned,
	drug_date date,
	drug_amount int unsigned default 0,
	primary key (drug_id),
	unique (drug_number)
);

# 出入库记录表：id，药品编号，出入库日期，出入库数量，出入库标识（1：入库；0：出库）
create table if not exists record (

	record_id varchar(36) not null,
	drug_number varchar(16) not null,
	record_date date not null,
	record_amount int unsigned not null default 0,
	record_state ENUM('1','0'),
	primary key (record_id)
);