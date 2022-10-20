CREATE DATABASE DB_API_DATOS;
USE DB_API_DATOS;

CREATE TABLE USUARIO(
idU varchar(15) primary key,
nombres varchar(80),
telefono varchar(60),
correo varchar(40),
ciudad varchar(40),
fechaIngreso datetime default getdate()
);

INSERT INTO USUARIO(idU, nombres,telefono,correo,ciudad)
VALUES ('u01', 'Sara', '3214557','sara@gmail.com','cartagena');

INSERT INTO USUARIO(idU, nombres,telefono,correo,ciudad)
VALUES ('u02', 'Camila', '3214558','camila@gmail.com','bogota');

INSERT INTO USUARIO(idU, nombres,telefono,correo,ciudad)
VALUES ('u03', 'Clara', '3214599','clara@gmail.com','medellin');

INSERT INTO USUARIO(idU, nombres,telefono,correo,ciudad)
VALUES ('u04', 'Dahiana', '3214566','dahiana@gmail.com','armenia');

INSERT INTO USUARIO(idU, nombres,telefono,correo,ciudad)
VALUES ('u05', 'Mariana', '3256557','mariana@gmail.com','pereira');
GO

CREATE PROCEDURE USP_REGISTRAR(
@idU varchar(15),
@nombres varchar(80),
@telefono varchar(60),
@correo varchar(40),
@ciudad varchar(40)
)
AS
BEGIN
INSERT INTO USUARIO(idU, nombres,telefono,correo,ciudad)
VALUES ('@idU', '@nombres','@telefono','@correo','@ciudad')
END
GO

CREATE PROCEDURE USP_ACTUALIZAR(
@idU varchar(15),
@nombres varchar(80),
@telefono varchar(60),
@correo varchar(40),
@ciudad varchar(40)
)
AS
BEGIN
UPDATE USUARIO SET
nombres=@nombres,
telefono=@telefono,
correo=@correo,
ciudad=@ciudad
WHERE idU=@idU
END
GO

CREATE PROCEDURE USP_ELIMINAR(
@idU varchar(15)
)
AS
BEGIN
DELETE FROM USUARIO where @idU=idU
END
GO

CREATE PROCEDURE USP_OBTENER(
@idU varchar(15)
)
AS
BEGIN
SELECT * FROM USUARIO where @idU=idU
END
GO

CREATE PROCEDURE USP_LISTAR
AS
BEGIN
SELECT * FROM USUARIO
END
GO