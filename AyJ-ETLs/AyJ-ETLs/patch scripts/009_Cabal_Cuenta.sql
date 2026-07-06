USE [AyJDW]
GO

/****** Object:  View [dbo].[Usuarios_Consumo]    Script Date: 5/21/2026 10:56:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [suma].[CABAL_CUENTA](
	[ID] [numeric](16, 0) NULL,
	[ID_USUARIO] [numeric](16, 0) NULL,
	[FECHA_ALTA] [datetime] NULL,
	[NRO_CUENTA] [varchar](50) NULL,
	[ID_TRANSACTION] [numeric](16, 0) NULL,
	[NRO_FORMULARIO] [numeric](16, 0) NULL
) ON [PRIMARY]
GO

ALTER TABLE [suma].[DimCabalTarjeta] ADD Fecha_Alta_Cuenta datetime null
GO