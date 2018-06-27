-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2018 a las 21:18:44
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `OlimpiadasUfps`
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
(4, 'rana'),
(5, 'Futbol sala'),
(6, 'Tennis de mesa'),
(7, 'Ajedrez'),
(8, 'Baloncesto');

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
(5, 10, 5, 3),
(6, 10, 5, 4),
(7, 10, 5, 5);

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
(10, 'Ingenieria De sistemas', 'Juan Loza', '3124578056'),
(11, 'Ingenieria industrial', 'Pedro Ramire', '3124567801'),
(12, 'Departamento De Sistemas', 'Daniel Caballero', '3124561232'),
(13, 'Contaduria', 'Carlos Ramirez', '3124531234'),
(14, 'Ingenieria de minas', 'Camilo Perez', '3112341223'),
(15, 'Enfermeria', 'Maria Martinez', '3189821724'),
(16, 'Trabajo Social', 'Pedro Garcia', '2123456098'),
(17, 'Ingenieria Electronica', 'David Guetta', '3104821234');

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
(1, 'general santander'),
(2, 'Coliseo Ufps'),
(3, 'Cancha Alterna'),
(4, 'Cancha bolas criollas'),
(5, 'Coliseo 2');

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
(3, 10, 'Cristian Arevalo'),
(4, 10, 'Dairo Ramirez'),
(5, 10, 'Guillermo Parada'),
(6, 10, 'Daniel Sanchez'),
(7, 10, 'Juliana Ortega'),
(8, 10, 'Sergio Rodriguez'),
(9, 11, 'Juan perez'),
(10, 11, 'Carlos Anchico'),
(11, 11, 'Pedro Ramiriqui'),
(12, 11, 'Maria Martinez'),
(13, 11, 'Juan de Arco'),
(14, 12, 'Daniel Caballero'),
(15, 12, 'Daniel Sanchez '),
(16, 12, 'Carlos Goycochea'),
(17, 12, 'Carlos Sanchez'),
(18, 12, 'Yerry Mina'),
(19, 13, 'Jose pekerman'),
(20, 13, 'Mohamed Salah'),
(21, 13, 'Franco Armani'),
(22, 13, 'James Rodriguez'),
(23, 13, 'Juan Quintero'),
(24, 14, 'Shakiri'),
(25, 14, 'Shaka'),
(26, 14, 'Uribe'),
(27, 14, 'Wilmar Barrios'),
(28, 15, 'Katherine Ibarguen'),
(29, 15, 'Mariana Pajon'),
(30, 16, 'Julian Messi'),
(31, 16, 'Daniel Romario'),
(32, 17, 'Juan Cañizares'),
(33, 17, 'Marcelo Gallardo'),
(34, 17, 'Gareca');

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
(4, 10, 5, 'A'),
(5, 11, 5, 'A'),
(6, 12, 5, 'A'),
(7, 13, 5, 'A'),
(8, 17, 5, 'B'),
(9, 16, 5, 'B'),
(10, 15, 5, 'B'),
(11, 14, 5, 'B'),
(12, 10, 1, 'A'),
(13, 10, 1, 'A'),
(14, 12, 1, 'A'),
(15, 17, 4, 'A'),
(16, 16, 4, 'A');

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
(4, 10, 11, 2, 1, 'Partido Futbol sala', '2018-06-25', 2, 'Grupos'),
(5, 10, 12, 3, 3, '', '2018-06-25', 2, 'Grupos');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `deportefuncionario`
--
ALTER TABLE `deportefuncionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `escenario`
--
ALTER TABLE `escenario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `partidoequipo`
--
ALTER TABLE `partidoequipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
