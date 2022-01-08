USE amazon;

DROP TABLE member;

CREATE TABLE member (
	id INT auto_increment primary KEY,
	name varchar(30) not null,
	email varchar(255) not null,
	password varchar(30) not NULL,
	phone_num varchar(11),
	grade enum('basic', 'vip') default 'basic',

	address varchar(255),

	reg_date TIMESTAMP not null default NOW(),
	phone_certi_yn BOOL DEFAULT 0
	);
	
	DESCRIBE member;
	
CREATE SEQUENCE member_id_seq
	INCREMENT BY 1
	START WITH 1;
	
INSERT INTO member(NAME, email, PASSWORD, phone_num, address)
VALUES("retie", "retie@a", "1234", "01011111111", "address");