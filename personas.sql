-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2021 a las 19:16:40
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `personas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE `historico` (
  `id` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `navegador` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `porcien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `historico`
--

INSERT INTO `historico` (`id`, `anio`, `mes`, `navegador`, `porcien`) VALUES
(1, 2017, 4, 'Chrome', 60),
(2, 2017, 4, 'IE-Edge', 5),
(3, 2017, 4, 'Firefox', 30),
(4, 2017, 4, 'Safari', 4),
(5, 2017, 4, 'Opera', 1),
(6, 2016, 4, 'Chrome', 71),
(7, 2016, 4, 'IE-Edge', 6),
(8, 2016, 4, 'Firefox', 17),
(9, 2016, 4, 'Safari', 3),
(10, 2016, 4, 'Opera', 1),
(11, 2015, 4, 'Chrome', 64),
(12, 2015, 4, 'IE-Edge', 8),
(13, 2015, 4, 'Firefox', 22),
(14, 2015, 4, 'Safari', 4),
(15, 2015, 4, 'Opera', 2),
(16, 2014, 4, 'Chrome', 58),
(17, 2014, 4, 'IE-Edge', 9),
(18, 2014, 4, 'Firefox', 25),
(19, 2014, 4, 'Safari', 4),
(20, 2014, 4, 'Opera', 2),
(21, 2013, 4, 'Chrome', 53),
(22, 2013, 4, 'IE-Edge', 13),
(23, 2013, 4, 'Firefox', 28),
(24, 2013, 4, 'Safari', 4),
(25, 2013, 4, 'Opera', 2),
(26, 2012, 4, 'Chrome', 38),
(27, 2012, 4, 'IE-Edge', 18),
(28, 2012, 4, 'Firefox', 36),
(29, 2012, 4, 'Safari', 5),
(30, 2012, 4, 'Opera', 2),
(31, 2011, 4, 'Chrome', 26),
(32, 2011, 4, 'IE-Edge', 24),
(33, 2011, 4, 'Firefox', 43),
(34, 2011, 4, 'Safari', 4),
(35, 2011, 4, 'Opera', 3),
(36, 2010, 4, 'Chrome', 14),
(37, 2010, 4, 'IE-Edge', 33),
(38, 2010, 4, 'Firefox', 46),
(40, 2010, 4, 'Safari', 4),
(41, 2010, 4, 'Opera', 2),
(42, 2009, 4, 'Chrome', 5),
(43, 2009, 4, 'IE-Edge', 42),
(44, 2009, 4, 'Firefox', 47),
(45, 2009, 4, 'Safari', 3),
(46, 2009, 4, 'Opera', 2),
(47, 2008, 4, 'Chrome', 3),
(48, 2008, 4, 'IE-Edge', 49),
(49, 2008, 4, 'Firefox', 43),
(50, 2008, 4, 'Safari', 3),
(51, 2008, 4, 'Opera', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `cedula` varchar(20) NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`cedula`, `nombres`, `apellidos`) VALUES
('1006774672', ' Bretman Arturo', ' Hoyos Martinez'),
('1006800290', 'Breinner', 'Rueda Mayorga'),
('1006805969', ' Jose Miguel', ' Cifuentes Velez'),
('1006903079', ' Dairo Alberto', ' Cuellar Rivera'),
('1006920705', ' José Alejandro', ' Diaz Villamizar'),
('1006937948', ' Angelly Carolain', ' Obando Castro'),
('1007008315', ' Javier Alejandro', ' Rodríguez Arciniegas'),
('1007018999', ' Bryan Steven', ' Muñoz Cruzado'),
('1007031910', ' Yeison Esteban', ' Muñoz León'),
('1007082606', ' Juan Camilo', ' Traslaviña Zambrano'),
('1007109631', ' Yurenis', ' Diaz Sanchez'),
('1007304088', ' Pedro', ' Aldana Bocanegra'),
('1007330674', ' Danna Yulieth', ' Silva Olivero'),
('1007336064', ' Jose Lisardo', ' Miranda Pardo'),
('1007384223', ' Walter Andres', ' Perezcastañeda Villanuev'),
('1007721276', ' María Alejandra', ' Rincon Portillo'),
('1007721782', ' Oman', ' Villalobos De La Rosa'),
('1007779737', ' Johann Alexander', ' Ospino Sanchez'),
('1007799316', ' Joseph Mijahil', ' Puerta Rico'),
('1007932891', ' Aldair Andrés', ' Luque Caballero'),
('1007944807', ' Fidian', ' Alfaro Echeverria'),
('1008072981', ' Harold Andres', ' Sanes Pinzon'),
('1008115093', ' Luis Gebrand', ' Doria Diaz'),
('1008186490', ' Uriel Stiven', ' Rios Viloria'),
('1008219136', ' Jhan Carlos', ' Lopez Yarce'),
('1008375146', ' Jhon Mario', ' Celedon Alcoser'),
('1008577836', ' Orland Fernando', ' Villalobos De La Rosa'),
('1008664985', ' Samir', ' Torres Arrieta'),
('1008697868', ' Jhordan', ' Palencia Duran'),
('1008724615', ' Fernan Dario', ' Pérez Acosta'),
('1008757080', ' Luis Fernando', ' Osorio Garcia'),
('1008776448', ' Luis Eduardo', ' Flores Grateron'),
('1008818160', ' Robin Andres', ' Guerrero Arrieta'),
('1008845427', ' Jhonatan Alejandro', ' Lagares Valencia'),
('1008902204', ' Diego Armando', ' Grimaldos Puertas'),
('1009090019', ' Ronald Mauricio', ' Porras Torres'),
('1009124842', ' Marisela', ' Merchan Osorio'),
('1009141958', ' Nestor David', ' Jaimes Florez'),
('1009257753', ' Orlando Ramiro', ' Ospino Sanchez'),
('1009332538', ' Diego Alejandro', ' Mejía Rivera'),
('1009382829', ' Karol Dayan', ' Villa Cisneros'),
('1009400503', 'Francisco', 'Bohorquez Martínez'),
('1009454363', ' Natalia', ' Rodriguez Urrutia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usercat`
--

CREATE TABLE `usercat` (
  `id` int(11) NOT NULL,
  `usuario` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usercat`
--

INSERT INTO `usercat` (`id`, `usuario`, `password`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `usercat`
--
ALTER TABLE `usercat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historico`
--
ALTER TABLE `historico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `usercat`
--
ALTER TABLE `usercat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
