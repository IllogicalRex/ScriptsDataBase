USE [InfoTecDataBase]
GO

/****** Object:  StoredProcedure [dbo].[Get_all_proyectos]    Script Date: 27/11/2019 09:45:18 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Get_all_proyectos] as
begin
	select
		IdBproy,
		tipo_proyecto,
		nombre_proy,
		nombre_emp,
		nombre_cont,
		tel_empre,
		correo_empre,
		num_vacantes,
		direccion_empre,
		carrera
	from 
		bancoProyecto 
end
GO


