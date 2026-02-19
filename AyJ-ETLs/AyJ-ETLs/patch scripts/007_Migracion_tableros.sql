USE [AyJStaging]
GO

/****** Object:  Table [dbo].[EMPRESAS_LAB]    Script Date: 1/28/2026 9:20:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EMPRESAS_LAB](
	[ID] [numeric](10, 0) NULL,
	[NOMBRE] [varchar](100) NULL,
	[CUIT] [varchar](11) NULL,
	[DESCUENTO] [varchar](2) NULL,
	[TELEFONO] [varchar](100) NULL,
	[ID_LOCALIDAD] [numeric](10, 0) NULL,
	[ID_ZONA] [numeric](10, 0) NULL,
	[ID_RUBRO] [numeric](10, 0) NULL,
	[CALLE] [varchar](100) NULL,
	[NUMERO] [varchar](10) NULL,
	[PISO] [varchar](10) NULL,
	[DPTO] [varchar](10) NULL,
	[DIA_HABIL] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[DimEmpresasLab]    Script Date: 1/28/2026 9:19:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimEmpresasLab](
	[Cod_EmpresasLab] [numeric](10, 0) NULL,
	[Nombre] [varchar](100) NULL,
	[CUIT] [varchar](11) NULL,
	[Descuento] [varchar](2) NULL,
	[Telefono] [varchar](100) NULL,
	[Cod_Localidad] [numeric](10, 0) NULL,
	[Cod_Zona] [numeric](10, 0) NULL,
	[Cod_Rubro] [numeric](10, 0) NULL,
	[Calle] [varchar](100) NULL,
	[Numero] [varchar](10) NULL,
	[Piso] [varchar](10) NULL,
	[Dpto] [varchar](10) NULL,
	[Dia_Habil] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

ALTER TABLE DimCliente ADD Empresa_Laboral varchar(100)
GO



USE [AyJStaging]
GO

/****** Object:  Table [dbo].[TARJETAS_LIQUIDA_COM_DETA]    Script Date: 1/27/2026 10:30:15 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TARJETAS_LIQUIDA_COM_DETA](
	[ID] [numeric](10, 0) NULL,
	[ID_LIQUIDACION] [numeric](10, 0) NULL,
	[ID_COMERCIO] [numeric](10, 0) NULL,
	[ID_LIQUIDACION_COM] [numeric](10, 0) NULL,
	[NROCUO] [numeric](10, 0) NULL,
	[CANCUO] [numeric](10, 0) NULL,
	[CUOTA] [numeric](14, 2) NULL,
	[CODOP] [numeric](10, 0) NULL,
	[NUMOP] [numeric](10, 0) NULL,
	[VENCIMIENTO] [datetime] NULL,
	[ID_SUCURSAL_COMERCIO] [numeric](10, 0) NULL,
	[ID_EMPRESA] [numeric](10, 0) NULL,
	[ID_SUCURSAL] [numeric](10, 0) NULL,
	[ID_PLAN] [numeric](10, 0) NULL,
	[FECHA_CIERRE] [datetime] NULL,
	[ANULADA] [numeric](10, 0) NULL,
	[ID_COMPROBANTE_PAGO] [numeric](10, 0) NULL,
	[DIFIERE_DIAS] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO
ALTER TABLE FactLiquidacionesComercios ADD Vencimiento datetime
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[DimTarjetasCli]    Script Date: 1/27/2026 11:13:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimTarjetasCli](
	[Id] [numeric](10, 0) NULL,
	[Cod_Cliente] [numeric](10, 0) NULL,
	[Cod_Tarjeta] [numeric](10, 0) NULL,
	[Limite_Total] [numeric](10, 2) NULL,
	[Limite_Credito] [numeric](10, 2) NULL,
	[Limite_Compra] [numeric](10, 2) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[PRE_PLAN_PAGO_ALICUOTA]    Script Date: 2/11/2026 9:06:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRE_PLAN_PAGO_ALICUOTA](
	[ID] [numeric](10, 0) NULL,
	[ID_PLAN_PAGO_DETALLE] [numeric](10, 0) NULL,
	[ID_ALICUOTA] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[DimPlanesPrestamosAlicuota]    Script Date: 1/28/2026 12:12:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimPlanesPrestamosAlicuota](
	[Cod_PlanesPrestamosAlicuota] [numeric](10, 0) NULL,
	[Cod_Plan_Pago_Detalle] [numeric](10, 0) NULL,
	[Cod_Alicuota] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[PRE_ALICUOTA]    Script Date: 1/28/2026 12:10:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRE_ALICUOTA](
	[ID] [numeric](10, 0) NULL,
	[NOMBRE] [varchar](40) NULL,
	[ID_TIPO_IVA] [numeric](10, 0) NULL,
	[ID_CTAPLAN] [numeric](10, 0) NULL,
	[SUCURSAL] [varchar](1) NULL,
	[G_AFINIDAD] [varchar](1) NULL,
	[G_CUENTA] [varchar](1) NULL,
	[CLIENTES] [varchar](1) NULL,
	[PERIODO] [numeric](10, 0) NULL,
	[TASA_MENSUAL] [numeric](12, 6) NULL,
	[CATEGORIAS] [varchar](1) NULL,
	[SITUACION_LAB] [varchar](1) NULL,
	[TASA_FIDE1] [numeric](10, 2) NULL,
	[TASA_FIDE2] [numeric](10, 2) NULL,
	[IVA_FIDE1] [numeric](10, 2) NULL,
	[IVA_FIDE2] [numeric](10, 2) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[DimPrestamosAlicuota]    Script Date: 1/28/2026 12:17:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimPrestamosAlicuota](
	[Cod_PrestamosAlicuota] [numeric](10, 0) NULL,
	[Nombre] [varchar](40) NULL,
	[Cod_Tipo_IVA] [numeric](10, 0) NULL,
	[Cod_CTAPLAN] [numeric](10, 0) NULL,
	[Sucursal] [varchar](1) NULL,
	[G_Afinidad] [varchar](1) NULL,
	[G_Cuenta] [varchar](1) NULL,
	[Clientes] [varchar](1) NULL,
	[Periodo] [numeric](10, 0) NULL,
	[Tasa_Mensual] [numeric](12, 6) NULL,
	[Categorias] [varchar](1) NULL,
	[Situacion_Lab] [varchar](1) NULL,
	[Tasa_Fide1] [numeric](10, 2) NULL,
	[Tasa_Fide2] [numeric](10, 2) NULL,
	[IVA_Fide1] [numeric](10, 2) NULL,
	[IVA_Fide2] [numeric](10, 2) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

/****** Object:  View [dbo].[Planes_Prestamos_Alicuotas]    Script Date: 1/28/2026 12:23:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Planes_Prestamos_Alicuotas]
AS
SELECT        dbo.DimPlanesPrestamos.Cod_Plan_Prestamos, dbo.DimPlanesPrestamos.Nombre, dbo.DimPlanesPrestamos.Activo, dbo.DimPlanesPrestamos.Base, dbo.DimPlanesPrestamos.Adelanta, dbo.DimPlanesPrestamos.Bonifica, 
                         dbo.DimPlanesPrestamos.Renueva, dbo.DimPlanesPrestamos.Destino, dbo.DimPlanesPrestamos.Tope, dbo.DimPlanesPrestamos.Tope_Minimo, dbo.DimPrestamosAlicuota.Nombre AS Alicuota_Nombre, 
                         dbo.DimPrestamosAlicuota.Tasa_Mensual, dbo.DimPrestamosAlicuota.Categorias, dbo.DimPrestamosAlicuota.Periodo, dbo.DimPrestamosAlicuota.Clientes
FROM            dbo.DimPlanesPrestamos INNER JOIN
                         dbo.DimPlanesPrestamosAlicuota ON dbo.DimPlanesPrestamos.Cod_Plan_Prestamos = dbo.DimPlanesPrestamosAlicuota.Cod_Plan_Pago_Detalle INNER JOIN
                         dbo.DimPrestamosAlicuota ON dbo.DimPlanesPrestamosAlicuota.Cod_Alicuota = dbo.DimPrestamosAlicuota.Cod_PrestamosAlicuota
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DimPlanesPrestamos"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DimPlanesPrestamosAlicuota"
            Begin Extent = 
               Top = 6
               Left = 275
               Bottom = 119
               Right = 524
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DimPrestamosAlicuota"
            Begin Extent = 
               Top = 6
               Left = 562
               Bottom = 136
               Right = 777
            End
            DisplayFlags = 280
            TopColumn = 8
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Planes_Prestamos_Alicuotas'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Planes_Prestamos_Alicuotas'
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[TIPO_VALORES]    Script Date: 2/5/2026 12:09:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TIPO_VALORES](
	[ID] [numeric](10, 0) NULL,
	[NOMBRE] [varchar](40) NULL,
	[ID_CUENTA] [numeric](10, 0) NULL,
	[FUNCIONA] [varchar](1) NULL,
	[COMPATIBLE] [varchar](1) NULL,
	[CODIGO] [varchar](1) NULL,
	[ID_MONEDA] [numeric](10, 0) NULL,
	[ID_CUENTA_PUENTE] [numeric](10, 0) NULL,
	[FUNCIONA_PRE] [varchar](1) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

DROP TABLE FactPagosClientes
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[FactPagosClientes]    Script Date: 2/5/2026 4:04:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactPagosClientes](
	[Cod_Pago] [numeric](10, 0) NULL,
	[Fecha_Pago] [datetime2](7) NULL,
	[Comprobante] [numeric](10, 0) NULL,
	[Cod_Comercio] [numeric](10, 0) NULL,
	[Importe] [numeric](12, 2) NULL,
	[Cod_Liquidacion_Com] [numeric](10, 0) NULL,
	[Cod_Moneda] [numeric](10, 0) NULL,
	[Cod_Empresa] [numeric](10, 0) NULL,
	[Entregada] [numeric](10, 0) NULL,
	[Fecha_Entrega] [datetime2](7) NULL,
	[Vencimiento] [datetime2](7) NULL,
	[Cod_Sucursal_Comercio] [numeric](10, 0) NULL,
	[Concepto] [nvarchar](60) NULL,
	[Estado_Pago] [varchar](9) NULL,
	[Tipo_Valor_Pago] [varchar](40) NULL,
	[Tipo_Valor_Codigo] [varchar](1) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [suma].[USUARIOS_BLOQUEOS]    Script Date: 2/6/2026 10:37:02 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [suma].[USUARIOS_BLOQUEOS](
	[ID] [numeric](16, 0) NULL,
	[ID_USUARIO] [numeric](16, 0) NULL,
	[ID_OPERADOR] [numeric](16, 0) NULL,
	[FECHA] [datetime] NULL,
	[TIPO] [varchar](20) NULL,
	[MOTIVO] [varchar](1000) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

/****** Object:  Table [suma].[DimUsuariosBloqueos]    Script Date: 2/6/2026 10:37:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [suma].[DimUsuariosBloqueos](
	[Cod_UsuariosBloqueos] [numeric](16, 0) NULL,
	[Cod_Usuario] [numeric](16, 0) NULL,
	[Cod_Operador] [numeric](16, 0) NULL,
	[Fecha] [datetime] NULL,
	[Tipo] [varchar](20) NULL,
	[Motivo] [varchar](1000) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[FactAutorizacionesPrestamosCli]    Script Date: 2/12/2026 3:19:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactAutorizacionesPrestamosCli](
	[Id] [numeric](10, 0) NULL,
	[Cod_Liquidacion] [numeric](10, 0) NULL,
	[Nro_Cuota] [numeric](10, 0) NULL,
	[Importe] [numeric](15, 2) NULL,
	[Vencimiento] [datetime2](7) NULL,
	[Codop] [numeric](10, 0) NULL,
	[Numop] [numeric](10, 0) NULL,
	[IVA] [numeric](7, 2) NULL,
	[Importe_IVA] [numeric](14, 2) NULL,
	[Total_Descuento] [numeric](14, 2) NULL,
	[Cod_Autorizacion] [numeric](10, 0) NULL,
	[Credito] [numeric](14, 2) NULL,
	[Importe_Cuota] [numeric](12, 2) NULL,
	[Cod_Cliente] [numeric](10, 0) NULL,
	[Cod_Empresa] [numeric](10, 0) NULL,
	[Cod_Sucursal] [numeric](10, 0) NULL,
	[Cod_Prestamos_Autorizaciones] [numeric](10, 0) NULL,
	[Anulada] [numeric](10, 0) NULL,
	[Fecha_Prestamo] [datetime2](7) NULL,
	[Cuotas] [numeric](10, 0) NULL,
	[Cod_Plan] [numeric](10, 0) NULL,
	[Cod_Promocion] [numeric](10, 0) NULL,
	[Total] [numeric](15, 2) NULL,
	[Interes] [numeric](15, 2) NULL
) ON [PRIMARY]
GO

ALTER TABLE FactAutorizacionesPrestamos ADD Tasa_Mensual numeric(15, 8) NULL
GO

ALTER TABLE FactPagosClientes 
ADD CODOP_Entrega numeric(10, 0), NUMOP_Entrega numeric(10,0), Cod_Sucursal numeric(10,0)
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[FIDEICOMISO_GENERACION_CUOTAS]    Script Date: 2/18/2026 4:48:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FIDEICOMISO_GENERACION_CUOTAS](
	[ID] [numeric](10, 0) NULL,
	[CODOP] [numeric](10, 0) NULL,
	[NUMOP] [numeric](10, 0) NULL,
	[VENCIMIENTO] [datetime] NULL,
	[ID_CLIENTE] [numeric](10, 0) NULL,
	[VALOR_NOMINAL] [numeric](10, 2) NULL,
	[VALOR_ACTUAL] [numeric](10, 2) NULL,
	[PRESTAMO] [numeric](10, 0) NULL,
	[NRO_CUOTA] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

USE [AyJDW]
GO

/****** Object:  Table [dbo].[DimFideicomisoGeneracionCuotas]    Script Date: 2/18/2026 5:37:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimFideicomisoGeneracionCuotas](
	[Id] [numeric](10, 0) NULL,
	[CODOP] [numeric](10, 0) NULL,
	[NUMOP] [numeric](10, 0) NULL,
	[Vencimiento] [datetime] NULL,
	[Cod_Cliente] [numeric](10, 0) NULL,
	[Valor_Nominal] [numeric](10, 2) NULL,
	[Valor_Actual] [numeric](10, 2) NULL,
	[Prestamo] [numeric](10, 0) NULL,
	[Nro_Cuota] [numeric](10, 0) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[TIPOINSCRIPTO]    Script Date: 2/19/2026 12:39:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TIPOINSCRIPTO](
	[ID] [numeric](10, 0) NULL,
	[NOMBRE] [varchar](40) NULL,
	[CODIGO_AFIP] [varchar](2) NULL,
	[TIPO] [varchar](5) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[CATEGORIA_CLIENTE]    Script Date: 2/19/2026 12:45:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CATEGORIA_CLIENTE](
	[ID] [numeric](10, 0) NULL,
	[CODIGO] [varchar](2) NULL,
	[NOMBRE] [varchar](60) NULL,
	[DESDE] [numeric](10, 0) NULL,
	[HASTA] [numeric](10, 0) NULL,
	[PREDETERMINADA] [numeric](10, 0) NULL,
	[IMPORTE] [numeric](12, 2) NULL,
	[IMPORTE_SERVICIO] [numeric](12, 2) NULL,
	[PRE_AFECTACION] [numeric](12, 2) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[CARGOS_LAB]    Script Date: 2/19/2026 12:48:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CARGOS_LAB](
	[ID] [numeric](10, 0) NULL,
	[NOMBRE] [varchar](40) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[SECTOR_LABORAL]    Script Date: 2/19/2026 1:16:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SECTOR_LABORAL](
	[ID] [numeric](10, 0) NULL,
	[NOMBRE] [varchar](60) NULL
) ON [PRIMARY]
GO

USE [AyJStaging]
GO

/****** Object:  Table [dbo].[OCUPACION]    Script Date: 2/19/2026 1:22:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OCUPACION](
	[ID] [numeric](10, 0) NULL,
	[NOMBRE] [varchar](40) NULL,
	[CODIGO] [varchar](10) NULL
) ON [PRIMARY]
GO

ALTER TABLE DimCliente ADD 
	Cod_Estado numeric(10,0),
	Nacionalidad nvarchar(40),
	Tipo_Inscripto varchar(40),
	Categoria varchar(60),
	Categoria_Codigo varchar(2),
	Cargo_Lab varchar(40),
	Sector_Lab varchar(60),
	Estado_Cta nvarchar(40),
	Ocupacion varchar(40)
GO
