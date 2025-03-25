SELECT *
FROM 気象観測
WHERE 月 = 6
;

SELECT *
FROM 気象観測
WHERE 月 <> 6
;

SELECT *
FROM 気象観測
WHERE 降水量 < 100
;

SELECT *
FROM 気象観測
WHERE 降水量 > 200
;

SELECT *
FROM 気象観測
WHERE 月 IN (3,5,7)
;

SELECT *
FROM 気象観測
WHERE 月 NOT IN (3,5,7)
;

SELECT *
FROM 気象観測
WHERE 
    降水量 <= 100
    AND 湿度 < 50
;

SELECT *
FROM 気象観測
WHERE 湿度 BETWEEN 60 AND 79
;

SELECT *
FROM 気象観測
WHERE
    降水量 IS NULL
    OR 最高気温 IS NULL
    OR 最低気温 IS NULL
    OR 湿度 IS NULL
;