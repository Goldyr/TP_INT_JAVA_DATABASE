/* INSERTS PRUEBAS */
/**/

USE `bd_sist_educativo`;
/*MATERIAS*/
INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Laboratorio 1' , 'LAB01');
INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Laboratorio 2' , 'LAB02');
INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Laboratorio 3' , 'LAB03');
INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Laboratorio 4' , 'LAB04');

INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Programacion 1' , 'PROG01');
INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Programacion 2' , 'PROG02');
INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Programacion 3' , 'PROG03');

INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Ingles 1' , 'ING01');
INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Ingles 2' , 'ING02');

INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Base de datos' , 'BAS01');

INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Matematicas 1' , 'MAT01');
INSERT INTO bd_sist_educativo.Materias
(NombreMateria_Materia, CodMateria_Materia) Values ('Matematicas 2' , 'MAT02');

/* CURSOS*/
INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('1', 'LAB01','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('2','PROG01','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('3','PROG02','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('4','PROG03','Primer Semestre', '2021');


INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('5','BAS01','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('6','ING01','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('7','ING02','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('8','LAB02','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('9','LAB03','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('10','LAB04','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('11','MAT01','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('12','MAT02','Primer Semestre', '2021');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('13','LAB01','Segundo Semestre', '2020');

INSERT INTO bd_sist_educativo.Cursos
(CodCurso_Curso, CodMateria_Curso, Semestre_Curso, Año_Curso) Values ('14','ING02','Segundo Semestre', '2020');

/*un par de cursos ya realizados*/
UPDATE Cursos as c SET c.Estado_Curso = 0 WHERE c.CodCurso_Curso = '13' or c.CodCurso_Curso = '14';

/*Admins*/
INSERT INTO bd_sist_educativo.Usuarios
(Legajo_Usuario, Contraseña_Usuario ,DNI_Usuario,Nombre_Usuario,Apellido_Usuario,FechaNac_Usuario,Direccion_Usuario,Nacionalidad_Usuario,Email_Usuario,Telefono_Usuario,Estado_Usuario,Admin_Usuario)
VALUES ('12345','admin','45645676','admin','nimda','2000-07-10','Calle 123', 'Argentino','admin', '8678656', 1, 1);

/*Profes*/
/**/
INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov1', 'Buenos Aires');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov2', 'Catamarca');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov3', 'Chaco');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov4', 'Chubut');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov5', 'Córdoba');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov6', 'Corrientes');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov7', 'Entre Ríos');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov8', 'Formosa');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov9', 'Jujuy');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov10', 'La Pampa');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov11', 'La Rioja');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov12', 'Mendoza');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov13', 'Misiones');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov14', 'Neuquén');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov15', 'Río Negro');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov16', 'Salta');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov17', 'San Juan');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov18', 'San Luis');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov19', 'Santa Cruz');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov20', 'Santa Fe');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov21', 'Santiago del Estero');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov22', 'Tierra del Fuego');

INSERT INTO bd_sist_educativo.Provincias
(IdProv_Provincias, Descripcion_Provincias) VALUES ('Prov23', 'Tucumán');

/*PROFESORES*/

INSERT INTO bd_sist_educativo.Usuarios
(Legajo_Usuario, Contraseña_Usuario ,DNI_Usuario,Nombre_Usuario,Apellido_Usuario,FechaNac_Usuario,Direccion_Usuario,Nacionalidad_Usuario,Email_Usuario,Telefono_Usuario,Estado_Usuario,Admin_Usuario)
VALUES ('Usu-2','profe1','41244141','Sergio','Armado','2000-07-10','Avellaneda', 'Argentino','sermail@email.com', '42133456', 1, 0);

INSERT INTO bd_sist_educativo.Usuarios
(Legajo_Usuario, Contraseña_Usuario ,DNI_Usuario,Nombre_Usuario,Apellido_Usuario,FechaNac_Usuario,Direccion_Usuario,Nacionalidad_Usuario,Email_Usuario,Telefono_Usuario,Estado_Usuario,Admin_Usuario)
VALUES ('Usu-3','contra','45430943','Matias','Flori','1988-02-10','Alem', 'Argentino','matymail@gmail.com', '45553421', 1, 0);

INSERT INTO bd_sist_educativo.Usuarios
(Legajo_Usuario, Contraseña_Usuario ,DNI_Usuario,Nombre_Usuario,Apellido_Usuario,FechaNac_Usuario,Direccion_Usuario,Nacionalidad_Usuario,Email_Usuario,Telefono_Usuario,Estado_Usuario,Admin_Usuario)
VALUES ('Usu-4','pass','42144234','Facundo','Rivas','1999-09-05','Constitucion', 'Argentino','facumail@gmail.com', '34246048', 1, 0);

INSERT INTO bd_sist_educativo.Usuarios
(Legajo_Usuario, Contraseña_Usuario ,DNI_Usuario,Nombre_Usuario,Apellido_Usuario,FechaNac_Usuario,Direccion_Usuario,Nacionalidad_Usuario,Email_Usuario,Telefono_Usuario,Estado_Usuario,Admin_Usuario)
VALUES ('Usu-5','3456','43363212','Enzo','Bogado','1999-11-12','9 de julio', 'Argentino','enzomail@gmail.com', '34932323', 1, 0);

INSERT INTO bd_sist_educativo.Usuarios
(Legajo_Usuario, Contraseña_Usuario ,DNI_Usuario,Nombre_Usuario,Apellido_Usuario,FechaNac_Usuario,Direccion_Usuario,Nacionalidad_Usuario,Email_Usuario,Telefono_Usuario,Estado_Usuario,Admin_Usuario)
VALUES ('Usu-6','78910','42341232','Sebas','Buelga','1995-04-01','San Martin', 'Argentino','sebamail@gmail.com', '35431235', 1, 0);

INSERT INTO bd_sist_educativo.Usuarios
(Legajo_Usuario, Contraseña_Usuario ,DNI_Usuario,Nombre_Usuario,Apellido_Usuario,FechaNac_Usuario,Direccion_Usuario,Nacionalidad_Usuario,Email_Usuario,Telefono_Usuario,Estado_Usuario,Admin_Usuario)
VALUES ('Usu-7','baja','54321232','Profe','Baja','1930-07-01','Lavalle', 'Argentino','baja@gmail.com', '54231235', 0, 0);

/*CursosxUsuarios also known as CursoxProfe*/


INSERT INTO bd_sist_educativo.CursosxUsuarios
(Legajo_Usuario_CxU, CodCurso_CxU)
VALUES('Usu-2','11');

INSERT INTO bd_sist_educativo.CursosxUsuarios
(Legajo_Usuario_CxU, CodCurso_CxU)
VALUES('Usu-2','1');

INSERT INTO bd_sist_educativo.CursosxUsuarios
(Legajo_Usuario_CxU, CodCurso_CxU)
VALUES('Usu-3','12');

INSERT INTO bd_sist_educativo.CursosxUsuarios
(Legajo_Usuario_CxU, CodCurso_CxU)
VALUES('Usu-3','5' );

INSERT INTO bd_sist_educativo.CursosxUsuarios
(Legajo_Usuario_CxU, CodCurso_CxU)
VALUES('Usu-4','2');



INSERT INTO bd_sist_educativo.CursosxUsuarios
(Legajo_Usuario_CxU, CodCurso_CxU)
VALUES('Usu-5','8');

INSERT INTO bd_sist_educativo.CursosxUsuarios
(Legajo_Usuario_CxU, CodCurso_CxU)
VALUES('Usu-6','10');

INSERT INTO bd_sist_educativo.CursosxUsuarios
(Legajo_Usuario_CxU, CodCurso_CxU)
VALUES('Usu-6','6' );



/*
INSERT DE ALUMNOS
*/

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('1',44234324,'Ulises','Tamayo','2003-04-10','Platense 234','Uruguayo','uliuru@gmail.com','112323444', 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('2',41233442,'Octavia','Iñiguez','2001-02-11','Perito 3211','Argentino','octini@gmail.com','345423332', 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('3',45971323,'Santos','Nogueira','2000-04-15','Junin 4234','Argentino','junialo@gmail.com','114531233', 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('4',45645323,'Martin','Rodriguez','1997-02-09','Cordoba 2334','Chileno','fanmet32@gmail.com','1133231576', 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('5',45474641,'Viviana','Tandil','1998-04-02','Uruguay 2424','Argentino','vivi@gmail.com','1147528467', 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('6',40776565,'Rodrigo','Amiya','2001-06-01','Alem 1534','Argentino','fsaf@gmail.com','1153523217', 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('7',43241365,'Manuel','Andres','2002-08-12','25 de mayo','Argentino','ftreqw@gmail.com','1113243217', 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('8',42323232,'Miguel','Angel','1999-08-12','Constitucion 3000','Argentino','arg324@gmail.com','1142343217', 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('9',40093232,'Reinaldo','Gonzales','2002-08-12','Las heras 4243','Argentino','hades534@gmail.com','43321323', 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('10',49873232,'Arnoldo','Miguel','1997-01-01','Entre Rios 4243','Argentino','Asdf234@gmail.com','114233339', 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('11',48978789,'Nicolas','Cornejo','2000-08-12','Sarmiento 1232','Argentino','draco30@gmail.com','1134343223', 1);

INSERT INTO bd_sist_educativo.Alumnos
(Legajo_Alumno,DNI_Alumno,Nombre_Alumno,Apellido_Alumno,FechaNac_Alumno,Direccion_Alumno, Nacionalidad_Alumno,Email_Alumno,Telefono_Alumno,Estado_Alumno)
VALUES ('12',42223333,'Hugo','Couto','1995-08-12','Mosconi 5422','Argentino','andel34@gmail.com','1139333212', 1);


-- LOCALIDADES
INSERT INTO bd_sist_educativo.Localidades
(IdLoc_Localidades, IdProv_Localidades, Descripcion_Localidades) VALUES ('Loc1', 'Prov1', 'Tigre');

INSERT INTO bd_sist_educativo.Localidades
(IdLoc_Localidades, IdProv_Localidades, Descripcion_Localidades) VALUES ('Loc2', 'Prov1', 'San Fernando');

INSERT INTO bd_sist_educativo.Localidades
(IdLoc_Localidades, IdProv_Localidades, Descripcion_Localidades) VALUES ('Loc3', 'Prov1', 'Pacheco');

INSERT INTO bd_sist_educativo.Localidades
(IdLoc_Localidades, IdProv_Localidades, Descripcion_Localidades) VALUES ('Loc4', 'Prov1', 'Vicente Lopez');

INSERT INTO bd_sist_educativo.Localidades
(IdLoc_Localidades, IdProv_Localidades, Descripcion_Localidades) VALUES ('Loc5', 'Prov1', 'San Martin');

INSERT INTO bd_sist_educativo.Localidades
(IdLoc_Localidades, IdProv_Localidades, Descripcion_Localidades) VALUES ('Loc6', 'Prov1', 'Avellaneda');

INSERT INTO bd_sist_educativo.Localidades
(IdLoc_Localidades, IdProv_Localidades, Descripcion_Localidades) VALUES ('Loc7', 'Prov1', 'San Isidro');
select * from Materias;
-- Alumnos x Cursos
call sp_altaCursosxAlumnos('1','1');
call sp_altaCursosxAlumnos('1','2');
call sp_altaCursosxAlumnos('1','6');
call sp_altaCursosxAlumnos('1','11');

call sp_altaCursosxAlumnos('2','1');
call sp_altaCursosxAlumnos('2','2');
call sp_altaCursosxAlumnos('2','6');
call sp_altaCursosxAlumnos('2','11');

call sp_altaCursosxAlumnos('3','14');
call sp_altaCursosxAlumnos('3','12');
call sp_altaCursosxAlumnos('3','3');
call sp_altaCursosxAlumnos('3','5');

call sp_altaCursosxAlumnos('4','14');
call sp_altaCursosxAlumnos('4','12');
call sp_altaCursosxAlumnos('4','3');
call sp_altaCursosxAlumnos('4','5');

call sp_altaCursosxAlumnos('5','5');
call sp_altaCursosxAlumnos('5','7');
call sp_altaCursosxAlumnos('5','4');

call sp_altaCursosxAlumnos('6','5');
call sp_altaCursosxAlumnos('6','7');
call sp_altaCursosxAlumnos('6','4');
call sp_altaCursosxAlumnos('6','13');
call sp_altaCursosxAlumnos('6','9');
call sp_altaCursosxAlumnos('6','12');

call sp_altaCursosxAlumnos('7','1');
call sp_altaCursosxAlumnos('7','2');
call sp_altaCursosxAlumnos('7','6');
call sp_altaCursosxAlumnos('7','11');

call sp_altaCursosxAlumnos('8','4');
call sp_altaCursosxAlumnos('8','5');
call sp_altaCursosxAlumnos('8','7');
call sp_altaCursosxAlumnos('8','9');

call sp_altaCursosxAlumnos('9','4');
call sp_altaCursosxAlumnos('9','5');
call sp_altaCursosxAlumnos('9','14');
call sp_altaCursosxAlumnos('9','11');

call sp_altaCursosxAlumnos('10','4');
call sp_altaCursosxAlumnos('10','5');
call sp_altaCursosxAlumnos('10','14');
call sp_altaCursosxAlumnos('10','11');

call sp_altaCursosxAlumnos('11','1');
call sp_altaCursosxAlumnos('11','2');
call sp_altaCursosxAlumnos('11','6');
call sp_altaCursosxAlumnos('11','11');

call sp_altaCursosxAlumnos('12','1');
call sp_altaCursosxAlumnos('12','2');
call sp_altaCursosxAlumnos('12','6');
call sp_altaCursosxAlumnos('12','11');





/*FIX PARA EL Listado en inicioprofe capaz ya esta en el main 
SELECT CodMateria_Materia, NombreMateria_Materia FROM Materias AS MAT 
             INNER JOIN Cursos AS CUR ON MAT.CodMateria_Materia = CUR.CodMateria_Curso 
             INNER JOIN CursosxUsuarios AS CURXU ON CURXU.CodCurso_CxU = CUR.CodCurso_Curso 
             INNER JOIN Usuarios AS US ON US.Legajo_Usuario = CURXU.Legajo_Usuario_CxU
             WHERE CUR.Estado_Curso = 1 AND US.Legajo_Usuario = 'Usu-2';
             */
             






