-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


-- 8. feladat:
CRATE DATABASE konyvtarak
DEFAULT CHARSET=utf8
COLLATE utf8_hungarian_ci;

-- 10. feladat:
UPDATE megyek
SET megyeNev="Budapest"
WHERE megyeNev="BP";

-- 11. feladat:
SELECT konyvtarNev, irsz FROM `konyvtarak` 
WHERE konyvtarNev LIKE'%Szakkönyvtár%';

-- 12. feladat:
SELECT konyvtarNev, irsz, cim FROM `konyvtarak` 
WHERE irsz LIKE"1%"
ORDER BY irsz ASC;

-- 13. feladat:
SELECT telepNev, COUNT(id) AS konyvtarDarab FROM `telepulesek` 
INNER JOIN konyvtarak
ON konyvtarak.irsz=telepulesek.irsz
GROUP BY telepNev
HAVING konyvtarDarab>=7;

-- 14. feladat:


