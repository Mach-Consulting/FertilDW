ALTER TABLE FactAutorizacionesTarjetas 
ADD Tipo nvarchar(1), Terminal nvarchar(20), Terminal_Pos nvarchar(20), Mensaje_Pos nvarchar(30)
GO

ALTER TABLE DimComercio ADD Cod_Rubro numeric(10, 0), Cod_SubRubro numeric(10,0)
GO