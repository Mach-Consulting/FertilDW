USE [AyJDW]
GO

/****** Object:  Table [dbo].[SaldoLiquidacionPrestamo]    Script Date: 1/11/2026 10:20:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SaldoLiquidacionPrestamo](
	[Cod_Tabla] [float] NULL,
	[Fecha] [datetime] NULL,
	[Apellido] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Cod_Usuario] [float] NULL,
	[Debitos] [float] NULL,
	[Creditos] [float] NULL,
	[Futura] [float] NULL,
	[Nombre_Sucursal] [varchar](40) NULL,
	[Saldo] [float] NULL,
	[Fecha_Filtro] [date] NULL,
	[Interes_Saldo] [float] NULL,
	[Cargos] [float] NULL,
	[Saldo_Total] [float] NULL,
	[Cap_Futuro] [float] NULL,
	[Int_Futuro] [float] NULL,
	[Saldo_Liq] [float] NULL,
	[Sit5] [int] NULL,
	[Cargos_Emision] [float] NULL,
	[Cargos_Renovacion] [float] NULL,
	[Cod_Grado_Mora] [float] NULL
) ON [PRIMARY]
GO


