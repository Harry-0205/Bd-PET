DROP DATABASE IF EXISTS DbPet;
CREATE DATABASE DbPet;
USE DbPet;

CREATE TABLE TipoDeDocumento (
    IdTipo INT PRIMARY KEY AUTO_INCREMENT,
    TipoDoc VARCHAR(10)
);

CREATE TABLE Roles (
    IdRol INT PRIMARY KEY AUTO_INCREMENT,
    NomRol VARCHAR(50)
);

CREATE TABLE Usuario (
    Doc BIGINT PRIMARY KEY,
    TipoDoc INT,
    IdRol int,
    Nom VARCHAR(20),
    Ape1 VARCHAR(20),
    Ape2 VARCHAR(20),
    Tel VARCHAR(20),
    Contrato int,
    Dir VARCHAR(50),
    Correo VARCHAR(100),
    contra varchar(500),
    FecNam DATE,
    FOREIGN KEY (TipoDoc) REFERENCES TipoDeDocumento(IdTipo),
	CONSTRAINT FK_ROL FOREIGN KEY (IdRol) REFERENCES roles(IdRol)
);

CREATE TABLE Veterinarias (
    IdVet BIGINT PRIMARY KEY,
    Nom VARCHAR(50),
    Correo VARCHAR(100),
    Foto VARCHAR(255),
    Direc VARCHAR(100)
);

CREATE TABLE Especie (
    IdEspecie INT PRIMARY KEY AUTO_INCREMENT,
    Especie VARCHAR(30)
);

CREATE TABLE Color (
    IdColor INT PRIMARY KEY AUTO_INCREMENT,
    Color VARCHAR(30)
);

CREATE TABLE Vacunas (
    IdVacuna INT PRIMARY KEY AUTO_INCREMENT,
    Vacuna VARCHAR(50),
    IdEspecie INT,
    Costo INT,
    Dosis VARCHAR(255),
    Duracion VARCHAR(255),
    FOREIGN KEY (IdEspecie) REFERENCES Especie(IdEspecie)
);

CREATE TABLE EsquemaVacunas (
    IdEsquema INT PRIMARY KEY AUTO_INCREMENT,
    idvacuna int,
    Dosis varchar(255),
    fecVacu datetime,
	CONSTRAINT FK_Vacuna FOREIGN KEY (IdVacuna) REFERENCES Vacunas(IdVacuna)
);

CREATE TABLE Estado (
    IdEstado BOOLEAN PRIMARY KEY,
    Realizado BOOLEAN,
    Cancelado BOOLEAN
);

CREATE TABLE Procedimiento (
    IdProcedimiento BIGINT PRIMARY KEY AUTO_INCREMENT,
    Procedimiento VARCHAR(50),
    Costo INT,
    Duracion TIME,
    Anotaciones VARCHAR(500)
);

CREATE TABLE HistoriaClinica (
    IdHistoria INT PRIMARY KEY AUTO_INCREMENT,
    IdMascota BIGINT,
    iDProcedimiento BIGINT,
    Anotaciones VARCHAR(200),
    constraint FK_procedi Foreign key (iDProcedimiento) references Procedimiento(IdProcedimiento)
);

CREATE TABLE Usuario_Roles (
    DocUsuario BIGINT,
    IdRol INT,
    PRIMARY KEY (DocUsuario, IdRol),
    FOREIGN KEY (DocUsuario) REFERENCES Usuario(Doc),
    FOREIGN KEY (IdRol) REFERENCES Roles(IdRol)
);

CREATE TABLE Raza (
    IdRaza INT PRIMARY KEY AUTO_INCREMENT,
    Raza VARCHAR(30),
    IdEspecie INT,
    FOREIGN KEY (IdEspecie) REFERENCES Especie(IdEspecie)
);

CREATE TABLE Mascota (
    IdMascota BIGINT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    FecNac TIMESTAMP,
    IdRaza INT,
    IdColor INT,
    IdEsquema INT,
    DocUsuario BIGINT,
    Foto VARCHAR(255),
    FOREIGN KEY (IdRaza) REFERENCES Raza(IdRaza),
    FOREIGN KEY (IdColor) REFERENCES Color(IdColor),
    FOREIGN KEY (IdEsquema) REFERENCES EsquemaVacunas(IdEsquema),
    FOREIGN KEY (DocUsuario) REFERENCES Usuario(Doc)
);

CREATE TABLE Agendamiento (
    IdCita BIGINT PRIMARY KEY AUTO_INCREMENT,
	fecAg TIMESTAMP,
    FecAsi datetime,
    IdVet BIGINT,
    IdMascota BIGINT,
    IdEstado BOOLEAN,
    IdProcedimiento BIGINT,
    FOREIGN KEY (IdVet) REFERENCES Veterinarias(IdVet),
    FOREIGN KEY (IdMascota) REFERENCES Mascota(IdMascota),
    FOREIGN KEY (IdEstado) REFERENCES Estado(IdEstado),
    FOREIGN KEY (IdProcedimiento) REFERENCES Procedimiento(IdProcedimiento)
);

CREATE TABLE Procedimiento_HistoriaClinica (
    IdProcedimiento BIGINT,
    IdHistoria INT,
    PRIMARY KEY (IdProcedimiento, IdHistoria),
    FOREIGN KEY (IdProcedimiento) REFERENCES Procedimiento(IdProcedimiento),
    FOREIGN KEY (IdHistoria) REFERENCES HistoriaClinica(IdHistoria)
);



CREATE TABLE Vacunas_EsquemaVacunas (
    IdVacuna INT,
    IdEsquema INT,
    PRIMARY KEY (IdVacuna, IdEsquema),
    FOREIGN KEY (IdVacuna) REFERENCES Vacunas(IdVacuna),
    FOREIGN KEY (IdEsquema) REFERENCES EsquemaVacunas(IdEsquema)
);



