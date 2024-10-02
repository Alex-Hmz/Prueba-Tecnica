CREATE DATABASE Test_BD;

USE Test_BD;

CREATE TABLE usuarios(
	userId int IDENTITY(1,1),
	"Login" VARCHAR(100) NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	Paterno VARCHAR(100) NOT NULL,
	Materno VARCHAR(100) NOT NULL,
	CONSTRAINT userId_PK PRIMARY KEY (userId) 
)

SELECT * FROM usuarios;

CREATE TABLE empleados(
	userId int NOT NULL,
	Sueldo FLOAT NOT NULL,
	FechaIngreso DATE NOT NULL,
	CONSTRAINT userId_FK FOREIGN KEY (userId) REFERENCES usuarios(userId)
)

SELECT * FROM empleados;


/* Depurar solo los ID diferentes de 6,7,9 y 10 de la tabla usuarios */
SELECT * FROM empleados WHERE userId NOT BETWEEN 6 AND 10;
SELECT * FROM usuarios WHERE userId NOT BETWEEN 6 AND 10;

-- DELETE FROM empleados WHERE userId NOT BETWEEN 6 AND 10;
-- DELETE FROM usuarios WHERE userId NOT BETWEEN 6 AND 10;

/*Actualizar el dato Sueldo en un 10 porciento a los empleados 
	que tienen fechas entre el año 2000 y 2001*/

UPDATE empleados SET Sueldo = Sueldo * 1.10 
WHERE FechaIngreso BETWEEN '2000-01-01' AND '2001-12-31';

/*Realiza una consulta para traer el nombre de usuario y 
	fecha de ingreso de los usuarios que gananen mas de 10000 y 
	su apellido comience con T ordernado del mas reciente al mas antiguo*/

SELECT "Login" FROM usuarios u
LEFT JOIN empleados e ON e.userId = u.userId
WHERE e.Sueldo > 10000 AND
u.Paterno LIKE 'T%' 
ORDER BY e.FechaIngreso DESC;

/*Realiza una consulta donde agrupes a los empleados por sueldo,
un grupo con los que ganan menos de 1200 y 
uno mayor o igual a 1200, cuantos hay en cada grupo?*/

SELECT * FROM empleados;

SELECT 
    CASE 
        WHEN Sueldo < 1200 THEN 'Menor a 1200' 
        ELSE 'Mayor o igual a 12000' 
    END AS Sueldo,
    COUNT(*) AS cuenta_empleados
FROM empleados
GROUP BY 
    CASE 
        WHEN Sueldo < 1200 THEN 'Menor a 1200' 
        ELSE 'Mayor o igual a 12000' 
    END;