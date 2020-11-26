
---ESTE QUERY CUENTA CON MODIFICACIONES IMPORTANTES PREVIAS AL LLENADO DE REGISTROS.

---Creacion de 5 nuevas tablas
use Clinica
go
CREATE TABLE ESPECIALIDAD (cve_Especialidad int primary key not null,nombre varchar(35),descripcion varchar(35))

CREATE TABLE Domicilios (cve_Domicilio int primary key Not null ,
Calle varchar(30) ,
Numero varchar(30),
cve_Municipio int Not null,
cve_Estado int Not null);

Create table Municipios (cve_Municipio int primary key not null,
Nombre varchar (50),
Codigo_Postal int not null);

Create table Estados (cve_Estados int primary key not null,
Nombre varchar (50),
Zona varchar (30));

Create Table Alergias (cve_Alergia int PRIMARY KEY NOT NULL, nombre varchar (30) not null);
---Acoplar relaciones , modificar tamaños etc...

ALTER TABLE Estatus
ALTER COLUMN nombre varchar (50);

ALTER TABLE Medicos 
ADD CONSTRAINT FK_cve_Especialidad FOREIGN KEY (cve_Especialidad)
REFERENCES ESPECIALIDAD(cve_Especialidad);

ALTER TABLE Citas
ADD CONSTRAINT FK_cve_Estatus FOREIGN KEY (cve_Estatus)
REFERENCES Estatus(cve_Estatus);

ALTER TABLE Citas
ADD CONSTRAINT FK_cve_Consultorio FOREIGN KEY (cve_Consultorio)
REFERENCES Consultorios(cve_Consultorio);

ALTER TABLE Citas
ADD CONSTRAINT FK_cve_Paciente FOREIGN KEY (cve_Paciente)
REFERENCES Pacientes(cve_Paciente);

ALTER TABLE Citas
ADD CONSTRAINT FK_cve_Medico FOREIGN KEY (cve_Medico)
REFERENCES Medicos(cve_Medico);





ALTER TABLE Pacientes ALTER COlUMN Alergias int;

ALTER TABLE Pacientes 
ADD CONSTRAINT FK_cve_Alergia FOREIGN KEY (Alergias)
REFERENCES Alergias(cve_Alergia);


ALTER TABLE Medicos ALTER COlUMN Domicilio int;
ALTER TABLE Medicos 
ADD CONSTRAINT FK_Domicilio_Medicos FOREIGN KEY (Domicilio)
REFERENCES Domicilios(cve_Domicilio);


ALTER TABLE Pacientes ALTER COlUMN Domicilio int;

ALTER TABLE Pacientes 
ADD CONSTRAINT FK_Domicilio FOREIGN KEY (Domicilio)
REFERENCES Domicilios(cve_Domicilio);


ALTER TABLE Domicilios
ADD CONSTRAINT FK_cve_Estados FOREIGN KEY (cve_Estado)
REFERENCES Estados(cve_Estados);


ALTER TABLE Domicilios
ADD CONSTRAINT FK_cve_Municipios FOREIGN KEY (cve_Municipio)
REFERENCES Municipios(cve_Municipio);


