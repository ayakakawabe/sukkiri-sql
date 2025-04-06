-- 2
CREATE VIEW 学部名あり学生情報 AS
SELECT
    学籍番号,
    学生.名前 AS 名前,
    生年月日,
    学部.名前 AS 学部名
FROM 学生
LEFT JOIN 学部
ON 学生.学部ID = 学部.ID
;

SELECT * FROM 学部名あり学生情報;

-- 3
INSERT INTO 学生
VALUES(
'B1101022',
'古島進',
'2004-02-12',
'A',
'K',
(SELECT NEXTVAL('ISTD'))
);