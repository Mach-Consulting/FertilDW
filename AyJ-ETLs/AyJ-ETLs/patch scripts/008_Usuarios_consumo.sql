USE [AyJDW]
GO

/****** Object:  View [dbo].[Usuarios_Consumo]    Script Date: 5/21/2026 10:56:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER VIEW [dbo].[Usuarios_Consumo]
AS
SELECT DISTINCT FCO.Fecha_Cierre, FCO.Cod_Cliente, CLI.Apellido, CLI.Nombre, CLI.Cod_Sucursal AS Cod_Sucursal, FCO.Cod_Producto, PRO.Descripcion, FCO.Cod_Tipo_Consumo, TCO.Descripcion AS Descripcion_Tipo_Consumo
FROM            dbo.FactConsumos AS FCO LEFT OUTER JOIN
                         dbo.DimCliente AS CLI ON FCO.Cod_Cliente = CLI.Cod_Cliente LEFT OUTER JOIN
                         dbo.DimProductos AS PRO ON FCO.Cod_Producto = PRO.Cod_Producto LEFT OUTER JOIN
                         dbo.DimTipoConsumos AS TCO ON FCO.Cod_Tipo_Consumo = TCO.Cod_Tipo_Consumo
GO