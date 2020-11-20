-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2018 a las 21:27:04
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: 'bd_universidades'
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'Asignatura'
--

CREATE TABLE 'Asignatura' (
  'IdAsignatura' int(11) NOT NULL,
  'IdNivelPensum' int(11) NOT NULL,
  'Nombre' varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  'Creditos' int(3) NOT NULL,
  'AreaConocimientos' varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  'HoraSemestrePresencial' int(3) NOT NULL,
  'HoraSemestreTrabajoIndepen' int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO 'Asignatura' ('IdAsignatura', 'IdNivelPensum', 'Nombre', 'Creditos', 'AreaConocimientos', 'HoraSemestrePresencial','HoraSemestreTrabajoIndepen')
 VALUES
(1,1,'Matematicas 1',3,'Disiplinar',8,16),
(2,2,'Matematicas 2',3,'Disiplinar',8,16),
(3,3,'Matematicas 3',3,'Disiplinar',8,16),
(4,4,'Matematicas 4',3,'Disiplinar',8,16),
(5,5,'Matematicas 5',3,'Disiplinar',8,16),
(6,1,'Bases datos 1',3,'Interdisiplinar',8,16),
(7,2,'Bases datos 2',3,'Interdisiplinar',8,16),
(8,1,'Programacion 1',3,'Interdisiplinar',8,16),
(9,2,'Programacion 2',3,'Interdisiplinar',8,16),
(10,1,'Humanidades 1',3,'Disiplinar',8,16),
(11,2,'Humanidades 2',3,'Disiplinar',8,16),
(12,1,'Fisica 1',3,'Interdisiplinar',8,16),
(13,2,'fisica 2',3,'Interdisiplinar',8,16),
(15,3,'Fisica 3',3,'Interdisiplinar',8,16),
(16,4,'fisica 4',3,'Interdisiplinar',8,16),
(17,3,'Humanidades 3',3,'Interdisiplinar',8,16),
(18,4,'Humanidades 4',3,'Interdisiplinar',8,16),
(19,1,'Algoritmos 1',3,'Interdisiplinar',8,16),
(20,2,'Algoritmos 2',3,'Interdisiplinar',8,16),
(21,3,'Algoritmos 3',3,'Interdisiplinar',8,16),
(22,4,'Algoritmos 4',3,'Interdisiplinar',8,16),
(23,3,'Frameworks 1',3,'Interdisiplinar',8,16),
(24,4,'Frameworks 2',3,'Interdisiplinar',8,16),
(25,5,'Frameworks 3',3,'Interdisiplinar',8,16),
(26,5,'Machine Learning 1',3,'Interdisiplinar',8,16),
(27,5,'Motores de DB 1',3,'Interdisiplinar',8,16),
(28,5,'Web Development 1',3,'Interdisiplinar',8,16),
(29,5,'IOS Development 1',3,'Interdisiplinar',8,16),
(30,6,'Frameworks 4',3,'Interdisiplinar',8,16),
(31,6,'Machine Learning 2',3,'Interdisiplinar',8,16),
(32,6,'Motores de DB 2',3,'Interdisiplinar',8,16),
(33,6,'Web Development 2',3,'Interdisiplinar',8,16),
(34,6,'IOS Development 2',3,'Interdisiplinar',8,16),
(35,6,'Eica',3,'Disiplinar',8,16)

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'Divicion'
--

CREATE TABLE 'Divicion' (
  'IdDivicion' int(11) NOT NULL,
  'IdSeccional' int(11) NOT NULL,
  'NombreDivicion' varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  'DecanoDivicion' varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  'Direccion' varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO 'Divicion' ('IdDivicion', 'IdSeccional', 'NombreDivicion', 'DecanoDivicion', 'Direccion')
 VALUES
 (1,1,'Arquitectura','Edgar Medina','cra 11 #11-14'),
 (2,1,'Medicina','Alejandro Lopez','cra 11 #11-14'),
 (3,1,'Ingenieria','Cesar Murcia','cra 11 #11-14'),
 (4,1,'Artes','Diana Figueroa','cra 11 #11-14'),


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'EstudiantePrograma'
--

CREATE TABLE 'EstudiantePrograma' (
  'IdEstudiantePrograma' int(11) NOT NULL,
  'IdPersona' int(11) NOT NULL,
  'IdPrograma' int(11) NOT NULL,
  'CodEstudiante' int(11) NOT NULL,
  'IdPensum' int(11) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO 'EstudiantePrograma' ('IdEstudiantePrograma', 'IdPersona', 'IdPrograma', 'CodEstudiante', 'IdPensum')
 VALUES
 (1,3,1,123456,1),
 (2,13,1,456789,1),
 (3,14,1,789456,1),
 (4,19,1,456123,1),
 (5,18,1,369258,1),
 (6,16,1,147258,1),
 (7,11,1,456987,1),
 (8,15,1,654123,1),
 (9,17,1,658986,1),
 (10,12,1,879621,1),
 (11,2,1,159874,1),
 (12,5,1,123587,1),
 (13,4,1,452123,1),
 (14,8,1,632479,1),
 (15,7,1,145212,1),
 (16,6,1,986214,1),
 (17,9,1,852159,1),
 (18,1,1,965789,1),
 (19,19,1,267541,1)
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'Facultad'
--

CREATE TABLE 'Facultad' (
  'IdFacultad' int(30) NOT NULL,
  'IdDivicion' int(11) NOT NULL,
  'NombreFacultad' varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  'Decano' varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  'Telefono' varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO 'Facultad' ('IdFacultad', 'IdDivicion', 'NombreFacultad', 'Decano', 'Telefono')
 VALUES
 (1,1,"Diseño Grafico","Predo Perez",3016250495),
 (2,1,"Arquitectura","Juan Cruz",1235698456),
 (3,2,"Odontologia","Felipe Limas",3116545869),
 (4,2,"Fisioterapia","Fredy Cardozo",3123659685),
 (5,2,"Radiologia","Gustavo Frezno",3123659685),
 (6,2,"Gastroenterologia","Jorge Rojas",3125748965)
 (7,3,"Ingenieria en Sistemas","Andres MEdina",31456899657),
 (8,3,"Ingenietia Electronica","Fredy Aponte",3112452525),
 (9,3,"Ingenieria Ambiental","Gustavo Guiza",3112053020),
 (10,3,"Ingenieria Industrial","Sergip Rojas",3132053060),
 (11,4,"Musica","Sergip Rodriguez",31320530680),
 (12,4,"Artes Escenicas","Nicolas Rojas",3132013060),
 (13,4,"Artes Plasticas","Andres Perez",3132056060),
 (14,4,"Poesia y Declamacion","Camila Restrepo",3132053560)
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'Grupo'
--

CREATE TABLE 'Grupo' (
  'IdGrupo' int(11) NOT NULL,
  'IdAsignatura' int(11) NOT NULL,
  'NombreDocente' varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  'CodDocente' int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO 'Grupo' ('IdGrupo', 'IdAsignatura', 'NombreDocente', 'CodDocente')
 VALUES
 (1,17,'Alejandro Lopez',123456),
 (2,18,'Fredy Cardozo',456789),
 (3,16,'Carlos Aponte',123789),
 (4,14,'Andres Perez',321987),
 (5,15,'Gustavo Frezno',654987),
 (6,20,'Predo Perez',7852412),
 (7,19,'Alejandro Lopez',123456),
 (8,11,'Fredy Cardozo',456789),
 (9,12,'Carlos Aponte',123789),
 (10,13,'Andres Perez',321987),
 (11,1,'Gustavo Frezno',654987),
 (12,3,'Predo Perez',7852412),
 (13,6,'Alejandro Lopez',123456),
 (14,5,'Fredy Cardozo',456789),
 (15,2,'Carlos Aponte',123789),
 (16,4,'Andres Perez',321987),
 (17,7,'Gustavo Frezno',654987),
 (18,9,'Predo Perez',7852412),
 (19,8,'Alejandro Lopez',123456),
 (20,10,'Fredy Cardozo',456789),
 (21,31,'Carlos Aponte',123789),
 (22,35,'Andres Perez',321987),
 (23,33,'Gustavo Frezno',654987),
 (24,34,'Predo Perez',7852412),
 (25,30,'Alejandro Lopez',123456),
 (26,27,'Fredy Cardozo',456789),
 (27,21,'Carlos Aponte',123789),
 (28,25,'Andres Perez',321987),
 (29,22,'Gustavo Frezno',654987),
 (30,20,'Predo Perez',7852412),
 (31,23,'Alejandro Lopez',123456),
 (32,24,'Fredy Cardozo',456789),
 (33,26,'Carlos Aponte',123789),
 (34,29,'Andres Perez',321987),
 (35,28,'Gustavo Frezno',654987)0

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'Nivel'
--

CREATE TABLE 'Nivel' (
  'IdNivelPensum' int(11) NOT NULL,
  'Nivel' int(3) NOT NULL,
  'IdPensum' int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO 'Grupo' ('IdNivelPensum', 'Nivel', 'IdPensum')
 VALUES
 (1,1,1),
 (2,2,1),
 (3,3,1),
 (4,4,1),
 (5,5,1),
 (6,6,1)
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'Pensum'
--

CREATE TABLE 'Pensum' (
  'IdPensum' int(11) NOT NULL,
  'IdPrograma' int(11) NOT NULL,
  'Activo' varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  'Oferta' varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO 'Grupo' ('IdPensum', 'IdPrograma', 'Activo','Oferta')
 VALUES
 (1,1,"Activo","Hasta 40 Estudiantes")
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'persona'
--

CREATE TABLE 'Persona' (
  'IdPersona' int(11) NOT NULL,
  'NumDocumento' int(20) NOT NULL,
  'LugarExpedicion' varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  'FechaExpedicion' date NOT NULL,
  'Nombres' varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  'Apellidos' varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  'Celular' int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (1, 999999, 'Fram', '10/26/1998', 'Anatole', 'Bayldon', 3461533);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (2, 1000000, 'Pulo', '5/18/2001', 'Ardyth', 'Di Domenico', 3822380);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (3, 999999, 'Escada', '4/29/1996', 'Domingo', 'Pendrick', 3064034);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (4, 999999, 'Capitán Bermúdez', '10/12/1997', 'Karlotta', 'Redemile', 3336802);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (5, 999999, 'Feodosiya', '12/29/2001', 'Barde', 'Tirone', 3490940);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (6, 1000000, 'Energeticheskiy', '9/22/1999', 'Maxine', 'Ogelsby', 3942482);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (7, 999999, 'Crossmolina', '6/16/2002', 'Grady', 'Raggatt', 3702172);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (8, 999999, 'Nyzhni Petrivtsi', '5/22/1991', 'Audrey', 'Styan', 3686219);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (9, 999999, 'Maindang', '1/24/1995', 'Thornie', 'Hargreves', 3992219);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (10, 999999, 'Idanha-a-Nova', '4/9/1997', 'Shalna', 'Brisard', 3143914);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (11, 999999, 'Iroquois Falls', '9/9/1995', 'Ruprecht', 'Eagers', 3536822);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (12, 999999, 'Chuncheon', '5/21/1994', 'Bentley', 'Eccleston', 3351322);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (13, 999999, 'Badagry', '4/30/2001', 'Reed', 'Muckleston', 3169309);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (14, 999999, 'Viimsi', '11/8/2004', 'Lamar', 'Hankard', 3814334);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (15, 1000000, 'Šipovo', '2/15/1990', 'Ede', 'Beedham', 3085350);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (16, 999999, 'Balangonan', '9/9/1993', 'Margi', 'Eltune', 3655675);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (17, 999999, 'Ustupo', '7/19/2002', 'Terra', 'Fullick', 3600975);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (18, 1000000, 'Thames', '12/10/1997', 'Rafe', 'Hallock', 3315609);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (19, 999999, 'Kista', '4/11/2004', 'Shadow', 'Haibel', 3847156);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (20, 1000000, 'Ifon', '8/23/1999', 'Bethina', 'Theuff', 3588348);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (21, 999999, 'Na Yung', '2/14/1993', 'Etienne', 'Tichner', 3726136);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (22, 999999, 'Gabahan', '1/25/2003', 'Carmine', 'Fowlston', 3673029);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (23, 1000000, 'Rostov-na-Donu', '12/15/1998', 'Naoma', 'Spottiswoode', 3150406);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (24, 999999, 'Tillabéri', '6/9/1991', 'Ferris', 'Yedy', 3724382);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (25, 1000000, 'Mbala', '2/5/1990', 'Kellyann', 'Tatterton', 3197465);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (26, 999999, 'Lindome', '9/29/1997', 'Janette', 'Brereton', 3329289);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (27, 1000000, 'Belfort', '9/29/2000', 'Barnard', 'Dachs', 3726864);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (28, 999999, 'Kuantan', '11/25/1994', 'Garwin', 'Whether', 3983656);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (29, 999999, 'Dzikowiec', '7/14/1990', 'Prentice', 'Sebastian', 3911126);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (30, 999999, 'Williston', '3/16/2004', 'Karrah', 'Bradneck', 3995810);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (31, 999999, 'Eirado', '12/7/2002', 'Cordey', 'Rikard', 3612565);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (32, 999999, 'Ubon Ratchathani', '4/18/2001', 'Ganny', 'Fenn', 3161991);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (33, 1000000, 'Somerset East', '8/25/1997', 'Bar', 'Pavinese', 3498186);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (34, 999999, 'Ialibu', '11/2/1993', 'Debor', 'Riste', 3582332);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (35, 1000000, 'Ostrožská Lhota', '3/4/2003', 'Doralia', 'Bexley', 3012535);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (36, 999999, 'Ust’-Katav', '9/1/1997', 'Malory', 'Brend', 3975704);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (37, 1000000, 'Aksakovo', '9/18/1994', 'Thoma', 'Helleker', 3389941);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (38, 1000000, 'Shali', '10/27/2001', 'Eldridge', 'Elmar', 3976436);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (39, 999999, 'Baimajing', '8/10/1996', 'Odelinda', 'Pedwell', 3309183);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (40, 1000000, 'Boguchwała', '7/15/2002', 'Mellisent', 'Olivetti', 3900525);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (41, 999999, 'Vilarinho das Cambas', '10/31/1996', 'Clayton', 'Yell', 3151677);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (42, 1000000, 'Doctor Juan León Mallorquín', '3/17/2002', 'Dwain', 'Roblin', 3946088);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (43, 999999, 'Konstantinovo', '4/9/2001', 'Tiler', 'Grevatt', 3632286);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (44, 999999, 'Dapaong', '8/15/2002', 'Carilyn', 'Sadat', 3957445);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (45, 999999, 'Fengle', '1/20/1999', 'Nanine', 'Colaco', 3290224);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (46, 999999, 'Tongzi', '12/23/1994', 'Gerta', 'Cusworth', 3251040);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (47, 1000000, 'Chambishi', '1/23/1994', 'Monica', 'Brokenshaw', 3313535);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (48, 999999, 'Debrecen', '4/27/1993', 'Eli', 'Drust', 3939729);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (49, 999999, 'Paris 20', '2/6/1996', 'Timothea', 'Deinhard', 3239800);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (50, 1000000, 'Coronel Martínez', '9/23/1997', 'Melisandra', 'Corragan', 3868668);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (51, 1000000, 'Xanxerê', '7/21/1999', 'Allis', 'Brea', 3850724);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (52, 999999, 'Lizhai', '1/22/1993', 'Giustino', 'Gwin', 3377914);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (53, 1000000, 'Guandiping', '9/9/1994', 'Bettye', 'World', 3186993);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (54, 1000000, 'Tužno', '8/25/1991', 'Sandro', 'O''Hagerty', 3339723);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (55, 1000000, 'Pierzchnica', '10/2/1996', 'Hortensia', 'MacSkeaghan', 3448706);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (56, 1000000, 'Ailibugai', '10/3/1994', 'Vanna', 'Sex', 3537410);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (57, 999999, 'Lucaya', '1/11/1998', 'Heriberto', 'Hallex', 3296669);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (58, 1000000, 'Klášterec nad Ohří', '5/14/1996', 'Deirdre', 'Headech', 3674136);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (59, 1000000, 'Buyant', '10/10/1994', 'Benn', 'Gilchriest', 3617517);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (60, 1000000, 'Ciawi', '2/12/1998', 'Phoebe', 'Liversedge', 3931507);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (61, 1000000, 'Helsingborg', '6/1/1999', 'Lou', 'Ragge', 3919169);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (62, 999999, 'Paccha', '8/21/1994', 'Merrielle', 'MacNeachtain', 3798479);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (63, 999999, 'Arrufó', '7/12/1993', 'Courtnay', 'Izkovici', 3757754);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (64, 999999, 'Rashaant', '4/17/2003', 'Joane', 'Bockman', 3988582);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (65, 1000000, 'Shangyi', '6/10/2001', 'Joy', 'Dunrige', 3209521);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (66, 999999, 'Clifden', '10/25/2000', 'Abramo', 'Hetterich', 3407359);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (67, 999999, 'Nakusp', '5/18/1993', 'Willette', 'Frotton', 3043236);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (68, 1000000, 'Sebba', '10/17/2004', 'Ana', 'Moxsom', 3671692);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (69, 999999, 'Mönsterås', '6/22/1994', 'Gustavo', 'Garthshore', 3311096);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (70, 1000000, 'Zavidovo', '2/26/1990', 'Lenka', 'McGruar', 3622463);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (71, 1000000, 'Port Moody', '11/20/1997', 'Graig', 'Gainforth', 3708065);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (72, 1000000, 'San Jose', '9/9/1990', 'Sosanna', 'Leggitt', 3801392);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (73, 999999, 'Beigou', '5/24/1992', 'Jermaine', 'De Few', 3789385);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (74, 1000000, 'Baleber', '6/23/1998', 'Ernst', 'Chasmoor', 3281004);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (75, 1000000, 'Malakwal City', '12/20/2000', 'Norean', 'Endean', 3609463);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (76, 1000000, 'Leigongjian', '1/28/1993', 'Matilda', 'Simpkiss', 3935452);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (77, 999999, 'El Progreso', '2/8/1991', 'Bowie', 'Noice', 3261528);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (78, 1000000, 'Tosno', '2/17/2003', 'Piotr', 'Horwell', 3569988);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (79, 1000000, 'Burirao', '2/2/2004', 'Kerby', 'Birkinshaw', 3388623);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (80, 999999, 'Artesianón', '9/3/1991', 'Ursala', 'Jickells', 3069713);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (81, 1000000, 'Khorugh', '11/15/2002', 'Derick', 'Chorlton', 3282636);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (82, 1000000, 'Jiangpu', '2/25/2003', 'Lotti', 'Bonner', 3723940);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (83, 999999, 'Honolulu', '5/3/2004', 'Vladamir', 'Alvaro', 3094179);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (84, 999999, 'Kertabumi', '4/16/1993', 'Tamas', 'Letty', 3192329);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (85, 999999, 'Kafr Mandā', '9/5/2001', 'Silvano', 'Pountain', 3493757);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (86, 1000000, 'Campo Maior', '11/30/1996', 'Rusty', 'Dunseath', 3136744);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (87, 1000000, 'Lap Lae', '8/25/2000', 'Axel', 'Averies', 3378838);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (88, 999999, 'Montasik', '7/11/2003', 'Salim', 'Crisall', 3985789);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (89, 1000000, 'Wuyahe', '6/23/2001', 'Sandra', 'Bridgwood', 3365315);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (90, 999999, 'Bang Rakam', '6/23/1995', 'Gawain', 'Cawthery', 3724928);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (91, 1000000, 'Nickby', '2/8/2001', 'Alejandrina', 'Isherwood', 3633877);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (92, 999999, 'Tirtopuro', '4/12/1999', 'Piper', 'Simchenko', 3923600);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (93, 1000000, 'Jiangwei', '6/17/1993', 'Lark', 'Andretti', 3234016);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (94, 999999, 'Quillo', '8/26/2002', 'Berrie', 'Davidai', 3066401);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (95, 1000000, 'Arvika', '11/26/2004', 'Flory', 'Marder', 3745890);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (96, 999999, 'Birigui', '10/27/1991', 'Fitz', 'Smieton', 3775186);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (97, 1000000, 'San Nicolás', '2/24/2003', 'Viviana', 'Loiterton', 3113530);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (98, 999999, 'Oued Lill', '9/14/1997', 'Constantin', 'Feldberg', 3537655);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (99, 1000000, 'Volgo-Kaspiyskiy', '3/8/2003', 'Robinetta', 'Mapston', 3256047);
insert into Persona (IdPersona, NumDocumento, LugarExpedicion, FechaExpedicion, Nombres, Apellidos, Celular) values (100, 999999, 'Qianjin', '11/18/1997', 'Luelle', 'McConaghy', 3788686);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'programa'
--

CREATE TABLE 'Programa' (
  'IdPrograma' int(11) NOT NULL,
  'IdFacultad' int(11) NOT NULL,
  'NombrePrograma' varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  'MODALIDAD' varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  'Activo' varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (1, 5, 'Asoka', 'Presencial', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (2, 5, 'Tresom', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (3, 8, 'Alpha', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (4, 2, 'Keylex', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (5, 1, 'Viva', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (6, 10, 'Fix San', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (7, 1, 'Mat Lam Tam', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (8, 9, 'Temp', 'Presencial', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (9, 9, 'Stim', 'Virtual', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (10, 2, 'Hatity', 'Virtual', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (11, 4, 'Lotlux', 'Virtual', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (12, 11, 'Zaam-Dox', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (13, 3, 'Pannier', 'Presencial', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (14, 13, 'Solarbreeze', 'Presencial', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (15, 6, 'Treeflex', 'Virtual', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (16, 14, 'Gembucket', 'Presencial', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (17, 4, 'Zaam-Dox', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (18, 14, 'Duobam', 'Presencial', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (19, 5, 'Zoolab', 'Virtual', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (20, 13, 'Matsoft', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (21, 9, 'Regrant', 'Presencial', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (22, 11, 'Namfix', 'Presencial', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (23, 10, 'Regrant', 'Presencial', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (24, 6, 'Bitwolf', 'Presencial', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (25, 4, 'Konklux', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (26, 14, 'Y-Solowarm', 'Presencial', true);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (27, 8, 'Stringtough', 'Presencial', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (28, 3, 'Tampflex', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (29, 12, 'Fix San', 'Virtual', false);
insert into Programa (IdPrograma, IdFacultad, NombrePrograma, MODALIDAD, Activo) values (30, 6, 'Ventosanzap', 'Virtual', false);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'Seccional'
--

CREATE TABLE 'Seccional' (
  'IdSeccional' int(11) NOT NULL,
  'Nombre' varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  'CIUDAD' varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  'Direccion' varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  'Telefono' int(20) NOT NULL,
  'RECTOR' varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla 'Seccional'
--

INSERT INTO 'Seccional' ('IdSeccional', 'Nombre', 'CIUDAD', 'Direccion', 'Telefono', 'RECTOR') VALUES
(1, 'Univ Santo tomas Sec. Tunja', 'TUNJA', 'Cra 11 # 3-38', 2147483647, 'Carlos Navas\r'),
(2, 'Univ Santo tomas Sec. Villavicencio', 'VILLAVICENCIO', 'Cra 11 # 3-39', 2147483647, 'Pedro Ortiz\r'),
(3, 'Univ Santo tomas Sec. Bucaramanga', 'BUCARAMANGA', 'Cra 11 # 3-40', 2147483647, 'Carlos Navas\r'),
(4, 'Univ Santo tomas Sec. Medellin', 'MEDELLIN', 'Cra 11 # 3-41', 2147483647, 'Pedro Ortiz\r'),
(5, 'Univ Santo tomas Sec. Bogota', 'BOGOTA', 'Cra 11 # 3-42', 2147483647, 'Carlos Navas\r'),
(6, 'Univ Santo tomas Sec. VUAD', 'VUAD', 'Cra 11 # 3-43', 2147483647, 'Pedro Ortiz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'Sede'
--

CREATE TABLE 'Sede' (
  'IdSede' int(11) NOT NULL,
  'IdSeccional' int(11) NOT NULL,
  'NombreSede' text COLLATE utf8mb4_unicode_ci NOT NULL,
  'Direccion' int(11) NOT NULL,
  'CIUDAD' varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (1, 3, 'CVR Energy Inc.', '83', 'Saint Paul');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (2, 2, 'Teekay Tankers Ltd.', '997', 'Madīnat Sittah Uktūbar');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (3, 2, 'Green Plains, Inc.', '7870', 'Ijero-Ekiti');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (4, 1, 'Maxwell Technologies, Inc.', '937', 'Gaotian');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (5, 3, 'Monarch Casino & Resort, Inc.', '987', 'Panzhou');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (6, 6, 'China Telecom Corp Ltd', '03', 'Ehu');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (7, 5, 'Andina Acquisition Corp. II', '4', 'Lomé');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (8, 4, 'Gray Television, Inc.', '5166', 'Shimen');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (9, 1, 'TC PipeLines, LP', '4617', 'Mbongawani');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (10, 3, 'Axovant Sciences Ltd.', '314', 'Chociwel');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (11, 1, 'Suncor Energy  Inc.', '86927', 'Troyes');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (12, 6, 'Bridge Bancorp, Inc.', '11040', 'Água de Pau');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (13, 1, 'MasTec, Inc.', '5', 'Tsu-shi');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (14, 2, 'Five Oaks Investment Corp.', '7', 'Corumbá');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (15, 5, 'Forterra, Inc.', '6114', 'Banjar Jabejero');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (16, 4, 'Veritone, Inc.', '545', 'Xuchang');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (17, 1, 'Mitcham Industries, Inc.', '65', 'Toupopu');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (18, 4, 'Wal-Mart Stores, Inc.', '5', 'Aix-en-Provence');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (19, 5, 'Coach, Inc.', '00541', 'Tours');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (20, 4, 'CTI BioPharma Corp.', '821', 'Guojiazhuang');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (21, 3, 'Morgan Stanley', '583', 'Targuist');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (22, 4, 'iShares MSCI ACWI Index Fund', '19137', 'Skopin');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (23, 4, 'Arc Logistic Partners LP', '2331', 'Malandag');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (24, 5, 'Otonomy, Inc.', '864', 'Adygeysk');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (25, 6, 'CardConnect Corp.', '39531', 'Bentar');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (26, 1, 'Cara Therapeutics, Inc.', '4', 'Osiek');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (27, 4, 'PennyMac Financial Services, Inc.', '33', 'Petushki');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (28, 2, 'Discovery Communications, Inc.', '594', 'Detusoko');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (29, 6, 'Nuveen New Jersey Quality Municipal Income Fund', '3057', 'Suicheng');
insert into sede (IdSede, IdSeccional, NombreSede, Direccion, CIUDAD) values (30, 5, 'Fidelity Southern Corporation', '1616', 'Belyy Gorodok');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla 'Asignatura'
--
ALTER TABLE 'Asignatura'
  ADD PRIMARY KEY ('IdAsignatura'),
  ADD KEY 'IdNivelPensum' ('IdNivelPensum'),
  ADD KEY 'IdNivelPensum_2' ('IdNivelPensum'),
  ADD KEY 'IdNivelPensum_3' ('IdNivelPensum');

--
-- Indices de la tabla 'Divicion'
--
ALTER TABLE 'Divicion'
  ADD PRIMARY KEY ('IdDivicion'),
  ADD KEY 'Fk_Divicion' ('IdSeccional');

--
-- Indices de la tabla 'EstudiantePrograma'
--
ALTER TABLE 'EstudiantePrograma'
  ADD PRIMARY KEY ('IdEstudiantePrograma'),
  ADD KEY 'IdPrograma' ('IdPrograma'),
  ADD KEY 'IdPensum' ('IdPensum');

--
-- Indices de la tabla 'Facultad'
--
ALTER TABLE 'Facultad'
  ADD PRIMARY KEY ('IdFacultad'),
  ADD KEY 'Fk_Divicion_Facultad' ('IdDivicion');

--
-- Indices de la tabla 'Grupo'
--
ALTER TABLE 'Grupo'
  ADD PRIMARY KEY ('IdGrupo'),
  ADD KEY 'IdAsignatura' ('IdAsignatura');

--
-- Indices de la tabla 'MatriculaAcademica'
--
ALTER TABLE 'MatriculaAcademica'
  ADD PRIMARY KEY ('IdMatriculaFinanciera'),
  ADD KEY 'Fk_IdGrupo' ('IdGrupo'),
  ADD KEY 'IdEstudiantePrograma' ('IdEstudiantePrograma');

--
-- Indices de la tabla 'Nivel'
--
ALTER TABLE 'Nivel'
  ADD PRIMARY KEY ('IdNivelPensum'),
  ADD KEY 'IdPensum' ('IdPensum'),
  ADD KEY 'IdPensum_2' ('IdPensum'),
  ADD KEY 'IdPensum_3' ('IdPensum'),
  ADD KEY 'IdPensum_4' ('IdPensum');

--
-- Indices de la tabla 'Pensum'
--
ALTER TABLE 'Pensum'
  ADD PRIMARY KEY ('IdPensum');

--
-- Indices de la tabla 'persona'
--
ALTER TABLE 'persona'
  ADD PRIMARY KEY ('IdPersona');

--
-- Indices de la tabla 'programa'
--
ALTER TABLE 'programa'
  ADD PRIMARY KEY ('IdPrograma'),
  ADD KEY 'Fk_programa_Facultad' ('IdFacultad');

--
-- Indices de la tabla 'Seccional'
--
ALTER TABLE 'Seccional'
  ADD PRIMARY KEY ('IdSeccional');

--
-- Indices de la tabla 'Sede'
--
ALTER TABLE 'Sede'
  ADD PRIMARY KEY ('IdSede'),
  ADD KEY 'FK_Seccional' ('IdSeccional');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla 'Asignatura'
--
ALTER TABLE 'Asignatura'
  ADD CONSTRAINT 'Fk_IdNivelPensum' FOREIGN KEY ('IdNivelPensum') REFERENCES 'Nivel' ('IdNivelPensum') ON UPDATE CASCADE;

--
-- Filtros para la tabla 'Divicion'
--
ALTER TABLE 'Divicion'
  ADD CONSTRAINT 'Fk_Divicion' FOREIGN KEY ('IdSeccional') REFERENCES 'Seccional' ('IdSeccional');

--
-- Filtros para la tabla 'EstudiantePrograma'
--
ALTER TABLE 'EstudiantePrograma'
  ADD CONSTRAINT 'Fk_est_programa' FOREIGN KEY ('IdPrograma') REFERENCES 'programa' ('IdPrograma') ON UPDATE CASCADE,
  ADD CONSTRAINT 'Fk_estud_Pensum' FOREIGN KEY ('IdPensum') REFERENCES 'Pensum' ('IdPensum') ON UPDATE CASCADE;

--
-- Filtros para la tabla 'Facultad'
--
ALTER TABLE 'Facultad'
  ADD CONSTRAINT 'Fk_Divicion_Facultad' FOREIGN KEY ('IdDivicion') REFERENCES 'Divicion' ('IdDivicion');

--
-- Filtros para la tabla 'Grupo'
--
ALTER TABLE 'Grupo'
  ADD CONSTRAINT 'Fk_IdAsignatura' FOREIGN KEY ('IdAsignatura') REFERENCES 'Asignatura' ('IdAsignatura') ON UPDATE CASCADE;

--
-- Filtros para la tabla 'MatriculaAcademica'
--
ALTER TABLE 'MatriculaAcademica'
  ADD CONSTRAINT 'Fk_IdEstudiantePrograma' FOREIGN KEY ('IdEstudiantePrograma') REFERENCES 'EstudiantePrograma' ('IdEstudiantePrograma') ON UPDATE CASCADE,
  ADD CONSTRAINT 'Fk_IdGrupo' FOREIGN KEY ('IdGrupo') REFERENCES 'Grupo' ('IdGrupo') ON UPDATE CASCADE;

--
-- Filtros para la tabla 'Nivel'
--
ALTER TABLE 'Nivel'
  ADD CONSTRAINT 'Fk_id_pens' FOREIGN KEY ('IdPensum') REFERENCES 'Pensum' ('IdPensum') ON UPDATE CASCADE;

--
-- Filtros para la tabla 'programa'
--
ALTER TABLE 'programa'
  ADD CONSTRAINT 'Fk_programa_Facultad' FOREIGN KEY ('IdFacultad') REFERENCES 'Facultad' ('IdFacultad');

--
-- Filtros para la tabla 'Sede'
--
ALTER TABLE 'Sede'
  ADD CONSTRAINT 'FK_Seccional' FOREIGN KEY ('IdSeccional') REFERENCES 'Seccional' ('IdSeccional') ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
