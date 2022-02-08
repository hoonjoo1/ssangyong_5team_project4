// 식당 예약

CREATE TABLE comments(
	Commentkey NUMBER PRIMARY KEY,
	Userkey		NUMBER CONSTRAINTS comments_userkey_fk REFERENCES users(Userkey) ON DELETE CASCADE,
	Commcontents	VARCHAR2(4000),
	Commdate		DATE
);

SELECT * FROM comments;



