--Data visualization
--- Sql script with:
--  + Create and query 5 views using joins, group or having, the
--- views must be in the form of report of the student's project.


CREATE VIEW Domicilios_Medico
AS 
Select 
 M.Nombre as 'Medico',
 D.Calle as 'Calle' ,
 D.Numero as '#'
 From Medicos M
 Left join Domicilios D
 on M.Domicilio= d.cve_Domicilio

CREATE VIEW Especialidad_Medico
AS
SELECT
M.NombreCompleto as 'Medico',
E. nombre as 'Especialidad'
FROM Medicos M
Join ESPECIALIDAD E
on M.cve_Especialidad = E.cve_Especialidad;
 

 CREATE VIEW Pacientes_Correo
 AS
 Select Nombre as 'Paciente' , correo as 'e-mail' 
 From Pacientes 
 group by Nombre,Correo;

 CREATE VIEW Doctor_Edad
 AS
 Select NombreCompleto as 'Doctor' , Edad as 'EDAD'
 FROM Medicos
 GROUP BY NombreCompleto,Edad;

CREATE VIEW Pacientes_Alergias AS
SELECT 
P. NombreCompleto as 'Paciente',
A. nombre as 'Alergias'
FROM Pacientes P
Join Alergias A
on P.Alergias = A.cve_Alergia



 Select * FROM Pacientes_Correo;
 Select * FROM Domicilios_Medico;
 Select * FROM Especialidad_Medico;
 Select * FROM Doctor_Edad;
 SELECT * FROM Pacientes_Alergias;

