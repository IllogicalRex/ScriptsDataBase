USE [InfoTecDataBase]
GO

/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 05/12/2019 09:22:20 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[CreateDocuments] 
(
	 @AlumnId VARCHAR(8) = NULL,
	 @Idtipo INT = NULL,
	 @url NVARCHAR(MAX) = NULL,
	 @fecha DATETIME = NULL,
	 @ComentarioAsesor NVARCHAR(MAX) = NULL,
	 @idEstatus INT = NULL,
	 @ComentarioAdmRes NVARCHAR(MAX) = NULL,
	 @Idasesor NVARCHAR(8) = NULL,
	 @idadmin NVARCHAR(8) = NULL
)AS
BEGIN

	SET NOCOUNT ON;
		INSERT INTO [dbo].[Documento] ([AlumnoId],[Idtipo],[url],[fecha],[ComentarioAsesor],[idEstatus],[ComentarioAdmRes],[Idasesor],[idadmin])
			VALUES (@AlumnId, @Idtipo, @url, @fecha,@ComentarioAsesor,@idEstatus,@ComentarioAdmRes,@Idasesor,@idadmin);
		SELECT [AlumnoId],[Idtipo],[url],[fecha],[ComentarioAsesor],[idEstatus],[ComentarioAdmRes],[Idasesor],[idadmin]
		FROM Documento
	SET NOCOUNT OFF;
END
GO