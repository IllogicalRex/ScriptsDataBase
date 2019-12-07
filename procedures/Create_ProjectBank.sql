USE [InfoTecDataBase]
GO

/****** Object:  StoredProcedure [dbo].[Get_all_proyectos]    Script Date: 27/11/2019 09:45:18 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Create_ProjectBank] (
	@tipo_proyecto as varchar(100), 
	@nombre_proy as varchar(100), 
	@nombre_emp as varchar(100), 
	@nombre_cont as varchar(150), 
	@tel_empre int, 
	@correo_empre varchar(150), 
	@num_vacantes int,
	@direccion_empre varchar(150)
	)
as
begin
	insert into  [dbo].[bancoProyecto](
	[tipo_proyecto], 
	[nombre_proy], 
	[nombre_emp], 
	[nombre_cont], 
	[tel_empre], 
	[correo_empre], 
	[num_vacantes],
	[direccion_empre],
	[Activo]
) values (
	@tipo_proyecto,
	@nombre_proy,
	@nombre_emp,
	@nombre_cont,
	@tel_empre,
	@correo_empre,
	@num_vacantes,
	@direccion_empre,
	1
)
end
GO


-- exec [Create_ProjectBank] 