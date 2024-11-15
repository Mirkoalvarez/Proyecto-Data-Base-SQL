/*****PARTE 2 GESTION Y ROLES DE USUARIOS*******/

-- Crear logins en el servidor
CREATE LOGIN LoginAdmin WITH PASSWORD = 'seguro122';
CREATE LOGIN LoginConsulta WITH PASSWORD = 'seguro123';


-- Crear usuarios en la base de datos
CREATE USER UsuarioAdmin FOR LOGIN LoginAdmin;
CREATE USER UsuarioConsulta FOR LOGIN LoginConsulta;



USE Universidad;


-- Crear el rol de administrador y asignarle permisos completos
CREATE ROLE administrar;
GRANT CONTROL ON SCHEMA::dbo TO administrar;
GRANT CONTROL ON DATABASE::Universidad TO administrar;

-- Crear el rol de consulta y asignarle permisos de solo lectura
CREATE ROLE consulta;
GRANT SELECT ON SCHEMA::dbo TO consulta;

-- Agregar usuarios a los roles
ALTER ROLE administrar ADD MEMBER UsuarioAdmin;
ALTER ROLE consulta ADD MEMBER UsuarioConsulta;


--permisos de acceso a nivel de tabla
--permisos de solo lectura a los usuarios de consulta para las tablas
GRANT SELECT ON dbo.curso TO consulta;
GRANT SELECT ON dbo.estudiante TO consulta;
GRANT SELECT ON dbo.horarios TO consulta;
GRANT SELECT ON dbo.inscripcion TO consulta;
GRANT SELECT ON dbo.profesores TO consulta;



--permisos de modificacion al rol de administrador para las tablas
GRANT INSERT, UPDATE, DELETE ON dbo.curso TO administrar;
GRANT INSERT, UPDATE, DELETE ON dbo.estudiante TO administrar;
GRANT INSERT, UPDATE, DELETE ON dbo.horarios TO administrar;
GRANT INSERT, UPDATE, DELETE ON dbo.inscripcion TO administrar;
GRANT INSERT, UPDATE, DELETE ON dbo.profesores TO administrar;


--permisos de acceso a nivel de vista
--permisos de solo lectura en las vistas
GRANT SELECT ON Vista_Reporte_Inscripciones TO consulta;
GRANT SELECT ON Vista_Estudiantes_Inscritos_Curso TO consulta;
GRANT SELECT ON Vista_Inscripciones_Estudiante TO consulta;

--permisos de modificacion al rol de administrador para las vistas
GRANT INSERT, UPDATE, DELETE ON Vista_Reporte_Inscripciones TO administrar;
GRANT INSERT, UPDATE, DELETE ON Vista_Estudiantes_Inscritos_Curso TO administrar;
GRANT INSERT, UPDATE, DELETE ON Vista_Inscripciones_Estudiante TO administrar;

/**********************************************************************************************/
-- CREAR UN LOGIN PARA EL PROFESOR
CREATE LOGIN LoginProfesor WITH PASSWORD = 'MIPASSWORDSEGURO123';

-- CREAR UN USUARIO PARA EL PROFESOR
USE Universidad; -- 
CREATE USER UsuarioProfesor FOR LOGIN LoginProfesor;

--PERMISOS PARA EL PROFESOR
EXEC sp_addrolemember 'db_datareader', 'UsuarioProfesor';

-- COFIRMA QUE EL USUARIO FUE CREADO
SELECT * FROM sys.database_principals WHERE name = 'UsuarioProfesor';