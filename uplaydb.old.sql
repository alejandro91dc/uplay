-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-01-2024 a las 21:28:05
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

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
(1, 'Interstellar', 'Cristopher Nolan', 'Científicos liderados por Cooper viajan al espacio en busca de un nuevo hogar para la humanidad, ya que la Tierra está en declive. Buscan un planeta fuera de nuestra galaxia para asegurar el futuro de la raza humana.', 'assets/img/peliculas/Interstellar.jpg', 'assets/img/peliculas/interstellar-bg.png', 'Acción'),
(6, 'Grease', 'Randal Kleiser', 'Sandy  y Danny han pasado un romántico y maravilloso verano juntos, pero, cuando las vacaciones se acaban, sus caminos se separan. Inesperadamente, vuelven a verse en el instituto Rydell, pero nada será igual.', 'assets/img/peliculas/Grease.jpg', 'assets/img/peliculas/grease-bg.jpg', 'Musical'),
(7, 'Hotel Budapest', 'Wes Anderson', 'Gustave H., un legendario conserje de un famoso hotel europeo de entreguerras, entabla amistad con Zero Moustafa. La historia trata sobre el robo y la recuperación de una pintura renacentista de valor incalculable.', 'assets/img/peliculas/HBudapest.jpg', 'assets/img/peliculas/budapesthotel-bg.jpg', 'Comedia'),
(8, 'Her', 'Spike Jonze', 'Theodore, un hombre solitario, compra un día un nuevo sistema operativo basado en el modelo de Inteligencia Artificial. Para su sorpresa, se crea una relación romántica entre él y Samantha, la voz femenina de ese sistema operativo.', 'assets/img/peliculas/Her.jpg', 'assets/img/peliculas/her-bg.jpg', 'Comedia'),
(9, 'Intocables', 'Olivier Nakache', 'Philippe, un aristócrata millonario que se ha quedado tetrapléjico, contrata como cuidador a Driss, un inmigrante recién salido de la cárcel. Aunque, a primera vista, no parece la persona más indicada, acaban logrando una inesperada amistad.', 'assets/img/peliculas/Intouchables.jpg', 'assets/img/peliculas/intocable-bg.jpg', 'Comedia'),
(10, 'Joker', 'Todd Phillips', 'Arthur Fleck actúa haciendo de payaso, pero tiene problemas mentales que hacen que la gente le vea como un bicho raro. Su gran sueño es actuar como cómico, pero una serie de trágicos acontecimientos le incrementará su ira contra la sociedad.', 'assets/img/peliculas/Joker.jpg', 'assets/img/peliculas/Joker-bg.jpg', 'Drama'),
(11, 'La La Land', 'Damien Chazelle', 'Mia, una joven aspirante a actriz y Sebastian, un pianista de jazz que se gana la vida tocando en sórdidos tugurios, se enamoran, pero su gran ambición por llegar a la cima en sus carreras artísticas amenaza con separarlos.', 'assets/img/peliculas/Lalaland.jpg', 'assets/img/peliculas/Lalaland-bg.jpg', 'Musical'),
(14, 'Parásitos', 'Bong Joon-ho', 'Tanto Gi Taek como su familia están sin trabajo. Cuando su hijo mayor, Gi Woo, empieza a dar clases particulares en casa de Park , las dos familias, comienzan una interrelación de resultados imprevisibles.', 'assets/img/peliculas/Parasite.jpg', 'assets/img/peliculas/Parasite-bg.jpg', 'Drama'),
(15, 'Pulp Fiction', 'Quentin Tarantino', 'Jules y Vincent, dos asesinos, trabajan para el gángster Marsellus Wallace. Vincent le confiesa a Jules que Marsellus le ha pedido que cuide de Mia, su mujer. Jules le recomienda prudencia porque es muy peligroso sobrepasarse con la novia del jefe.', 'assets/img/peliculas/Pfiction.jpg', 'assets/img/peliculas/Pfiction-bg.jpg', 'Misterio'),
(25, 'El show de Truman', 'Peter Weir', 'Truman Burbank es un hombre que ha vivido en uno de esos pueblos donde nunca pasa nada. Sin embargo,algunos sucesos le hacen sospechar que algo anormal está ocurriendo. Toda su ciudad es un plató y está siendo filmada y emitida como un reality.', 'assets/img/peliculas/Truman.jpg', 'assets/img/peliculas/Elshowdetruman-bg.jpg', 'Comedia'),
(26, 'Seven', 'David Fincher', 'El teniente Somersez y el detective David Mills tendrán que colaborar en la resolución de una serie de asesinatos que toman como base la relación de los siete pecados capitales: gula, pereza, soberbia, avaricia, envidia, lujuria e ira.', 'assets/img/peliculas/Seven.jpg', 'assets/img/peliculas/Seven-bg.jpg', 'Misterio'),
(27, 'Dirty Dancing', 'Emile Ardolino', 'Baby es una joven que quiere disfrutar de su juventud. Por eso se decepciona cuando descubre que sus padres pasarán el verano con ella. Sin embargo, su suerte cambia cuando conoce a Johnny, el experto y seductor profesor de baile del complejo.', 'assets/img/peliculas/DirtyDancing.jpg', 'assets/img/peliculas/Ddancing-bg.jpg', 'Musical'),
(30, 'Puñales por la espalda', 'Rian Johnson', 'Cuando el renombrado novelista de misterio Harlan Thrombey es encontrado muerto en su mansión, justo después de la celebración familiar de su 85 cumpleaños, el detective Benoit Blanc es misteriosamente reclutado para investigar el asunto.', 'assets/img/peliculas/PuñalesEspalda.jpg', 'assets/img/peliculas/Knivesout-bg.jpg', 'Misterio'),
(31, 'Forrest Gump', 'Robert Zemeckis', 'Sentado en un banco en Savannah, Georgia, Forrest Gump espera al autobús. Mientras éste tarda en llegar, el joven cuenta su vida a las personas que se sientan a esperar con él.', 'assets/img/peliculas/ForrestGump.jpg', 'assets/img/peliculas/ForrestGump-bg.jpg', 'Drama'),
(32, 'El silencio de los corderos', 'Jonathan Demme', 'El FBI busca a \"Buffalo Bill\". Para poder atraparlo recurren a Clarice Starling, experta en conductas psicópatas, que aspira a formar parte del FBI, esta intentará sacarle información sobre los patrones de conducta del asesino que están buscando.', 'assets/img/peliculas/SCorderos.jpg', 'assets/img/peliculas/Sscorderos-bg.jpg', 'Misterio'),
(35, 'Hallloween', 'Rob Zombie', 'El pequeño Michael Myers asesina a su hermana en la noche de Halloween de 1963, por lo que es internado en un psiquiátrico. Seis años más tarde, Myers se escapa del hospital y regresa a su pueblo natal, Haddonfield, en Illinois.', 'assets/img/peliculas/Halloween.jpg', 'assets/img/peliculas/Halloween-bg.jpg', 'Terror'),
(36, 'Psicosis', 'Alfred Hitchcock', 'Cae en manos de Marion Crane  40.000 dólares en efectivo que su jefe le confía para depositarlos en el banco. Marion decide apoderarse de esa suma para comenzar con Sam una nueva vida.', 'assets/img/peliculas/Psicosis.jpg', 'assets/img/peliculas/Psicosis-bg.jpg', 'Terror'),
(37, 'La matanza de Texas', 'Tobe Hooper', 'Un grupo de jóvenes se pierde en medio de las desérticas carreteras de Texas, y termina encontrándose con una familia de matarifes que los persigue con una sierra mecánica, descuartizándolos uno por uno.', 'assets/img/peliculas/LMDTexas.jpg', 'assets/img/peliculas/MTexas-bg.jpg', 'Terror'),
(38, 'Scream', 'Wes Craven', 'Un asesino en serie, con máscara y disfraz negro, siembra el pánico entre los adolescentes de un pueblo californiano. Paralelamente, la joven Sidney Prescott atraviesa un mal momento: se cumple un año desde que murió su madre.', 'assets/img/peliculas/Scream.jpg', 'assets/img/peliculas/Scream-bg.jpg', 'Terror'),
(40, 'Barbie', 'Greta Gerwig', 'Después de ser expulsada de Barbieland por no ser una muñeca de aspecto perfecto, Barbie parte hacia el mundo humano para encontrar la verdadera felicidad.', 'assets/img/peliculas/Barbie.jpg', 'assets/img/peliculas/Barbie-bg.jpg', 'Comedia'),
(41, 'Cadena perpetua', 'Frank Darabont', 'Andrew Dufresne es un hombre inocente que es acusado del asesinato de su mujer. Tras ser condenado a cadena perpetua, es enviado a la cárcel de Shawshank, en Maine.', 'assets/img/peliculas/CadenaPerpetua.jpg', 'assets/img/peliculas/CadenaPerpetua-bg.jpg', 'Drama'),
(42, 'La lista de Schindler', 'Steven Spielberg', 'Oskar Schindler, un hombre de enorme astucia y talento organiza un ambicioso plan para ganarse la simpatía de los nazis y a la vez poder rescatar a miles de judíos.', 'assets/img/peliculas/LLDSchindler.jpg', 'assets/img/peliculas/LLDSchindler-bg.jpg', 'Drama'),
(43, 'Baby Driver', 'Edgar Wright', 'Para saldar su deuda con un mafioso, un joven con problemas de audición hace de conductor en atracos. Cuando por fin cree que se ha librado de su compromiso y pretende rehacer su vida, se ve obligado a retornar para un último golpe.', 'assets/img/peliculas/BabyDriver.jpg', 'assets/img/peliculas/BabyDriver-bg.png', 'Acción'),
(44, 'Top Gun: Maverick', 'Joseph Kosinski', 'Tras más de 30 años de servicio como uno de los mejores aviadores de la Armada, Pete \"Maverick\" Mitchel se encuentra donde siempre quiso estar, empujando los límites como un valiente piloto de pruebas.', 'assets/img/peliculas/TopGunMaverick.jpg', 'assets/img/peliculas/TopGunMaverick-bg.jpg', 'Acción'),
(46, 'Tenet', 'Christopher Nolan', 'Una acción épica que gira en torno al espionaje internacional, los viajes en el tiempo y la evolución, en la que un agente secreto debe prevenir la Tercera Guerra Mundial.', 'assets/img/peliculas/Tenet.jpg', 'assets/img/peliculas/Tenet-bg.jpg', 'Acción'),
(48, 'Nosotros', 'Jordan Peele', 'Adelaide Wilson, su marido y sus dos hijos visitan la casa en la que ella creció junto a la playa. Allí, Adelaide tiene un presentimiento siniestro que precede a un encuentro espeluznante: cuatro enmascarados se presentan ante su casa.', 'assets/img/peliculas/Nosotros.jpg', 'assets/img/peliculas/Nosotros-bg.jpg', 'Misterio'),
(50, 'El gran showman', 'Michael Grace', 'En el siglo XIX, P.T. Barnum es un visionario que surge de la nada y crea un fascinante espectáculo que se convertirá en una sensación mundial, el llamado Ringling Bros. and Barnum & Bailey Circus.', 'assets/img/peliculas/GShowman.jpg', 'assets/img/peliculas/GShowman-bg.jpg', 'Musical'),
(51, 'Dando la nota', 'Jason Moore', 'Cuando una nueva estudiante se une al grupo femenino de música a capella de su universidad, saca a las mujeres de su zona de comfort para que cambien de las canciones tradicionales a un estilo más innovador.', 'assets/img/peliculas/DLNota.jpg', 'assets/img/peliculas/DLNotan-bg.jpg', 'Musical');

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
(1, 'Wednesday', 1, 'Wednesday Addams intenta dominar sus poderes psíquicos, detener una monstruosa ola de asesinatos de los ciudadanos del pueblo y resolver el misterio sobrenatural que afectó a su familia, todo mientras navega por sus nuevas relaciones.', 'assets/img/series/Wednesday.jpg', 'assets/img/series/nombreSerie-bg.jpg', 'Misterio'),
(2, 'The walking dead', 11, 'Tras un apocalipsis zombie, un grupo de supervivientes, dirigidos por el policía Rick Grimes, recorre los Estados Unidos para ponerse a salvo.', 'assets/img/series/Wdead.jpg', 'assets/img/series/walkingdead-bg.jpg', 'Drama'),
(3, 'The crown', 6, 'La historia de la última reina de Inglaterra, Isabel II, y de la relación entre dos de las direcciones más famosas del mundo: el Palacio de Buckingham y el número 10 de Downing Street.', 'assets/img/series/Tcrown.jpg', 'assets/img/series/Crown-bg.jpg', 'Historia'),
(4, 'Peaky Blinders', 6, 'Una familia de gánsters tras la Primera Guerra Mundial, se dedica a las apuestas hípicas.El Inspector jefe Chester Campbell decide investigar y que es enviado desde Belfast para limpiar la ciudad y acabar con la banda.', 'assets/img/series/PBlinders.jpg', 'assets/img/series/peakyblinders-bg.jpg', 'Misterio'),
(5, 'Ozark', 4, 'Azucarada. Marty, asesor financiero, ingenia un plan temerario para sobrevivir y salvar a su familia después de que su socio traicionara a un peligroso cliente.', 'assets/img/series/Ozark.jpg', 'assets/img/series/nombreSerie-bg.jpg', 'Drama'),
(6, 'Mad Men', 7, 'Don Draper es uno de los mejores publicistas del Nueva York de la década de 1960. Está casado con Betty, con la que es padre de dos niños, trabaja para la agencia Sterling Cooper, y guarda un terrible secreto.', 'assets/img/series/MMen.jpg', 'assets/img/series/madmen-bg.jpg', 'Drama'),
(7, 'Juego del calamar', 1, 'Cientos de jugadores con problemas económicos aceptan una extraña invitación para competir en juegos infantiles. Dentro les esperan un premio tentador y desafíos letales.', 'assets/img/series/JCalamar.jpg', 'assets/img/series/juegodelcalamar-bg.jpg', 'Misterio'),
(8, 'Gambito de dama', 1, 'La huérfana y prodigio del ajedrez. Beth Harmon, lucha contra la adicción mientras busca convertirse en la mejor jugadora de ajedrez del mundo.', 'assets/img/series/GDama.jpg', 'assets/img/series/gambitodedama-bg.jpg', 'Drama'),
(57, 'Las chicas del cable', 5, 'Cuatro mujeres de la Compañía Telefónica Nacional española promueven una revolución involucrada en amores, amistades y el Progreso hacia una evolución para la mujer en Madrid de 1928.', 'assets/img/series/CCable.jpg', 'assets/img/serieschicasdelcable-bg.jpg', 'Drama'),
(58, 'El cuento de la criada', 5, 'Unidos y la mayoría del Congreso, se instaura en el país un régimen teocrático basado en los más estrictos valores puritanos. Los Estados Unidos de América, desde ese momento, pasan a ser conocidos como la República de Gilead. ', 'assets/img/series/CCriada.jpg', 'assets/img/series/cuentodelacriada-bg.jpg', 'Drama'),
(59, 'Bridgerton', 3, 'Cuenta desde una perspectiva feminista una historia de amor durante el Período de Regencia en el Reino Unido. La ficción indaga en las vidas ricas, divertidas, tristes, sexuales, de las mujeres y hombres de la alta sociedad londinense.', 'assets/img/series/Bridgerton.jpg', 'assets/img/series/bridgerton-bg.jpg', 'Romance'),
(60, 'Breaking Bad', 5, 'Hundido por una monótona e insulsa relación con su mujer e incapaz de poner a prueba su brillantez trabajando como profesor de instituto, Walter da un giro radical a su forma de vida cuando descubre que tiene un cáncer terminal. ', 'assets/img/series/BBad.jpg', 'assets/img/series/breakingbad-bg.jpg', 'Drama'),
(61, 'Chernobyl', 1, 'Hombres y mujeres valientes actúan heroicamente para mitigar los daños catastróficos cuando la central nuclear de Chernobyl sufre un accidente nuclear el 26 de abril de 1986.', 'assets/img/series/AHorror.jpg', 'assets/img/series/Americanhorrorstory-bg.jpg', 'Historia');

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
(28, 'laura', 'ewt', 'email', 'foto', 'FF9CE3'),
(29, 'panete', 'panete1', 'email', 'foto', 'D99CFF'),
(30, 'sergiopane', 'panete2', 'email', 'foto', '9CF9FF'),
(31, '', '', 'panete3@gmail.com', 'foto', '9CFFAC'),
(32, 'panete4', 'panete4', 'email', 'foto', 'FF9CE3'),
(33, 'panete6', 'panete6', 'email', 'foto', '9CF9FF'),
(34, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(35, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(36, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(37, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(38, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(39, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(40, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(41, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(42, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(43, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(44, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(45, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(46, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(47, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(48, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(49, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(50, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(51, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(52, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC'),
(53, 'panetone', 'panetone1', 'email', 'foto', '9CFFAC');

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
  MODIFY `idPelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `idSerie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `idAcceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
