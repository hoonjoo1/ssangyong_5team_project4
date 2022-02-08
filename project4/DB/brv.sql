// 식당 예약
CREATE TABLE brv(
	brvkey number PRIMARY KEY,
	bristokey number CONSTRAINTS brv_bristokey_fk REFERENCES bristo(bristokey) ON DELETE CASCADE,
	Userkey		NUMBER CONSTRAINTS brv_userkey_fk REFERENCES users(Userkey) ON DELETE CASCADE,
	Reservtime	DATE,
	Meetnum number,
	Accepttime	date
);

SELECT * FROM brv;



