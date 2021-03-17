-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


-- 1. feladat:
CREATE DATABASE formula1 
CHARACTER SET utf8 
COLLATE utf8_hungarian_ci;

-- 3. feladat:
UPDATE nagydijak
SET korokszama="70"
WHERE nev="Hungarian Grand Prix";

-- 4. feladat:
SELECT vezeteknev, rajtszam, csapatnev, 2019-SUBSTRING(szuletesidatum, 1,4) AS eletkor FROM `pilotak` ORDER BY eletkor DESC

-- 5. feladat:
SELECT nev, vezeteknev, keresztnev, versenynap FROM `eredmenyek` 
INNER JOIN pilotak
ON pilotak.id = eredmenyek.pilotaid
INNER JOIN nagydijak
ON nagydijak.id = eredmenyek.nagydijid
WHERE helyezes = "1"
ORDER BY versenynap ASC;

-- 6. feladat:
SELECT concat(keresztnev, ' ', vezeteknev) AS nev, csapatnev, SUM(pontszam) AS osszpontszam FROM `eredmenyek` 
INNER JOIN pilotak 
ON pilotak.id = eredmenyek.pilotaid 
INNER JOIN nagydijak 
ON nagydijak.id = eredmenyek.nagydijid
GROUP BY vezeteknev, keresztnev, csapatnev
ORDER BY osszpontszam DESC
LIMIT 3;