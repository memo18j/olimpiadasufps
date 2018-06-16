-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2018 a las 03:21:21
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `olimpiadasufps`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deporte`
--

CREATE TABLE `deporte` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `deporte`
--

INSERT INTO `deporte` (`id`, `nombre`) VALUES
(1, 'tejo'),
(2, 'futbol'),
(3, 'bolas criollas'),
(4, 'rana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportefuncionario`
--

CREATE TABLE `deportefuncionario` (
  `id` int(11) NOT NULL,
  `iddelegacion` int(11) NOT NULL,
  `iddeporte` int(11) NOT NULL,
  `idfuncionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `deportefuncionario`
--

INSERT INTO `deportefuncionario` (`id`, `iddelegacion`, `iddeporte`, `idfuncionario`) VALUES
(1, 9, 1, 1),
(2, 6, 2, 2),
(4, 8, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `delegado` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `nombre`, `delegado`, `telefono`) VALUES
(5, 'pepe', 'memo', '547587'),
(6, 'memo', 'jajajja', '2435354'),
(7, 'pepepeepepeasaas', 'sdsdsdsd', '55475788'),
(8, 'dsasd', 'sasd', 'sadas'),
(9, 'U.E. JUAN MANUEL CAJIGAL', 'albeiro hernandez', '3102171787');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escenario`
--

CREATE TABLE `escenario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `escenario`
--

INSERT INTO `escenario` (`id`, `nombre`) VALUES
(1, 'general santander');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `idequipo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `funcionario`
--

INSERT INTO `funcionario` (`id`, `idequipo`, `nombre`) VALUES
(1, 9, 'gabriel divinas apuestas'),
(2, 9, 'maria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `id` int(11) NOT NULL,
  `idequipo` int(11) NOT NULL,
  `iddeporte` int(11) NOT NULL,
  `grupo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`id`, `idequipo`, `iddeporte`, `grupo`) VALUES
(1, 9, 2, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidoequipo`
--

CREATE TABLE `partidoequipo` (
  `id` int(11) NOT NULL,
  `idequipo` int(11) NOT NULL,
  `idequipob` int(11) NOT NULL,
  `marcadorA` int(11) NOT NULL DEFAULT '0',
  `marcadorB` int(11) NOT NULL DEFAULT '0',
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `escenario` int(11) NOT NULL,
  `fase` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partidoequipo`
--

INSERT INTO `partidoequipo` (`id`, `idequipo`, `idequipob`, `marcadorA`, `marcadorB`, `descripcion`, `fecha`, `escenario`, `fase`) VALUES
(1, 5, 6, 2, 1, 'ola k ase', '2018-06-15', 1, 'Grupos'),
(2, 9, 8, 1, 1, 'gjhkg', '2018-06-16', 1, 'Grupos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre`, `contrasena`) VALUES
('admin', 'admin'),
('memo', '12345');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `deporte`
--
ALTER TABLE `deporte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deportefuncionario`
--
ALTER TABLE `deportefuncionario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddelegacion` (`iddelegacion`),
  ADD KEY `iddeporte` (`iddeporte`),
  ADD KEY `idfuncionario` (`idfuncionario`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `escenario`
--
ALTER TABLE `escenario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idequipo` (`idequipo`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idequipo` (`idequipo`),
  ADD KEY `iddeporte` (`iddeporte`);

--
-- Indices de la tabla `partidoequipo`
--
ALTER TABLE `partidoequipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idequipo` (`idequipo`),
  ADD KEY `idequipob` (`idequipob`),
  ADD KEY `escenario` (`escenario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `deporte`
--
ALTER TABLE `deporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `deportefuncionario`
--
ALTER TABLE `deportefuncionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `escenario`
--
ALTER TABLE `escenario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `partidoequipo`
--
ALTER TABLE `partidoequipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `deportefuncionario`
--
ALTER TABLE `deportefuncionario`
  ADD CONSTRAINT `deportefuncionario_ibfk_2` FOREIGN KEY (`idfuncionario`) REFERENCES `funcionario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deportefuncionario_ibfk_3` FOREIGN KEY (`iddeporte`) REFERENCES `deporte` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deportefuncionario_ibfk_4` FOREIGN KEY (`iddelegacion`) REFERENCES `equipo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`iddeporte`) REFERENCES `deporte` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `partidoequipo`
--
ALTER TABLE `partidoequipo`
  ADD CONSTRAINT `partidoequipo_ibfk_2` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `partidoequipo_ibfk_3` FOREIGN KEY (`escenario`) REFERENCES `escenario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `partidoequipo_ibfk_4` FOREIGN KEY (`idequipob`) REFERENCES `equipo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
