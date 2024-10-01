CREATE DATABASE Test_BD;

USE Test_BD;

CREATE TABLE usuarios(
	userId int,
	"Login" VARCHAR(100),
	Nombre VARCHAR(100),
	Paterno VARCHAR(100),
	Materno VARCHAR(100),
	CONSTRAINT userId_PK PRIMARY KEY (userId) 
)
