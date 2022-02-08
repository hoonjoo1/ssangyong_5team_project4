CREATE TABLE bustype(
	Bustypekey number PRIMARY KEY, 
	Bustypename		VARCHAR2(500)
);

DROP TABLE bustype;

SELECT * FROM bustype2;

INSERT INTO bustype2 VALUES (1, '햄버거');
INSERT INTO bustype2 VALUES (2, '레스토랑');
INSERT INTO bustype2 VALUES (3, '일식');
INSERT INTO bustype2 VALUES (4, '중국집');
INSERT INTO bustype2 VALUES (5, '분식');
INSERT INTO bustype2 VALUES (6, '마라탕');
COMMIT;



