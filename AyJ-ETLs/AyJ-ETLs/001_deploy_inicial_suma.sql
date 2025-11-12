USE [AyJStaging]
GO

create schema suma AUTHORIZATION dbo;
GO
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::suma TO ETLUser;
GO

/****** Object:  Table [suma].[ACCOUNT_ACTIVATION]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[ACCOUNT_ACTIVATION](
	[ID] [numeric](16, 0) NULL,
	[ID_USUARIO] [numeric](16, 0) NULL,
	[KEY] [varchar](50) NULL,
	[ISSUED] [datetime] NULL,
	[EXPIRATION] [datetime] NULL,
	[USED] [numeric](16, 0) NULL,
	[USED_AT] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[CABAL_TARJETA]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[CABAL_TARJETA](
	[ID] [numeric](16, 0) NULL,
	[ID_CUENTA_CABAL] [numeric](16, 0) NULL,
	[FECHA_ALTA] [datetime] NULL,
	[NRO_TARJETA] [numeric](20, 0) NULL,
	[FECHA_VENCIMIENTO] [datetime] NULL,
	[CVV] [varchar](50) NULL,
	[ACTIVA] [numeric](16, 0) NULL,
	[ID_DOMICILIO] [numeric](16, 0) NULL,
	[ACTIVATED_AT] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[CIUDADES]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[CIUDADES](
	[ID] [numeric](16, 0) NULL,
	[NOMBRE] [varchar](256) NULL,
	[NOMBRE_COMPLETO] [varchar](256) NULL,
	[ID_PROVINCIA] [numeric](16, 0) NULL,
	[LONGITUD] [varchar](128) NULL,
	[LATITUD] [varchar](128) NULL,
	[CP] [numeric](10, 0) NULL,
	[NRO_SUCURSAL] [numeric](10, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[COBROS_LINK]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[COBROS_LINK](
	[UUID] [varchar](40) NULL,
	[ID_USER] [numeric](16, 0) NULL,
	[COD_MOV] [numeric](16, 0) NULL,
	[NUM_MOV] [numeric](16, 0) NULL,
	[FECHA] [datetime2](7) NULL,
	[IMPORTE] [numeric](15, 3) NULL,
	[FECHA_PAGO] [datetime2](7) NULL,
	[DIAS] [numeric](16, 0) NULL,
	[TASA] [numeric](15, 3) NULL,
	[ESTADO] [numeric](16, 0) NULL,
	[CODE_COMERCIO] [varchar](26) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[COBROS_QR]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[COBROS_QR](
	[ID] [numeric](16, 0) NULL,
	[ID_QR] [numeric](16, 0) NULL,
	[ID_USER] [numeric](16, 0) NULL,
	[FECHA] [datetime] NULL,
	[IMPORTE] [numeric](15, 3) NULL,
	[ESTADO] [numeric](16, 0) NULL,
	[DIAS] [numeric](16, 0) NULL,
	[TASA] [numeric](15, 3) NULL,
	[MOTIVO] [varchar](100) NULL,
	[COD_MOV] [numeric](16, 0) NULL,
	[NUM_MOV] [numeric](16, 0) NULL,
	[CODIGO_QR] [varchar](1000) NULL,
	[JSON_DATA] [varchar](4000) NULL,
	[GUID_COBRO] [varchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[CTA_CTE]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[CTA_CTE](
	[ID] [numeric](16, 0) NULL,
	[ID_USER] [numeric](16, 0) NULL,
	[FECHA] [datetime2](7) NULL,
	[FD] [varchar](4) NULL,
	[FACTURA] [varchar](20) NULL,
	[CODOP] [numeric](16, 0) NULL,
	[NUMOP] [numeric](16, 0) NULL,
	[CONCEPTO] [varchar](150) NULL,
	[DEBE] [numeric](15, 3) NULL,
	[HABER] [numeric](15, 3) NULL,
	[ID_MONEDA] [numeric](16, 0) NULL,
	[ANULADO] [numeric](16, 0) NULL,
	[COD_MOV] [numeric](16, 0) NULL,
	[NUM_MOV] [numeric](16, 0) NULL,
	[ID_CLIENTE] [numeric](16, 0) NULL,
	[ID_MEDIO_PAGO] [numeric](16, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DOMICILIOS]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DOMICILIOS](
	[ID] [numeric](16, 0) NULL,
	[ID_TIPO_DOMICILIO] [numeric](16, 0) NULL,
	[ID_LOCALIDAD] [numeric](16, 0) NULL,
	[ID_USUARIO] [numeric](16, 0) NULL,
	[ACTIVO] [numeric](16, 0) NULL,
	[FECHA_BAJA] [datetime] NULL,
	[CALLE] [varchar](60) NULL,
	[NUMERO] [varchar](40) NULL,
	[PISO] [varchar](40) NULL,
	[DEPTO] [varchar](40) NULL,
	[ID_CIUDADES] [numeric](16, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[ESTADOS_MOV]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[ESTADOS_MOV](
	[ID] [numeric](16, 0) NULL,
	[NOMBRE] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[MOVIMIENTOS]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[MOVIMIENTOS](
	[ID] [numeric](16, 0) NULL,
	[ID_W_USER] [numeric](16, 0) NULL,
	[ID_CLIENTE] [numeric](16, 0) NULL,
	[FECHA] [datetime2](7) NULL,
	[COD_MOV] [numeric](16, 0) NULL,
	[NUM_MOV] [numeric](16, 0) NULL,
	[CODOP] [numeric](16, 0) NULL,
	[NUMOP] [numeric](16, 0) NULL,
	[IMPORTE] [numeric](15, 3) NULL,
	[ID_MONEDA] [numeric](16, 0) NULL,
	[ANULADO] [numeric](16, 0) NULL,
	[ID_ESTADO] [numeric](16, 0) NULL,
	[ID_AUTORIZACION] [numeric](16, 0) NULL,
	[ID_USER_DESTINO] [numeric](16, 0) NULL,
	[CONCEPTO] [varchar](150) NULL,
	[MOTIVO] [varchar](150) NULL,
	[CARGOS] [numeric](15, 3) NULL,
	[IVA] [numeric](15, 3) NULL,
	[ID_SUCURSAL_BANKA] [numeric](16, 0) NULL,
	[FECHA_RETIRO] [datetime] NULL,
	[FECHA_VENC] [datetime] NULL,
	[ID_MEDIO_PAGO] [numeric](16, 0) NULL,
	[ID_PLAN_PAGO] [numeric](16, 0) NULL,
	[CANTIDAD_CUOTAS] [numeric](16, 0) NULL,
	[CODOP_T] [numeric](16, 0) NULL,
	[NUMOP_T] [numeric](16, 0) NULL,
	[ID_COLABORADOR] [numeric](16, 0) NULL,
	[CODOP_CC] [numeric](16, 0) NULL,
	[NUMOP_CC] [numeric](16, 0) NULL,
	[CODOP_CARGOS] [numeric](16, 0) NULL,
	[NUMOP_CARGOS] [numeric](16, 0) NULL,
	[CODOP_RETIRO] [numeric](16, 0) NULL,
	[NUMOP_RETIRO] [numeric](16, 0) NULL,
	[COMPROBANTE] [numeric](16, 0) NULL,
	[CODOP_RECIBO] [numeric](16, 0) NULL,
	[NUMOP_RECIBO] [numeric](16, 0) NULL,
	[FECHA_RETIRADO] [datetime] NULL,
	[ID_TRANSF_BANCO] [numeric](16, 0) NULL,
	[MULTIPLICADOR_DIRECCION] [numeric](16, 0) NULL,
	[CONCEPTO_BACKOFFICE] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[SUCURSALES]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[SUCURSALES](
	[ID] [numeric](16, 0) NULL,
	[ID_BANKA] [numeric](16, 0) NULL,
	[NOMBRE] [varchar](100) NULL,
	[CODIGO_SISSA] [varchar](150) NULL,
	[COD_POSTAL] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[TELEFONOS]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[TELEFONOS](
	[ID] [numeric](16, 0) NULL,
	[ID_TIPO_TELEFONO] [numeric](16, 0) NULL,
	[CODIGO_AREA] [numeric](16, 0) NULL,
	[NUMERO] [varchar](20) NULL,
	[CELULAR] [numeric](16, 0) NULL,
	[ID_USUARIO] [numeric](16, 0) NULL,
	[ACTIVO] [numeric](16, 0) NULL,
	[FECHA_BAJA] [datetime] NULL,
	[EMPRESA_CEL] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[TIPO_MOV]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[TIPO_MOV](
	[CODIGO] [numeric](16, 0) NULL,
	[NUMERO] [numeric](16, 0) NULL,
	[NOMBRE] [varchar](100) NULL,
	[FD] [varchar](4) NULL,
	[GENERA_MANTENIMIENTO] [numeric](16, 0) NULL,
	[DESCRIPCION] [varchar](200) NULL,
	[COD_OPERACION_ERP] [numeric](16, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[TIPO_PAGO]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[TIPO_PAGO](
	[ID] [numeric](16, 0) NULL,
	[NOMBRE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[TRANSFERENCIAS]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[TRANSFERENCIAS](
	[ID] [numeric](16, 0) NULL,
	[ID_BIND] [varchar](100) NULL,
	[COD_MOV] [numeric](16, 0) NULL,
	[NUM_MOV] [numeric](16, 0) NULL,
	[DIRECCION] [varchar](20) NULL,
	[ID_USER_ORIGEN] [numeric](16, 0) NULL,
	[CBU_CVU_ORIGEN] [varchar](22) NULL,
	[ID_USER_DESTINO] [numeric](16, 0) NULL,
	[CBU_CVU_DESTINO] [varchar](22) NULL,
	[IMPORTE] [numeric](15, 3) NULL,
	[MONEDA] [varchar](10) NULL,
	[STATUS] [varchar](20) NULL,
	[FECHA] [datetime] NULL,
	[CONCEPTO] [varchar](100) NULL,
	[FECHA_OP] [datetime] NULL,
	[COD_MOV_REINTEGRO] [numeric](16, 0) NULL,
	[NUM_MOV_REINTEGRO] [numeric](16, 0) NULL,
	[NSBT] [varchar](50) NULL,
	[ID_DEBIN] [varchar](50) NULL,
	[CODE_COMERCIO] [varchar](26) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[USUARIOS]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[USUARIOS](
	[ID] [numeric](16, 0) NULL,
	[EMAIL] [varchar](100) NULL,
	[NOMBRE] [varchar](100) NULL,
	[APELLIDO] [varchar](100) NULL,
	[DNI] [numeric](16, 0) NULL,
	[CUIT] [numeric](16, 0) NULL,
	[PASSWORD] [varchar](100) NULL,
	[SALT] [varchar](100) NULL,
	[FIRST_LOGIN] [numeric](16, 0) NULL,
	[LAST_LOGIN] [datetime] NULL,
	[ESTADO] [numeric](16, 0) NULL,
	[ID_BIND] [numeric](16, 0) NULL,
	[NRO_SUCURSAL] [numeric](16, 0) NULL,
	[SECRET] [varchar](100) NULL,
	[SEXO] [varchar](1) NULL,
	[ID_CLIENTE_BANKA] [numeric](16, 0) NULL,
	[ID_COMERCIO_BANKA] [numeric](16, 0) NULL,
	[TIPO] [numeric](16, 0) NULL,
	[ID_PADRE] [numeric](16, 0) NULL,
	[ID_COMERCIO] [numeric](16, 0) NULL,
	[PJ_REG] [numeric](16, 0) NULL,
	[COMPARTIR_FIRST] [varchar](10) NULL,
	[SKIP_CARGOS] [numeric](16, 0) NULL,
	[WARNING_SISSA] [varchar](20) NULL,
	[FECHA_ACTIVACION] [datetime] NULL,
	[BLOCKED] [numeric](16, 0) NULL,
	[CREATED_AT] [datetime] NULL,
	[ID_PUNTO_VENTA] [numeric](16, 0) NULL,
	[RES_ENTREGA_EFECTIVO] [numeric](16, 0) NULL,
	[FECHA_NAC] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[USUARIOS_APROBACION]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[USUARIOS_APROBACION](
	[ID] [numeric](16, 0) NULL,
	[ID_USER] [numeric](16, 0) NULL,
	[FECHA] [datetime] NULL,
	[ESTADO] [varchar](20) NULL,
	[MOTIVO] [varchar](200) NULL,
	[ID_OPERADOR] [numeric](16, 0) NULL,
	[ID_EMPRESA] [numeric](16, 0) NULL,
	[ID_SUCURSAL] [numeric](16, 0) NULL,
	[NRO_TRAMITE] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[VERIFICACION_TELEFONO]    Script Date: 10/24/2025 8:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[VERIFICACION_TELEFONO](
	[ID] [numeric](16, 0) NULL,
	[FECHA] [datetime] NULL,
	[TELEFONO] [numeric](16, 0) NULL,
	[CODIGO] [numeric](16, 0) NULL,
	[ESTADO] [numeric](16, 0) NULL,
	[TRACE_ID] [numeric](16, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[USUARIOS_CVU]    Script Date: 10/31/2025 11:18:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [suma].[USUARIOS_CVU](
	[ID] [numeric](16, 0) NULL,
	[ID_USUARIO_BIND] [numeric](16, 0) NULL,
	[CVU] [varchar](22) NULL,
	[ALIAS] [varchar](20) NULL,
	[FECHA] [datetime] NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

create schema suma AUTHORIZATION dbo;
GO
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::suma TO ETLUser;
GO

/****** Object:  Table [suma].[DimAccountActivation]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimAccountActivation](
	[Cod_Account_Activation] [numeric](16, 0) NULL,
	[Cod_Usuario] [numeric](16, 0) NULL,
	[Key] [varchar](50) NULL,
	[Issued] [datetime] NULL,
	[Expiration] [datetime] NULL,
	[Used] [numeric](16, 0) NULL,
	[Used_At] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimActivoTelefono]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimActivoTelefono](
	[Cod_Estado] [float] NULL,
	[Descripcion] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimCabalTarjeta]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimCabalTarjeta](
	[Cod_Cabal_Tarjeta] [numeric](16, 0) NULL,
	[Cod_Cuenta_Cabal] [numeric](16, 0) NULL,
	[Fecha_Alta] [datetime] NULL,
	[Nro_Tarjeta] [numeric](20, 0) NULL,
	[Fecha_Vencimiento] [datetime] NULL,
	[CVV] [varchar](50) NULL,
	[Activa] [numeric](16, 0) NULL,
	[Cod_Domicilio] [numeric](16, 0) NULL,
	[Activated_At] [datetime] NULL,
	[Cod_Usuario] [numeric](16, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimCobrosLink]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimCobrosLink](
	[Cod_Cobros_Link] [varchar](40) NULL,
	[Cod_User] [numeric](16, 0) NULL,
	[Cod_Mov] [numeric](16, 0) NULL,
	[Num_Mov] [numeric](16, 0) NULL,
	[Fecha] [datetime2](7) NULL,
	[Importe] [numeric](15, 3) NULL,
	[Fecha_Pago] [datetime2](7) NULL,
	[Dias] [numeric](16, 0) NULL,
	[Tasa] [numeric](15, 3) NULL,
	[Estado] [numeric](16, 0) NULL,
	[Code_Comercio] [varchar](26) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimCobrosQR]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimCobrosQR](
	[Cod_CobrosQR] [numeric](16, 0) NULL,
	[Cod_QR] [numeric](16, 0) NULL,
	[Cod_User] [numeric](16, 0) NULL,
	[Fecha] [datetime] NULL,
	[Importe] [numeric](15, 3) NULL,
	[Estado] [numeric](16, 0) NULL,
	[Dias] [numeric](16, 0) NULL,
	[Tasa] [numeric](15, 3) NULL,
	[Motivo] [varchar](100) NULL,
	[Cod_Mov] [numeric](16, 0) NULL,
	[Num_Mov] [numeric](16, 0) NULL,
	[Codigo_QR] [varchar](1000) NULL,
	[Json_Data] [varchar](4000) NULL,
	[GUID_Cobro] [varchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimCtaCte]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimCtaCte](
	[Cod_CtaCte] [numeric](16, 0) NULL,
	[Cod_User] [numeric](16, 0) NULL,
	[Fecha] [datetime2](7) NULL,
	[FD] [varchar](4) NULL,
	[Factura] [varchar](20) NULL,
	[Codop] [numeric](16, 0) NULL,
	[Numop] [numeric](16, 0) NULL,
	[Concepto] [varchar](150) NULL,
	[Debe] [numeric](15, 3) NULL,
	[Haber] [numeric](15, 3) NULL,
	[Cod_Moneda] [numeric](16, 0) NULL,
	[Anulado] [numeric](16, 0) NULL,
	[Cod_Mov] [numeric](16, 0) NULL,
	[Num_Mov] [numeric](16, 0) NULL,
	[Cod_Cliente] [numeric](16, 0) NULL,
	[Cod_Medio_Pago] [numeric](16, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimDomicilios]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimDomicilios](
	[Cod_Domicilio] [numeric](16, 0) NULL,
	[Cod_Tipo_Domicilio] [numeric](16, 0) NULL,
	[Cod_Localidad] [numeric](16, 0) NULL,
	[Cod_Usuario] [numeric](16, 0) NULL,
	[Activo] [numeric](16, 0) NULL,
	[Fecha_Baja] [datetime] NULL,
	[Calle] [varchar](60) NULL,
	[Numero] [varchar](40) NULL,
	[Piso] [varchar](40) NULL,
	[Depto] [varchar](40) NULL,
	[Cod_Ciudades] [numeric](16, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimEstadosMov]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimEstadosMov](
	[Cod_Estados_Mov] [numeric](16, 0) NULL,
	[Nombre] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimMovimientos]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimMovimientos](
	[Cod_Movimiento] [numeric](16, 0) NULL,
	[Cod_W_User] [numeric](16, 0) NULL,
	[Cod_Cliente] [numeric](16, 0) NULL,
	[Fecha] [datetime2](7) NULL,
	[Cod_Mov] [numeric](16, 0) NULL,
	[Num_Mov] [numeric](16, 0) NULL,
	[Codop] [numeric](16, 0) NULL,
	[Numop] [numeric](16, 0) NULL,
	[Importe] [numeric](15, 3) NULL,
	[Cod_Moneda] [numeric](16, 0) NULL,
	[Anulado] [numeric](16, 0) NULL,
	[Cod_Estado] [numeric](16, 0) NULL,
	[Cod_Autorizacion] [numeric](16, 0) NULL,
	[Cod_User_Destino] [numeric](16, 0) NULL,
	[Concepto] [varchar](150) NULL,
	[Motivo] [varchar](150) NULL,
	[Cargos] [numeric](15, 3) NULL,
	[IVA] [numeric](15, 3) NULL,
	[Cod_Sucursal_Banka] [numeric](16, 0) NULL,
	[Fecha_retiro] [datetime] NULL,
	[Fecha_Venc] [datetime] NULL,
	[Cod_Medio_Pago] [numeric](16, 0) NULL,
	[Cod_Plan_Pago] [numeric](16, 0) NULL,
	[Cantidad_Cuotas] [numeric](16, 0) NULL,
	[Codop_T] [numeric](16, 0) NULL,
	[Numop_T] [numeric](16, 0) NULL,
	[Cod_Colaborador] [numeric](16, 0) NULL,
	[Codop_CC] [numeric](16, 0) NULL,
	[Numop_CC] [numeric](16, 0) NULL,
	[Codop_Cargos] [numeric](16, 0) NULL,
	[Numop_Cargos] [numeric](16, 0) NULL,
	[Codop_Retiro] [numeric](16, 0) NULL,
	[Numop_Retiro] [numeric](16, 0) NULL,
	[Comprobante] [numeric](16, 0) NULL,
	[Codop_Recibo] [numeric](16, 0) NULL,
	[Numop_Recibo] [numeric](16, 0) NULL,
	[Fecha_Retirado] [datetime] NULL,
	[Cod_Transf_Banco] [numeric](16, 0) NULL,
	[Multiplicador_Direccion] [numeric](16, 0) NULL,
	[Concepto_Backoffice] [varchar](200) NULL,
	[Valor_Cuota] [numeric](15, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimSaldoUsuario]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimSaldoUsuario](
	[Cod_User] [numeric](16, 0) NULL,
	[Fecha] [date] NULL,
	[Saldo] [numeric](16, 3) NULL,
	[Saldo_Acumulado] [numeric](38, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimSucursales]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimSucursales](
	[Id_Sucursal] [numeric](16, 0) NULL,
	[Cod_Sucursal] [numeric](16, 0) NULL,
	[Nombre] [varchar](100) NULL,
	[Codigo_SISSA] [varchar](150) NULL,
	[Cod_Postal] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimTelefonos]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimTelefonos](
	[Cod_Telefonos] [numeric](16, 0) NULL,
	[Cod_Tipo_Telefono] [numeric](16, 0) NULL,
	[Codigo_Area] [numeric](16, 0) NULL,
	[Numero] [varchar](20) NULL,
	[Celular] [numeric](16, 0) NULL,
	[Cod_Usuario] [numeric](16, 0) NULL,
	[Activo] [numeric](16, 0) NULL,
	[Fecha_Baja] [datetime] NULL,
	[Empresa_Cel] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimTipoMov]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimTipoMov](
	[Codigo] [numeric](16, 0) NULL,
	[Numero] [numeric](16, 0) NULL,
	[Nombre] [varchar](100) NULL,
	[FD] [varchar](4) NULL,
	[Genera_Mantenimiento] [numeric](16, 0) NULL,
	[Descripcion] [varchar](200) NULL,
	[Cod_Operacion_ERP] [numeric](16, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimTipoMovimiento]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimTipoMovimiento](
	[Orden_FD] [float] NULL,
	[Descripcion_FD] [nvarchar](255) NULL,
	[FD] [nvarchar](255) NULL,
	[FD_Signo] [nvarchar](255) NULL,
	[FD_Tipo] [nvarchar](255) NULL,
	[FD_Total] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimTipoPago]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimTipoPago](
	[Cod_Tipo_Pago] [numeric](16, 0) NULL,
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimTransferencias]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimTransferencias](
	[Cod_Transferencia] [numeric](16, 0) NULL,
	[Cod_BIND] [varchar](100) NULL,
	[Cod_Mov] [numeric](16, 0) NULL,
	[Num_Mov] [numeric](16, 0) NULL,
	[Direccion] [varchar](20) NULL,
	[Cod_User_Origen] [numeric](16, 0) NULL,
	[CBU_CVU_Origen] [varchar](22) NULL,
	[Cod_User_Destino] [numeric](16, 0) NULL,
	[CBU_CVU_Destino] [varchar](22) NULL,
	[Importe] [numeric](15, 3) NULL,
	[Moneda] [varchar](10) NULL,
	[Status] [varchar](20) NULL,
	[Fecha] [datetime] NULL,
	[Concepto] [varchar](100) NULL,
	[Fecha_OP] [datetime] NULL,
	[Cod_Mov_Reintegro] [numeric](16, 0) NULL,
	[Num_Mov_Reintegro] [numeric](16, 0) NULL,
	[NSBT] [varchar](50) NULL,
	[Cod_DEBIN] [varchar](50) NULL,
	[Code_Comercio] [varchar](26) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimUsuarioManual]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimUsuarioManual](
	[UsuarioManual] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimUsuarios]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimUsuarios](
	[Cod_Usuario] [numeric](16, 0) NULL,
	[Email] [varchar](100) NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido] [varchar](100) NULL,
	[DNI] [numeric](16, 0) NULL,
	[CUIT] [numeric](16, 0) NULL,
	[First_Login] [numeric](16, 0) NULL,
	[Last_Login] [datetime] NULL,
	[Estado] [numeric](16, 0) NULL,
	[Sexo] [varchar](1) NULL,
	[Cod_Cliente_BANKA] [numeric](16, 0) NULL,
	[Cod_Comercio_BANKA] [numeric](16, 0) NULL,
	[Tipo] [numeric](16, 0) NULL,
	[Cod_Padre] [numeric](16, 0) NULL,
	[Cod_Comercio] [numeric](16, 0) NULL,
	[PJ_REG] [numeric](16, 0) NULL,
	[Fecha_Activacion] [datetime] NULL,
	[Created_At] [datetime] NULL,
	[Cod_Sucursal_User] [numeric](16, 0) NULL,
	[Cod_Sucursal] [numeric](16, 0) NULL,
	[Valido_Foto] [varchar](20) NULL,
	[Cod_Bind] [numeric](16, 0) NULL,
	[Compartir_First] [varchar](10) NULL,
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimUsuariosAprobacion]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimUsuariosAprobacion](
	[Cod_Usuario_Aprobacion] [numeric](16, 0) NULL,
	[Cod_User] [numeric](16, 0) NULL,
	[Fecha] [datetime] NULL,
	[Estado] [varchar](20) NULL,
	[Motivo] [varchar](200) NULL,
	[Cod_Operador] [numeric](16, 0) NULL,
	[Cod_Empresa] [numeric](16, 0) NULL,
	[Cod_Sucursal] [numeric](16, 0) NULL,
	[Nro_Tramite] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimVerificacionTelefono]    Script Date: 10/24/2025 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [suma].[DimVerificacionTelefono](
	[Cod_Verificacion_Telefono] [numeric](16, 0) NULL,
	[Fecha] [datetime] NULL,
	[Telefono] [numeric](16, 0) NULL,
	[Codigo] [numeric](16, 0) NULL,
	[Estado] [numeric](16, 0) NULL,
	[Trace_ID] [numeric](16, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [suma].[DimUsuariosCVU]    Script Date: 10/31/2025 11:18:36 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [suma].[DimUsuariosCVU](
	[Cod_UsuariosCVU] [numeric](16, 0) NULL,
	[Cod_Usuario_BIND] [numeric](16, 0) NULL,
	[CVU] [varchar](22) NULL,
	[Alias] [varchar](20) NULL,
	[Fecha] [datetime] NULL
) ON [PRIMARY]
GO