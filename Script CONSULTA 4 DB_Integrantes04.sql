
USE [DBIntegrantes_04]
GO

/*** 4. Cantidad Total de Empleados por Departamento, con Salario promedio de Depto mayor a 6.000.- ***/
SELECT [Departamento],
		COUNT(Nombre) AS [Cantidad_Empleados],
		AVG(Salario) AS [Salario_Promedio_Departamento],
		[Gerente]
FROM [dbo].[Integrante]
INNER JOIN [dbo].[Departamento] ON [dbo].[Integrante].[COD_Departamento] = [dbo].[Departamento].[COD_Departamento]
INNER JOIN [dbo].[Gerente] ON [dbo].[Departamento].[ID_Gerente] = [dbo].[Gerente].[ID_Gerente]
GROUP BY [Departamento], [Gerente]
HAVING AVG(Salario) > 6000
GO