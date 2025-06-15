USE [DBIntegrantes_04]
GO

/*** 3. Cantidad Empleados por Rango Edad (21-25/26-30/31-35/36-40/41-45/46-50/51-55/56-60..) ***/
SELECT CASE
        WHEN [Edad] BETWEEN 21 AND 25 THEN '21-25 años'
        WHEN [Edad] BETWEEN 26 AND 30 THEN '26-30 años'
        WHEN [Edad] BETWEEN 31 AND 35 THEN '31-35 años'
        WHEN [Edad] BETWEEN 36 AND 40 THEN '36-40 años'
        WHEN [Edad] BETWEEN 41 AND 45 THEN '41-45 años'
        WHEN [Edad] BETWEEN 46 AND 50 THEN '46-50 años'
        WHEN [Edad] BETWEEN 51 AND 55 THEN '51-55 años'
        WHEN [Edad] BETWEEN 56 AND 60 THEN '56-60 años'
        ELSE '+61 años' END AS [RangoEdad],
    COUNT(*) AS [TotalIntegrantes]
FROM [dbo].[Integrante]
GROUP BY (CASE
        WHEN [Edad] BETWEEN 21 AND 25 THEN '21-25 años'
        WHEN [Edad] BETWEEN 26 AND 30 THEN '26-30 años'
        WHEN [Edad] BETWEEN 31 AND 35 THEN '31-35 años'
        WHEN [Edad] BETWEEN 36 AND 40 THEN '36-40 años'
        WHEN [Edad] BETWEEN 41 AND 45 THEN '41-45 años'
        WHEN [Edad] BETWEEN 46 AND 50 THEN '46-50 años'
        WHEN [Edad] BETWEEN 51 AND 55 THEN '51-55 años'
        WHEN [Edad] BETWEEN 56 AND 60 THEN '56-60 años'
        ELSE '+61 años' END)
ORDER BY [RangoEdad]
GO