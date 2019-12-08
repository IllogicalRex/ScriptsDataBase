USE [InfoTecDataBase]
GO

/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 05/12/2019 09:22:20 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[ProjectSubscription] 
(
	 @idBproy INT = NULL,
	 @Nombre_proy NVARCHAR(MAX) = NULL,
	 @Descripcion_proy NVARCHAR(MAX) = NULL,
	 @NoControl NVARCHAR(8) = NULL
)AS
BEGIN

	SET NOCOUNT ON;
		INSERT INTO [dbo].[Proyecto] ([NombreProyecto], [Descripcion_proy], [AlumnoId], [IdBproy])
			VALUES (@IdBproy, @descripcion_proy, @NoControl, @IdBproy);
		
		DECLARE @vacantes AS INT = (SELECT num_vacantes FROM bancoProyecto WHERE IdBproy = @IdBproy)
		UPDATE bancoProyecto SET num_vacantes = (@vacantes-1) WHERE IdBproy = @idBproy

		SELECT [NombreProyecto], [Descripcion_proy], [AlumnoId], [idBproy] AS idProyecto
		FROM [dbo].[Proyecto]
			WHERE [AlumnoId] = @NoControl
	SET NOCOUNT OFF;
END
GO