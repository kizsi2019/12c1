-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

-- 8. feladat:
CREATE DATABASE kobanyavasut
DEFAULT CHARSET=utf8
COLLATE utf8_hungarian_ci;


-- 10. feladat:
INSERT INTO allomasok
VALUES (16, "Dabas");


-- 11. feladat:
UPDATE vonatok 
SET jaratTipus="sz"
WHERE jaratSzam=541;


-- 12. feladat:

SELECT COUNT(JaratSzam) AS "járatok száma" FROM vonatok
Where jaratTipus="zó" AND
allomas="Felső";

-- 13. feladat:

SELECT min(indulas) AS elso, max(indulas) AS utolso FROM vonatok 
INNER JOIN allomasok
ON vonatok.vegAll=allomasok.id
WHERE allomasok.allomasNev="Monor" AND
vonatok.allomas="Alsó";

-- 14. feladat:

SELECT indulas, allomas, erkezIdo FROM vonatok
INNER JOIN allomasok
ON vonatok.vegAll=allomasok.id
WHERE allomasNev="Szolnok"
ORDER BY indulas ASC
LIMIT 5;

