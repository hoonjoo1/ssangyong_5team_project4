/* 식당 예약*/
CREATE TABLE brv(
	brvkey number PRIMARY KEY,
	bristokey number CONSTRAINTS brv_bristokey_fk REFERENCES bristo(bristokey) ON DELETE CASCADE,
	Userkey		NUMBER CONSTRAINTS brv_userkey_fk REFERENCES users(Userkey) ON DELETE CASCADE,
	Reservtime	DATE,
	Meetnum number,
	Accepttime	date
);
SELECT * FROM brv;
DROP TABLE brv CASCADE CONSTRAINTS;

/*==================================================================================================*/
/*식당*/
CREATE TABLE bristo(
	bristokey number PRIMARY KEY,
	bustypekey NUMBER CONSTRAINTS bristo_bustypekey_fk REFERENCES bustype(bustypekey) ON DELETE CASCADE,
	name	VARCHAR2(500),
	menu	VARCHAR2(500),
	loc	VARCHAR2(500),
	parking	VARCHAR2(500),
	eatalone	VARCHAR2(500),
	babychair	VARCHAR2(500),
	carryout	VARCHAR2(500),
	delivery		VARCHAR2(500)
);
CREATE sequence seq_bristo;

SELECT * FROM bristo;
DROP TABLE bristo CASCADE CONSTRAINTS;
INSERT INTO BRISTO values(seq_bristo.nextval, 1, '맥노날드', '햄버거', '서울', '가능', '가능', '가능', '가능', '가능');
COMMIT;

/*==================================================================================================*/
/*식당 유형*/
CREATE TABLE bustype(
	Bustypekey number PRIMARY KEY, 
	Bustypename		VARCHAR2(500)
);

DROP TABLE bustype CASCADE CONSTRAINTS;
SELECT * FROM bustype;

INSERT INTO bustype VALUES (1, '햄버거');
INSERT INTO bustype VALUES (2, '레스토랑');
INSERT INTO bustype VALUES (3, '일식');
INSERT INTO bustype VALUES (4, '중국집');
INSERT INTO bustype VALUES (5, '분식');
INSERT INTO bustype VALUES (6, '마라탕');
COMMIT;


/*bnum*/
CREATE TABLE bnum(
	bkey NUMBER PRIMARY KEY
)

CREATE SEQUENCE seq_bnum;
INSERT INTO bnum VALUES(seq_bnum.nextval)

/*==================================================================================================*/
/*댓글*/
CREATE TABLE comments(
	Commentkey NUMBER PRIMARY KEY,
	Userkey		NUMBER CONSTRAINTS comments_userkey_fk REFERENCES users(Userkey) ON DELETE CASCADE,
	Commcontents	VARCHAR2(4000),
	Commdate		DATE
);
DROP TABLE comments CASCADE CONSTRAINTS;
SELECT * FROM comments;
INSERT INTO comments VALUES (1, 1, '하이', sysdate);
COMMIT;


/*==================================================================================================*/
/*댓글2*/
CREATE TABLE comments2(
	Commentkey NUMBER PRIMARY KEY,
	Userkey		NUMBER CONSTRAINTS comments2_userkey_fk REFERENCES users(Userkey) ON DELETE CASCADE,
	bkey		NUMBER CONSTRAINTS comments2_bkey_fk REFERENCES br(bkey) ON DELETE CASCADE,
	Commcontents	VARCHAR2(4000),
	Commdate		DATE DEFAULT sysdate
);

CREATE SEQUENCE seq_com2;
DROP SEQUENCE seq_com2;
DROP TABLE comments2 CASCADE CONSTRAINTS;
SELECT * FROM comments2;

INSERT INTO comments2 (commentkey, userkey, bkey, commcontents, commdate)
(SELECT seq_com2.nextval, userkey, bkey, commcontents, commdate FROM COMMENTs2);

INSERT INTO comments2 VALUES (seq_com2.nextval, 1,1, '하이', sysdate);
INSERT INTO comments2 VALUES (5, 1,1, '하이', sysdate);
INSERT INTO comments2 VALUES (1, 1,1, '하이', sysdate);
		insert into comments2
		(commentkey, userkey,bkey,
		commcontents, commdate)
		values
		(seq_com2.nextval, 1,1,
		'1', sysdate);
COMMIT;

SELECT *



/*Commet3*/
CREATE TABLE comments3(
	Commentkey NUMBER PRIMARY KEY,
	Userkey		NUMBER CONSTRAINTS comments3_userkey_fk REFERENCES users(Userkey) ON DELETE CASCADE,
	urkey		NUMBER CONSTRAINTS comments3_urkey_fk REFERENCES ur(urkey) ON DELETE CASCADE,
	Commcontents	VARCHAR2(4000),
	Commdate		DATE DEFAULT sysdate
);

CREATE SEQUENCE seq_com3;
DROP SEQUENCE seq_com3;
DROP TABLE comments3 CASCADE CONSTRAINTS;
SELECT * FROM comments3 ORDER BY COMMENTkey;

INSERT INTO comments3 (commentkey, userkey, urkey, commcontents, commdate)
(SELECT seq_com2.nextval, userkey, urkey, commcontents, commdate FROM COMMENTS3);

INSERT INTO comments3 VALUES (seq_com3.nextval, 1,1, '하이', sysdate);
COMMIT;
delete from comments3 where
		commentkey =
		8340;

/*==================================================================================================*/
/*유저*/
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
SELECT * FROM users;
CREATE SEQUENCE seq_users;
		INSERT INTO users values(
		seq_users.nextval,'최윤진', '1',
		'1','1', '1', sysdate,'1', 1);
COMMIT;


/*==================================================================================================*/
/*유저리뷰*/
//USER review

CREATE TABLE ur(
	urkey NUMBER PRIMARY KEY,
	userkey		NUMBER CONSTRAINTS ur_userkey_fk REFERENCES users(Userkey) ON DELETE CASCADE,
	boardkey		NUMBER CONSTRAINTS ur_boardkey_fk REFERENCES board(boardkey) ON DELETE CASCADE,
	title	VARCHAR2(500),
	writedate	DATE,
	content		VARCHAR2(4000),
	oppoid	VARCHAR2(500),
	oppoograde	 FLOAT(5)
);

CREATE SEQUENCE seq_ur;
drop SEQUENCE seq_ur;
SELECT seq_ur.nextval FROM dual;
INSERT INTO ur VALUES (2, 1, 11, '최고였습니다.', sysdate, '정말 좋은 모임이었어요', 'hgd7777', 4);
INSERT INTO ur VALUES (1, 1, 11, '최고였습니다.', sysdate, '정말 좋은 모임이었어요', 'hgd7777', 4);
INSERT INTO ur VALUES (seq_ur.nextval, 1, 11, '최고였습니다.', sysdate, '정말 좋은 모임이었어요', 'hgd7777', 4);

INSERT INTO ur (urkey,userkey, boardkey, title, WRITEDATE, CONTENT, OPPOID, OPPOGRADE)
(SELECT seq_ur.nextval,userkey, boardkey, title, WRITEDATE, CONTENT, OPPOID, OPPOGRADE FROM ur);


COMMIT;
DROP TABLE ur;

SELECT * FROM ur;

select urkey, rownum rn
from ( 
	select /*+INDEX_DESC(ur urkey) */ 
	rownum rn, urkey
	from ur
	where rownum <= 20
) where rn > 10;


	select  rownum rn, urkey
	from ur
	where rownum <= 30;

SELECT * FROM ur;



/*식당리뷰*/
	CREATE TABLE br(
	bkey NUMBER PRIMARY KEY,
	userkey		NUMBER CONSTRAINTS br_userkey_fk REFERENCES users(userkey) ON DELETE CASCADE,
	boardkey		NUMBER CONSTRAINTS br_boardkey_fk REFERENCES board(boardkey) ON DELETE CASCADE,
	bristokey		NUMBER CONSTRAINTS br_bristokey_fk REFERENCES bristo(bristokey) ON DELETE CASCADE,
	Visitdate	DATE, 
	Writedate	DATE,
	Title	VARCHAR2(4000),
	Content		VARCHAR2(500),
	Grade	NUMBER,
	Img	VARCHAR2(500)
);

INSERT INTO br VALUES (seq_br.nextval,1,1,1,sysdate, sysdate, '1','1',1,'1');
CREATE SEQUENCE seq_br;
DROP SEQUENCE seq_br;
 SEQUENCE seq_br;
SELECT * FROM br;
DROP TABLE br CASCADE CONSTRAINTS;
COMMIT;


/*보드*/
CREATE TABLE board(
	boardkey number PRIMARY KEY, 
	boardname varchar2(500)
)

INSERT INTO board VALUES (1, '유저리뷰');
INSERT INTO board VALUES (2, '식당리뷰');
INSERT INTO board VALUES (3, '식당예약');
DROP TABLE BOARD
COMMIT;
SELECT * FROM board2;


/*프로파일*/
CREATE TABLE profile(
Profilekey 	number PRIMARY KEY, 
Userkey		NUMBER CONSTRAINTS profile_userkey_fk REFERENCES users(Userkey) ON DELETE CASCADE,
Personality		VARCHAR2(500),
Liketype		VARCHAR2(500),
Hatetype		VARCHAR2(500),
Allergy		VARCHAR2(500),
Vegantype		VARCHAR2(500),
Drinktype		VARCHAR2(500),
Spicytype		VARCHAR2(500),
Vaccintype		VARCHAR2(500)
)

CREATE SEQUENCE seq_profile;
INSERT INTO profile VALUES (11,1,'활발','양식','중식','알러지','비건','맥주','매운맛','완료');
INSERT INTO profile VALUES (seq_profile.nextval,1,'활발','양식','중식','알러지','비건','맥주','매운맛','완료');
COMMIT;
SELECT * FROM profile;
DROP TABLE profile;



/*shop*/
CREATE TABLE shop(
	shopkey NUMBER PRIMARY key,
	price NUMBER,
	cnt NUMBER,
	name varchar2(500)
);

/*Cart*/
CREATE TABLE cart(
	cartkey NUMBER PRIMARY key,
	shopkey NUMBER CONSTRAINTS cart_shopkey_fk REFERENCES shop(shopkey) ON DELETE CASCADE,
	userkey NUMBER CONSTRAINTS cart_userkey_fk REFERENCES users(userkey) ON DELETE CASCADE,
	thedate DATE
)

COMMIT;

/*file*/
create table fileInfo(
				fno number, 
				pathinfo varchar2(500),
				fname varchar2(100),
				regdte date,
				uptdte date,
				etc varchar2(500)
			);

INSERT INTO fileInfo values  (1, '1', '1', sysdate, sysdate, '1');
CREATE SEQUENCE fno_seq;


/*=br댓글=========================================================*/

create table br_reply (
  rno number(10,0) PRIMARY KEY , 
  bkey number not NULL CONSTRAINTS br_bkey_fk REFERENCES br(bkey) ON DELETE CASCADE,
  reply varchar2(1000) not null,
  replyer varchar2(50) not null, 
  replyDate date default sysdate, 
  updateDate date default sysdate
);

DROP TABLE br_reply;
create sequence seq_reply;

alter table br_reply add constraint pk_reply primary key (rno);

alter table br_reply  add constraint fk_br_reply_br 
foreign key (brkey)  references  br(brkey); 
SELECT * FROM br_reply;
SELECT * FROM br;

INSERT INTO br_reply (rno, bkey, reply, replyer) VALUES (seq_reply.nextval, 1, '고고고', 'user000');

/**/
/**/
/**/
/**/
/**/

/*ur 코멘트 테이블*/
create table ur_reply (
  rno number(10,0) PRIMARY KEY , 
  urkey number not NULL CONSTRAINTS ur_urkey_fk REFERENCES ur(urkey) ON DELETE CASCADE,
  reply varchar2(1000) not null,
  replyer varchar2(50) not null, 
  replyDate date default sysdate, 
  updateDate date default sysdate
);
INSERT INTO ur_reply (rno, urkey, reply, replyer) VALUES (seq_reply.nextval, 1, '고고고', 'user000');

SELECT * FROM ur_reply;
SELECT * FROM ur;

DELETE FROM ur_reply;
DELETE FROM br_reply;
DELETE FROM br;
DELETE FROM ur;
COMMIT;

SELECT VIEWcnt FROM FOODPUBPUR;

		SELECT *
		FROM FOODPUBPUR f , USERS u
		WHERE f.USERKEY
		= u.USERKEY;
