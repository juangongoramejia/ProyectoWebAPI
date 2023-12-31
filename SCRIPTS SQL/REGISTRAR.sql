USE [DBPRUEBAS]
GO
/****** Object:  StoredProcedure [dbo].[usp_registrar]    Script Date: 17/08/2023 7:36:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--************************ VALIDAMOS SI EXISTE EL PROCEDIMIENTO ************************--

ALTER procedure [dbo].[usp_registrar](
@documentoidentidad varchar(60),
@nombres varchar(60),
@telefono varchar(60),
@correo varchar(60),
@ciudad varchar(60)
)
as
begin

insert into USUARIO(DocumentoIdentidad,Nombres,Telefono,Correo,Ciudad)
values
(
@documentoidentidad,
@nombres,
@telefono,
@correo,
@ciudad
)

end

