
INSERT INTO t_member (
	memId,
	memPassword, 
	memName,
	memAddress, 
	memPhoneNum 
) VALUES 
	('hong100','1234','홍길동','서울','010-1234-1234'),
	('hong200','1234','동순이','부산','010-1234-1111');
	
DELETE FROM t_member;
SELECT * FROM t_member;
SELECT * FROM t_member WHERE memName = '홍길동' ORDER BY memId;