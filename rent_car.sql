CREATE TABLE t_member (
	memId VARCHAR(20) PRIMARY KEY,
	memPassword VARCHAR(20),
	memName VARCHAR(10),
	memAddress VARCHAR(255),
	memPhoneNum VARCHAR(20)

);

SHOW COLUMNS FROM t_member;

CREATE TABLE t_car (
	carNumber VARCHAR(30) PRIMARY KEY,
	carName VARCHAR(30),
	carColor VARCHAR(30),
	carSize INT,
	carMaker VARCHAR(50)
	
);

SHOW COLUMNS FROM t_car;

CREATE TABLE t_res(
	resNumber VARCHAR(30) PRIMARY KEY,
	resDate DATE,
	useBeginDate DATE,
	returnDate DATE,
	resCarNumber VARCHAR(30),
	resUserId VARCHAR(20),
	
	CONSTRAINT FK_RES_USER_ID FOREIGN KEY (resUserId)
		REFERENCES t_member(memId),
	CONSTRAINT FK_RES_CAR_NUMBER FOREIGN KEY (resCarNumber)
		REFERENCES t_car (carNumber)
);

SHOW COLUMNS FROM t_res;




