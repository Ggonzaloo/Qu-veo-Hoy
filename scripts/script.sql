CREATE DATABASE queveohoy;

USE queveohoy;

CREATE TABLE pelicula (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `anio` int(5) NOT NULL,
  `duracion` int(5) NOT NULL,
  `director` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha_lanzamiento` datetime,
  `puntuacion` int(2),
  `poster` varchar(300),
  `trama` varchar(700) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `genero_id` int(11),
  PRIMARY KEY (`id`)
);


  CREATE TABLE genero (
    `id` INT NOT NULL auto_increment,
    `nombre` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`id`)
  );

  CREATE TABLE actor (
    `id` INT NOT NULL auto_increment,
    `nombre` VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
  );

  CREATE TABLE actor_pelicula (
  `id` INT NOT NULL auto_increment,
  `actor_id` INT NOT NULL,
  `pelicula_id` INT NOT NULL,
  PRIMARY KEY (`id`)
);

use queveohoy;

alter table pelicula constraint FOREIGN KEY (`genero_id`) REFERENCES `genero(id)`,
alter table actor_pelicula constraint FOREIGN KEY (`actor_id`) REFERENCES actor(id),
alter table actor_pelicula constraint FOREIGN KEY (`pelicula_id`) REFERENCES pelicula(id)
