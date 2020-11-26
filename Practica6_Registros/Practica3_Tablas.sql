use Clinica
go
-----Practica3_Tablas
----Tabla Pacientes
CREATE TABLE Pacientes(
cve_Paciente int PRIMARY KEY NOT NULL identity (1,1),
Nombre varchar(25) NOT NULL,
Apellido_Paterno varchar(25) NOT NULL,
Apellido_Materno varchar(25) NOT NULL,
NombreCompleto as Nombre + ' ' + Apellido_Paterno + ' ' + Apellido_Materno,
Fecha_Nacimiento DATE NOT NULL,
Edad as DATEDIFF(year , Fecha_Nacimiento , GETDATE()),
Telefono int NOT NULL,
Alergias varchar(50),
Correo   varchar(50),
Domicilio varchar(50)
)
create index indx_ApellidoPaterno on Pacientes(Apellido_Paterno asc)

----Tabla Medicos
CREATE TABLE Medicos(
cve_Medico int PRIMARY KEY NOT NULL identity (1,1),
Nombre varchar(25) NOT NULL,
Apellido_Paterno varchar(25) NOT NULL,
Apellido_Materno varchar(25) NOT NULL,
NombreCompleto as Nombre + ' ' + Apellido_Paterno + ' ' + Apellido_Materno,
Fecha_Nacimiento DATE NOT NULL,
Edad as DATEDIFF(year , Fecha_Nacimiento , GETDATE()),
Telefono int NOT NULL,
cve_Especialidad int NOT NULL,
Correo   varchar(50),
Domicilio varchar(50)
)
create index indx_ApellidoMaterno on Medicos(Apellido_Materno asc)

----Tabla Citas
CREATE TABLE Citas(
cve_Cita int PRIMARY KEY NOT NULL identity (1,1),
Fecha DATE NOT NULL,
Hora_inicio varchar(10),
Hora_final varchar(10),
Hora as Hora_inicio + ' ' + Hora_final,
cve_Medico int NOT NULL,
cve_Paciente int NOT NULL,
cve_Consultorio int NOT NULL,
cve_Estatus int NOT NULL,
)
create index indx_HoraIni on Citas(Hora_inicio DESC)

----Estatus
Create TABLE Estatus(
cve_Estatus int PRIMARY KEY NOT NULL identity (1,1),
Nombre varchar(10),
)
----Consultorio
CREATE TABLE Consultorios(
cve_Consultorio int PRIMARY KEY NOT NULL identity (1,1),
Nombre varchar(10),
)