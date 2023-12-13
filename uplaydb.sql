-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2022 a las 11:45:09
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `users` (
  `idAcceso` int(11) NOT NULL,
  `identificador` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `users` (`idAcceso`, `identificador`, `clave`, `nombre`, `foto`, `color`) VALUES
(1, 'Alvaro', 'Alvaro', 'Alvaro Carrasco', 'assets/img/uploads/alumno.jpg','verde'),
(2, 'Alex', 'Alex', 'Alejandro Díaz', 'assets/img/uploads/alumno2.jpg','gris'),
(3, 'Ana', 'Ana', 'Ana Gonzalez', 'assets/img/uploads/alumno3.jpg','rosa'),
(4, 'Laura', 'Laura', 'Laura López', 'assets/img/uploads/alumno4.jpg','morado'),
(5, 'Sergio', 'Sergio', 'Sergio Martínez', 'assets/img/uploads/alumno5.jpg','azul'),
(6, 'alumno6', '1234', 'Norman Osborn', 'assets/img/uploads/alumno6.jpg','gris'),
(7, 'alumno7', '1234', 'Harvey Dent', 'assets/img/uploads/alumno7.jpg','gris'),
(8, 'alumno8', '1234', 'Dr. Otto Octavius', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idAcceso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `users`
  MODIFY `idAcceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
