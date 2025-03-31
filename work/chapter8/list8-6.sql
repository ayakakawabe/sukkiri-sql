SELECT 日付, K.メモ, H.メモ
FROM 家計簿 AS K
JOIN 費目 AS H
ON K.費目ID = H.ID