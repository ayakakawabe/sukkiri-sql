SELECT 都道府県名
FROM 都道府県
WHERE 都道府県名 LIKE '%川'
;

SELECT 都道府県名
FROM 都道府県
WHERE 都道府県名 LIKE '%島%'
;

SELECT 都道府県名
FROM 都道府県
WHERE 都道府県名 LIKE '愛%'
;

SELECT *
FROM 都道府県
WHERE 都道府県名 = 県庁所在地
;

SELECT *
FROM 都道府県
WHERE 都道府県名 <> 県庁所在地
;