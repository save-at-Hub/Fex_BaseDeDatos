use Clinica
go

--									- 5 update statements with diferent *where* clause criteria
update Estados
set Nombre='CDMX'
where Nombre ='Distrito Federal';

update Pacientes
set Apellido_Materno = 'Limon'
where Apellido_Materno = 'Lee';

update Pacientes 
set Nombre = 'Joseph'
where Correo = 'joseph@gmail.com';

--		+ 1 updating one columns
      
Update Medicos
set Apellido_Materno= 'Arrazcarrieta'
where Apellido_Materno='Azcarraga' and Apellido_Paterno ='Gonzalez';

--		+ 1 updating two columns
Update Medicos
set Telefono = 80806060 , Correo = 'dr_gustavo@hotmail.com'
where cve_Medico=8007;

-----										5 delete statements with diferent *where* clause criteria	
DELETE FROM Estados where Zona= 'Sur';
DELETE FROM Municipios where cve_Municipio >= 9;
DELETE FROM Estatus where Nombre LIKE '%o'
DELETE FROM ESPECIALIDAD where cve_Especialidad= 9;
DELETE FROM Estados where Zona= 'Bajio';



