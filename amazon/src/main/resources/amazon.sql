USE amazon;

DROP TABLE member;

CREATE TABLE member (
	id INT auto_increment primary KEY,
	name varchar(30) not null,
	email varchar(255) not null,
	password varchar(30) not null
	phone_num int(11),
	grade enum('basic', 'vip'),

	address varchar(255),

	reg_date date,
	mod_date date,
	phone_certi_yn enum('yes', 'no') default 'no',
	ex_pwd varchar(30),
	last_chgd_date DATE
	);
	
	DESCRIBE member;
	
CREATE SEQUENCE member_id_seq
	INCREMENT BY 1
	START WITH 1;
	
INSERT INTO member(id, name, email, password) VALUES(1, "retie", "email", "1234");