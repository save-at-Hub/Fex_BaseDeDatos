---Use the tables from previous practice adding at least 3 relations.
use Clinica
go
ALTER TABLE Citas
ADD CONSTRAINT FK_cve_Medico FOREIGN KEY (cve_Medico)
REFERENCES Medicos(cve_Medico)

ALTER TABLE Citas
ADD CONSTRAINT FK_cve_Pacientes FOREIGN KEY (cve_Paciente)
REFERENCES Pacientes(cve_Paciente)

ALTER TABLE Citas
ADD CONSTRAINT FK_cve_Consultorio FOREIGN KEY (cve_Consultorio)
REFERENCES Consultorios(cve_Consultorio)

----- Add unique constrain
ALTER TABLE Medicos
ADD CONSTRAINT UC_correo unique (Correo)

----- Add check constrain
ALTER TABLE Medicos
ADD CONSTRAINT CHK_Edad_Medicos
CHECK(Fecha_Nacimiento<= DATEADD(Year,-18,GETDATE()))