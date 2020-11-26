---Practica 7
-- - Sql script with:
      
--+ 5 simple selects with *where* clause
Select * From Estados where Zona = 'Norte';
Select * From Estados where Zona = 'Centro';
Select * From Estados Where Nombre like '%s';
Select * FROM Estados Where Nombre like 'B%';
Select * From Medicos where Edad >=70;
--+ 5 selects with *Group by* clause
Select Nombre , Edad From Medicos Group by Nombre , Edad;
Select cve_Especialidad , count(*) as Cantidad from Medicos  where cve_Especialidad=8 group by cve_Especialidad;
Select Nombre , correo From Pacientes group by Nombre , Correo;
Select Fecha_Nacimiento , Nombre From Pacientes group by Fecha_Nacimiento, Nombre
Select cve_Especialidad , count(*) as Cantidad from Medicos  where cve_Especialidad=1 group by cve_Especialidad;

--+ 5 selects using *aggregate funtions

Select AVG(Edad) as Edad_Promedio_Medicos From Medicos;
Select SUM(Edad) as SUMA_DE_Edades_Medicos from Medicos;
Select AVG(Edad) as Promedio_DE_Edades_Medicos from Medicos;
Select MAX(Edad) as Edad_Veterana  from Medicos;
Select MIN(Edad) as Edad_Mas_Joven  from Medicos;
      
--+ 5 select with *Having* clause
Select Nombre from Estados group by Nombre Having nombre like '%n';
Select Nombre from Estados group by Nombre Having nombre like 'b%';
Select Apellido_Materno From Pacientes group by Apellido_Materno having Apellido_Materno like 'm%';
Select Apellido_Paterno From Medicos group by Apellido_Paterno having Apellido_Paterno like 'M%';
Select Apellido_Paterno From Medicos group by Apellido_Paterno having Apellido_Paterno like 'P%';
--+ 5 Select with *Top*
Select TOP 3* From Pacientes;
Select TOP 5* From Medicos;
Select top 50 PERCENT * From Estados;
Select TOP 25 PERCENT * From Municipios;
Select TOP 30 percent * From Domicilios 