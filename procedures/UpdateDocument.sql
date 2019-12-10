USE [InfoTecDataBase]
GO

/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 05/12/2019 09:22:20 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[UpdateDocuments] 
(
	 @AlumnId VARCHAR(8),
	 @Idtipo INT ,
	 @url NVARCHAR(MAX),
	 @fecha DATETIME,
	 @ComentarioAsesor NVARCHAR(MAX),
	 @idEstatus INT ,
	 @ComentarioAdmRes NVARCHAR(MAX),
	 @Idasesor NVARCHAR(8) ,
	 @idadmin NVARCHAR(8)
)AS
BEGIN

	SET NOCOUNT ON;
		Update [dbo].[Documento] 
		set
		[AlumnoId]=@AlumnId,
		[Idtipo]=@Idtipo,
		[url]=@url,
		[fecha]=@fecha,
		[ComentarioAsesor]=@ComentarioAsesor,
		[idEstatus]=@idEstatus,
		[ComentarioAdmRes]=@ComentarioAdmRes,
		[Idasesor]=@Idasesor,
		[idadmin]=@idadmin
			Where ([Idasesor]=@Idasesor OR [idadmin]=@idadmin) and [url]=@url
	SET NOCOUNT OFF;
END
GO