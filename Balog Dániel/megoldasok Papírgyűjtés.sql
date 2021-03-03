A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

1. feladat:

CREATE DATABASE papirgyutes
DEFAULT CHARSET=utf8
COLLATE utf8_hungarian_ci;

3. feladat:
SELECT nev,osztaly, idopont, mennyiseg FROM tanulok
INNER JOIN leadasok 
ON tanulok.tazon=leadasok.tanulo 
WHERE osztaly LIKE'1%'

4. feladat:
SELECT idopont, AVG (mennyiseg) AS "napi átlag" 
FROM `leadasok` 
GROUP BY idopont;

5. feladat:
SELECT osztaly FROM tanulok
INNER JOIN leadasok
ON tanulok.tazon=leadasok.tanulo
WHERE idopont="2016.10.18"
ORDER BY osztaly;

6. feladat:
SELECT osztaly, SUM(mennyiseg)/10000 AS mazsa FROM `tanulok`
INNER JOIN leadasok
ON leadasok.tanulo=tanulok.tazon
GROUP BY osztaly
ORDER BY mazsa DESC;

7. feladat:
SELECT nev, osztaly, SUM(mennyiseg) AS osszesen 
FROM `tanulok` 
INNER JOIN leadasok
ON tanulok.tazon=leadasok.tanulo
GROUP BY nev
ORDER BY osszesen DESC
LIMIT 10;
