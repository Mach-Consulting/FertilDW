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

/****** Object:  Table [dbo].[PRE_PLAN_PAGO_ALICUOTA]    Script Date: 1/28/2026 11:56:54 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRE_PLAN_PAGO_ALICUOTA](
	[ID] [numeric](10, 0) NULL,
	[NOMBRE] [varchar](40) NULL,
	[ACTIVO] [varchar](1) NULL,
	[BASE] [varchar](2) NULL,
	[ID_FORMA_LIQUI] [numeric](10, 0) NULL,
	[ID_CUENTA] [numeric](10, 0) NULL,
	[ADELANTA] [varchar](1) NULL,
	[BONIFICA] [numeric](10, 2) NULL,
	[RENUEVA] [varchar](1) NULL,
	[ID_GRADO_MORA] [numeric](10, 0) NULL,
	[DESTINO] [varchar](13) NULL,
	[DISPONIBLE_COMPRA] [varchar](50) NULL,
	[DISPONIBLE_CREDITO] [varchar](50) NULL,
	[TOPE] [numeric](12, 2) NULL,
	[TOPE_MIN] [numeric](12, 2) NULL,
	[MODIFICA_COEFICIENTE] [varchar](1) NULL,
	[PAGO_ADELANTADO] [varchar](5) NULL,
	[ID_GRUPO_CIERRE] [numeric](10, 0) NULL,
	[DIA_DIFIERE] [smallint] NULL,
	[ID_MONEDA] [numeric](10, 0) NULL,
	[ANTIGUEDAD_NECESARIA] [numeric](10, 0) NULL,
	[ID_CUENTA_INTERES] [numeric](10, 0) NULL,
	[ID_CONDICION] [numeric](10, 0) NULL,
	[TOPE_PORCE] [numeric](13, 2) NULL,
	[ID_GRUPO_CTA] [numeric](10, 0) NULL,
	[CON_PRESTAMO_ANT] [varchar](1) NULL,
	[PORCE_CANCELADO] [numeric](5, 2) NULL,
	[CANT_CUOTAS_CANCEL] [numeric](10, 0) NULL,
	[CANTIDAD_PRE] [numeric](10, 0) NULL,
	[ID_PLAN_PRE] [numeric](10, 0) NULL,
	[CLIENTE_NUEVO] [varchar](1) NULL,
	[ANTIGUEDAD] [numeric](10, 0) NULL,
	[CANTIDAD_RESUMEN] [numeric](10, 0) NULL,
	[ID_MORA_HISTORICA] [numeric](10, 0) NULL,
	[MORA_VECES] [numeric](10, 0) NULL,
	[MORA_MESES] [numeric](10, 0) NULL,
	[BLOQUEA_OP_PRE] [varchar](1) NULL,
	[ID_PRE_POLITICA_PRECIOS] [numeric](10, 0) NULL,
	[AUTOPRESTAMO] [varchar](2) NULL,
	[FERTILSUMA] [varchar](2) NULL,
	[OCULTO_PRE] [varchar](1) NULL,
	[PERIODO] [varchar](10) NULL
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