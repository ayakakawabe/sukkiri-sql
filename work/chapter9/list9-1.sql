BEGIN;
INSERT INTO 家計簿アーカイブ
SELECT * FROM 家計簿 WHERE 日付 <= '2024-01-31';
DELETE FROM 家計簿 WHERE 日付 <= '2024-01-31';
COMMIT;