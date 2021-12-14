CREATE DATABASE BD_Sist_Educativo;
USE `bd_sist_educativo`;

CREATE TABLE Materias(
CodMateria_Materia VARCHAR(12) NOT NULL,
NombreMateria_Materia char(15) NOT NULL,
PRIMARY KEY (CodMateria_Materia)) ;
;

CREATE TABLE Cursos(
CodCurso_Curso VARCHAR(12)  NOT NULL,
CodMateria_Curso VARCHAR(12) NOT NULL,
Semestre_Curso char(20) NOT NULL,
Año_Curso char(4) NOT NULL,
Estado_Curso bool NOT NULL DEFAULT 1,

FOREIGN KEY (CodMateria_Curso) REFERENCES Materias(CodMateria_Materia),
PRIMARY KEY (CodCurso_Curso));
;

CREATE TABLE Usuarios(
Legajo_Usuario VARCHAR(12) NOT NULL,
DNI_Usuario char (8) UNIQUE NOT NULL,
Nombre_Usuario char(20) NOT NULL,
Apellido_Usuario char(20) NOT NULL,
Contraseña_Usuario char(20) UNIQUE NOT NULL,
FechaNac_Usuario date NULL,
Direccion_Usuario char(20) NULL,
Localidad_Usuario char(20) NULL,
Nacionalidad_Usuario char(20) NULL,
Email_Usuario char(30) UNIQUE NOT NULL,
Telefono_Usuario char(15) NOT NULL,
Estado_Usuario bool NOT NULL DEFAULT 1,
Admin_Usuario bool NOT NULL DEFAULT 0,
PRIMARY KEY (Legajo_Usuario)
);


CREATE TABLE CursosxUsuarios(
Legajo_Usuario_CxU VARCHAR(12) NOT NULL,
CodCurso_CxU VARCHAR(12) NOT NULL,
FOREIGN KEY (CodCurso_CxU) REFERENCES Cursos(CodCurso_Curso),
FOREIGN KEY (Legajo_Usuario_CxU) REFERENCES Usuarios(Legajo_Usuario),
PRIMARY KEY (Legajo_Usuario_CxU, CodCurso_CxU)
);



CREATE TABLE Alumnos(
Legajo_Alumno VARCHAR(12) NOT NULL,
DNI_Alumno char (8) UNIQUE NOT NULL,
Nombre_Alumno char(20) NOT NULL,
Apellido_Alumno char(20) NOT NULL,
FechaNac_Alumno date NULL,
Direccion_Alumno char(20) NULL,
Nacionalidad_Alumno char(20) NULL,
Provincia_Alumno char(20) NULL,
Email_Alumno char(30) UNIQUE NOT NULL,
Telefono_Alumno char(15) NOT NULL,
Estado_Alumno bool NOT NULL DEFAULT 1,
PRIMARY KEY (Legajo_Alumno)
);


CREATE TABLE Notas(
CodNotas_Nota VARCHAR(12) NOT NULL,
Parcial_1_Nota DECIMAL(4,2)  NULL,
Parcial_2_Nota DECIMAL(4,2)  NULL,
Recuperatorio_1_Nota DECIMAL(4,2) NULL,
Recuperatorio_2_Nota DECIMAL(4,2) NULL,
EstadoCursada_Nota VARCHAR(12) NULL,
PRIMARY KEY (CodNotas_Nota) 
);




CREATE TABLE CursosxAlumnos(
Legajo_Alumno_CxA VARCHAR(12) NOT NULL,
CodCurso_CxA VARCHAR(12) NOT NULL,
CodNotas_CxA VARCHAR(12) NOT NULL,
Estado_CxA bool NOT NULL DEFAULT 1,
FOREIGN KEY (CodNotas_CxA) REFERENCES Notas(CodNotas_Nota),
FOREIGN KEY (CodCurso_CxA) REFERENCES Cursos(CodCurso_Curso),
FOREIGN KEY (Legajo_Alumno_CxA) REFERENCES Alumnos(Legajo_Alumno),
PRIMARY KEY (Legajo_Alumno_CxA, CodCurso_CxA)
);

CREATE TABLE Provincias(
IdProv_Provincias VARCHAR(6) NOT NULL,
Descripcion_Provincias VARCHAR(30) NOT NULL,

PRIMARY KEY (IdProv_Provincias)
);

CREATE TABLE Localidades(
IdLoc_Localidades VARCHAR(8) NOT NULL,
IdProv_Localidades VARCHAR(6) NOT NULL,
Descripcion_Localidades VARCHAR(30) NOT NULL,

PRIMARY KEY (IdLoc_Localidades),
FOREIGN KEY (IdProv_Localidades) REFERENCES Provincias(IdProv_Provincias)
);




