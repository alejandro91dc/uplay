-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-12-2023 a las 19:31:20
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uplaydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `idPelicula` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Director` varchar(20) NOT NULL,
  `Sinopsis` varchar(250) NOT NULL,
  `Ruta` varchar(50) NOT NULL,
  `rutabg` varchar(50) NOT NULL,
  `Categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`idPelicula`, `Nombre`, `Director`, `Sinopsis`, `Ruta`, `rutabg`, `Categoria`) VALUES
(1, 'Interstellar', 'Cristopher Nolan', 'Científicos liderados por Cooper viajan al espacio en busca de un nuevo hogar para la humanidad, ya que la Tierra está en declive. Buscan un planeta fuera de nuestra galaxia para asegurar el futuro de la raza humana.', 'assets/img/peliculas/interstellar.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(2, 'Dirty Dancing', '', '', 'assets/img/peliculas/DDancing.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(3, 'No mires arriba', '', '', 'assets/img/peliculas/Dlook.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(4, 'El caballero verde', '', '', 'assets/img/peliculas/Gknight.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(5, 'Déjame salir', '', '', 'assets/img/peliculas/GOut.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(6, 'Grease', '', '', 'assets/img/peliculas/Grease.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(7, 'Hotel Budapest', '', '', 'assets/img/peliculas/HBudapest.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(8, 'Her', '', '', 'assets/img/peliculas/Her.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(9, 'Intocables', '', '', 'assets/img/peliculas/Intouchables.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(10, 'Joker', '', '', 'assets/img/peliculas/Joker.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(11, 'La La Land', '', '', 'assets/img/peliculas/Lalaland.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(12, 'Menú', '', '', 'assets/img/peliculas/Menu.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(13, 'Nosotros', '', '', 'assets/img/peliculas/Nosotros.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(14, 'Parásitos', '', '', 'assets/img/peliculas/Parasite.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(15, 'Pulp Fiction', '', '', 'assets/img/peliculas/Pfiction.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(16, 'Dirty Dancing', '', '', 'assets/img/peliculas/DDancing.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(17, 'No mires arriba', '', '', 'assets/img/peliculas/Dlook.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(18, 'El caballero verde', '', '', 'assets/img/peliculas/Gknight.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(19, 'Déjame salir', '', '', 'assets/img/peliculas/GOut.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(20, 'Grease', '', '', 'assets/img/peliculas/Grease.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(21, 'Hotel Budapest', '', '', 'assets/img/peliculas/HBudapest.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(22, 'Her', '', '', 'assets/img/peliculas/Her.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(23, 'Intocables', '', '', 'assets/img/peliculas/Intouchables.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(24, 'Joker', '', '', 'assets/img/peliculas/Joker.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(25, 'La La Land', '', '', 'assets/img/peliculas/Lalaland.jpg', 'assets/img/peliculas/interstellar-bg.png', ''),
(26, 'Menú', '', '', 'assets/img/peliculas/Menu.jpg', '', ''),
(27, 'Nosotros', '', '', 'assets/img/peliculas/Nosotros.jpg', '', ''),
(28, 'Parásitos', '', '', 'assets/img/peliculas/Parasite.jpg', '', ''),
(29, 'Pulp Fiction', '', '', 'assets/img/peliculas/Pfiction.jpg', '', ''),
(30, 'Puñales por la espalda', '', '', 'assets/img/peliculas/Punales.jpg', '', ''),
(31, 'El resplandor', '', '', 'assets/img/peliculas/Resplandor.jpg', '', ''),
(32, 'El silencio de los corderos', '', '', 'assets/img/peliculas/Scorderos.jpg', '', ''),
(33, 'Seven', '', '', 'assets/img/peliculas/Seven.jpg', '', ''),
(34, 'EL show de Truman', '', '', 'assets/img/peliculas/Truman.jpg', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `idAcceso` int(11) NOT NULL,
  `identificador` varchar(10) NOT NULL,
  `clave` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`idAcceso`, `identificador`, `clave`, `nombre`, `foto`, `color`) VALUES
(1, 'Alvaro', 'Alvaro', 'Alvaro Carrasco', 'assets/img/uploads/alumno.jpg', '9CF9FF'),
(2, 'Alex', 'Alex', 'Alejandro Díaz', 'assets/img/uploads/alumno2.jpg', '292929'),
(3, 'Ana', 'Ana', 'Ana Gonzalez', 'assets/img/uploads/alumno3.jpg', 'FF9CE3'),
(4, 'Laura', 'Laura', 'Laura López', 'assets/img/uploads/alumno4.jpg', 'D99CFF'),
(5, 'Sergio', 'Sergio', 'Sergio Martínez', 'assets/img/uploads/alumno5.jpg', '9CF9FF'),
(23, 'Verde', 'verde', 'email', 'foto', '9CFFAC'),
(24, 'Pepe', 'Pepe', 'email', 'foto', 'FF9CE3'),
(25, 'Pepe', 'Pepe', 'email', 'foto', '9CFFAC');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`idPelicula`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idAcceso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `idPelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `idAcceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
