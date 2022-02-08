CREATE TABLE board(
	boardkey number PRIMARY KEY, 
	boardname varchar2(500)
)

INSERT INTO board2 VALUES (11, '유저리뷰');
INSERT INTO board2 VALUES (12, '식당리뷰');
INSERT INTO board2 VALUES (13, '식당예약');

DROP TABLE BOARD

COMMIT;

SELECT * FROM board2;


