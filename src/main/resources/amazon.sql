USE amazon;

DROP TABLE member;
DROP TABLE category;
DROP TABLE item;

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
	cate_name VARCHAR(30),
	cate_desc VARCHAR(200),
	
	-- category 분류: A11, A12, A13...
	cate_group VARCHAR(30) NOT NULL,
	cate_lv INT NOT NULL,
	cate_lv_detail INT
	);
	
CREATE TABLE item (
	item_ID INT AUTO_INCREMENT PRIMARY KEY,
	item_name VARCHAR(300),
	item_price FLOAT,
	item_desc VARCHAR(500),
	item_star INT, -- max 5
	item_star_count INT,
	item_stock_quantity INT,
	
	cate_ID INT,
	constraint fk_cate_ID foreign key(cate_ID) references category(cate_ID)
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

-- item insert(star, star_count X)
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("Targeal 4 Mode 7.1 Surround Sound PC Gaming Headset for PS4/5 Laptop Tablet Mobile, On Ear Wired USB Gaming Headphones, Omni-Directional Noise Reduction Microphone, Colorful RGB Light,SKY-701",
		29.99,
		"【MULTI-PLATFORM COMPATIBLE】This 7.1 surround sound gaming headset Supports PS4, PC, Laptop, PSP, Tablet, iPad, Computer, Mobile Phone and other devices with USB Type C jack.Stereo Surround gaming headset is equipped with a USB Type C cable adapter and it is compatible with multiple devices.",
		50);
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("BINNUNE 2.4G/Bluetooth Wireless Gaming Headset with Microphone for PS4 PS5 Playstation 4 5, 48 Hours Playtime, PC USB Gamer Headphones with Mic for Laptop Computer",
		39.99,
		"[Dual Wireless]Support Bluetooth 5.0+2.4G wireless Dual Mode. Advanced Bluetooth 5.0 wireless technology for on- the -go connectivity, 2.4G wireless ensures a fast connection for seamless audio.",
		50);
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("Razer Kraken X Ultralight Gaming Headset: 7.1 Surround Sound - Lightweight Aluminum Frame - Bendable Cardioid Microphone - for PC, PS4, PS5, Switch, Xbox One, Xbox Series X|S, Mobile - Black",
		27.99,
		"Immersive, 7.1 Surround Sound for Positional Audio: Outfitted with custom-tuned 40 millimeter drivers, capable of software-enabled surround sound when used for PC gaming only (download code slip inside the box)",
		50);
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("BENGOO G9000 Stereo Gaming Headset for PS4 PC Xbox One PS5 Controller, Noise Cancelling Over Ear Headphones with Mic, LED Light, Bass Surround, Soft Memory Earmuffs for Laptop Mac Nintendo NES Games",
		49.99,
		"【Multi-Platform Compatible】Support PlayStation 4, New Xbox One, PC, Nintendo 3DS, Laptop, PSP, Tablet, iPad, Computer, Mobile Phone. Please note you need an extra Microsoft Adapter (Not Included) when connect with an old version Xbox One controller.",
		50);
		
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("Fiodio Mechanical Gaming Keyboard, LED Rainbow Gaming Backlit, 104 Anti-ghosting Keys, Quick-Response Black Switches, Multimedia Control for PC and Desktop Computer, with Removable Hand Rest",
		46.11,
		"Black Switches: If you’re into fast-paced games such as first-person shooters, linear switches will give you an edge. There is no dome to compress or click to overcome, the keystroke is consistent and smooth that offers unmistakable feedback when pressed.",
		50);
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("NPET K10 Gaming Keyboard USB Wired Floating Keyboard, Quiet Ergonomic Water-Resistant Mechanical Feeling Keyboard, Ultra-Slim Rainbow LED Backlit Keyboard for Desktop, Computer, PC",
		20.99,
		"Professional Gaming Keyboard. UV coated keycaps and injection laser carving ABS keycaps design, the letter of characters never fade. Anti-sweat, prevents keycap damage, enhanced durability, and tactile feedback. Thick and firm stainless steel base plate, long service life, and never deforms. Metal and ABS construction make it more solid and reliable. NPET K10 gaming keyboard is more durable than the plastic keyboard, your best keyboard choice",
		50);
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("Razer Cynosa Chroma Gaming Keyboard: Individually Backlit RGB Keys - Spill-Resistant Design - Programmable Macro Functionality - Quiet & Cushioned",
		32.00,
		"All-Around Gaming Performance: Able to execute up to ten commands at the same time with built-in key rollover anti-ghosting",
		50);
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("Redragon S101 Wired Gaming Keyboard and Mouse Combo RGB Backlit Gaming Keyboard with Multimedia Keys Wrist Rest and Red Backlit Gaming Mouse 3200 DPI for Windows PC Gamers (Black)",
		39.99,
		"PC GAMING KEYBOARD AND GAMING MOUSE COMBO: Includes Redragon RGB Backlit Computer Gaming Keyboard and RGB Backlit Gaming Mouse. ALL-IN-ONE PC GAMER VALUE KIT, Fantastic for Gamers (New Improved Version)",
		50);
		
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("LeadsaiL Gaming Mouse Wired RGB PC Gaming Mice,Up to 7200 DPI, 8 Programmable Buttons,6 Color Backlight, Ergonomic Optical Computer Wired Mouse with Fire Button for Desktop PC Laptop Gamer & Work",
		12.99,
		"【6 D-P-I Levels for Game & Work】 With 6 D-P-I levels available from 1200-1600-2400-3200-4800-7200 DPI and can be drived to 6400 D P I, provides great sensitivity and precise tracking, perfect for both gaming and work.",
		50);
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("ROCCAT Kone Pro Air Gaming PC Wireless Mouse, Bluetooth Ergonomic Performance Computer Mouse with 19K DPI Optical Sensor, AIMO RGB Lighting & Aluminum Scroll Wheel, 100+ Hour Battery Life, Black",
		129.99,
		"AN ICONIC SHAPE, PERFECTED - Refined to perfection over hours of anthropometric research, the Kone Pro’s ergonomic shape and light weight of 66g offers superior comfort for any hand size or grip style",
		50);
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("Logitech G502 HERO High Performance Wired Gaming Mouse, HERO 25K Sensor, 25,600 DPI, RGB, Adjustable Weights, 11 Programmable Buttons, On-Board Memory, PC / Mac",
		39.90,
		"Hero 25K sensor through a software update from G HUB, this upgrade is free to all players: Our most advanced, with 1:1 tracking, 400-plus ips, and 100 - 25,600 max dpi sensitivity plus zero smoothing, filtering, or acceleration",
		50);
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("Razer DeathAdder Essential Gaming Mouse: 6400 DPI Optical Sensor - 5 Programmable Buttons - Mechanical Switches - Rubber Side Grips - Classic Black",
		49.99,
		"High-Precision 6,400 DPI Optical Sensor: Offers on-the-fly sensitivity adjustment through dedicated DPI buttons (reprogrammable) for gaming and creative work",
		50);
		
INSERT INTO item(item_name, item_price, item_desc, item_stock_quantity)
VALUES("",
		,
		"",
		50);		
		
		
		
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

-- findByCTID check
SELECT * FROM category WHERE cate_id = 1;



COMMIT;