SELECT *
FROM 成績表
;

INSERT INTO 成績表
(学籍番号,学生名,法学,経済学,哲学,情報理論,外国語)
VALUES ('S001','織田　信長',77,55,80,75,93)
;

INSERT INTO 成績表
(学籍番号,学生名,法学,経済学,哲学,情報理論,外国語)
VALUES ('A002','豊臣　秀吉',64,69,70,0,59)
;

INSERT INTO 成績表
(学籍番号,学生名,法学,経済学,哲学,情報理論,外国語)
VALUES ('E003','徳川　家康',80,83,85,90,79)
;

UPDATE 成績表
SET 法学 = 85, 哲学 = 67
WHERE 学籍番号 = 'S001'
;

UPDATE 成績表
SET 外国語 = 81
WHERE 学籍番号 IN ('A002','E003')
;

UPDATE 成績表
SET 総合成績 = 'D'
WHERE 総合成績 IS NULL
;

UPDATE 成績表
SET 総合成績 = 'C'
WHERE
    法学 < 50
    AND 経済学 < 50
    AND 哲学 < 50
    AND 情報理論 < 50
    AND 外国語 < 50
;

UPDATE 成績表
SET 総合成績 = 'B'
WHERE
    ((法学 >= 80) OR (外国語 >= 80))
    AND ((経済学 >= 80) OR (哲学 >= 80))
;

UPDATE 成績表
SET 総合成績 = 'A'
WHERE 
    法学 >= 80
    AND 経済学 >= 80
    AND 哲学 >= 80
    AND 情報理論 >= 80
    AND 外国語 >= 80
;

DELETE FROM 成績表
WHERE 
    法学 = 0
    OR 経済学 = 0
    OR 哲学 = 0
    OR 情報理論 = 0
    OR 外国語 = 0
;



