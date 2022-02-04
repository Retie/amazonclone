USE amazon;

DROP TABLE member;
DROP TABLE category;

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
CREATE TABLE category (
	cate_ID INT AUTO_INCREMENT PRIMARY KEY,
	cate_name VARCHAR(30) NOT NULL,
	cate_desc VARCHAR(200),
	
	-- category 분류: A11, A12, A13...
	cate_group VARCHAR(30) NOT NULL,
	cate_lv INT NOT NULL,
	cate_lv_detail INT
	);



-- TEST DATAS --

INSERT INTO member(NAME, email, PASSWORD, phone_num, address)
VALUES("retie", "retie@a", "1234", "01011111111", "address");
INSERT INTO member(NAME, email, PASSWORD, phone_num, address)
VALUES("master", "aaa@aaa.com", "123", "01011111111", "address");

-- A그룹 1Lv
INSERT INTO category(cate_name, cate_desc, cate_group, cate_lv)
VALUES("Computers & Accessories", "Shop laptops, desktops, monitors, tablets, PC gaming, hard drives and storage, accessories and more", "A", 1);
 
-- A그룹 detail (2Lv)
INSERT INTO category(cate_name, cate_group, cate_lv)
VALUES("Headsets", "A", 2); 
INSERT INTO category(cate_name, cate_group, cate_lv)
VALUES("Keyboards", "A", 2); 
INSERT INTO category(cate_name, cate_group, cate_lv)
VALUES("Computer mice", "A", 2);
INSERT INTO category(cate_name, cate_group, cate_lv)
VALUES("Chairs", "A", 2);

-- B그룹 1Lv
INSERT INTO category(cate_name, cate_desc, cate_group, cate_lv)
VALUES("Video Games", "Shop video games for Nintendo, PlayStation, Xbox and more", "B", 1);
-- C그룹 1Lv
INSERT INTO category(cate_name, cate_desc, cate_group, cate_lv)
VALUES("Baby", "Shop top baby toys, clothing, formula, diaper, and maternity products", "C", 1);
-- D그룹 1Lv
INSERT INTO category(cate_name, cate_desc, cate_group, cate_lv)
VALUES("Toys & Games", "Shop action figures, arts and crafts, dolls, puzzles, learning toys and more", "D", 1);





-- SEQUENCES --

DROP SEQUENCE category_seq;

CREATE SEQUENCE member_id_seq
	INCREMENT BY 1
	START WITH 1;
CREATE SEQUENCE category_seq
	INCREMENT BY 100
	START WITH 1;
	
	
-- SEQUENCE TEST DATAS --




-- category Table check
SELECT * FROM category;

SELECT level, cate_name, cate_code, cate_code_ref FROM category
    STARTS WITH cate_code_ref IS NULL connect BY prior cate_code = cate_code_ref;

-- findByEmail check
SELECT email FROM member WHERE email like "aaa@aaa.com";

-- findPassword check
SELECT password FROM member WHERE email LIKE "aaa@aaa.com";

COMMIT;