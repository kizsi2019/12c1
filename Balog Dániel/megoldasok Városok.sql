A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

1. feladat:
CREATE DATABASE varosok
DEFAULT CHARSET= utf8
COLLATE utf8_hunarian_ci;

3. feladat:
SELECT vnev FROM `varos`
WHERE vnev LIKE "%vásár%";

4. feladat:
SELECT vnev, nepesseg, terulet FROM `varos`
WHERE terulet>400
ORDER BY nepesseg DESC;

5. feladat:
SELECT vnev, nepesseg  FROM `varos`
INNER JOIN megye
ON varos.megyeid=megye.id
WHERE mnev LIKE "Fejér" AND nepesseg>15000;

6. feladat:
SELECT vtip AS Város_típusa, COUNT(vnev) AS Városok_száma, SUM(nepesseg) AS Népesség FROM `varostipus`
INNER JOIN varos 
ON varostipus.id=varos.vtipid
WHERE vtip NOT LIKE "Főváros"
GROUP BY vtip;

7. feladat:

SELECT mnev, COUNT(vnev) AS db FROM `varos`
INNER JOIN megye 
ON varos.megyeid=megye.id 
WHERE kisterseg != jaras
GROUP BY mnev
HAVING COUNT(vnev)>8
ORDER BY db DESC;
