insert into [dbo].[AlumnosUsuario] ([AlumnoId], [Contraseña])
	values ('14171009', 'joel123');

insert into [dbo].[Alumno] (
	AlumnoId,
	Nombre,
	Apellido,
	telefono,
	Idcarrera,
	sexo,
	correo,
	Idseg
) values ('14171009', 'Joel Alberto', 'Velazquez Quiñonez', '1234567891', 1, 'M', 'joel@gmial.com', 1)

insert into [dbo].[carreras] ([nombre])
	values ('Ing. En Sistemas');

insert into [dbo].[Seguimiento] ([estatus])
	values ('Activo');


insert into [dbo].[bancoProyecto] (
	tipo_proyecto, nombre_proy, nombre_emp, nombre_cont, tel_empre, correo_empre, num_vacantes, direccion_empre, Activo
) values ('Sistemas', 'Resources Management', 'Neoris', 'Ruben Felix', 1234567890, 'joel@gmial.com', 5, 'Por ahi en 3 Rios', 1)
