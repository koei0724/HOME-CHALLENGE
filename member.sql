CREATE TABLE IF NOT EXISTS member(
	name VARCHAR(30),
	phone VARCHAR(15),
	email VARCHAR(50),
	id VARCHAR(20) NOT NULL,
	passwd VARCHAR(20),
	PRIMARY KEY (id)
);

select * from member;
delete from member;
