CREATE DATABASE people;

CREATE TABLE IF NOT EXISTS `usuario` (
`idUsuario` int(11) NOT NULL AUTO_INCREMENT,
 `nombre` varchar(30) NOT NULL,
 `contrasena` varchar(128) NOT NULL,
 `claveApi` varchar(60) NOT NULL,
 `correo` varchar(254) NOT NULL UNIQUE,
 PRIMARY KEY (idUsuario)
);

CREATE TABLE IF NOT EXISTS `contacto` (
`idContacto` int(11) NOT NULL AUTO_INCREMENT,
 `primerNombre` varchar(40) NOT NULL,
 `primerApellido` varchar(40) NOT NULL,
 `telefono` varchar(10) NOT NULL,
 `correo` varchar(254) NOT NULL,
 `idUsuario` int(11) NOT NULL, 
 PRIMARY KEY (idContacto),
 FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
 ON DELETE CASCADE
);

select * from usuario;