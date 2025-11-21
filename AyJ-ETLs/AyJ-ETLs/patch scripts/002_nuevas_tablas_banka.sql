USE [AyJStaging]
GO

/****** Object:  Table [dbo].[SALDOSTARJETAS]    Script Date: 11/12/2025 4:10:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SALDOSTARJETAS](
	[TARJETA] [float] NULL,
	[APELLIDO] [varchar](40) NULL,
	[NOMBRE] [varchar](40) NULL,
	[ID] [float] NULL,
	[ID_EMPRESA] [float] NULL,
	[ID_SUCURSAL] [float] NULL,
	[AUTORIZACIONES] [float] NULL,
	[DEBITOS] [float] NULL,
	[CREDITOS] [float] NULL,
	[COMPENSATORIOS] [float] NULL,
	[PUNITORIOS] [float] NULL,
	[CARGOS_EMISION] [float] NULL,
	[CARGOS_RENOVACION] [float] NULL,
	[ULT_LIQ] [float] NULL,
	[FUTURA] [float] NULL,
	[COMPRAS] [float] NULL,
	[NOMBRE_SUCURSAL] [varchar](60) NULL
) ON [PRIMARY]
GO