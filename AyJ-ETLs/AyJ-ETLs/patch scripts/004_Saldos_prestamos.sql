USE [AyJDW]
GO

/****** Object:  Table [dbo].[SaldoLiquidacionPrestamo]    Script Date: 1/6/2026 10:29:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SaldoLiquidacionPrestamo](
	[Cod_Tabla] [float] NULL,
	[Fecha] [date] NULL,
	[Apellido] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Cod_Usuario] [float] NULL,
	[Cod_Empresa] [float] NULL,
	[Cod_Sucursal] [float] NULL,
	[Cod_Autorizaciones] [float] NULL,
	[Debitos] [float] NULL,
	[Creditos] [float] NULL,
	[Compensatorios] [float] NULL,
	[Punitorios] [float] NULL,
	[Cargos_Emision] [float] NULL,
	[Cargos_Renovacion] [float] NULL,
	[Ult_Liq] [float] NULL,
	[Futura] [float] NULL,
	[Compras] [float] NULL,
	[Nombre_Sucursal] [varchar](40) NULL,
	[Saldo] [float] NULL,
	[Prestamos] [float] NULL,
	[Nota] [varchar](200) NULL,
	[Nombre_Canal_Cobro] [varchar](40) NULL,
	[Tarjeta] [float] NULL,
	[Fecha_Original] [datetime] NULL
) ON [PRIMARY]
GO


