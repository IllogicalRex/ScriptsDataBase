--trae todos los proyectos
create procedure Get_all_proyectos @tipo varchar(15) as
begin
select * from bancoProyecto where tipo_proyecto = @tipo 
end

exec Get_all_proyectos @tipo = Residencias




--elimina un proyecto
create procedure Del_proyecto @id int as
begin
delete from bancoProyecto where IdBproy = @id
end

exec Del_proyecto @id =  2





--te inscribe a un proyecto
create procedure inscripcion_proyecto @idproyecto  int  as
begin
declare @ivacantes as int;
declare @resultado as bit;
set @ivacantes = (select num_vacantes from bancoProyecto where IdBproy = @idproyecto)

if @ivacantes > 0 begin
	update bancoProyecto set num_vacantes = @ivacantes -1 ;
	set @resultado = 1;
	select @resultado;
	end
else begin set @resultado = 0;
	select @resultado; end
end

exec inscripcion_proyecto @idproyecto = 2





--crear proyecto
create procedure crear_proyecto @tipo_proy varchar(15), @nombre_proy varchar(250),
 @nombre_emp varchar(150),@nombre_cont varchar(200), @tel_empre int, @correo_empre varchar(200),
 @num_vacantes int, @direccion_empre varchar(250) as
 begin
 insert into bancoProyecto (tipo_proyecto,nombre_proy,nombre_emp,nombre_cont,tel_empre,
 correo_empre,num_vacantes,direccion_empre, Activo ) values (@tipo_proy , @nombre_proy,
  @nombre_emp, @nombre_cont , @tel_empre, @correo_empre , @num_vacantes , @direccion_empre, 1  )
  select top 1 * from bancoProyecto order by IdBproy
end





