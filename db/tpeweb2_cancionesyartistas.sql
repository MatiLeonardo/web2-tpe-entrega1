-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2023 a las 17:39:32
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
  `nombre_artista` varchar(30) NOT NULL,
  `descripcion` varchar(800) NOT NULL,
  `edad` int(11) NOT NULL,
  `nacionalidad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre_artista`, `descripcion`, `edad`, `nacionalidad`) VALUES
(4, 'Bad Bunny', 'Bad Bunny, cuyo nombre real es Benito Antonio Martínez Ocasio, es un cantante, rapero y compositor puertorriqueño nacido el 10 de marzo de 1994 en San Juan, Puerto Rico. Se ha convertido en uno de los artistas más influyentes y reconocidos en el mundo de la música urbana y el reguetón en la década d', 29, 'Puerto Rico'),
(5, 'Gonza', 'Prueba', 29, 'Español'),
(6, 'AAA', 'AAA', 23, 'ADADA'),
(7, 'AAA', 'AAA', 23, 'ADADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id_cancion` int(11) NOT NULL,
  `nombre_artista` varchar(45) NOT NULL,
  `nombre_cancion` varchar(45) NOT NULL,
  `album` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `duracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `rol`) VALUES
(1, 'gonza', '$2y$10$4ZSM0M3Yzdp/mTxmAQ.eG.YAWi4EaiZWzaeDgoC3luPzk8MBn1eDy', 0),
(2, 'prueba', '$2y$10$EJcgBaVTx/NvDapZjNTCF.Ckd73eqXbiTBFMZYwVastNH9YhtrTdq', 0),
(3, 'prueba2', '$2y$10$yM0A6WoslW0xgDSBP1J9wuTZDBhUF0G/Z9nauKB9Z/Kly2jHKjEce', 0),
(4, 'webadmin', '$2y$10$Ppi7FwzUsXs2F1.HHx6ccuRpeuQ8LymSWxk5Qg9ma4I8TzBO8W23S', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id_cancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`nombre_artista`) REFERENCES `artistas` (`nombre_artista`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
