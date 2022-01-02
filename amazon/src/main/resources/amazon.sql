CREATE TABLE member (
	id int(7) not null primary KEY,
	name varchar(30) not null,
	email varchar(255) not null,
	password varchar(30) not null,
	phone_num int(11),
	grade enum('basic', 'vip'),

	address varchar(255),

	reg_date date not null,
	mod_date date,
	phone_certi_yn enum('yes', 'no') default 'no',
	ex_pwd varchar(30),
	last_chgd_date DATE
	);
	
	DESCRIBE member;
	
CREATE SEQUENCE member_id_seq
	INCREMENT BY 1
	START WITH 1;