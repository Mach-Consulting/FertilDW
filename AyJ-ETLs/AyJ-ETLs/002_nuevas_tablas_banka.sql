USE [AyJStaging]
GO

/****** Object:  Table [dbo].[CONSULTA_MORA]    Script Date: 11/21/2025 9:48:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CONSULTA_MORA](
	[ID_CLIENTE] [numeric](10, 0) NULL,
	[NOMBRE] [varchar](40) NULL,
	[APELLIDO] [varchar](40) NULL,
	[ID_SUCURSAL] [float] NULL,
	[ID_EMPRESA] [float] NULL,
	[SUCURSAL] [varchar](60) NULL,
	[EMPRESA] [varchar](60) NULL,
	[ID_GRADO_MORA] [float] NULL,
	[MODELO_TARJETA] [varchar](6) NULL,
	[DOMI_NRO] [varchar](10) NULL,
	[DOMI_CALLE] [varchar](40) NULL,
	[DOMI_TEL1] [varchar](80) NULL,
	[DOMI_COD_POSTAL] [varchar](10) NULL,
	[DOMI_LOCALIDAD] [varchar](40) NULL,
	[TEL_CELULAR] [varchar](80) NULL,
	[FIN] [varchar](max) NULL,
	[TOTAL] [float] NULL,
	[MINIMO] [float] NULL,
	[SALDO] [float] NULL,
	[SALDO_COMPOCLI] [float] NULL,
	[PAGOS] [float] NULL,
	[EMPRESA_LAB] [varchar](max) NULL,
	[COLOR] [varchar](max) NULL,
	[F_VENCE] [datetime] NULL,
	[LIQUIDACION] [float] NULL,
	[SALDO_CAPITAL] [float] NULL,
	[SALDO_INTERES] [float] NULL,
	[SALDO_CARGOS] [float] NULL,
	[SALDO_LIQUIDACION] [float] NULL,
	[CUOTA_FUT] [float] NULL,
	[TIPO] [varchar](max) NULL,
	[DEUDA] [float] NULL,
	[SALDO_LIQUIDADO] [float] NULL,
	[CAPITAL_FUTURO_PRESTAMOS] [float] NULL,
	[INTERES_FUTURO_PRESTAMOS] [float] NULL,
	[PUNITORIOS_ACTIVOS] [float] NULL,
	[CAPITAL_FUTURO_TARJETAS] [float] NULL,
	[INTERES_FUTURO_TARJETAS] [float] NULL,
	[PUNITORIOS_PASIVOS] [float] NULL,
	[LIQUI_FINAL_PENDIENTE] [float] NULL,
	[GRUPO_AFINIDAD] [varchar](60) NULL,
	[GRUPO_CUENTA] [varchar](40) NULL,
	[EMAIL] [varchar](120) NULL,
	[FECHA_PAGO] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


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

USE [AyJDW]
GO

/****** Object:  Table [dbo].[DimSaldosTarjetas]    Script Date: 11/13/2025 12:45:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SaldosTarjetas](
[Tarjeta] [float] NULL,
[Apellido] [varchar](40) NULL,
[Nombre] [varchar](40) NULL,
[Cod_Cliente] [float] NULL,
[Cod_Empresa] [float] NULL,
[Cod_Sucursal] [float] NULL,
[Autorizaciones] [float] NULL,
[Debitos] [float] NULL,
[Creditos] [float] NULL,
[Compensatorios] [float] NULL,
[Punitorios] [float] NULL,
[Cargos_Emision] [float] NULL,
[Cargos_Renovacion] [float] NULL,
[Ult_Liq] [float] NULL,
[Futura] [float] NULL,
[Compras] [float] NULL,
[Nombre_Sucursal] [varchar](60) NULL,
[Saldo_Total_Tarjeta] [float] NULL
) ON [PRIMARY]
GO


USE [AyJDW]
GO
-- En la primera ejecución de CargaFacts debemos hacer una carga completa de COBROS y FactCobros.
ALTER TABLE FactCobros ADD Concepto nvarchar(60) null
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[SaldosCapitalBase]    Script Date: 11/21/2025 9:55:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SaldosCapitalBase](
	[Cod_Cliente] [numeric](10, 0) NULL,
	[Cod_Sucursal] [numeric](10, 0) NULL,
	[Cod_Grado_Mora] [float] NULL,
	[Cod_Plan] [numeric](10, 0) NULL,
	[Capital] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[SaldosBase]    Script Date: 11/14/2025 11:43:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SaldosBase](
	[Cod_Cliente] [numeric](10, 0) NULL,
	[Autorizaciones_Prest] [numeric](38, 2) NULL,
	[Prestamo] [numeric](38, 2) NULL,
	[Punitorios] [numeric](38, 2) NULL,
	[Cargos_Emision_Prest] [numeric](38, 2) NULL,
	[Creditos_Prest] [numeric](38, 2) NULL,
	[Debitos_Prest] [numeric](38, 2) NULL,
	[Capital] [numeric](38, 2) NULL,
	[Cod_Estado_Cliente] [numeric](10, 0) NULL,
	[Saldo_Liquidacion_Prestamo] [numeric](38, 2) NULL,
	[Saldo_Prestamo] [numeric](38, 2) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[SaldosPrestamos]    Script Date: 11/14/2025 12:21:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SaldosPrestamos](
	[Fecha] [date] NULL,
	[Cod_Cliente] [numeric](10, 0) NULL,
	[Saldo_Cobrar] [numeric](38, 2) NULL,
	[Saldo_Liquidacion] [numeric](38, 2) NULL
) ON [PRIMARY]
GO

ALTER TABLE FactLiquidaciones ADD Cod_Cliente numeric(10,0)
GO

update FactLiquidaciones set Cod_Cliente = D.ID_CLIENTE
FROM AyJStaging.dbo.TARJETAS_LIQUIDA_CLI_DETA D
WHERE FactLiquidaciones.Cod_Liquidacion = D.ID_LIQUIDACION_CLI
GO
