--Trae los documentos de ese alumno

create proc getDocumento(@AlumnoNumControl int)
	AS 
		BEGIN
			Select * FROM Documento WHERE @AlumnoNumControl=AlumnoId
		END

-- Mostrar documentos del alumno asignado al asesor
go
create proc getDocumentoAlumnoAsesor(@AsesorId varchar(20))
	AS 
		BEGIN
			Select * FROM Documento WHERE @AsesorId=Idasesor
		END

go
