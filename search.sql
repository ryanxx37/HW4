USE lego;

SELECT * FROM LegoSets WHERE description LIKE '%castle%';

SELECT * FROM LegoSets ORDER BY piece DESC;

SELECT * FROM LegoSets WHERE theme = 'Technic';

SELECT * FROM LegoSets LIMIT 4 OFFSET 0;  -- page 1
SELECT * FROM LegoSets LIMIT 4 OFFSET 4;  -- page 2
SELECT * FROM LegoSets LIMIT 4 OFFSET 8;  -- page 3...
