use Clinica
go
--Insertar 100 elementos en la base de datos. (EN TOTAL ME SALIERON 105 Registros)
--TABLA ALERGIAS. (10 Registros)
INSERT INTO Alergias (cve_Alergia, nombre) VALUES (0,'Ninguna');
INSERT INTO Alergias (cve_Alergia, nombre) VALUES (1,'Penicilina');
INSERT INTO Alergias (cve_Alergia, nombre) VALUES (2,'Morfina');
INSERT INTO Alergias (cve_Alergia, nombre) VALUES (3,'Paracetamol');
INSERT INTO Alergias (cve_Alergia, nombre) VALUES (4,'Cafeina');
INSERT INTO Alergias (cve_Alergia, nombre) VALUES (5,'Taurina');
INSERT INTO Alergias (cve_Alergia, nombre) VALUES (7,'Polen');
INSERT INTO Alergias (cve_Alergia, nombre) VALUES (8,'Chocolate');
INSERT INTO Alergias (cve_Alergia, nombre) VALUES (9,'Lacteos');

--TABLA ESTADOS (10 Registros)
INSERT INTO Estados (cve_Estados,Nombre, Zona) values(1,'Aguascalientes','Centro');
INSERT INTO Estados (cve_Estados,Nombre, Zona) values(2,'Baja California Norte','Norte');
INSERT INTO Estados (cve_Estados,Nombre, Zona) values(3,'Baja california Sur','Norte');
INSERT INTO Estados (cve_Estados,Nombre, Zona) values(4,'Coahuila','Norte');
INSERT INTO Estados (cve_Estados,Nombre, Zona) values(5,'Colima','Bajio');
INSERT INTO Estados (cve_Estados,Nombre, Zona) values(6,'Nuevo Leon','Norte');
INSERT INTO Estados (cve_Estados,Nombre, Zona) values(7,'Nayarit','Bajio');
INSERT INTO Estados (cve_Estados,Nombre, Zona) values(8,'Distrito Federal','Centro');
INSERT INTO Estados (cve_Estados,Nombre, Zona) values(9,'Chiapas','Sur');
INSERT INTO Estados (cve_Estados,Nombre, Zona) values(10,'Tamaulipas','Norte');


--TABLA MUNICIPIOS (10 Registros)
INSERT INTO Municipios (cve_Municipio,Nombre,Codigo_Postal) VALUES (1,'Monterrey',64000);
INSERT INTO Municipios (cve_Municipio,Nombre,Codigo_Postal) VALUES (2,'Guadalupe',63000);
INSERT INTO Municipios (cve_Municipio,Nombre,Codigo_Postal) VALUES (3,'San Pedro',62000);
INSERT INTO Municipios (cve_Municipio,Nombre,Codigo_Postal) VALUES (4,'San Nicolas',61000);
INSERT INTO Municipios (cve_Municipio,Nombre,Codigo_Postal) VALUES (5,'Escobedo',60000);
INSERT INTO Municipios (cve_Municipio,Nombre,Codigo_Postal) VALUES (6,'Apodaca',59000);
INSERT INTO Municipios (cve_Municipio,Nombre,Codigo_Postal) VALUES (7,'Garcia',64100);
INSERT INTO Municipios (cve_Municipio,Nombre,Codigo_Postal) VALUES (8,'Linares',64200);
INSERT INTO Municipios (cve_Municipio,Nombre,Codigo_Postal) VALUES (9,'Villa Juarez',64300);
INSERT INTO Municipios (cve_Municipio,Nombre,Codigo_Postal) VALUES (10,'El Carmen',64400);

--TABLA DOMICILIOS (20 Registros)
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (1000,'Reforma','#300',1,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (1001,'Madero','#255',1,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (1002,'Palacio Federal','#22',2,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (1003,'Reforma','#303',1,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (1004,'5 de mayo','#102',1,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (1005,'Las Torres','#400',5,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (1006,'Reforma','#308',1,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (1007,'Madero','#244',1,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (1008,'Palacio Federal','#233',2,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (1009,'Las Torres','#407',5,6);


INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (2000,'San Agustin','#300',3,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (2001,'Paisandu','#200',1,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (2002,'Palacio Federal','#22',2,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (2003,'San Agustin','#303',3,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (2004,'Piriapolis','#102',1,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (2005,'Las Torres','#480',5,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (2006,'San Agustin','#308',3,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (2007,'Doctores','#244',1,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (2008,'Munich','#233',2,6);
INSERT INTO Domicilios (cve_Domicilio,Calle,Numero,cve_Municipio,cve_Estado) VALUES (2009,'San Agustin','#407',3,6);


--TABLA PACIENTES (10 Registros)
SET IDENTITY_INSERT PACIENTES ON
INSERT INTO PACIENTES (cve_Paciente,Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,Alergias) 
VALUES (9000,'Felix','Martinez','Rodriguez','1997-12-12',12345678,'felix@gmail.com',1009,0);
SET IDENTITY_INSERT PACIENTES OFF

INSERT INTO PACIENTES (Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,Alergias) 
VALUES ('Carlos','Sanchez','Mendoza','1996-12-11',55536677,'carlos@gmail.com',1008,1);

INSERT INTO PACIENTES (Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,Alergias) 
VALUES ('Elias','Hernandez','Garza','1996-10-11',55548877,'elias@gmail.com',1007,3);

INSERT INTO PACIENTES (Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,Alergias) 
VALUES ('Daniel','Moreira','Almada','1995-08-10',55536677,'daniel@gmail.com',1006,1);

INSERT INTO PACIENTES (Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,Alergias) 
VALUES ('Jose','Vazquez','Lee','1986-06-11',83960110,'joseph@gmail.com',1005,4);

INSERT INTO PACIENTES (Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,Alergias) 
VALUES ('Armando','Diaz','Mendez','1988-12-11',55536677,'armando@hotmail.com',1004,5);

INSERT INTO PACIENTES (Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,Alergias) 
VALUES ('Hector','Salcido','Quiroga','1974-10-11',81025377,'hector@hotmail.com',1003,1);

INSERT INTO PACIENTES (Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,Alergias) 
VALUES ('Lorenzo','Abundis','Cardozo','1989-09-02',55816677,'Lorenzo@gmail.com',1002,8);

INSERT INTO PACIENTES (Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,Alergias) 
VALUES ('Daniel','Sanchez','Martinez','1995-07-01',55536917,'daniel_Sanchez@gmail.com',1001,1);

INSERT INTO PACIENTES (Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,Alergias) 
VALUES ('Efrain','Pimentel','Mendiola','1955-01-03',33536677,'efrain@gmail.com',1000,1);

--ESPECIALIDAD (REGISTROS 10)
INSERT INTO ESPECIALIDAD (cve_Especialidad,nombre,descripcion) Values(1,'Medico Cirujano Partero','Puede realizar partos');
INSERT INTO ESPECIALIDAD (cve_Especialidad,nombre,descripcion) Values(2,'Pediatra','Especialista en medicina infantil');
INSERT INTO ESPECIALIDAD (cve_Especialidad,nombre,descripcion) Values(3,'Dentista','Especialista en la salud bucal');
INSERT INTO ESPECIALIDAD (cve_Especialidad,nombre,descripcion) Values(4,'Otrorrigolaringologo','Especialista Enfermedades oído');
INSERT INTO ESPECIALIDAD (cve_Especialidad,nombre,descripcion) Values(5,'Gastroenterologo','Especialista en Estomago');
INSERT INTO ESPECIALIDAD (cve_Especialidad,nombre,descripcion) Values(6,'Nutriologo','Especialista en nutricion');
INSERT INTO ESPECIALIDAD (cve_Especialidad,nombre,descripcion) Values(7,'Psiquiatra','Experto en la fisiologia cerebral');
INSERT INTO ESPECIALIDAD (cve_Especialidad,nombre,descripcion) Values(8,'Podologo','Dedicado a la estetica de los pies');
INSERT INTO ESPECIALIDAD (cve_Especialidad,nombre,descripcion) Values(9,'Cirjuano Plastico','Especialista en estetica');
INSERT INTO ESPECIALIDAD (cve_Especialidad,nombre,descripcion) Values(10,'Cardiologo','Especialista Del Corazon');










--Doctores (10 Registros)
SET IDENTITY_INSERT Medicos ON
INSERT INTO Medicos(cve_Medico,Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,cve_Especialidad) 
VALUES (8000,'Anselmo','Quiroz','Ruiz','1981-10-28',81177233,'dr_anselmo@gmail.com',2009,1);
SET IDENTITY_INSERT Medicos OFF

INSERT INTO Medicos(Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,cve_Especialidad)
VALUES ('Lucio','Gonzalez','Martinez','1980-12-27',83136677,'dr_carlos@gmail.com',2008,3);

INSERT INTO Medicos(Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,cve_Especialidad)
VALUES ('Jared','Romero','Salas','1990-08-21',83134677,'dr_jared@gmail.com',2007,8);

INSERT INTO Medicos(Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,cve_Especialidad)
VALUES ('Silvio','Gonzalez','Azcarraga','1970-09-11',83136587,'dr_silvio@gmail.com',2006,7);

INSERT INTO Medicos(Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,cve_Especialidad)
VALUES ('Guido','Pizarro','Otamendi','1985-09-23',83236587,'dr_guido@gmail.com',2005,1);

INSERT INTO Medicos(Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,cve_Especialidad)
VALUES ('Pacual','Liborio','Sanchez','1989-03-07',31336587,'dr_pascual@gmail.com',2004,1);

INSERT INTO Medicos(Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,cve_Especialidad)
VALUES ('Carlos','Bilardo','Ventura','1949-03-18',41133587,'dr_bilardo@gmail.com',2003,1);

INSERT INTO Medicos(Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,cve_Especialidad)
VALUES ('Gustavo','Cerati','Rodriguez','1949-03-18',51176587,'dr_gustavo@gmail.com',2002,4);

INSERT INTO Medicos(Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,cve_Especialidad)
VALUES ('Gabriel','Martinez','Montes','1951-03-22',61186227,'dr_gabriel@gmail.com',2001,1);

INSERT INTO Medicos(Nombre,Apellido_Paterno,Apellido_Materno,Fecha_Nacimiento,Telefono,Correo,Domicilio,cve_Especialidad)
VALUES ('Rolando','Ramirez','Rodriguez','1949-03-18',71173587,'dr_rolando@gmail.com',2000,5);

--ESTATUS (10 Registros)
 SET IDENTITY_INSERT Estatus ON
 INSERT INTO Estatus(cve_Estatus,nombre) Values(100,'Primera Cita');
 SET IDENTITY_INSERT Estatus OFF
 INSERT INTO Estatus(nombre) Values('Segunda Cita');
 INSERT INTO Estatus(nombre) Values('EMERGENCIA');
 INSERT INTO Estatus(nombre) Values('Confirmada');
 INSERT INTO Estatus(nombre) Values('No Confirmada');
 INSERT INTO Estatus(nombre) Values('CANCELADA');
 INSERT INTO Estatus(nombre) Values('REPROGRAMADA');
 INSERT INTO Estatus(nombre) Values('PERDIDA');
 INSERT INTO Estatus(nombre) Values('EN CURSO');
 INSERT INTO Estatus(nombre) Values('FINALIZADA');

 --Consultorios (10 registros)
 SET IDENTITY_INSERT Consultorios ON
INSERT INTO Consultorios(cve_Consultorio,nombre) Values(201,'General');
INSERT INTO Consultorios(cve_Consultorio,Nombre) Values(202,'Pediatria');
INSERT INTO Consultorios(cve_Consultorio,Nombre) Values(203,'Dentista');
INSERT INTO Consultorios(cve_Consultorio,nombre) Values(204,'Otorringo');
INSERT INTO Consultorios(cve_Consultorio,nombre) Values(205,'Gastro');
INSERT INTO Consultorios(cve_Consultorio,nombre) Values(206,'Nutriologo');
INSERT INTO Consultorios(cve_Consultorio,nombre) Values(207,'Psiquiatra');
INSERT INTO Consultorios(cve_Consultorio,nombre) Values(208,'Podologo');
INSERT INTO Consultorios(cve_Consultorio,nombre) Values(209,'Cirujano_p');
INSERT INTO Consultorios(cve_Consultorio,nombre) Values(210,'Cardio');
 SET IDENTITY_INSERT Consultorios OFF

--Citas 5 Registros

 SET IDENTITY_INSERT Citas ON
INSERT INTO Citas(cve_Cita,Fecha,Hora_inicio,Hora_final,cve_Medico,cve_Consultorio,cve_Estatus,cve_Paciente)
values(10000,'2020-11-11','12:00','12:30',8000,201,109,9000);
 INSERT INTO Citas(cve_Cita,Fecha,Hora_inicio,Hora_final,cve_Medico,cve_Consultorio,cve_Estatus,cve_Paciente)
values(10001,'2020-11-12','12:00','12:30',8018,205,109,9001);
 INSERT INTO Citas(cve_Cita,Fecha,Hora_inicio,Hora_final,cve_Medico,cve_Consultorio,cve_Estatus,cve_Paciente)
values(10002,'2020-11-12','12:00','12:30',8017,201,109,9002);
INSERT INTO Citas(cve_Cita,Fecha,Hora_inicio,Hora_final,cve_Medico,cve_Consultorio,cve_Estatus,cve_Paciente)
values(10003,'2020-11-13','12:00','12:30',8018,205,109,9001);
 INSERT INTO Citas(cve_Cita,Fecha,Hora_inicio,Hora_final,cve_Medico,cve_Consultorio,cve_Estatus,cve_Paciente)
values(10004,'2020-11-13','12:00','12:30',8017,201,109,9002);
SET IDENTITY_INSERT Citas off



