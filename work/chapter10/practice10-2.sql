CREATE TABLE 学部 (
ID CHAR(1) UNIQUE,
名前 VARCHAR(20) PRIMARY KEY,
備考 VARCHAR(100) DEFAULT '特になし'
);