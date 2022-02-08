//USER

CREATE TABLE users(
	Userkey NUMBER PRIMARY KEY,
	Name	VARCHAR2(500),
	Nickname	VARCHAR2(500),
	Id	VARCHAR2(500),
	Password	VARCHAR2(500),
	Phonenum	 VARCHAR2(500),
	Birthday	DATE,
	Loc	VARCHAR2(500),
	grade	FLOAT(10)
);

SELECT * FROM br2;

CREATE SEQUENCE seq_user;

		INSERT INTO users values(
		seq_user.nextval,#{name}, '1',
		'1','1', '1', sysdate,'1', 1);
	



