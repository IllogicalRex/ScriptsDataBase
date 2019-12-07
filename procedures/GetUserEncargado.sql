USE [InfoTecDataBase]
GO

/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 05/12/2019 09:22:20 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetUserEncargado] 
(
	 @userName NVARCHAR(100) = NULL,
	 @password NVARCHAR(100) = NULL
)AS
BEGIN

	SET NOCOUNT ON;
		SELECT [idadmin] as userName, [Contraseña] as [password]
		FROM [AdminUsuario]
		WHERE 
		[idadmin] = @userName
		AND 
		[Contraseña] = @password
	SET NOCOUNT OFF;
END
GO
