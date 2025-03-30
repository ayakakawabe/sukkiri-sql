-- 1
UPDATE 回答者
SET
    国名 =
        CASE SUBSTRING(メールアドレス,LENGTH(メールアドレス)-2,3)
            WHEN '.jp' THEN '日本'
            WHEN '.uk' THEN 'イギリス'
            WHEN '.cn' THEN '中国'
            WHEN '.fr' THEN 'フランス'
            WHEN '.vn' THEN 'べトナム'
            ELSE NULL
        END
;

-- 2
SELECT
    TRIM(メールアドレス),
    CONCAT(
        CAST(
            ROUND(年齢,-1) AS CHAR(3)),
            '代：',
            CASE 住居
                WHEN 'D' THEN '戸建て'
                WHEN 'C' THEN '集合住宅'
            END
        ) AS 属性
FROM 回答者
;