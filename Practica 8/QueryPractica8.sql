--Me hizo Falta insertar datos en la tabla Citas
 SET IDENTITY_INSERT Citas ON
 INSERT INTO Citas(cve_Cita,Fecha,Hora_inicio,Hora_final,cve_Medico,cve_Consultorio,cve_Estatus,cve_Paciente)
values(10001,'2020-11-12','12:00','12:30',8008,205,109,9001);
 INSERT INTO Citas(cve_Cita,Fecha,Hora_inicio,Hora_final,cve_Medico,cve_Consultorio,cve_Estatus,cve_Paciente)
values(10002,'2020-11-12','12:00','12:30',8007,201,109,9002);
INSERT INTO Citas(cve_Cita,Fecha,Hora_inicio,Hora_final,cve_Medico,cve_Consultorio,cve_Estatus,cve_Paciente)
values(10003,'2020-11-13','12:00','12:30',8008,205,109,9001);
 INSERT INTO Citas(cve_Cita,Fecha,Hora_inicio,Hora_final,cve_Medico,cve_Consultorio,cve_Estatus,cve_Paciente)
values(10004,'2020-11-13','12:00','12:30',8007,201,109,9002);
 SET IDENTITY_INSERT Citas ON




--8)Advance select
    --- Sql script with:
     -- + 2 selects of each join



 --	Left
 --1)
 Select 
 M.Nombre as 'Medico',
 D.Calle as 'Calle' ,
 D.Numero as '#'
 From Medicos M
 Left join Domicilios D
 on M.Domicilio= d.cve_Domicilio

 --2)
 Select 
 C. Fecha as 'Citas',
 M.Nombre as 'Medico'
 From Citas C
 left join Medicos M
 on c.cve_Medico = m.cve_Medico



       -- Right
--1)
Select 
P.Nombre as 'Paciente',
c. Hora as 'Hora De La cita' 
FROM Citas C
Right join Pacientes P
on c.cve_Paciente = P.cve_Paciente
where c.Hora != 'Null';

--2)
SELECT 
P.Nombre as 'Consultorio',
c. Hora as 'Hora De La cita' 
FROM Citas C
Right join Consultorios P
on c.cve_Consultorio = P.cve_Consultorio
where c.Hora != 'Null';



 --inner
 ---1)

SELECT
M. Nombre as 'Medico',
E. nombre as 'Especialidad'
FROM Medicos M
Join ESPECIALIDAD E
on M.cve_Especialidad = E.cve_Especialidad;
---2)
SELECT 
P. Nombre as 'Paciente',
A. nombre as 'Alergias'
FROM Pacientes P
Join Alergias A
on P.Alergias = A.cve_Alergia

--CROSS
SELECT 
P. Nombre as 'Paciente',
M. Nombre as 'Medico'
From Pacientes as P
CROSS JOIN Medicos as M

SELECT 
M. Nombre as 'Doctor',
C. cve_Consultorio as 'Consultorio'
FROM Medicos AS M
CROSS JOIN Consultorios as C

--+ 1 subquery
SELECT * FROM Citas where cve_Medico = (Select cve_Medico From Medicos where cve_Medico=8008)

--+ 1 Select into
SELECT * INTO Citas22  FROM Citas;
SELECT * FROM Citas22
