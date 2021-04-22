-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

-- 11. feladat:
CREATE DATABASE utazas
	CHARACTER SET utf8
	COLLATE utf8_hungarian_ci;

-- 13. feladat:
UPDATE helyseg
  SET nev = 'Porec'
  WHERE nev = 'Porecs';

-- 14. feladat:
SELECT DISTINCT
  szalloda.nev
FROM utak
  INNER JOIN szalloda
    ON utak.szalloda_az = szalloda.az
WHERE szalloda.tengerpart_tav = 0
AND szalloda.felpanzio = 'Igen'
AND utak.indulas BETWEEN '2022.01.01' AND '2022.01.31';

-- 15. feladat:
SELECT
  szalloda.nev,
  szalloda.besorolas
FROM szalloda
WHERE szalloda.nev LIKE '%hotel%'
ORDER BY szalloda.nev;
 
-- 16. feladat:
SELECT
  helyseg.orszag AS Ország,
  COUNT(szalloda.az) AS `Szállodák száma`
FROM szalloda
  INNER JOIN helyseg
    ON szalloda.helyseg_az = helyseg.az
GROUP BY helyseg.orszag
ORDER BY `Szállodák száma` DESC;
  
-- 17. feladat:
SELECT
  szalloda.nev AS `Szálloda neve`,
  AVG(utak.ar) AS `Átlagár/fő`,
  szalloda.besorolas AS `Csillagok száma`
FROM szalloda
  INNER JOIN helyseg
    ON szalloda.helyseg_az = helyseg.az
  INNER JOIN utak
    ON utak.szalloda_az = szalloda.az
WHERE helyseg.orszag = 'Egyiptom'
AND utak.idotartam = 8
GROUP BY szalloda.az,
         szalloda.nev,
         szalloda.besorolas
ORDER BY `Átlagár/fő` DESC
LIMIT 1;