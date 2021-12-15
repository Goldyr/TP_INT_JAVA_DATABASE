USE `bd_sist_educativo`;

DELIMITER $$
create procedure sp_altaUsuario
(

IN DNI CHAR (8), 
IN NOMBRE CHAR (20),
IN APELLIDO CHAR (20),
IN FECHANAC DATE,
IN DIRECCION CHAR (20),
IN LOCALIDAD CHAR (20),
IN NACIONALIDAD CHAR (20),
IN EMAIL CHAR (30),
IN CONTRASEÑA CHAR(20),
IN TELEFONO CHAR (15)
)
BEGIN
INSERT INTO Usuarios (
                        DNI_Usuario, Nombre_Usuario, Apellido_Usuario,
                        FechaNac_Usuario,Direccion_Usuario, Localidad_Usuario,
                        Nacionalidad_Usuario, Email_Usuario, Contraseña_Usuario, Telefono_Usuario, Legajo_Usuario)
    VALUES (DNI,NOMBRE,APELLIDO,FECHANAC,DIRECCION,LOCALIDAD,NACIONALIDAD,EMAIL, CONTRASEÑA, TELEFONO, concat('Usu-', (Select count(us.Legajo_Usuario) from Usuarios as us)));
END $$
DELIMITER ; 


DELIMITER $$
create procedure sp_ModificarUsuario
(
IN LEGAJO VARCHAR(12),
IN DNI CHAR (8), 
IN NOMBRE CHAR (20),
IN APELLIDO CHAR (20),
IN FECHANAC DATE,
IN DIRECCION CHAR (20),
IN LOCALIDAD CHAR (20),
IN NACIONALIDAD CHAR (20),
IN EMAIL CHAR (30),
IN CONTRASEÑA CHAR(20),
IN TELEFONO CHAR (15)
)
BEGIN
update usuarios SET
DNI_Usuario= DNI,
Nombre_Usuario = NOMBRE,
Apellido_Usuario = APELLIDO,
FechaNac_Usuario = FECHANAC,
Direccion_Usuario = DIRECCION,
Localidad_Usuario = LOCALIDAD,
Nacionalidad_Usuario = NACIONALIDAD,
Email_Usuario = EMAIL,
Contraseña_Usuario = CONTRASEÑA,
Telefono_Usuario = TELEFONO
where Legajo_Usuario = LEGAJO;
END $$
DELIMITER ;



-- PROCEDIMIENTOS ALMACENADOS
-- ALTA DE ALUMNOS
DELIMITER $$
CREATE PROCEDURE sp_altaAlumno
(IN DNI CHAR(8),
IN Nombre CHAR(20),
IN Apellido CHAR(20),
IN FechaNac DATE,
IN Direccion CHAR(20),
IN Nacionalidad CHAR(20),
IN Provincia CHAR(20),
IN Email CHAR(30),
IN Telefono CHAR(15)
)
BEGIN
	INSERT INTO alumnos (DNI_Alumno, Nombre_Alumno, 
		Apellido_Alumno, FechaNac_Alumno, Direccion_Alumno, Nacionalidad_Alumno,Provincia_Alumno, Email_Alumno,
        Telefono_Alumno, Legajo_Alumno) 
	VALUES(DNI, Nombre, Apellido, FechaNac, Direccion, Nacionalidad,Provincia, Email, Telefono, (SELECT COUNT(al.Legajo_Alumno) + 1 FROM Alumnos as al));
END $$
DELIMITER ;



-- BAJA LOGICA DE ALUMNOS
DELIMITER $$
CREATE PROCEDURE sp_bajaAlumno
(
IN Legajo VARCHAR(12)
)
BEGIN 
UPDATE alumnos 
SET alumnos.Estado_Alumno = 0 WHERE Legajo_Alumno = Legajo;
END $$
DELIMITER ;

-- MODIFICAR ALUMNOS

-- MODIFICAR ALUMNOS
DELIMITER $$
CREATE PROCEDURE sp_modificarAlumno
(
IN DNI CHAR(8),
IN Nombre CHAR(20),
IN Apellido CHAR(20),
IN FechaNac DATE,
IN Direccion CHAR(20),
IN Nacionalidad CHAR(20),
IN Provincia CHAR(20),
IN Email CHAR(30),
IN Telefono CHAR(15),
IN Legajo VARCHAR(12)
)
BEGIN 
UPDATE alumnos
SET alumnos.DNI_Alumno = DNI,
alumnos.Nombre_Alumno = Nombre,
alumnos.FechaNac_Alumno = FechaNac,
alumnos.Direccion_Alumno = Direccion,
alumnos.Nacionalidad_Alumno = Nacionalidad,
alumnos.Provincia_Alumno = Provincia,
sp_altaProfesoralumnos.Email_Alumno = Email,
alumnos.Telefono_Alumno = Telefono
WHERE alumnos.Legajo_Alumno = Legajo;
END $$
DELIMITER ;


-- LISTAR ALUMNOS
DELIMITER $$
CREATE PROCEDURE sp_listarAlumnos()
BEGIN
	SELECT * FROM alumnos;
END $$
DELIMITER ;

-- ALTA DE CURSOS 
DELIMITER $$
CREATE PROCEDURE sp_altaCursos
(
IN CodMateria VARCHAR(12),
IN Semestre CHAR(20),
IN Año CHAR(4)
)
BEGIN 
INSERT INTO cursos(CodMateria_Curso, Semestre_Curso, Año_Curso, CodCurso_Curso)
	VALUES(CodMateria, Semestre, Año, CONCAT('Cur-', (SELECT COUNT(cu.CodCurso_Curso) + 1 FROM Cursos as cu)));
END $$
DELIMITER ;


-- LISTAR CURSOS
DELIMITER $$ 
CREATE PROCEDURE sp_listarCursos()
BEGIN
SELECT * FROM cursos;
END $$
DELIMITER ;

-- CREAR CURSOS X ALUMNOS
DELIMITER $$ 
CREATE PROCEDURE sp_altaCursosxAlumnos
(
IN Legajo_Alumno VARCHAR(12),
IN CodCurso VARCHAR(12)
)
BEGIN
call sp_altaNotas();
INSERT INTO cursosxalumnos (Legajo_Alumno_CxA, CodCurso_CxA, CodNotas_CxA)
    VALUES (Legajo_Alumno, CodCurso, CONCAT('not-', (SELECT COUNT(cu.CodNotas_Nota)  FROM notas as cu)));
END $$
DELIMITER ;

-- MODIFICAR CURSOS X ALUMNOS
DELIMITER $$ 
CREATE PROCEDURE sp_modificarCursosxAlumnos
(
IN Legajo_Alumno VARCHAR(12),
IN CodCurso VARCHAR(12),
IN CodNotas VARCHAR(12)
)
BEGIN
UPDATE cursosxalumnos
SET cursosxalumnos.CodNotas = CodNotas
WHERE cursosxalumnos.Legajo_Alumno = Legajo_Alumno AND cursosxalumnos.CodCurso = CodCurso;
END $$;
DELIMITER ;

-- LISTAR CURSOS X ALUMNOS
DELIMITER $$ 
CREATE PROCEDURE sp_listarCursosxAlumnos()
BEGIN
SELECT * FROM cursosxalumnos;
END $$
DELIMITER ;


-- LISTAR CURSOS X USUARIO
DELIMITER $$ 
CREATE PROCEDURE sp_listarCursosxUsuarios()
BEGIN
SELECT * FROM cursosxusuarios;
END $$
DELIMITER ;

DELIMITER $$
create procedure sp_altaProfesor
(

IN DNI CHAR (8), 
IN NOMBRE CHAR (20),
IN APELLIDO CHAR (20),
IN FECHANAC DATE,
IN DIRECCION CHAR (20),
IN LOCALIDAD CHAR (20),
IN NACIONALIDAD CHAR (20),
IN EMAIL CHAR (30),
IN CONTRASEÑA CHAR(20),
IN TELEFONO CHAR (15)
)
BEGIN
INSERT INTO Usuarios (
                        DNI_Usuario, Nombre_Usuario, Apellido_Usuario,
                        FechaNac_Usuario,Direccion_Usuario, Localidad_Usuario,
                        Nacionalidad_Usuario, Email_Usuario, Contraseña_Usuario, Telefono_Usuario, Legajo_Usuario, Admin_Usuario)
    VALUES (DNI,NOMBRE,APELLIDO,FECHANAC,DIRECCION,LOCALIDAD,NACIONALIDAD,EMAIL, CONTRASEÑA, TELEFONO, concat('Usu-', (Select count(us.Legajo_Usuario) + 1  from Usuarios as us)),0);
END $$
DELIMITER ;


DELIMITER $$ 
CREATE  PROCEDURE sp_bajaUsuario
(
IN LEGAJO VARCHAR(12)
)
BEGIN
UPDATE usuarios 
SET usuarios.Estado_Usuario = 0 WHERE Legajo_Usuario = LEGAJO;
END $$
DELIMITER ;

-- A -------------------------------------------------------------

-- LISTAR NOTAS X MATERIA X PROFESOR

DELIMITER $$ 
CREATE PROCEDURE sp_listarNotasMateriaxProfesor
(
IN LEGAJO_PROFESOR VARCHAR(12),
IN CODMATERIA VARCHAR(12)
)
BEGIN
SELECT n.codNotas_Nota, m.NombreMateria_Materia, a.Legajo_Alumno, Nombre_Alumno, a.Apellido_Alumno, a.Email_Alumno, n.Parcial_1_Nota, n.Parcial_2_Nota, 
        n.Recuperatorio_1_Nota, Recuperatorio_2_Nota, n.EstadoCursada_Nota FROM Notas AS n
INNER JOIN cursosxalumnos as cxa ON cxa.CodNotas_CxA = n.CodNotas_Nota
INNER JOIN alumnos as a ON a.Legajo_Alumno = cxa.Legajo_Alumno_CxA
INNER JOIN cursos as c ON c.CodCurso_Curso = cxa.CodCurso_CxA
INNER JOIN materias as m ON m.CodMateria_Materia = c.CodMateria_Curso
INNER JOIN cursosxusuarios AS cxu ON cxu.CodCurso_CxU = c.CodCurso_Curso
INNER JOIN usuarios u ON u.Legajo_Usuario = cxu.Legajo_Usuario_CxU
WHERE u.Legajo_Usuario = LEGAJO_PROFESOR AND m.CodMateria_Materia = CODMATERIA AND cxa.Estado_CxA = 1;
END $$
DELIMITER ;

-- C -------------------------------------------------------------
DELIMITER $$ 
CREATE PROCEDURE sp_modificarNotas
(
IN PARCIAL1 DECIMAL(8,2),
IN PARCIAL2 DECIMAL(8,2),
IN RECUP1 DECIMAL(8,2),
IN RECUP2 DECIMAL(8,2),
IN CODNOTA VARCHAR(16)
)
BEGIN
UPDATE Notas as n
SET 
    n.Parcial_1_Nota = PARCIAL1,
    n.Parcial_2_Nota = PARCIAL2,
    n.Recuperatorio_1_Nota = RECUP1,
    n.Recuperatorio_2_Nota = RECUP2
    WHERE 
        n.codNotas_Nota = CODNOTA;
END $$
DELIMITER ;

-- D -------------------------------------------------------------

DELIMITER $$ 
CREATE PROCEDURE sp_obtenerNotasxCodigo
(
IN CODNOTA VARCHAR(16)
)
BEGIN
SELECT n.codNotas_Nota, m.NombreMateria_Materia, a.Legajo_Alumno, Nombre_Alumno, a.Apellido_Alumno, a.Email_Alumno, n.Parcial_1_Nota, n.Parcial_2_Nota, 
        n.Recuperatorio_1_Nota, Recuperatorio_2_Nota, n.EstadoCursada_Nota FROM Notas as n
INNER JOIN cursosxalumnos as cxa ON cxa.CodNotas_CxA = n.CodNotas_Nota
INNER JOIN alumnos as a ON a.Legajo_Alumno = cxa.Legajo_Alumno_CxA
INNER JOIN cursos as c ON c.CodCurso_Curso = cxa.CodCurso_CxA
INNER JOIN materias as m ON m.CodMateria_Materia = c.CodMateria_Curso
WHERE n.CodNotas_Nota = CODNOTA;
END $$
DELIMITER ;



DELIMITER $$ 
create Procedure sp_altaNotas
(
)
BEGIN
INSERT INTO notas(CodNotas_Nota)
 values(CONCAT('not-', (SELECT COUNT(cu.CodNotas_Nota) + 1 FROM notas as cu)));
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE sp_modificarNotasCursosxAlumnos
(
IN Legajo_Alumno VARCHAR(12),
IN CodCurso VARCHAR(12),
IN Parcial1 DECIMAL(4,2), 
IN Parcial2 DECIMAL(4,2), 
IN Recup1 DECIMAL(4,2), 
IN Recup2 DECIMAL(4,2)
)
BEGIN
	UPDATE notas AS n
	INNER JOIN cursosxalumnos AS cxa ON cxa.CodNotas_CxA = n.CodNotas_Nota
	SET 
		n.Parcial_1_Nota = Parcial1,
		n.Parcial_2_Nota = Parcial2,
        n.Recuperatorio_1_Nota = Recup1,
        n.Recuperatorio_2_Nota = Recup2
	WHERE cxa.Legajo_Alumno_CxA = Legajo_Alumno AND cxa.CodCurso_CxA = CodCurso;
END$$
DELIMITER ;
