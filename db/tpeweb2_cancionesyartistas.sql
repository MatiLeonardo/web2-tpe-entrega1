-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2023 a las 21:33:23
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tpeweb2_cancionesyartistas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre_artista` varchar(30) DEFAULT NULL,
  `descripcion` varchar(800) NOT NULL,
  `edad` int(11) NOT NULL,
  `nacionalidad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre_artista`, `descripcion`, `edad`, `nacionalidad`) VALUES
(25, 'Bad Bunny', 'penenee', 29, 'Caca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id_cancion` int(11) NOT NULL,
  `nombre_artista` varchar(45) DEFAULT NULL,
  `nombre_cancion` varchar(45) NOT NULL,
  `album` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `duracion` varchar(10) NOT NULL,
  `letra` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id_cancion`, `nombre_artista`, `nombre_cancion`, `album`, `genero`, `duracion`, `letra`) VALUES
(6, NULL, 'asdads', 'adsdas', 'dsa', 'dsaadsads', 'adsads');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `isAdmin`) VALUES
(1, 'gonza', '$2y$10$4ZSM0M3Yzdp/mTxmAQ.eG.YAWi4EaiZWzaeDgoC3luPzk8MBn1eDy', 0),
(2, 'prueba', '$2y$10$EJcgBaVTx/NvDapZjNTCF.Ckd73eqXbiTBFMZYwVastNH9YhtrTdq', 0),
(3, 'prueba2', '$2y$10$yM0A6WoslW0xgDSBP1J9wuTZDBhUF0G/Z9nauKB9Z/Kly2jHKjEce', 0),
(4, 'webadmin', '$2y$10$Ppi7FwzUsXs2F1.HHx6ccuRpeuQ8LymSWxk5Qg9ma4I8TzBO8W23S', 1),
(5, 'prueba3', '$2y$10$NdqA2zxrYW/9Bgpmo0U8huQ1F26dZM2Qf4j/N/BDIIaCwfNB4Ae.u', 0),
(6, 'gonzagiaco', '$2y$10$1oOsXyIFGNTKqn9IgEFO5O4UztUh8oU0VJi36hgabAvNz3UrzMR6y', 0),
(7, 'gonzita', '$2y$10$CzTFrAVknhTCdM4ChxRjZ.bdCCEGEyTnGSMwOrfPBvreQsqzqSHqq', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre_artista` (`nombre_artista`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id_cancion`),
  ADD KEY `fk_nombre_artista` (`nombre_artista`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id_cancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`nombre_artista`) REFERENCES `artistas` (`nombre_artista`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
