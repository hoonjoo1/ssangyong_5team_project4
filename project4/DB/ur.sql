CREATE TABLE ur(
	urkey number PRIMARY KEY,
	userkey		NUMBER CONSTRAINTS ur_userkey_fk REFERENCES users(Userkey) ON DELETE CASCADE,
	boardkey		NUMBER CONSTRAINTS ur_boardkey_fk REFERENCES board(boardkey) ON DELETE CASCADE,
	title	VARCHAR2(500),
	writedate	DATE,
	content		VARCHAR2(4000),
	oppoid	VARCHAR2(500),
	oppograde	 FLOAT(5)
);

CREATE SEQUENCE seq_ur2;
SELECT seq_ur2.nextval FROM dual;

INSERT INTO ur2 VALUES (1, 11, 11, '최고였습니다.', sysdate, '정말 좋은 모임이었어요', 'hgd7777', 4);
INSERT INTO ur2 VALUES (2, 11, 11, '최고였습니다.', sysdate, '정말 좋은 모임이었어요', 'hgd7777', 4);

INSERT INTO ur2 VALUES (seq_ur2.nextval, 11, 11, '최고였습니다.', sysdate, '정말 좋은 모임이었어요', 'hgd7777', 4);

COMMIT;
DROP TABLE ur;

SELECT * FROM ur2;

