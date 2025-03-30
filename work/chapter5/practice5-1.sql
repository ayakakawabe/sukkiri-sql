-- 1
UPDATE 試験結果
SET 午後1=75
WHERE 受験者id='SW1046'
;
UPDATE 試験結果
SET 論述=84
WHERE 受験者id='SW1350'
;
UPDATE 試験結果
SET 午前=73
WHERE 受験者id='SW1877'
;

-- 2
SELECT 受験者id AS 合格者ID
FROM 試験結果
WHERE
    午前 >= 60
    AND 午後1+午後2 >= 120
    AND 論述 >= (午前+午後1+午後2)/3
;