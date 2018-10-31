DROP DATABASE IF EXISTS db_test;
CREATE DATABASE IF NOT EXISTS db_test DEFAULT CHARACTER SET utf8;

use db_test;


CREATE TABLE userTbl (
    userID CHAR(8) NOT NULL PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    birthYear INT NOT NULL,
    addr NCHAR(2) NOT NULL
);
show index from userTbl;

INSERT INTO userTbl VALUES('LSG', '이승기', 1987, '서울');
INSERT INTO userTbl VALUES('KBS', '김범수', 1979, '경남');
INSERT INTO userTbl VALUES('KKH', '김경호', 1971, '전남');
INSERT INTO userTbl VALUES('JYP', '조용필', 1950, '경기');
INSERT INTO userTbl VALUES('SSK', '성시경', 1979, '서울');

-- 입력 순서와 다르게 select 결과가 나오는 이유
SELECT * FROM userTbl;


ALTER TABLE userTbl DROP PRIMARY KEY;
ALTER TABLE userTbl ADD CONSTRAINT pk_name PRIMARY KEY(name);
-- 이름순서로 정렬되어서 나오는 이유
SELECT * FROM userTbl;

