//식당리뷰
CREATE TABLE br(
	breivewkey number PRIMARY KEY,
	Userkey		NUMBER CONSTRAINTS br_userkey_fk REFERENCES ussers(Userkey) ON DELETE CASCADE,
	boardkey		NUMBER CONSTRAINTS br_boardkey_fk REFERENCES board(boardkey) ON DELETE CASCADE,
	Visitdate	DATE, 
	Writedate	DATE,
	Title	VARCHAR2(4000),
	Content		VARCHAR2(500),
	Grade	VARCHAR2(500),
	Img	VARCHAR2(500)
);

SELECT * FROM br2;



