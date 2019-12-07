USE [InfoTecDataBase]
GO

/****** Object:  StoredProcedure [dbo].[Get_all_proyectos]    Script Date: 27/11/2019 09:45:18 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Delete_ProjectBank] 
	@IdBproy as int
as
begin
	DELETE 
	FROM 
		bancoProyecto 
	WHERE 
		IdBproy = @IdBproy
end
GO


-- exec [Get_all_proyectosById] 1