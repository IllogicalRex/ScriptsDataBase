/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 13.5 		*/
/*  Created On : 03-dic.-2019 08:28:24 p. m. 				*/
/*  DBMS       : SQL Server 2012 						*/
/* ---------------------------------------------------- */

/* Drop Foreign Key Constraints */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_AdminUsuario_administradores]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [AdminUsuario] DROP CONSTRAINT [FK_AdminUsuario_administradores]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Alumno_carreras]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Alumno] DROP CONSTRAINT [FK_Alumno_carreras]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Alumno_SeguiminetoRes]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Alumno] DROP CONSTRAINT [FK_Alumno_SeguiminetoRes]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_AlumnoDetalle_Alumno]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [AlumnoDetalle] DROP CONSTRAINT [FK_AlumnoDetalle_Alumno]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_AlumnosUsuario_Alumno]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [AlumnosUsuario] DROP CONSTRAINT [FK_AlumnosUsuario_Alumno]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_AsesorUsuario_asesor]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [AsesorUsuario] DROP CONSTRAINT [FK_AsesorUsuario_asesor]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Documento_Alumno]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Documento] DROP CONSTRAINT [FK_Documento_Alumno]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Documento_TipoDocumento]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Documento] DROP CONSTRAINT [FK_Documento_TipoDocumento]
GO

/* Drop Tables */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[administradores]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [administradores]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[AdminUsuario]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [AdminUsuario]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Alumno]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Alumno]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[AlumnoDetalle]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [AlumnoDetalle]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[AlumnosUsuario]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [AlumnosUsuario]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[asesor]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [asesor]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[AsesorUsuario]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [AsesorUsuario]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[bancoProyecto]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [bancoProyecto]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[carreras]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [carreras]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Documento]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Documento]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[empresa]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [empresa]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[estatus]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [estatus]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Proyecto]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Proyecto]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Roles]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Roles]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Seguimiento]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Seguimiento]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[TipoDocumento]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [TipoDocumento]
GO

/* Create Tables */

CREATE TABLE [administradores]
(
	[idadmin] nvarchar(8) NOT NULL,
	[nombre] nvarchar(150) NOT NULL,
	[apellido] nvarchar(150) NOT NULL
)
GO

CREATE TABLE [AdminUsuario]
(
	[Contrase�a] nvarchar(50) NOT NULL,
	[idadmin] nvarchar(8) NULL
)
GO

CREATE TABLE [Alumno]
(
	[AlumnoId] nvarchar(8) NOT NULL,
	[Nombre] nvarchar(100) NOT NULL,
	[Apellido] nvarchar(100) NOT NULL,
	[telefono] nvarchar(10) NULL,
	[Idcarrera] int NOT NULL,
	[sexo] nchar(1) NOT NULL,
	[correo] nvarchar(200) NULL,
	[Idseg] int NULL
)
GO

CREATE TABLE [AlumnoDetalle]
(
	[plan_estudio] nvarchar(200) NOT NULL,
	[mod_especialidad] nvarchar(200) NOT NULL,
	[sit_vigencia] nvarchar(15) NOT NULL,
	[promedio] decimal(10) NOT NULL,
	[creditos_acumulados] int NOT NULL,
	[periodo_ingreso] nvarchar(150) NOT NULL,
	[periodo_convalidado] int NULL,
	[periodo_actual_ultimo] nvarchar(150) NOT NULL,
	[tutor] nvarchar(200) NOT NULL,
	[curp] nchar(18) NOT NULL,
	[fecha_naci] datetime NOT NULL,
	[direccion] nvarchar(max) NOT NULL,
	[escuela_procedencia] nvarchar(max) NOT NULL,
	[AlumnoId] nvarchar(8) NOT NULL
)
GO

CREATE TABLE [AlumnosUsuario]
(
	[Contrase�a] nvarchar(50) NOT NULL,
	[AlumnoId] nvarchar(8) NULL
)
GO

CREATE TABLE [asesor]
(
	[Idasesor] nvarchar(8) NOT NULL,
	[nombre] nvarchar(50) NOT NULL,
	[apellido] nvarchar(150) NOT NULL,
	[correo_electronico] nvarchar(200) NOT NULL,
	[telefono] nvarchar(10) NULL
)
GO

CREATE TABLE [AsesorUsuario]
(
	[Contra] nvarchar(50) NOT NULL,
	[Idasesor] nvarchar(8) NULL
)
GO

CREATE TABLE [bancoProyecto]
(
	[IdBproy] int NOT NULL IDENTITY (1, 1),
	[tipo_proyecto] varchar(15) NOT NULL,
	[nombre_proy] varchar(250) NOT NULL,
	[nombre_emp] varchar(150) NOT NULL,
	[nombre_cont] varchar(200) NOT NULL,
	[tel_empre] nvarchar(10) NOT NULL,
	[correo_empre] varchar(200) NOT NULL,
	[num_vacantes] int NOT NULL,
	[direccion_empre] varchar(250) NOT NULL,
	[Activo] bit NOT NULL
)
GO

CREATE TABLE [carreras]
(
	[idcarrera] int NOT NULL IDENTITY (1, 1),
	[nombre] varchar(300) NOT NULL
)
GO

CREATE TABLE [Documento]
(
	[Iddocumento] int NOT NULL IDENTITY (1, 1),
	[nombre] nvarchar(100) NOT NULL,
	[Idtipo] int NOT NULL,
	[AlumnoId] nvarchar(8) NOT NULL,
	[fecha] datetime NOT NULL
)
GO

CREATE TABLE [empresa]
(
	[Idempresa] int NOT NULL IDENTITY (1, 1),
	[nombre] nvarchar(50) NOT NULL,
	[direccion] nvarchar(50) NOT NULL,
	[correo_electronico] nvarchar(50) NOT NULL,
	[telefono] nvarchar(10) NULL
)
GO

CREATE TABLE [estatus]
(
	[Idestatus] int NOT NULL IDENTITY (1, 1),
	[nombre] varchar(100) NOT NULL
)
GO

CREATE TABLE [Proyecto]
(
	[idProyecto] int NOT NULL,
	[NombreProyecto] nvarchar(max) NOT NULL,
	[Descripcion_proy] nvarchar(max) NULL,
	[AlumnoId] int NOT NULL
)
GO

CREATE TABLE [Roles]
(
	[Idrol] int NOT NULL IDENTITY (1, 1),
	[NombreRol] varchar(100) NOT NULL
)
GO

CREATE TABLE [Seguimiento]
(
	[Idseg] int NOT NULL IDENTITY (1, 1),
	[estatus] nvarchar(50) NOT NULL
)
GO

CREATE TABLE [TipoDocumento]
(
	[Idtipo] int NOT NULL IDENTITY (1, 1),
	[nombre] nvarchar(100) NOT NULL
)
GO

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [administradores] 
 ADD CONSTRAINT [PK_administradores]
	PRIMARY KEY CLUSTERED ([idadmin] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_AdminUsuario_administradores] 
 ON [AdminUsuario] ([idadmin] ASC)
GO

ALTER TABLE [Alumno] 
 ADD CONSTRAINT [PK_Alumno]
	PRIMARY KEY CLUSTERED ([AlumnoId] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Alumno_carreras] 
 ON [Alumno] ([Idcarrera] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Alumno_SeguiminetoRes] 
 ON [Alumno] ([Idseg] ASC)
GO

ALTER TABLE [AlumnoDetalle] 
 ADD CONSTRAINT [PK_AlumnoDetalle]
	PRIMARY KEY CLUSTERED ([AlumnoId] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_AlumnoDetalle_Alumno] 
 ON [AlumnoDetalle] ([AlumnoId] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_AlumnosUsuario_Alumno] 
 ON [AlumnosUsuario] ([AlumnoId] ASC)
GO

ALTER TABLE [asesor] 
 ADD CONSTRAINT [PK_asesor]
	PRIMARY KEY CLUSTERED ([Idasesor] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_AsesorUsuario_asesor] 
 ON [AsesorUsuario] ([Idasesor] ASC)
GO

ALTER TABLE [bancoProyecto] 
 ADD CONSTRAINT [PK_bancoProyecto]
	PRIMARY KEY CLUSTERED ([IdBproy] ASC)
GO

ALTER TABLE [carreras] 
 ADD CONSTRAINT [PK_carreras]
	PRIMARY KEY CLUSTERED ([idcarrera] ASC)
GO

ALTER TABLE [Documento] 
 ADD CONSTRAINT [PK_Documento]
	PRIMARY KEY CLUSTERED ([Iddocumento] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Documento_Alumno] 
 ON [Documento] ([AlumnoId] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Documento_TipoDocumento] 
 ON [Documento] ([Idtipo] ASC)
GO

ALTER TABLE [empresa] 
 ADD CONSTRAINT [PK_empresa]
	PRIMARY KEY CLUSTERED ([Idempresa] ASC)
GO

ALTER TABLE [estatus] 
 ADD CONSTRAINT [PK_estatus]
	PRIMARY KEY CLUSTERED ([Idestatus] ASC)
GO

ALTER TABLE [Proyecto] 
 ADD CONSTRAINT [PK_Proyecto]
	PRIMARY KEY CLUSTERED ([idProyecto] ASC)
GO

ALTER TABLE [Roles] 
 ADD CONSTRAINT [PK_Roles]
	PRIMARY KEY CLUSTERED ([Idrol] ASC)
GO

ALTER TABLE [Seguimiento] 
 ADD CONSTRAINT [PK_SeguiminetoRes]
	PRIMARY KEY CLUSTERED ([Idseg] ASC)
GO

ALTER TABLE [TipoDocumento] 
 ADD CONSTRAINT [PK_TipoDocumento]
	PRIMARY KEY CLUSTERED ([Idtipo] ASC)
GO

/* Create Foreign Key Constraints */

ALTER TABLE [AdminUsuario] ADD CONSTRAINT [FK_AdminUsuario_administradores]
	FOREIGN KEY ([idadmin]) REFERENCES [administradores] ([idadmin]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Alumno] ADD CONSTRAINT [FK_Alumno_carreras]
	FOREIGN KEY ([Idcarrera]) REFERENCES [carreras] ([idcarrera]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Alumno] ADD CONSTRAINT [FK_Alumno_SeguiminetoRes]
	FOREIGN KEY ([Idseg]) REFERENCES [Seguimiento] ([Idseg]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [AlumnoDetalle] ADD CONSTRAINT [FK_AlumnoDetalle_Alumno]
	FOREIGN KEY ([AlumnoId]) REFERENCES [Alumno] ([AlumnoId]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [AlumnosUsuario] ADD CONSTRAINT [FK_AlumnosUsuario_Alumno]
	FOREIGN KEY ([AlumnoId]) REFERENCES [Alumno] ([AlumnoId]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [AsesorUsuario] ADD CONSTRAINT [FK_AsesorUsuario_asesor]
	FOREIGN KEY ([Idasesor]) REFERENCES [asesor] ([Idasesor]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Documento] ADD CONSTRAINT [FK_Documento_Alumno]
	FOREIGN KEY ([AlumnoId]) REFERENCES [Alumno] ([AlumnoId]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Documento] ADD CONSTRAINT [FK_Documento_TipoDocumento]
	FOREIGN KEY ([Idtipo]) REFERENCES [TipoDocumento] ([Idtipo]) ON DELETE No Action ON UPDATE No Action
GO