-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-12-2023 a las 18:37:02
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
(1, 'Interstellar', 'Cristopher Nolan', 'Científicos liderados por Cooper viajan al espacio en busca de un nuevo hogar para la humanidad, ya que la Tierra está en declive. Buscan un planeta fuera de nuestra galaxia para asegurar el futuro de la raza humana.', 'assets/img/peliculas/interstellar.jpg', 'assets/img/peliculas/interstellar-bg.png', 'Ciencia ficción'),
(6, 'Grease', 'Randal Kleiser', 'Sandy  y Danny han pasado un romántico y maravilloso verano juntos, pero, cuando las vacaciones se acaban, sus caminos se separan. Inesperadamente, vuelven a verse en el instituto Rydell, pero nada será igual.', 'assets/img/peliculas/Grease.jpg', 'assets/img/peliculas/grease-bg.jpg', 'Musical'),
(7, 'Hotel Budapest', 'Wes Anderson', 'Gustave H., un legendario conserje de un famoso hotel europeo de entreguerras, entabla amistad con Zero Moustafa. La historia trata sobre el robo y la recuperación de una pintura renacentista de valor incalculable.', 'assets/img/peliculas/HBudapest.jpg', 'assets/img/peliculas/budapesthotel-bg.jpg', 'Comedia'),
(8, 'Her', 'Spike Jonze', 'Theodore, un hombre solitario, compra un día un nuevo sistema operativo basado en el modelo de Inteligencia Artificial. Para su sorpresa, se crea una relación romántica entre él y Samantha, la voz femenina de ese sistema operativo.', 'assets/img/peliculas/Her.jpg', 'assets/img/peliculas/her-bg.jpg', 'Comedia'),
(9, 'Intocables', 'Olivier Nakache', 'Philippe, un aristócrata millonario que se ha quedado tetrapléjico, contrata como cuidador a Driss, un inmigrante recién salido de la cárcel. Aunque, a primera vista, no parece la persona más indicada, acaban logrando una inesperada amistad.', 'assets/img/peliculas/Intouchables.jpg', 'assets/img/peliculas/intocable-bg.jpg', 'Comedia'),
(10, 'Joker', 'Todd Phillips', 'Arthur Fleck actúa haciendo de payaso, pero tiene problemas mentales que hacen que la gente le vea como un bicho raro. Su gran sueño es actuar como cómico, pero una serie de trágicos acontecimientos le incrementará su ira contra la sociedad.', 'assets/img/peliculas/Joker.jpg', 'assets/img/peliculas/Joker-bg.jpg', 'Misterio'),
(11, 'La La Land', 'Damien Chazelle', 'Mia, una joven aspirante a actriz y Sebastian, un pianista de jazz que se gana la vida tocando en sórdidos tugurios, se enamoran, pero su gran ambición por llegar a la cima en sus carreras artísticas amenaza con separarlos.', 'assets/img/peliculas/Lalaland.jpg', 'assets/img/peliculas/Lalaland-bg.jpg', 'Musical'),
(14, 'Parásitos', 'Bong Joon-ho', 'Tanto Gi Taek como su familia están sin trabajo. Cuando su hijo mayor, Gi Woo, empieza a dar clases particulares en casa de Park , las dos familias, comienzan una interrelación de resultados imprevisibles.', 'assets/img/peliculas/Parasite.jpg', 'assets/img/peliculas/Parasite-bg.jpg', 'Drama'),
(15, 'Pulp Fiction', 'Quentin Tarantino', 'Jules y Vincent, dos asesinos, trabajan para el gángster Marsellus Wallace. Vincent le confiesa a Jules que Marsellus le ha pedido que cuide de Mia, su mujer. Jules le recomienda prudencia porque es muy peligroso sobrepasarse con la novia del jefe.', 'assets/img/peliculas/Pfiction.jpg', 'assets/img/peliculas/Pfiction-bg.jpg', 'Misterio'),
(25, 'El show de Truman', 'Peter Weir', 'Truman Burbank es un hombre que ha vivido en uno de esos pueblos donde nunca pasa nada. Sin embargo,algunos sucesos le hacen sospechar que algo anormal está ocurriendo. Toda su ciudad es un plató y está siendo filmada y emitida como un reality.', 'assets/img/peliculas/Truman.jpg', 'assets/img/peliculas/Elshowdetruman-bg.jpg', 'Comedia'),
(26, 'Seven', 'David Fincher', 'El teniente Somersez y el detective David Mills tendrán que colaborar en la resolución de una serie de asesinatos que toman como base la relación de los siete pecados capitales: gula, pereza, soberbia, avaricia, envidia, lujuria e ira.', 'assets/img/peliculas/Menu.jpg', 'assets/img/peliculas/Seven-bg.jpg', 'Misterio'),
(27, 'Dirty Dancing', 'Emile Ardolino', 'Baby es una joven que quiere disfrutar de su juventud. Por eso se decepciona cuando descubre que sus padres pasarán el verano con ella. Sin embargo, su suerte cambia cuando conoce a Johnny, el experto y seductor profesor de baile del complejo.', 'assets/img/peliculas/Ddancing.jpg', 'assets/img/peliculas/Ddancing-bg.jpg', 'Musical'),
(30, 'Puñales por la espalda', 'Rian Johnson', 'Cuando el renombrado novelista de misterio Harlan Thrombey es encontrado muerto en su mansión, justo después de la celebración familiar de su 85 cumpleaños, el detective Benoit Blanc es misteriosamente reclutado para investigar el asunto.', 'assets/img/peliculas/Punales.jpg', 'assets/img/peliculas/Knivesout-bg.jpg', 'Misterio'),
(31, 'No mires arriba', 'Adam Mckay', 'Dos astrónomos mediocres descubren que en pocos meses un meteorito destruirá el planeta Tierra. Desde ese momento, deberán advertir a la humanidad del peligro que se avecina a través de los medios de comunicación.', 'assets/img/peliculas/Dlook.jpg', 'assets/img/peliculas/Dontlookup-bg.jpg', 'Terror'),
(32, 'El silencio de los corderos', 'Jonathan Demme', 'El FBI busca a \"Buffalo Bill\". Para poder atraparlo recurren a Clarice Starling, experta en conductas psicópatas, que aspira a formar parte del FBI, esta intentará sacarle información sobre los patrones de conducta del asesino que están buscando.', 'assets/img/peliculas/Scorderos.jpg', 'assets/img/peliculas/Sscorderos-bg.jpg', 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `idSerie` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Temporadas` int(20) NOT NULL,
  `Sinopsis` varchar(250) NOT NULL,
  `Ruta` varchar(50) NOT NULL,
  `rutabg` varchar(50) NOT NULL,
  `Categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`idSerie`, `Nombre`, `Temporadas`, `Sinopsis`, `Ruta`, `rutabg`, `Categoria`) VALUES
(1, 'Nombre serie', 2, 'sinopsis de la serie', 'assets/img/series/nombreSerie.jpg', 'assets/img/series/nombreSerie-bg.jpg', 'Terror');

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
(25, 'Pepe', 'Pepe', 'email', 'foto', '9CFFAC'),
(26, 'laura', 'laura', 'email', 'foto', '9CF9FF'),
(27, 'laura', 'laura', 'email', 'foto', '9CF9FF'),
(28, 'laura', 'ewt', 'email', 'foto', 'FF9CE3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`idPelicula`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`idSerie`);

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
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `idSerie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `idAcceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
