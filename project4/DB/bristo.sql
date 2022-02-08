//식당
CREATE TABLE bristo(
	bristokey number PRIMARY KEY, 
	Bustypekey NUMBER CONSTRAINTS bristo_bustypekey_fk REFERENCES bustype(bustypekey) ON DELETE CASCADE,
	name	VARCHAR2(500),
	menu	VARCHAR2(500),
	loc	VARCHAR2(500),
	parking	VARCHAR2(500),
	eatalone	VARCHAR2(500),
	babychair	VARCHAR2(500),
	carryout	VARCHAR2(500),
	delivery		VARCHAR2(500)
);

SELECT * FROM bristo;

DROP TABLE bristo2 ;

COMMIT;