--Trae los documentos de ese alumno

create proc getDocumento(@AlumnoNumControl int)
	AS 
		BEGIN
			Select * FROM Documento WHERE @AlumnoNumControl=AlumnoId
		END

--Mostrar los documentos del asesor en las fases 3,4,5,7
go
alter proc getDocumentoAlumnoAsesor(@AsesorId varchar(20),@repor1 int,@repor2 int ,@repor3 int,@reporFinal int)
	AS 
		BEGIN
		Select * FROM Documento WHERE @AsesorId=Idasesor AND (@repor1=Idtipo OR @repor2=Idtipo OR @repor3=Idtipo OR @reporFinal=Idtipo)
		END

go
--Mostrar los documentos del encargado en las fases 2,6,7
alter proc getDocumentoEncargado(@EncargadoId varchar(20),@tipoAnte int,@tipoSegui int ,@tipoReport int)
	AS 
		BEGIN
			Select * FROM Documento WHERE @EncargadoId=idadmin AND (@tipoAnte=Idtipo OR @tipoSegui=Idtipo OR @tipoReport=Idtipo)
		END

go

--exec getDocumentoAlumnoAsesor '12345678' , 3,4,5,7


