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

-- ALTER TABLE ALUMNOS
-- ALTER COLUMN Legajo_Alumno INT DEFAULT 2400

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
Parcial_1_Nota DECIMAL(4,2) NOT NULL,
Parcial_2_Nota DECIMAL(4,2) NOT NULL,
Recuperatorio_1_Nota DECIMAL(4,2) NULL,
Recuperatorio_2_Nota DECIMAL(4,2) NULL,
EstadoCursada_Nota VARCHAR(12) NULL,
PRIMARY KEY (CodNotas_Nota) 
);

-- ALTER TABLE CursosxAlumnos
--  COLUMN Legajo_Alumno INT

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


/* INSERTS PRUEBAS */
/**/
INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Laboratorio 4' , 'LAB01');

INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Programacion 3' , 'PROG02');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('1', 'LAB01','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('2','PROG02','Primer Semestre', '2021');

/*Admins*/
INSERT INTO bd_sist_educativo.Usuarios
(Legajo_Usuario, Contraseña_Usuario ,DNI_Usuario,Nombre_Usuario,Apellido_Usuario,FechaNac_Usuario,Direccion_Usuario,Nacionalidad_Usuario,Email_Usuario,Telefono_Usuario,Estado_Usuario,Admin_Usuario)
VALUES ('12345','admin1','45645676','Enzo','Abogado','2000-07-10','Porahi 123', 'Argentino','enzokapo@email.com', '8678656', 1, 1);

/*Profes*/

INSERT INTO bd_sist_educativo.Usuarios
(Legajo_Usuario, Contraseña_Usuario ,DNI_Usuario,Nombre_Usuario,Apellido_Usuario,FechaNac_Usuario,Direccion_Usuario,Nacionalidad_Usuario,Email_Usuario,Telefono_Usuario,Estado_Usuario,Admin_Usuario)
VALUES ('54321','profe1','4124141','Ser','Armado','2000-07-10','Dire', 'Nacio','sermail@email.com', '4213456', 1, 0);


/*Also known as CursoxProfe*/
INSERT INTO bd_sist_educativo.CursosxUsuarios
(Legajo_Usuario_CxU, CodCurso_CxU)
VALUES('54321' , 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('654321',41234567,'Seba','Abuelga','2000-01-05','Alla 321','Argentino','sbakpo@email.com','123212323', 1);

INSERT INTO bd_sist_educativo.Notas
(CodNotas_Nota, Parcial_1_Nota , Parcial_2_Nota, EstadoCursada_Nota)
VALUES(1 ,8 , 8, 'REGULAR');

INSERT INTO bd_sist_educativo.CursosxAlumnos
(Legajo_Alumno_CxA, CodCurso_CxA, CodNotas_CxA, Estado_CxA)
VALUES('654321' , 1, 1, 1);

/* SELECT PRUEBAS */
SELECT C.*, M.NombreMateria_Materia FROM Cursos AS C
INNER JOIN Materias AS M
WHERE C.CodMateria_Curso = M.CodMateria_Materia;


SELECT * FROM Usuarios where Usuarios.Estado_Usuario=1 and Usuarios.Contraseña_Usuario='admin1' and Usuarios.Email_Usuario='enzokapo@email.com';
SELECT * FROM Usuarios where Estado_Usuario=1 and Contraseña_Usuario='admin1' and Usuarios.Email_Usuario='enzokapo@email.com';

SELECT * FROM Usuarios;
SELECT * FROM Materias;
SELECT * FROM Cursos;
SELECT * FROM CursosxUsuarios;
SELECT * FROM Alumnos;
SELECT * FROM CursosxAlumnos;
SELECT * FROM Notas;

