USE [AyJStaging]
GO

/****** Object:  Table [dbo].[TARJETAS_INGRESOS]    Script Date: 12/12/2025 9:03:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TARJETAS_INGRESOS](
	[ID_LIQUIDACION_CLI] [numeric](10, 0) NULL,
	[FECHA_GENERACION] [datetime] NULL,
	[FECHA_CIERRE] [datetime] NULL,
	[NOMBRE] [varchar](81) NULL,
	[ID_CLIENTE] [float] NULL,
	[SUCURSAL] [varchar](60) NULL,
	[ID_SUCURSAL] [float] NULL,
	[ID_EMPRESA] [float] NULL,
	[INTERES] [float] NULL,
	[INTERES_PUNITORIO] [float] NULL,
	[INTERES_COMPENSATORIO] [float] NULL,
	[MANTENIMIENTO] [float] NULL,
	[RENOVACION] [float] NULL,
	[SEGURO_VIDA] [float] NULL,
	[GESTION_COBRANZA] [float] NULL,
	[CARGA_TELEFONO] [float] NULL,
	[C_CARGO_EMISION] [float] NULL,
	[C_CARGO_RENOVACION] [float] NULL,
	[C_CARGO_TARJ_PNC] [float] NULL,
	[C_AJUSTE_SALDO] [float] NULL,
	[C_GESTION_COBRANZA] [float] NULL,
	[C_IMPUESTO_SELLOS] [float] NULL,
	[C_COMPRA_DUPLICADA] [float] NULL,
	[C_SEGURO_SALDO] [float] NULL,
	[C_PUNITORIOS] [float] NULL,
	[C_COMPENSATORIOS] [float] NULL,
	[C_PROMO_AMIGO] [float] NULL,
	[C_INT_PUN_TAR_PNC] [float] NULL,
	[C_COMI_MANT_CTA_TAR] [float] NULL,
	[C_CAP_TAR_PNC] [float] NULL,
	[C_DTO_PROMO] [float] NULL,
	[C_INT_CUO_TAR] [float] NULL,
	[C_COMPRA_MAL_LIQ] [float] NULL,
	[D_COMPRA_MAL_LIQ] [float] NULL,
	[D_DTO_PROMO] [float] NULL,
	[CODOP] [float] NULL,
	[NUMOP] [float] NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[PRESTAMOS_INTERESES]    Script Date: 12/12/2025 9:04:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRESTAMOS_INTERESES](
	[ID_CLIENTE] [numeric](10, 0) NULL,
	[FECHA] [datetime] NULL,
	[ID_SUCURSAL] [numeric](10, 0) NULL,
	[ID_EMPRESA] [numeric](10, 0) NULL,
	[NOMBRE_CLIENTE] [varchar](81) NULL,
	[NOMBRE_SUCURSAL] [varchar](60) NULL,
	[INTERES_CUOTA] [float] NULL,
	[BONIFICACION] [float] NULL,
	[PRESTAMO] [numeric](10, 0) NULL,
	[NRO_CUOTA] [numeric](10, 0) NULL,
	[PLANPAGO] [varchar](40) NULL,
	[PTOVEN] [float] NULL,
	[FACTURA] [float] NULL,
	[NUM_DEVENGAMIENTO] [numeric](10, 0) NULL,
	[VENCIMIENTO] [datetime] NULL,
	[TIPO] [varchar](10) NULL,
	[TIPO_CAN] [varchar](20) NULL,
	[CODOP] [numeric](10, 0) NULL,
	[NUMOP] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[CARGOS_PRESTAMOS_PUNIT]    Script Date: 12/12/2025 9:04:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CARGOS_PRESTAMOS_PUNIT](
	[ID_CLIENTE] [float] NULL,
	[FECHA] [datetime] NULL,
	[ID_SUCURSAL] [numeric](10, 0) NULL,
	[ID_EMPRESA] [numeric](10, 0) NULL,
	[NOMBRE_CLIENTE] [varchar](81) NULL,
	[NOMBRE_SUCURSAL] [varchar](60) NULL,
	[PUNITORIOS] [float] NULL,
	[PTOVEN] [numeric](10, 0) NULL,
	[FACTURA] [numeric](10, 0) NULL,
	[NUM_RECIBO] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[CARGOS_PRESTAMOS_OTORGAMIENTO]    Script Date: 12/12/2025 9:05:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CARGOS_PRESTAMOS_OTORGAMIENTO](
	[ID_CLIENTE] [numeric](10, 0) NULL,
	[FECHA] [datetime] NULL,
	[ID_SUCURSAL] [numeric](10, 0) NULL,
	[ID_EMPRESA] [numeric](10, 0) NULL,
	[NOMBRE_CLIENTE] [varchar](81) NULL,
	[NOMBRE_SUCURSAL] [varchar](60) NULL,
	[PLANPAGO] [varchar](40) NULL,
	[ID_AUTORIZACION] [numeric](10, 0) NULL,
	[CARGO_OTORGAMIENTO] [float] NULL,
	[ARANCEL_PRESTAMO] [float] NULL,
	[PTOVEN] [float] NULL,
	[FACTURA] [float] NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[CARGOS_PRESTAMOS_DVTO]    Script Date: 12/12/2025 9:05:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CARGOS_PRESTAMOS_DVTO](
	[ID_CLIENTE] [numeric](10, 0) NULL,
	[FECHA] [datetime] NULL,
	[ID_SUCURSAL] [numeric](10, 0) NULL,
	[NOMBRE_CLIENTE] [varchar](81) NULL,
	[NOMBRE_SUCURSAL] [varchar](60) NULL,
	[MANTENIMIENTO_CUENTA] [float] NULL,
	[COMISION_CANCELACION] [float] NULL,
	[CARGO_MORA] [float] NULL,
	[COMISION_CANCELACION_RENO] [float] NULL,
	[PTOVEN] [float] NULL,
	[FACTURA] [float] NULL,
	[NUM_DEVENGAMIENTO] [numeric](10, 0) NULL,
	[VENCIMIENTO] [datetime] NULL,
	[TIPO] [varchar](10) NULL,
	[TIPO_CAN] [varchar](20) NULL,
	[ID_EMPRESA] [numeric](10, 0) NULL,
	[CODOP] [numeric](10, 0) NULL,
	[NUMOP] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[DEBCRE_PRESTAMOS]    Script Date: 12/12/2025 9:05:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DEBCRE_PRESTAMOS](
	[ID_CLIENTE] [numeric](10, 0) NULL,
	[FECHA] [datetime] NULL,
	[ID_SUCURSAL] [numeric](10, 0) NULL,
	[ID_EMPRESA] [numeric](10, 0) NULL,
	[NOMBRE_CLIENTE] [varchar](81) NULL,
	[NOMBRE_SUCURSAL] [varchar](60) NULL,
	[C_MANT_CUENTA] [float] NULL,
	[D_INT_CUOTA_PNC] [float] NULL,
	[C_CAP_CUO_NO_CORRESP] [float] NULL,
	[C_INT_CUOTA_PNC] [float] NULL,
	[C_PROMO_AMIGO] [float] NULL,
	[C_DTO_PROMO] [float] NULL,
	[D_INT_CUOTA] [float] NULL,
	[C_INT_MORATORIO] [float] NULL,
	[C_CARGO_MORA] [float] NULL,
	[C_INT_CUO_NO_CORRESP] [float] NULL,
	[D_CARGO_MORA] [float] NULL,
	[C_INT_CUOTA] [float] NULL,
	[C_CARGO_PRE_PNC] [float] NULL,
	[C_INT_MORA_PNC] [float] NULL,
	[PTOVEN] [float] NULL,
	[FACTURA] [float] NULL,
	[CODOP] [numeric](10, 0) NULL,
	[NUMOP] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[CARGOS_REFINANCIACION]    Script Date: 12/12/2025 9:06:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CARGOS_REFINANCIACION](
	[ID_CLIENTE] [float] NULL,
	[FECHA] [datetime] NULL,
	[ID_SUCURSAL] [float] NULL,
	[ID_EMPRESA] [float] NULL,
	[NOMBRE_CLIENTE] [varchar](81) NULL,
	[NOMBRE_SUCURSAL] [varchar](60) NULL,
	[PLANPAGO] [varchar](40) NULL,
	[ID_AUTORIZACION] [float] NULL,
	[CARGO_REFINANCIACION] [float] NULL,
	[CARGO_OTORGAMIENTO] [float] NULL,
	[PUNITORIOS_REFINANCIACION] [float] NULL,
	[PTOVEN] [float] NULL,
	[FACTURA] [float] NULL,
	[CODOP] [float] NULL,
	[NUMOP] [float] NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[CARGOS_REFINANCIACION2]    Script Date: 12/12/2025 9:06:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CARGOS_REFINANCIACION2](
	[ID_CLIENTE] [float] NULL,
	[FECHA] [datetime] NULL,
	[ID_SUCURSAL] [float] NULL,
	[ID_EMPRESA] [float] NULL,
	[NOMBRE_CLIENTE] [varchar](81) NULL,
	[NOMBRE_SUCURSAL] [varchar](60) NULL,
	[PLANPAGO] [varchar](40) NULL,
	[ID_AUTORIZACION] [float] NULL,
	[CARGO_REFINANCIACION] [float] NULL,
	[CARGO_OTORGAMIENTO] [float] NULL,
	[PUNITORIOS_REFINANCIACION] [float] NULL,
	[PTOVEN] [float] NULL,
	[FACTURA] [float] NULL,
	[CODOP] [float] NULL,
	[NUMOP] [float] NULL
) ON [PRIMARY]
GO

ALTER TABLE FactAutorizacionesTarjetas ADD Cod_Autorizacion numeric(10,0)
GO

ALTER TABLE TARJETAS_AUTORIZACIONES_COM ADD ID_FORMA_PAGO numeric(10,0)
GO

ALTER TABLE FactAutorizacionesComercios ADD Cod_Autorizacion numeric(10,0), Cod_Forma_Pago numeric(10, 0)
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[FactLiquidacionesComercios]    Script Date: 12/13/2025 2:34:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactLiquidacionesComercios](
	[Id] [numeric](10, 0) NULL,
	[Fecha] [datetime2](7) NULL,
	[Cod_Autorizacion] [numeric](10, 0) NULL,
	[Cod_Cliente] [numeric](10, 0) NULL,
	[Importe_Cuota] [numeric](14, 2) NULL,
	[Cod_Comercio] [numeric](10, 0) NULL,
	[Cod_Tarjeta] [numeric](10, 0) NULL,
	[Codop] [numeric](10, 0) NULL,
	[Numop] [numeric](10, 0) NULL,
	[Cod_Liquidacion] [numeric](10, 0) NULL,
	[Cod_Sucursal_Comercio] [numeric](10, 0) NULL,
	[Cod_Autorizacion_Com] [numeric](10, 0) NULL,
	[Cod_Empresa] [numeric](10, 0) NULL,
	[Cod_Sucursal] [numeric](10, 0) NULL,
	[Total] [numeric](12, 2) NULL,
	[Cod_Tipo_Pago] [numeric](10, 0) NULL,
	[Anulada] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

ALTER TABLE FactIngresosComercios ADD Cod_Autorizacion numeric(10,0), Cod_Comercio numeric(10,0), Total_Ingreso_Comercio numeric(14,2)
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[FactIngresosClientes]    Script Date: 12/13/2025 3:05:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactIngresosClientes](
	[Cod_Cliente] [float] NULL,
	[Cod_Sucursal] [float] NULL,
	[Cod_Empresa] [float] NULL,
	[Fecha] [date] NULL,
	[Total_Tarjetas_Ingresos] [float] NULL,
	[Total_Prestamos_Intereses] [float] NULL,
	[Total_Cargos_Prestamos_Punit] [float] NULL,
	[Total_Cargos_Prestamos_Otorgamiento] [float] NULL,
	[Total_Cargos_Prestamos_Dvto] [float] NULL,
	[Total_Debcre_Prestamos] [float] NULL,
	[Total_Cargos_Refinanciacion] [float] NULL,
	[Total_Cargos_Refinanciacion2] [float] NULL,
	[Total_Ajustes_Saldos] [numeric](11, 2) NULL,
	[Tipo] [varchar](29) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[FactAjustesSaldos]    Script Date: 12/13/2025 5:55:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactAjustesSaldos](
	[Fecha] [datetime2](7) NULL,
	[Cod_Cliente] [numeric](10, 0) NULL,
	[Nombre_Cliente] [nvarchar](80) NULL,
	[Cod_Liquidacion] [numeric](10, 0) NULL,
	[Nombre] [nvarchar](80) NULL,
	[Id_Debitos_Creditos] [numeric](10, 0) NULL,
	[Importe] [numeric](10, 2) NULL,
	[Iva] [numeric](10, 2) NULL,
	[Tasa_Iva] [numeric](10, 2) NULL,
	[Cod_Empresa] [numeric](10, 0) NULL,
	[Cod_Sucursal] [numeric](10, 0) NULL,
	[Nombre_Sucursal] [nvarchar](60) NULL,
	[Codop] [numeric](10, 0) NULL,
	[Numop] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

ALTER TABLE FactIngresosComercios ADD Cod_Cliente numeric(10,0)
GO