-- 1
UPDATE 受注
SET
    文字数 =
        LENGTH(TRIM(文字))
;

-- 2
SELECT
    *,
    CASE 
        WHEN 10<文字数 THEN 500
        ELSE 0
    END AS 特別加工料
FROM 受注
ORDER BY 受注日, 受注ID
;

-- 3
UPDATE 受注
SET 文字 = REPLACE(文字,' ','★')
WHERE 受注id = '113'
;

