-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2016 a las 14:58:07
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoawe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `IdEstudiante` int(50) NOT NULL,
  `EstPadre` int(50) NOT NULL,
  `EstGrado` int(50) NOT NULL,
  `EstMatricula` varchar(50) NOT NULL,
  `EstUsuario` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`IdEstudiante`, `EstPadre`, `EstGrado`, `EstMatricula`, `EstUsuario`) VALUES
(9567, 7896, 3002, 'Matriculado', 15),
(34001, 9876, 1001, 'Matriculado', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_prueba`
--

CREATE TABLE `estudiante_prueba` (
  `IdEstudiante` int(50) NOT NULL,
  `IdPrueba` int(50) NOT NULL,
  `Nota` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `IdGrado` int(50) NOT NULL,
  `GrDescripcion` varchar(160) NOT NULL,
  `GrNombre` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`IdGrado`, `GrDescripcion`, `GrNombre`) VALUES
(1001, 'Grado primero A de primaria, del colegio Promoción social de Neiva, jornada mañana', 'Primero A'),
(1002, 'Grado primero B de primaria del colegio Promoción social', 'Primero B'),
(2001, 'Grado segundo A de primaria del colegio promoción social', 'Segundo A'),
(2002, 'Grado segundo B de primaría, colegio promoción social', 'Segundo B'),
(3001, 'Grado tercero A de primaria, colegio Promoción social', 'Tercero A'),
(3002, 'Grado tercero B de primaria, colegio promoción social', 'Tercero B'),
(4001, 'Grado cuarto A de primaria, colegio promoción social', 'Cuarto A'),
(4002, 'Grado cuarto B de primaria, colegio Promoción social', 'Cuarto B'),
(5001, 'Grado quinto A de primaria, colegio promoción social', 'Quinto A'),
(5002, 'Grado Quinto B de primaria, colegio promoción social', 'Quinto B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado_tema`
--

CREATE TABLE `grado_tema` (
  `IdGrado` int(50) NOT NULL,
  `IdTema` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `IdMateria` int(50) NOT NULL,
  `MatNombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`IdMateria`, `MatNombre`) VALUES
(10001, 'Matemáticas'),
(20002, 'Español'),
(30003, 'Ciencias'),
(40004, 'Sociales'),
(50005, 'Inglés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padre`
--

CREATE TABLE `padre` (
  `IdPadre` int(11) NOT NULL,
  `PaUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `padre`
--

INSERT INTO `padre` (`IdPadre`, `PaUsuario`) VALUES
(9876, 9),
(7896, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `IdPregunta` int(50) NOT NULL,
  `Pregunta` varchar(200) NOT NULL,
  `preCodigo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`IdPregunta`, `Pregunta`, `preCodigo`) VALUES
(1114, '¿Qué son los seres vivos?', 'PT1C'),
(1225, '¿Cuantos planetas tiene el sistema solar?', 'PT2S'),
(2331, 'En una granja hay 87 vacas, si venden 33 vacas ¿Cuántas vacas quedan en la granja?', 'ST3M'),
(3234, 'Las palabras cómico, última, sílaba y bárbaro son:\r\n ', 'TT3E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `IdProfesor` int(50) NOT NULL,
  `ProUsuario` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`IdProfesor`, `ProUsuario`) VALUES
(321, 6),
(2341, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_grado`
--

CREATE TABLE `profesor_grado` (
  `IdProfesor` int(50) NOT NULL,
  `IdGrado` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_materias`
--

CREATE TABLE `profesor_materias` (
  `IdProfesor` int(50) NOT NULL,
  `IdMateria` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba`
--

CREATE TABLE `prueba` (
  `IdPrueba` int(11) NOT NULL,
  `PrNombre` varchar(50) NOT NULL,
  `PrPuntaje` double NOT NULL,
  `PrFecha` date NOT NULL,
  `PrPregunta` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `IdRespuesta` int(50) NOT NULL,
  `ReCorrecta` varchar(20) NOT NULL,
  `IdPregunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `IdTema` int(11) NOT NULL,
  `TeEstudiante` int(11) NOT NULL,
  `TeArea` varchar(50) NOT NULL,
  `TePrueba` int(50) NOT NULL,
  `TeMateria` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(50) NOT NULL,
  `UsNombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `UsApellido` varchar(50) NOT NULL,
  `UsGenero` varchar(10) NOT NULL,
  `UsTelefono` int(11) NOT NULL,
  `UsPassword` text NOT NULL,
  `UsDocumentoIdentidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IdUsuario`, `UsNombre`, `UsApellido`, `UsGenero`, `UsTelefono`, `UsPassword`, `UsDocumentoIdentidad`) VALUES
(5, 'pedro', 'vargas', 'masculino', 54321, '101010', 23456),
(6, 'Juliana', 'Perez', 'femenino', 2345678, '123456', 98765),
(7, 'Sofia', 'Cuellar', 'femenino', 2587965, '12345677', 23445678),
(8, 'sdfsdfsadf', 'sdf', 'masculino', 1234567, '1234567', 12323435),
(9, 'Paola', 'Duque', 'femenino', 2341231, '90909090', 12349876),
(10, 'Paola', 'Duque', 'femenino', 2341231, '90909090', 12349876),
(11, 'Camilo', 'Arias', 'Masculino', 5478963, 'a2345', 10187459),
(12, 'Elsa', 'Barragán', 'Femenino', 8715820, 'p4589', 36578952),
(13, 'Laura', 'Ramirez', 'Femenino', 8963254, 'm3245', 264789542),
(14, 'Leonardo', 'Ortiz', 'Masculino', 5879541, 'p23451', 4157896),
(15, 'Isabel', 'Vives', 'Femenino', 2457896, 'a12345', 1014587923);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `IdVisitas` int(11) NOT NULL,
  `ViProfesor` int(11) NOT NULL,
  `ViPadre` int(11) NOT NULL,
  `ViEstudiante` int(11) NOT NULL,
  `ViFecha` date NOT NULL,
  `ViNumero` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`IdEstudiante`),
  ADD KEY `Padre_IdPadre` (`EstPadre`),
  ADD KEY `Grupo_IdGrupo` (`EstGrado`),
  ADD KEY `EstUsuario` (`EstUsuario`);

--
-- Indices de la tabla `estudiante_prueba`
--
ALTER TABLE `estudiante_prueba`
  ADD KEY `IdEstudiante` (`IdEstudiante`),
  ADD KEY `IdPrueba` (`IdPrueba`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`IdGrado`);

--
-- Indices de la tabla `grado_tema`
--
ALTER TABLE `grado_tema`
  ADD KEY `IdGrado` (`IdGrado`),
  ADD KEY `IdTema` (`IdTema`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`IdMateria`);

--
-- Indices de la tabla `padre`
--
ALTER TABLE `padre`
  ADD PRIMARY KEY (`IdPadre`),
  ADD KEY `PaUsuario` (`PaUsuario`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`IdPregunta`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`IdProfesor`),
  ADD KEY `ProUsuario` (`ProUsuario`);

--
-- Indices de la tabla `profesor_grado`
--
ALTER TABLE `profesor_grado`
  ADD KEY `IdProfesor` (`IdProfesor`),
  ADD KEY `IdGrado` (`IdGrado`),
  ADD KEY `IdGrado_2` (`IdGrado`),
  ADD KEY `IdGrado_3` (`IdGrado`),
  ADD KEY `IdGrado_4` (`IdGrado`);

--
-- Indices de la tabla `profesor_materias`
--
ALTER TABLE `profesor_materias`
  ADD KEY `IdProfesor` (`IdProfesor`),
  ADD KEY `IdMateria` (`IdMateria`);

--
-- Indices de la tabla `prueba`
--
ALTER TABLE `prueba`
  ADD PRIMARY KEY (`IdPrueba`),
  ADD KEY `IdPregunta` (`PrPregunta`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`IdRespuesta`),
  ADD KEY `RePregunta` (`IdPregunta`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`IdTema`),
  ADD KEY `FKestudiante` (`TeEstudiante`),
  ADD KEY `IdPrueba` (`TePrueba`),
  ADD KEY `IdMateria` (`TeMateria`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`IdVisitas`),
  ADD KEY `FKprofesor` (`ViProfesor`),
  ADD KEY `FKpadre` (`ViPadre`),
  ADD KEY `FKestudiante` (`ViEstudiante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `EstGrado` FOREIGN KEY (`EstGrado`) REFERENCES `grado` (`IdGrado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `EstPadre` FOREIGN KEY (`EstPadre`) REFERENCES `padre` (`IdPadre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `EstUsuario` FOREIGN KEY (`EstUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiante_prueba`
--
ALTER TABLE `estudiante_prueba`
  ADD CONSTRAINT `estudiante` FOREIGN KEY (`IdEstudiante`) REFERENCES `estudiante` (`IdEstudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prueba` FOREIGN KEY (`IdPrueba`) REFERENCES `prueba` (`IdPrueba`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `grado_tema`
--
ALTER TABLE `grado_tema`
  ADD CONSTRAINT `Grado` FOREIGN KEY (`IdGrado`) REFERENCES `grado` (`IdGrado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Tema` FOREIGN KEY (`IdTema`) REFERENCES `tema` (`IdTema`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `padre`
--
ALTER TABLE `padre`
  ADD CONSTRAINT `PaUsuario` FOREIGN KEY (`PaUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `ProUsuario` FOREIGN KEY (`ProUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesor_grado`
--
ALTER TABLE `profesor_grado`
  ADD CONSTRAINT `Idgrado` FOREIGN KEY (`IdGrado`) REFERENCES `grado` (`IdGrado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profesor` FOREIGN KEY (`IdProfesor`) REFERENCES `profesor` (`IdProfesor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesor_materias`
--
ALTER TABLE `profesor_materias`
  ADD CONSTRAINT `IdProfesor` FOREIGN KEY (`IdProfesor`) REFERENCES `profesor` (`IdProfesor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia` FOREIGN KEY (`IdMateria`) REFERENCES `materias` (`IdMateria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `prueba`
--
ALTER TABLE `prueba`
  ADD CONSTRAINT `pregunta` FOREIGN KEY (`PrPregunta`) REFERENCES `pregunta` (`IdPregunta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `IdPregunta` FOREIGN KEY (`IdPregunta`) REFERENCES `pregunta` (`IdPregunta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tema`
--
ALTER TABLE `tema`
  ADD CONSTRAINT `TeEstudiante` FOREIGN KEY (`TeEstudiante`) REFERENCES `estudiante` (`IdEstudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TePrueba` FOREIGN KEY (`TePrueba`) REFERENCES `prueba` (`IdPrueba`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD CONSTRAINT `ViEstudiante` FOREIGN KEY (`ViEstudiante`) REFERENCES `estudiante` (`IdEstudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ViPadre` FOREIGN KEY (`ViPadre`) REFERENCES `padre` (`IdPadre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ViProfesor` FOREIGN KEY (`ViProfesor`) REFERENCES `profesor` (`IdProfesor`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
