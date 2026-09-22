USE [AyJDW]
GO

ALTER TABLE FactDevengamientoPrestamos ADD Cargos_Mora numeric(10,2)
GO

/****** Object:  View [dbo].[Devengamiento_Prestamos]    Script Date: 9/16/2026 2:07:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[Devengamiento_Prestamos]
AS
SELECT        FDP.Fecha_Pago, CCL.Fecha_Cierre, FDP.Cod_Cliente, FDP.Cod_Empresa, FDP.Cod_Sucursal, FDP.Cod_Personal, FDP.Cod_Tipo_Devengamiento_Prestamo, FDP.Cod_Tipo_Cancelacion_Prestamo, 
                         FDP.Cod_Plan_Prestamos, FDP.Numero_Proceso, FDP.Numero_Resumen, FDP.Numero_Prestamo, FDP.Numero_Cuota, FDP.Total_Cuota, FDP.Capital_Cuota, 
                         FDP.Total_Cuota - FDP.Capital_Cuota AS Interes_Cuota, FDP.Cargos_Mora
FROM            dbo.FactDevengamientoPrestamos AS FDP LEFT OUTER JOIN
                         dbo.DimCliente AS CLI ON FDP.Cod_Cliente = CLI.Cod_Cliente LEFT OUTER JOIN
                         dbo.DimCalendarioCliente AS CCL ON CLI.Cod_Cierre_Cliente = CCL.Cod_Cierre_Cliente AND FDP.Fecha_Pago > CCL.Fecha_Cierre_Anterior AND FDP.Fecha_Pago <= CCL.Fecha_Cierre

GO