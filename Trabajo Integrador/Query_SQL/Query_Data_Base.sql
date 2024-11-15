CREATE TABLE profesores (
    id_profesor INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    especialidad VARCHAR(100)
);

CREATE TABLE curso (
    id_curso INT PRIMARY KEY,
    nombre VARCHAR(100),
    codigo VARCHAR(10),
    creditos INT,
    departamento VARCHAR(100),
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor)
);

CREATE TABLE estudiante (
    id_estudiante INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    fecha_nacimiento DATE,
    direccion VARCHAR(255)
);

CREATE TABLE horarios (
    id_horario INT PRIMARY KEY,
    id_curso INT,
    dia_semana varchar(50),
    hora_inicio TIME,
    hora_fin TIME,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

CREATE TABLE inscripcion (
    id_inscripcion INT PRIMARY KEY,
    id_estudiante INT,
    id_curso INT,
    semestre VARCHAR(100),
    año VARCHAR(4),
    FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

select 
	*
from
	estudiante

INSERT INTO profesores (id_profesor, nombre, apellido, especialidad) VALUES
(1, 'Juan', 'Pérez', 'Matemáticas'),
(2, 'Ana', 'Gómez', 'Física'),
(3, 'Carlos', 'López', 'Química'),
(4, 'Laura', 'Martínez', 'Biología'),
(5, 'José', 'Rodríguez', 'Historia'),
(6, 'Sofía', 'Díaz', 'Literatura'),
(7, 'Pedro', 'Sánchez', 'Geografía'),
(8, 'Elena', 'Jiménez', 'Arte'),
(9, 'Diego', 'Fernández', 'Inglés'),
(10, 'María', 'Vega', 'Educación Física');



INSERT INTO curso (id_curso, nombre, codigo, creditos, departamento, id_profesor) VALUES
(1, 'Matemáticas Básicas', 'MAT101', 3, 'Matemáticas', 1),
(2, 'Física I', 'FIS101', 4, 'Física', 2),
(3, 'Química General', 'QUI101', 3, 'Química', 3),
(4, 'Programación en C', 'PROG101', 3, 'Informática', 4),
(5, 'Estructuras de Datos', 'ED101', 4, 'Informática', 5),
(6, 'Historia Universal', 'HIS101', 3, 'Humanidades', 6),
(7, 'Literatura Inglesa', 'LIT101', 3, 'Literatura', 7),
(8, 'Contabilidad Financiera', 'CON101', 4, 'Contabilidad', 8),
(9, 'Derecho Constitucional', 'DERE101', 3, 'Derecho', 9),
(10, 'Anatomía Humana', 'ANA101', 4, 'Medicina', 10);

-- Inserción de datos en la tabla estudiante
INSERT INTO estudiante (id_estudiante, nombre, apellido, fecha_nacimiento, direccion) VALUES
(1, 'Juan', 'Pérez', '1995-02-15', 'Calle Falsa 123'),
(2, 'Ana', 'González', '2000-03-20', 'Av. Libertad 456'),
(3, 'Carlos', 'López', '1992-06-30', 'Calle Mayor 789'),
(4, 'Laura', 'Martínez', '1997-11-10', 'Calle del Sol 321'),
(5, 'Pedro', 'Rodríguez', '1994-01-25', 'Calle Secundaria 654'),
(6, 'Sofía', 'García', '2001-05-14', 'Calle Larga 987'),
(7, 'Miguel', 'Sánchez', '1996-09-04', 'Calle Nueva 135'),
(8, 'María', 'Vásquez', '1999-12-01', 'Calle Real 246'),
(9, 'José', 'Hernández', '2002-07-19', 'Calle del Río 369'),
(10, 'Patricia', 'Fernández', '1990-04-23', 'Calle Central 741'),
(11, 'Luis', 'Pérez', '1995-10-02', 'Calle Olivo 852'),
(12, 'Carmen', 'Ramírez', '2003-01-17', 'Calle del Prado 963'),
(13, 'Antonio', 'Torres', '1998-08-29', 'Calle del Mar 159'),
(14, 'Raquel', 'Luna', '1994-12-10', 'Calle la Estrella 753'),
(15, 'David', 'Mendoza', '2001-03-05', 'Calle de la Luna 852'),
(16, 'Sandra', 'Pérez', '1997-06-28', 'Calle Girasol 246'),
(17, 'Roberto', 'Ramírez', '2000-09-11', 'Calle San José 147'),
(18, 'Eva', 'Sánchez', '1996-11-13', 'Calle del Campo 963'),
(19, 'Andrés', 'Vega', '2002-04-21', 'Calle Madrid 852'),
(20, 'Esther', 'Castillo', '1991-07-09', 'Calle Granada 741'),
(21, 'Javier', 'Blanco', '1993-10-18', 'Calle de los Árboles 258'),
(22, 'Alba', 'Serrano', '1998-01-14', 'Calle Sevilla 357'),
(23, 'Fernando', 'Martín', '2000-06-22', 'Calle Alhambra 468'),
(24, 'Marcos', 'Gómez', '1995-05-02', 'Calle Mayor 579'),
(25, 'Silvia', 'Moreno', '2003-08-13', 'Calle Cielo 681'),
(26, 'Adriana', 'Vázquez', '1992-12-03', 'Calle Sol 791'),
(27, 'Felipe', 'Díaz', '1999-02-19', 'Calle Pez 890'),
(28, 'Lucía', 'Paredes', '2001-04-10', 'Calle Francia 900'),
(29, 'Ricardo', 'Serrano', '1994-10-30', 'Calle Córdoba 113'),
(30, 'Beatriz', 'González', '1997-01-22', 'Calle del Viento 724'),
(31, 'Isabel', 'Ruiz', '2002-03-28', 'Calle Puente 821'),
(32, 'Daniel', 'Fernández', '1991-08-09', 'Calle Mayor 932'),
(33, 'Antonio', 'López', '2003-09-16', 'Calle de los Pinos 104'),
(34, 'Lourdes', 'Torres', '1995-05-28', 'Calle París 206'),
(35, 'Juan Carlos', 'Martínez', '1998-11-14', 'Calle del Sol 317'),
(36, 'Marta', 'Hernández', '1999-03-21', 'Calle Granada 410'),
(37, 'José Luis', 'Sánchez', '1997-06-19', 'Calle Don Quijote 523'),
(38, 'Antonio', 'García', '1994-07-08', 'Calle de la Paz 634'),
(39, 'Raúl', 'Méndez', '2002-12-01', 'Calle Madrid 745'),
(40, 'Ana María', 'López', '1995-01-17', 'Calle Luna 856'),
(41, 'José Antonio', 'Ramírez', '1996-11-01', 'Calle Castilla 967'),
(42, 'María José', 'González', '2000-09-25', 'Calle Las Palmas 158'),
(43, 'Manuel', 'Blanco', '1998-02-05', 'Calle Ceres 258'),
(44, 'Clara', 'Mendoza', '2003-04-23', 'Calle Sol 369'),
(45, 'Cecilia', 'Moreno', '1994-12-01', 'Calle Mar 478'),
(46, 'Patricia', 'Vega', '1997-09-10', 'Calle Sevilla 589'),
(47, 'Carlos', 'Torres', '2000-01-20', 'Calle Trébol 690'),
(48, 'Jorge', 'Vásquez', '1993-10-12', 'Calle Real 801'),
(49, 'Raquel', 'García', '1996-07-17', 'Calle Príncipe 912'),
(50, 'Alberto', 'Méndez', '2001-02-14', 'Calle Vitoria 123'),
(51, 'Berta', 'Ruiz', '1992-11-23', 'Calle Marbella 234'),
(52, 'Manuel', 'Serrano', '1995-01-14', 'Calle Cervantes 345'),
(53, 'Victoria', 'Hernández', '2000-09-28', 'Calle de la Estación 456'),
(54, 'Eva', 'Sánchez', '1994-12-10', 'Calle La Palma 567'),
(55, 'María Isabel', 'Rodríguez', '2001-11-16', 'Calle de la Sierra 678'),
(56, 'Fabiola', 'Sánchez', '1996-04-12', 'Calle Nueva 789'),
(57, 'César', 'López', '1997-06-05', 'Calle Avellaneda 890'),
(58, 'Antonio', 'Vega', '1999-12-02', 'Calle Miraflor 901'),
(59, 'Elena', 'Torres', '1993-10-09', 'Calle Cobre 123'),
(60, 'José Luis', 'Vásquez', '2000-04-29', 'Calle Libertad 234'),
(61, 'Salvador', 'Pérez', '1995-03-17', 'Calle de las Flores 345'),
(62, 'Raúl', 'López', '1998-07-04', 'Calle San Juan 456'),
(63, 'Nadia', 'Martín', '2002-01-12', 'Calle Sagrada 567'),
(64, 'Raquel', 'González', '1997-02-22', 'Calle Peñalara 678'),
(65, 'Oscar', 'Ruiz', '1995-09-06', 'Calle de la Rambla 789'),
(66, 'Ana', 'González', '1994-03-03', 'Calle Torre 890'),
(67, 'Carlos', 'Vega', '2001-05-07', 'Calle Granada 901'),
(68, 'Natalia', 'Ramírez', '1996-12-21', 'Calle Lima 123'),
(69, 'Mónica', 'Sánchez', '2003-02-05', 'Calle de la Nieve 234'),
(70, 'José', 'Gómez', '1992-06-11', 'Calle Marfil 345'),
(71, 'Ramón', 'Torres', '1995-04-17', 'Calle Azul 456'),
(72, 'Silvia', 'Ramírez', '2000-11-09', 'Calle Cielo 567'),
(73, 'Fernando', 'López', '2003-09-15', 'Calle Dorada 678'),
(74, 'Jesús', 'Serrano', '1993-01-23', 'Calle Fénix 789'),
(75, 'David', 'Vázquez', '1996-10-14', 'Calle Este 890'),
(76, 'Estefanía', 'Martínez', '2001-04-04', 'Calle Xaloc 901'),
(77, 'Clara', 'Hernández', '1994-05-26', 'Calle Acantilado 123'),
(78, 'David', 'Blanco', '2000-02-17', 'Calle Jardín 234'),
(79, 'María', 'Gómez', '1998-06-14', 'Calle Montaña 345'),
(80, 'Luis', 'Ramírez', '2002-07-02', 'Calle Lirio 456'),
(81, 'Sara', 'Vega', '1996-09-18', 'Calle Encina 567'),
(82, 'Juan', 'López', '1995-02-08', 'Calle Sombra 678'),
(83, 'Ricardo', 'González', '2000-05-15', 'Calle Encantada 789'),
(84, 'Sonia', 'Martín', '1993-03-30', 'Calle Calma 890'),
(85, 'José Carlos', 'García', '2003-08-25', 'Calle Fuente 901'),
(86, 'Esteban', 'Vásquez', '1999-05-29', 'Calle Lago 123'),
(87, 'Irene', 'Pérez', '1992-10-05', 'Calle Limón 234'),
(88, 'Pablo', 'Sánchez', '1998-01-28', 'Calle Aceituna 345'),
(89, 'Beatriz', 'Vega', '2000-11-11', 'Calle Marisol 456'),
(90, 'Carlos', 'Martínez', '2001-08-17', 'Calle Alcarraza 567'),
(91, 'Marta', 'Vásquez', '1996-07-01', 'Calle León 678'),
(92, 'Jesús', 'García', '1995-10-25', 'Calle Palmera 789'),
(93, 'Antonio', 'Moreno', '2000-12-09', 'Calle Santa Ana 890'),
(94, 'Alfredo', 'Sánchez', '1997-03-24', 'Calle Ríos 901'),
(95, 'Beatriz', 'López', '1998-04-22', 'Calle del Sur 123'),
(96, 'Rubén', 'Ramírez', '2001-01-07', 'Calle Laurel 234'),
(97, 'Patricia', 'Blanco', '2002-09-28', 'Calle Zapata 345'),
(98, 'Tomás', 'Serrano', '1996-06-09', 'Calle del Rocío 456'),
(99, 'Alba', 'González', '1995-03-22', 'Calle Primavera 567'),
(100, 'Adriana', 'Vega', '1994-04-11', 'Calle Limón 678');

-- Inserción de datos en la tabla horarios
-- Inserción de horarios
INSERT INTO horarios (id_horario, id_curso, dia_semana, hora_inicio, hora_fin) VALUES
(1, 1, 'Lunes', '08:00', '12:00'),
(2, 2, 'Martes', '09:00', '13:00'),
(3, 3, 'Miércoles', '10:00', '14:00'),
(4, 4, 'Jueves', '11:00', '15:00'),
(5, 5, 'Viernes', '12:00', '16:00'),
(6, 6, 'Lunes', '14:00', '18:00'),
(7, 7, 'Martes', '15:00', '19:00'),
(8, 8, 'Miércoles', '16:00', '20:00'),
(9, 9, 'Jueves', '17:00', '21:00'),
(10, 10, 'Viernes', '18:00', '22:00'),
(11, 1, 'Lunes', '08:00', '12:00'),
(12, 2, 'Martes', '09:00', '13:00'),
(13, 3, 'Miércoles', '10:00', '14:00'),
(14, 4, 'Jueves', '11:00', '15:00'),
(15, 5, 'Viernes', '12:00', '16:00'),
(16, 6, 'Lunes', '14:00', '18:00'),
(17, 7, 'Martes', '15:00', '19:00'),
(18, 8, 'Miércoles', '16:00', '20:00'),
(19, 9, 'Jueves', '17:00', '21:00'),
(20, 10, 'Viernes', '18:00', '22:00'),
(21, 1, 'Lunes', '08:00', '12:00'),
(22, 2, 'Martes', '09:00', '13:00'),
(23, 3, 'Miércoles', '10:00', '14:00'),
(24, 4, 'Jueves', '11:00', '15:00'),
(25, 5, 'Viernes', '12:00', '16:00');


INSERT INTO inscripcion (id_inscripcion, id_estudiante, id_curso, semestre, año) VALUES
(1, 1, 1, '2024-1', '2024'),
(2, 2, 2, '2024-1', '2024'),
(3, 3, 3, '2024-1', '2024'),
(4, 4, 4, '2024-1', '2024'),
(5, 5, 5, '2024-1', '2024'),
(6, 6, 6, '2024-1', '2024'),
(7, 7, 7, '2024-1', '2024'),
(8, 8, 8, '2024-1', '2024'),
(9, 9, 9, '2024-1', '2024'),
(10, 10, 10, '2024-1', '2024'),
(11, 11, 1, '2024-2', '2024'),
(12, 12, 2, '2024-2', '2024'),
(13, 13, 3, '2024-2', '2024'),
(14, 14, 4, '2024-2', '2024'),
(15, 15, 5, '2024-2', '2024'),
(16, 16, 6, '2024-2', '2024'),
(17, 17, 7, '2024-2', '2024'),
(18, 18, 8, '2024-2', '2024'),
(19, 19, 9, '2024-2', '2024'),
(20, 20, 10, '2024-2', '2024'),
(21, 21, 1, '2024-1', '2024'),
(22, 22, 2, '2024-1', '2024'),
(23, 23, 3, '2024-1', '2024'),
(24, 24, 4, '2024-1', '2024'),
(25, 25, 5, '2024-1', '2024'),
(26, 26, 6, '2024-1', '2024'),
(27, 27, 7, '2024-1', '2024'),
(28, 28, 8, '2024-1', '2024'),
(29, 29, 9, '2024-1', '2024'),
(30, 30, 10, '2024-1', '2024'),
(31, 31, 1, '2024-2', '2024'),
(32, 32, 2, '2024-2', '2024'),
(33, 33, 3, '2024-2', '2024'),
(34, 34, 4, '2024-2', '2024'),
(35, 35, 5, '2024-2', '2024'),
(36, 36, 6, '2024-2', '2024'),
(37, 37, 7, '2024-2', '2024'),
(38, 38, 8, '2024-2', '2024'),
(39, 39, 9, '2024-2', '2024'),
(40, 40, 10, '2024-2', '2024'),
(41, 41, 1, '2024-1', '2024'),
(42, 42, 2, '2024-1', '2024'),
(43, 43, 3, '2024-1', '2024'),
(44, 44, 4, '2024-1', '2024'),
(45, 45, 5, '2024-1', '2024'),
(46, 46, 6, '2024-1', '2024'),
(47, 47, 7, '2024-1', '2024'),
(48, 48, 8, '2024-1', '2024'),
(49, 49, 9, '2024-1', '2024'),
(50, 50, 10, '2024-1', '2024'),
(51, 51, 1, '2024-2', '2024'),
(52, 52, 2, '2024-2', '2024'),
(53, 53, 3, '2024-2', '2024'),
(54, 54, 4, '2024-2', '2024'),
(55, 55, 5, '2024-2', '2024'),
(56, 56, 6, '2024-2', '2024'),
(57, 57, 7, '2024-2', '2024'),
(58, 58, 8, '2024-2', '2024'),
(59, 59, 9, '2024-2', '2024'),
(60, 60, 10, '2024-2', '2024'),
(61, 61, 1, '2024-1', '2024'),
(62, 62, 2, '2024-1', '2024'),
(63, 63, 3, '2024-1', '2024'),
(64, 64, 4, '2024-1', '2024'),
(65, 65, 5, '2024-1', '2024'),
(66, 66, 6, '2024-1', '2024'),
(67, 67, 7, '2024-1', '2024'),
(68, 68, 8, '2024-1', '2024'),
(69, 69, 9, '2024-1', '2024'),
(70, 70, 10, '2024-1', '2024'),
(71, 71, 1, '2024-2', '2024'),
(72, 72, 2, '2024-2', '2024'),
(73, 73, 3, '2024-2', '2024'),
(74, 74, 4, '2024-2', '2024'),
(75, 75, 5, '2024-2', '2024'),
(76, 76, 6, '2024-2', '2024'),
(77, 77, 7, '2024-2', '2024'),
(78, 78, 8, '2024-2', '2024'),
(79, 79, 9, '2024-2', '2024'),
(80, 80, 10, '2024-2', '2024'),
(81, 81, 1, '2024-1', '2024'),
(82, 82, 2, '2024-1', '2024'),
(83, 83, 3, '2024-1', '2024'),
(84, 84, 4, '2024-1', '2024'),
(85, 85, 5, '2024-1', '2024'),
(86, 86, 6, '2024-1', '2024'),
(87, 87, 7, '2024-1', '2024'),
(88, 88, 8, '2024-1', '2024'),
(89, 89, 9, '2024-1', '2024'),
(90, 90, 10, '2024-1', '2024'),
(91, 91, 1, '2024-2', '2024'),
(92, 92, 2, '2024-2', '2024'),
(93, 93, 3, '2024-2', '2024'),
(94, 94, 4, '2024-2', '2024'),
(95, 95, 5, '2024-2', '2024'),
(96, 96, 6, '2024-2', '2024'),
(97, 97, 7, '2024-2', '2024'),
(98, 98, 8, '2024-2', '2024'),
(99, 99, 9, '2024-2', '2024'),
(100, 100, 10, '2024-2', '2024');




/***************************VISTAS******************************/


CREATE VIEW Vista_Reporte_Inscripciones AS
SELECT 
    i.semestre,
    i.año,
    COUNT(i.id_inscripcion) AS total_inscripciones
FROM 
    inscripcion i
GROUP BY 
    i.semestre, i.año;


SELECT * FROM Vista_Reporte_Inscripciones;


CREATE VIEW Vista_Estudiantes_Inscritos_Curso AS
SELECT 
    e.id_estudiante,
    e.nombre AS nombre_estudiante,
    c.nombre AS nombre_curso,
    i.semestre,
    i.año
FROM 
    inscripcion i
JOIN 
    estudiante e ON i.id_estudiante = e.id_estudiante
JOIN 
    curso c ON i.id_curso = c.id_curso;


SELECT * FROM Vista_Estudiantes_Inscritos_Curso;


CREATE VIEW Vista_Inscripciones_Estudiante AS
SELECT 
    e.id_estudiante,
    e.nombre AS nombre_estudiante,
    c.nombre AS nombre_curso,
    i.semestre,
    i.año
FROM 
    inscripcion i
JOIN 
    estudiante e ON i.id_estudiante = e.id_estudiante
JOIN 
    curso c ON i.id_curso = c.id_curso;


SELECT * FROM Vista_Inscripciones_Estudiante;

/****************************TRIGGERS*************************************/


CREATE PROCEDURE sp_insertar_estudiante
@estudiante_id int,
@nombre_desc varchar(50)
as
if(select count(*) from DBO.estudiante
where id_estudiante=@estudiante_id or nombre=@nombre_desc)=0
insert into dbo.estudiante(id_estudiante, nombre)
values (@estudiante_id, @nombre_desc)
else 
print 'ERROR;';

exec sp_insertar_estudiante 44, 'Mirko';

/****************************TRIGGERS*************************************//****************************TRIGGERS*************************************/

CREATE TRIGGER trg_prevenir_borrado_estudiante
ON dbo.estudiante
INSTEAD OF DELETE
AS
BEGIN
    PRINT 'No está permitido eliminar registros de la tabla estudiante.';
END;

DELETE FROM dbo.estudiante WHERE id_estudiante = 10;

/****************************TRIGGERS*************************************/
CREATE TRIGGER trg_actualizar_carga_creditos
ON curso
AFTER UPDATE
AS
BEGIN
    DECLARE @id_profesor INT;

    SELECT @id_profesor = id_profesor FROM inserted;
    UPDATE p
    SET 
        total_creditos = (
            SELECT SUM(c.creditos)
            FROM curso c
            WHERE c.id_profesor = @id_profesor
            GROUP BY c.id_profesor
        ),
        carga_creditos = CASE 
            WHEN (SELECT SUM(c.creditos) 
                  FROM curso c 
                  WHERE c.id_profesor = @id_profesor
                  GROUP BY c.id_profesor) <= 2 THEN 'Bajo'
            WHEN (SELECT SUM(c.creditos) 
                  FROM curso c 
                  WHERE c.id_profesor = @id_profesor
                  GROUP BY c.id_profesor) BETWEEN 3 AND 4 THEN 'Medio'
            ELSE 'Alto'
        END
    FROM profesores p
    WHERE p.id_profesor = @id_profesor;
    
    PRINT 'Carga de créditos actualizada correctamente para el profesor con ID ' + CAST(@id_profesor AS VARCHAR);
END;


/****************************POWER BI*************************************/

USE Universidad go
CREATE PROCEDURE todos
AS
SELECT  
    *
FROM 
    estudiante
INNER JOIN 
    inscripcion ON estudiante.id_estudiante = inscripcion.id_estudiante
INNER JOIN 
    curso ON inscripcion.id_curso = curso.id_curso
INNER JOIN 
    horarios ON curso.id_curso = horarios.id_curso
INNER JOIN 
    profesores ON curso.id_profesor = profesores.id_profesor;

exec Todos;


/*********************************Rango de edad*****************************************/


CREATE PROCEDURE RangoEdades
AS
BEGIN
    SELECT 
        categoria_edad,
        STRING_AGG(nombre, ', ') AS Nombres,
        COUNT(id_estudiante) AS Cantidad_estudiantes
    FROM (
        SELECT 
            id_estudiante,
            nombre,
            CASE 
                WHEN fecha_nacimiento BETWEEN '2000-01-01' AND '2000-12-31' THEN 'Joven' 
                WHEN fecha_nacimiento BETWEEN '1998-01-01' AND '1999-12-31' THEN 'Adulto Joven'
                ELSE 'Adulto'
            END AS categoria_edad
        FROM estudiante
    ) AS subquery
    GROUP BY categoria_edad;
END;




exec RangoEdades;

/*********************************cursos junto con los detalles de los profesores*****************************************/


CREATE procedure vista_cursos_profesores AS
SELECT 
    c.id_curso, 
    c.nombre AS nombre_curso, 
    c.codigo, 
    c.creditos, 
    c.departamento,
    p.nombre AS nombre_profesor, 
    p.apellido AS apellido_profesor, 
    p.especialidad
FROM 
    curso c
JOIN 
    profesores p ON c.id_profesor = p.id_profesor;

	exec vista_cursos_profesores;



/**************************información de los estudiantes con los cursos en los que están inscritos***************************************/
CREATE PROCEDURE vista_de_estudiantes AS
SELECT 
    e.id_estudiante, 
    e.nombre AS nombre_estudiante, 
    e.apellido AS apellido_estudiante, 
    e.fecha_nacimiento, 
    e.direccion, 
    c.nombre AS nombre_curso, 
    c.codigo, 
    c.creditos, 
    c.departamento,
    i.semestre, 
    i.año,
    COUNT(e.id_estudiante) AS total_estudiantes_por_curso
FROM 
    estudiante e
JOIN 
    inscripcion i ON e.id_estudiante = i.id_estudiante
JOIN 
    curso c ON i.id_curso = c.id_curso
GROUP BY 
    e.id_estudiante, e.nombre, e.apellido, e.fecha_nacimiento, e.direccion, 
    c.nombre, c.codigo, c.creditos, c.departamento, i.semestre, i.año;

EXEC vista_de_estudiantes;



/****************************Cursos******************************/

CREATE procedure vista_horarios_cursos AS
SELECT 
    h.id_horario, 
    c.nombre AS nombre_curso, 
    c.codigo, 
    h.dia_semana, 
    h.hora_inicio, 
    h.hora_fin
FROM 
    horarios h
JOIN 
    curso c ON h.id_curso = c.id_curso;

exec vista_horarios_cursos;


/*************************cuántos estudiantes están inscritos en cada curso*********************************/


CREATE procedure vista_estudiantes_por_curso AS
SELECT 
    c.id_curso, 
    c.nombre AS nombre_curso, 
    COUNT(i.id_estudiante) AS cantidad_estudiantes
FROM 
    curso c
LEFT JOIN 
    inscripcion i ON c.id_curso = i.id_curso
GROUP BY 
    c.id_curso, c.nombre;

exec vista_estudiantes_por_curso;
