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

//시퀀스
CREATE SEQUENCE seq_profile2;

INSERT INTO profile2 VALUES (11,11,'활발','양식','중식','알러지','비건','맥주','매운맛','완료');
INSERT INTO profile2 VALUES (seq_profile2.nextval,11,'활발','양식','중식','알러지','비건','맥주','매운맛','완료');
COMMIT;


SELECT * FROM profile2;
DROP TABLE profile2;