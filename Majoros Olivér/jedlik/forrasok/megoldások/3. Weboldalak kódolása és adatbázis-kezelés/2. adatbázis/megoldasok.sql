-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


-- 1. feladat:
CREATE DATABASE formula1
DEFAULT CHARSET=utf8
COLLATE utf8_hungarian_ci;

-- 3. feladat:
UPDATE nagydijak
SET korokszama=70
WHERE nev LIKE"Hungarian%";

-- 4. feladat:
SELECT vezeteknev, rajtszam, csapatnev, 2019-year(szuletesidatum) AS eletkor FROM pilotak 
ORDER BY eletkor DESC;

-- 5. feladat:
SELECT nev, vezeteknev, keresztnev, versenynap FROM eredmenyek
INNER JOIN nagydijak
ON eredmenyek.nagydijid=nagydijak.id
JOIN pilotak
ON pilotak.id=eredmenyek.pilotaid
WHERE helyezes=1
ORDER BY versenynap ASC;

-- 6. feladat:
SELECT concat(keresztnev, ' ', vezeteknev) 	AS nev, csapatnev, SUM(pontszam) AS osszpontszam
FROM eredmenyek
JOIN pilotak
ON pilotak.id=eredmenyek.pilotaid
GROUP BY vezeteknev, keresztnev, csapatnev
ORDER BY osszpontszam DESC
LIMIT 3
