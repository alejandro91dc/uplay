-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-01-2024 a las 23:16:23
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
(1, 'Interstellar', 'Cristopher Nolan', 'Científicos liderados por Cooper viajan al espacio en busca de un nuevo hogar para la humanidad, ya que la Tierra está en declive. Buscan un planeta fuera de nuestra galaxia para asegurar el futuro de la raza humana.', 'assets/img/peliculas/Interstellar.jpg', 'assets/img/peliculas/interstellar-bg.png', 'Acción'),
(2, 'Grease', 'Randal Kleiser', 'Sandy  y Danny han pasado un romántico y maravilloso verano juntos, pero, cuando las vacaciones se acaban, sus caminos se separan. Inesperadamente, vuelven a verse en el instituto Rydell, pero nada será igual.', 'assets/img/peliculas/Grease.jpg', 'assets/img/peliculas/grease-bg.jpg', 'Musical'),
(3, 'Hotel Budapest', 'Wes Anderson', 'Gustave H., un legendario conserje de un famoso hotel europeo de entreguerras, entabla amistad con Zero Moustafa. La historia trata sobre el robo y la recuperación de una pintura renacentista de valor incalculable.', 'assets/img/peliculas/HBudapest.jpg', 'assets/img/peliculas/budapesthotel-bg.jpg', 'Comedia'),
(4, 'Her', 'Spike Jonze', 'Theodore, un hombre solitario, compra un día un nuevo sistema operativo basado en el modelo de Inteligencia Artificial. Para su sorpresa, se crea una relación romántica entre él y Samantha, la voz femenina de ese sistema operativo.', 'assets/img/peliculas/Her.jpg', 'assets/img/peliculas/her-bg.jpg', 'Comedia'),
(5, 'Intocables', 'Olivier Nakache', 'Philippe, un aristócrata millonario que se ha quedado tetrapléjico, contrata como cuidador a Driss, un inmigrante recién salido de la cárcel. Aunque, a primera vista, no parece la persona más indicada, acaban logrando una inesperada amistad.', 'assets/img/peliculas/Intouchables.jpg', 'assets/img/peliculas/intocable-bg.jpg', 'Comedia'),
(6, 'Joker', 'Todd Phillips', 'Arthur Fleck actúa haciendo de payaso, pero tiene problemas mentales que hacen que la gente le vea como un bicho raro. Su gran sueño es actuar como cómico, pero una serie de trágicos acontecimientos le incrementará su ira contra la sociedad.', 'assets/img/peliculas/Joker.jpg', 'assets/img/peliculas/Joker-bg.jpg', 'Drama'),
(7, 'La La Land', 'Damien Chazelle', 'Mia, una joven aspirante a actriz y Sebastian, un pianista de jazz que se gana la vida tocando en sórdidos tugurios, se enamoran, pero su gran ambición por llegar a la cima en sus carreras artísticas amenaza con separarlos.', 'assets/img/peliculas/Lalaland.jpg', 'assets/img/peliculas/Lalaland-bg.jpg', 'Musical'),
(8, 'Parásitos', 'Bong Joon-ho', 'Tanto Gi Taek como su familia están sin trabajo. Cuando su hijo mayor, Gi Woo, empieza a dar clases particulares en casa de Park , las dos familias, comienzan una interrelación de resultados imprevisibles.', 'assets/img/peliculas/Parasite.jpg', 'assets/img/peliculas/Parasite-bg.jpg', 'Drama'),
(9, 'Pulp Fiction', 'Quentin Tarantino', 'Jules y Vincent, dos asesinos, trabajan para el gángster Marsellus Wallace. Vincent le confiesa a Jules que Marsellus le ha pedido que cuide de Mia, su mujer. Jules le recomienda prudencia porque es muy peligroso sobrepasarse con la novia del jefe.', 'assets/img/peliculas/Pfiction.jpg', 'assets/img/peliculas/Pfiction-bg.jpg', 'Misterio'),
(10, 'El show de Truman', 'Peter Weir', 'Truman Burbank es un hombre que ha vivido en uno de esos pueblos donde nunca pasa nada. Sin embargo,algunos sucesos le hacen sospechar que algo anormal está ocurriendo. Toda su ciudad es un plató y está siendo filmada y emitida como un reality.', 'assets/img/peliculas/Truman.jpg', 'assets/img/peliculas/Elshowdetruman-bg.jpg', 'Comedia'),
(11, 'Seven', 'David Fincher', 'El teniente Somersez y el detective David Mills tendrán que colaborar en la resolución de una serie de asesinatos que toman como base la relación de los siete pecados capitales: gula, pereza, soberbia, avaricia, envidia, lujuria e ira.', 'assets/img/peliculas/Seven.jpg', 'assets/img/peliculas/Seven-bg.jpg', 'Misterio'),
(12, 'Dirty Dancing', 'Emile Ardolino', 'Baby es una joven que quiere disfrutar de su juventud. Por eso se decepciona cuando descubre que sus padres pasarán el verano con ella. Sin embargo, su suerte cambia cuando conoce a Johnny, el experto y seductor profesor de baile del complejo.', 'assets/img/peliculas/DirtyDancing.jpg', 'assets/img/peliculas/Ddancing-bg.jpg', 'Musical'),
(13, 'Puñales por la espalda', 'Rian Johnson', 'Cuando el renombrado novelista de misterio Harlan Thrombey es encontrado muerto en su mansión, justo después de la celebración familiar de su 85 cumpleaños, el detective Benoit Blanc es misteriosamente reclutado para investigar el asunto.', 'assets/img/peliculas/Punales.jpg', 'assets/img/peliculas/Knivesout-bg.jpg', 'Misterio'),
(14, 'Forrest Gump', 'Robert Zemeckis', 'Sentado en un banco en Savannah, Georgia, Forrest Gump espera al autobús. Mientras éste tarda en llegar, el joven cuenta su vida a las personas que se sientan a esperar con él.', 'assets/img/peliculas/ForrestGump.jpg', 'assets/img/peliculas/FGump-bg.jpg', 'Drama'),
(15, 'El silencio de los corderos', 'Jonathan Demme', 'El FBI busca a \"Buffalo Bill\". Para poder atraparlo recurren a Clarice Starling, experta en conductas psicópatas, que aspira a formar parte del FBI, esta intentará sacarle información sobre los patrones de conducta del asesino que están buscando.', 'assets/img/peliculas/SCorderos.jpg', 'assets/img/peliculas/Sscorderos-bg.jpg', 'Misterio'),
(16, 'Hallloween', 'Rob Zombie', 'El pequeño Michael Myers asesina a su hermana en la noche de Halloween de 1963, por lo que es internado en un psiquiátrico. Seis años más tarde, Myers se escapa del hospital y regresa a su pueblo natal, Haddonfield, en Illinois.', 'assets/img/peliculas/Halloween.jpg', 'assets/img/peliculas/Halloween-bg.jpg', 'Terror'),
(17, 'Psicosis', 'Alfred Hitchcock', 'Cae en manos de Marion Crane  40.000 dólares en efectivo que su jefe le confía para depositarlos en el banco. Marion decide apoderarse de esa suma para comenzar con Sam una nueva vida.', 'assets/img/peliculas/Psicosis.jpg', 'assets/img/peliculas/Psicosis-bg.jpg', 'Terror'),
(18, 'La matanza de Texas', 'Tobe Hooper', 'Un grupo de jóvenes se pierde en medio de las desérticas carreteras de Texas, y termina encontrándose con una familia de matarifes que los persigue con una sierra mecánica, descuartizándolos uno por uno.', 'assets/img/peliculas/LMDTexas.jpg', 'assets/img/peliculas/MTexas-bg.jpg', 'Terror'),
(19, 'Scream', 'Wes Craven', 'Un asesino en serie, con máscara y disfraz negro, siembra el pánico entre los adolescentes de un pueblo californiano. Paralelamente, la joven Sidney Prescott atraviesa un mal momento: se cumple un año desde que murió su madre.', 'assets/img/peliculas/Scream.jpg', 'assets/img/peliculas/Scream-bg.jpg', 'Terror'),
(20, 'Barbie', 'Greta Gerwig', 'Después de ser expulsada de Barbieland por no ser una muñeca de aspecto perfecto, Barbie parte hacia el mundo humano para encontrar la verdadera felicidad.', 'assets/img/peliculas/Barbie.jpg', 'assets/img/peliculas/Barbie-bg.jpg', 'Comedia'),
(21, 'Cadena perpetua', 'Frank Darabont', 'Andrew Dufresne es un hombre inocente que es acusado del asesinato de su mujer. Tras ser condenado a cadena perpetua, es enviado a la cárcel de Shawshank, en Maine.', 'assets/img/peliculas/CadenaPerpetua.jpg', 'assets/img/peliculas/CadenaPerpetua-bg.jpg', 'Drama'),
(22, 'La lista de Schindler', 'Steven Spielberg', 'Oskar Schindler, un hombre de enorme astucia y talento organiza un ambicioso plan para ganarse la simpatía de los nazis y a la vez poder rescatar a miles de judíos.', 'assets/img/peliculas/LLDSchindler.jpg', 'assets/img/peliculas/SList-bg.jpg', 'Drama'),
(23, 'Baby Driver', 'Edgar Wright', 'Para saldar su deuda con un mafioso, un joven con problemas de audición hace de conductor en atracos. Cuando por fin cree que se ha librado de su compromiso y pretende rehacer su vida, se ve obligado a retornar para un último golpe.', 'assets/img/peliculas/BabyDriver.jpg', 'assets/img/peliculas/BabyDriver-bg.jpg', 'Acción'),
(24, 'Top Gun: Maverick', 'Joseph Kosinski', 'Tras más de 30 años de servicio como uno de los mejores aviadores de la Armada, Pete \"Maverick\" Mitchel se encuentra donde siempre quiso estar, empujando los límites como un valiente piloto de pruebas.', 'assets/img/peliculas/TopGunMaverick.jpg', 'assets/img/peliculas/TopGun-bg.jpg', 'Acción'),
(25, '1917', 'Sam Mendes', 'La película sigue a dos jóvenes soldados británicos a lo largo de un único día en lo más crudo de la Primera Guerra Mundial.', 'assets/img/peliculas/1917.jpg', 'assets/img/peliculas/1917-bg.jpg', 'Acción'),
(26, 'Tenet', 'Christopher Nolan', 'Una acción épica que gira en torno al espionaje internacional, los viajes en el tiempo y la evolución, en la que un agente secreto debe prevenir la Tercera Guerra Mundial.', 'assets/img/peliculas/Tenet.jpg', 'assets/img/peliculas/Tenet-bg.jpg', 'Acción'),
(27, 'Nosotros', 'Jordan Peele', 'Adelaide Wilson, su marido y sus dos hijos visitan la casa en la que ella creció junto a la playa. Allí, Adelaide tiene un presentimiento siniestro que precede a un encuentro espeluznante: cuatro enmascarados se presentan ante su casa.', 'assets/img/peliculas/Nosotros.jpg', 'assets/img/peliculas/Nosotros-bg.jpg', 'Misterio'),
(28, 'El gran showman', 'Michael Grace', 'En el siglo XIX, P.T. Barnum es un visionario que surge de la nada y crea un fascinante espectáculo que se convertirá en una sensación mundial, el llamado Ringling Bros. and Barnum & Bailey Circus.', 'assets/img/peliculas/GShowman.jpg', 'assets/img/peliculas/GShowman-bg.jpg', 'Musical'),
(29, 'Dando la nota', 'Jason Moore', 'Cuando una nueva estudiante se une al grupo femenino de música a capella de su universidad, saca a las mujeres de su zona de comfort para que cambien de las canciones tradicionales a un estilo más innovador.', 'assets/img/peliculas/DLNota.jpg', 'assets/img/peliculas/DandoLNota-bg.jpg', 'Musical'),
(30, 'El resplandor', 'Stanley Kubrick', 'Jack Torrance se traslada al hotel Overlook, en Colorado, para encargarse del mantenimiento de las instalaciones durante la temporada invernal, época en la que permanece cerrado y aislado por la nieve.', 'assets/img/peliculas/Resplandor.jpg', 'assets/img/peliculas/Resplandor-bg.jpg', 'Terror'),
(31, 'Fast & Furious', ' Rob Cohen', 'Cada noche, Los Ángeles es testigo de alguna carrera de coches. Últimamente ha aparecido un nuevo corredor, todos saben que es duro y que es rápido, pero lo que no saben es que es un detective con la determinación de salir victorioso.', 'assets/img/peliculas/FFurious7.jpg', 'assets/img/peliculas/FFurious7-bg.jpg', 'Acción'),
(32, 'Candy Cane Lane', 'Reginald Hudlin', 'Eddie Murphy protagoniza esta comedia navideña de aventuras sobre un hombre con la misión de ganar el concurso anual de adornos de Navidad de su barrio.', 'assets/img/peliculas/CandyCaneLane.jpg', 'assets/img/peliculas/CandyCL-bg.jpg', 'Comedia'),
(33, 'Padre no hay más que uno', 'Santiago Segura', 'Se acercan las Navidades. Los niños rompen una figura de belén de la colección de su padre. Sara rompe con su novio. El suegro de Javier será acogido en la casa familiar para pasar las fiestas tras su reciente separación.', 'assets/img/peliculas/PNHMQUno3.jpg', 'assets/img/peliculas/PmasqueUno-bg.jpg', 'Comedia'),
(34, 'Pretty Woman', 'Garry Marshall', 'Edward es un ejecutivo que compra y vende empresas, encuentra a la prostituta Vivian. Después de pasar una primera noche con ella, Edward le ofrece dinero para que pase toda la semana con él y le acompañe a diversos actos sociales.', 'assets/img/peliculas/PrettyWoman.jpg', 'assets/img/peliculas/PWoman-bg.jpg', 'Comedia'),
(35, 'Uno de los nuestros', 'Martin Scorsese', 'Henry, un niño de trece años de Brooklyn, vive fascinado con el mundo de los gángsters. Su sueño se hace realidad cuando entra en la familia Pauline.', 'assets/img/peliculas/UnoDeLosNuestros.jpg', 'assets/img/peliculas/UNuestros-bg.jpg', 'Drama'),
(36, 'El padrino', 'Francis Ford', 'Don Vito Corleone es el respetado y temido jefe de una de las cinco familias de la mafia de Nueva York en los años 40. El hombre tiene cuatro hijos: Connie, Sonny, Fredo y Michael, que no quiere saber nada de los negocios sucios de su padre.', 'assets/img/peliculas/ElPadrino.jpg', 'assets/img/peliculas/Padrino-bg.jpg', 'Drama'),
(37, 'Moulin Rouge', 'Baz Luhrmann', 'Satine, la estrella más rutilante del Moulin Rouge, encandila a toda la ciudad con sus bailes llenos de sensualidad. Atrapada entre el amor de dos hombres, un joven escritor y un duque, lucha por hacer realidad su sueño de ser actriz.', 'assets/img/peliculas/MRouge.jpg', 'assets/img/peliculas/MRouge-bg.jpg', 'Musical'),
(38, 'Terrifier', 'Damien Leone', 'El payaso psicópata Art aterroriza a dos chicas durante la noche de Halloween, matando a todos aquellos que se interponen en su camino.', 'assets/img/peliculas/Terrifier.jpg', 'assets/img/peliculas/Terrifier-bg.jpg', 'Terror'),
(39, 'Smile', 'Parker Finn', 'Tras presenciar el dramático incidente sufrido por un paciente, la Dra. Cotter experimenta hechos aterradores sin explicación aparente. A medida que el horror se adueña de su vida, comprende que la respuesta está en su propio pasado.', 'assets/img/peliculas/Smile.jpg', 'assets/img/peliculas/Smile-bg.jpg', 'Terror'),
(40, 'Muerte en el Nilo', 'Kenneth Branagh', 'El detective Hercule Poirot investiga el asesinato de una rica y joven heredera a bordo del mismo crucero por el río Nilo en el que pasa las vacaciones Poirot.', 'assets/img/peliculas/MNilo.jpg', 'assets/img/peliculas/MNilo-bg.jpg', 'Misterio'),
(41, 'Los renglones torcidos De Dios', 'Oriol Paulo', 'Alice, investigadora privada, ingresa en un hospital psiquiátrico simulando una paranoia. Su objetivo es recabar pruebas del caso en el que trabaja: la muerte de un interno en circunstancias poco claras.', 'assets/img/peliculas/RenglonesT.jpg', 'assets/img/peliculas/RenglonesT-bg.jpg', 'Misterio'),
(42, 'La casa de Gucci', 'Ridley Scott', 'Una mirada al asesinato de Maurizio Gucci el 27 de marzo de 1995, nieto heredero de Guccio Gucci, fundador de la famosa marca de lujo italiana. Su futura ex esposa, Patrizia Reggiani, ordenó su asesinato para recibir su parte de la herencia.', 'assets/img/peliculas/Gucci.jpg', 'assets/img/peliculas/Gucci-bg.jpg', 'Misterio'),
(43, 'Ambulance', 'Michael Bay', 'El veterano Will Sharp, en un acto desesperado por conseguir dinero para cubrir las deudas médicas de su esposa, recurre a la única persona que sabe que no debería, su hermano adoptivo Danny. ', 'assets/img/peliculas/Ambulance.jpg', 'assets/img/peliculas/Ambulance-bg.jpg', 'Acción'),
(44, 'Sin tiempo para morir', 'Michael Bay', 'El legendario espía James Bond ha dejado el servicio activo. Su paz dura poco ya que su viejo amigo Felix Leiter de la CIA aparece pidiendo ayuda, lo que lleva a Bond al rastro de un misterioso villano armado con nueva tecnología peligrosa.', 'assets/img/peliculas/STPMorir.jpg', 'assets/img/peliculas/STiempo-bg.jpg', 'Acción'),
(45, 'The black phone', ' Scott Derrickson', 'En una ciudad de Colorado, en los años 70, un enmascarado secuestra a Finney Shaw, un chico tímido e inteligente de 13 años, y le encierra en un sótano insonorizado donde de nada sirven sus gritos.', 'assets/img/peliculas/TBlackPhone.jpg', 'assets/img/peliculas/TBlackPhone-bg.jpg', 'Terror'),
(46, 'Dunkerque', 'Christopher Nolan', 'Alemania avanza sobre Francia, atrapando a las tropas aliadas en las playas de Dunkerque. Bajo protección aérea y terrestre de las fuerzas británicas y francesas, las tropas son evacuadas lentamente de la playa con cualquier embarcación disponible.', 'assets/img/peliculas/Dunkerque.jpg', 'assets/img/peliculas/Dunkerque-bg.jpg', 'Drama'),
(47, 'West Side Story', 'Steven Spielberg', 'Dos adolescentes de diferentes raíces étnicas se enamoran en la ciudad de Nueva York de los años 50. Nueva versión del legendario musical West Side Story sobre el enfrentamiento entre dos bandas callejeras de Nueva York.', 'assets/img/peliculas/WSStory.jpg', 'assets/img/peliculas/WSStory-bg.jpg', 'Musical'),
(48, 'Ha nacido una estrella', 'Baz Luhrmann', 'Jackson, una estrella de la música country con problemas de alcoholismo, descubre el talento de Ally, una joven cantante de la cual se enamora. Mientras la carrera de ella despega, Jackson percibe que sus días de gloria están llegando a su fin.', 'assets/img/peliculas/HNUEstrella.jpg', 'assets/img/peliculas/HNUEstrella-bg.jpg', 'Musical');

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
(1, 'Wednesday', 1, 'Wednesday Addams intenta dominar sus poderes psíquicos, detener una monstruosa ola de asesinatos de los ciudadanos del pueblo y resolver el misterio sobrenatural que afectó a su familia, todo mientras navega por sus nuevas relaciones.', 'assets/img/series/Wednesday.jpg', 'assets/img/series/Wednesday-bg.jpg', 'Misterio'),
(2, 'The walking dead', 11, 'Tras un apocalipsis zombie, un grupo de supervivientes, dirigidos por el policía Rick Grimes, recorre los Estados Unidos para ponerse a salvo.', 'assets/img/series/Wdead.jpg', 'assets/img/series/Wdead-bg.jpg', 'Drama'),
(3, 'The crown', 6, 'La historia de la última reina de Inglaterra, Isabel II, y de la relación entre dos de las direcciones más famosas del mundo: el Palacio de Buckingham y el número 10 de Downing Street.', 'assets/img/series/Tcrown.jpg', 'assets/img/series/TCrown-bg.jpg', 'Historia'),
(4, 'Peaky Blinders', 6, 'Una familia de gánsters tras la Primera Guerra Mundial, se dedica a las apuestas hípicas.El Inspector jefe Chester Campbell decide investigar y que es enviado desde Belfast para limpiar la ciudad y acabar con la banda.', 'assets/img/series/PBlinders.jpg', 'assets/img/series/PBlinders-bg.jpg', 'Misterio'),
(5, 'Ozark', 4, 'Azucarada. Marty, asesor financiero, ingenia un plan temerario para sobrevivir y salvar a su familia después de que su socio traicionara a un peligroso cliente.', 'assets/img/series/Ozark.jpg', 'assets/img/series/Ozark-bg.jpg', 'Drama'),
(6, 'Mad Men', 7, 'Don Draper es uno de los mejores publicistas del Nueva York de la década de 1960. Está casado con Betty, con la que es padre de dos niños, trabaja para la agencia Sterling Cooper, y guarda un terrible secreto.', 'assets/img/series/MMen.jpg', 'assets/img/series/MMen-bg.jpg', 'Drama'),
(7, 'Juego del calamar', 1, 'Cientos de jugadores con problemas económicos aceptan una extraña invitación para competir en juegos infantiles. Dentro les esperan un premio tentador y desafíos letales.', 'assets/img/series/JCalamar.jpg', 'assets/img/series/JCalamar-bg.jpg', 'Misterio'),
(8, 'Gambito de dama', 1, 'La huérfana y prodigio del ajedrez. Beth Harmon, lucha contra la adicción mientras busca convertirse en la mejor jugadora de ajedrez del mundo.', 'assets/img/series/GDama.jpg', 'assets/img/series/GDama-bg.jpg', 'Drama'),
(9, 'Las chicas del cable', 5, 'Cuatro mujeres de la Compañía Telefónica Nacional española promueven una revolución involucrada en amores, amistades y el Progreso hacia una evolución para la mujer en Madrid de 1928.', 'assets/img/series/CCable.jpg', 'assets/img/series/CCable-bg.jpg', 'Drama'),
(10, 'El cuento de la criada', 5, 'Unidos y la mayoría del Congreso, se instaura en el país un régimen teocrático basado en los más estrictos valores puritanos. Los Estados Unidos de América, desde ese momento, pasan a ser conocidos como la República de Gilead. ', 'assets/img/series/CCriada.jpg', 'assets/img/series/CCriada-bg.jpg', 'Drama'),
(11, 'Bridgerton', 3, 'Cuenta desde una perspectiva feminista una historia de amor durante el Período de Regencia en el Reino Unido. La ficción indaga en las vidas ricas, divertidas, tristes, sexuales, de las mujeres y hombres de la alta sociedad londinense.', 'assets/img/series/Bridgerton.jpg', 'assets/img/series/Bridgerton-bg.jpg', 'Romance'),
(12, 'Breaking Bad', 5, 'Hundido por una monótona e insulsa relación con su mujer e incapaz de poner a prueba su brillantez trabajando como profesor de instituto, Walter da un giro radical a su forma de vida cuando descubre que tiene un cáncer terminal. ', 'assets/img/series/BBad.jpg', 'assets/img/series/BBad-bg.jpg', 'Drama'),
(13, 'Chernobyl', 1, 'Hombres y mujeres valientes actúan heroicamente para mitigar los daños catastróficos cuando la central nuclear de Chernobyl sufre un accidente nuclear el 26 de abril de 1986.', 'assets/img/series/AHorror.jpg', 'assets/img/series/AHorror-bg.jpg', 'Historia'),
(14, 'Traición', 1, 'El brillante futuro de un agente del MI6 da un brusco giro cuando un reencuentro con una espía rusa le obliga a cuestionarse toda su vida.', 'assets/img/series/Traicion.jpg', 'assets/img/series/Traicion-bg.jpg', 'Misterio'),
(15, 'The old man', 1, 'Dan Chase es un antiguo agente de la CIA que lleva treinta años viviendo fuera de la red. Tras matar a un asesino, Chase se ve obligado a esconderse. ', 'assets/img/series/TheOldMan.jpg', 'assets/img/series/TheOldMan-bg.jpg', 'Misterio'),
(16, 'El agente nocturno', 1, 'Mientras controla una línea de emergencia, un agente del FBI responde a una llamada que le sumerge en una conspiración mortal que implica a un topo en la Casa Blanca.', 'assets/img/series/ElAgenteNocturno.jpg', 'assets/img/series/ElAgenteNocturno-bg.jpg', 'Misterio'),
(17, 'Caleidoscopio', 1, 'Una banda de ladrones profesionales, liderada por un maestro ladrón, intenta forzar una caja fuerte irrompible en busca del mayor botín de la historia. Sin embargo, la traición, la codicia y otros factores desvían su plan.', 'assets/img/series/Caleidoscopio.jpg', 'assets/img/series/Caleidoscopio-bg.jpg', 'Misterio'),
(18, 'Alguien está mintiendo', 2, 'Tras la muerte de Simon Kelleger, un estudiante de secundaria, cuatro de sus compañeros, Cooper, Bronwyn, Addy y Nate, se convierten en sospechosos de asesinato.', 'assets/img/series/AlguienEstaMintiendo.jpg', 'assets/img/series/AlguienEstaMintiendo-bg.jpg', 'Misterio'),
(19, 'Banda de hermanos', 1, 'La historia de los hombres de Easy Company durante la Segunda Guerra Mundial. Desde su formación en 1942, hasta la liberación de la Alemania nazi en 1945, incluido su paracaidismo en Normandía el 6 de junio de 1944.', 'assets/img/series/BDHermanos.jpg', 'assets/img/series/BDHermanos-bg.jpg', 'Drama'),
(20, 'Vikingos: Valhalla', 2, 'Descubre las aventuras de vikingos famosos mientras abren nuevos caminos en una Europa en constante cambio.', 'assets/img/series/Vikingos.jpg', 'assets/img/series/Vikingos-bg.jpg', 'Historia'),
(21, 'Roma', 2, 'Medio siglo antes del nacimiento de Cristo, Roma se ha convertido en la ciudad más poderosa del mundo, una metrópolis cosmopolita con un millón de habitantes y epicentro de un Imperio en extensión. ', 'assets/img/series/Roma.jpg', 'assets/img/series/Roma-bg.jpg', 'Historia'),
(22, 'Isabel', 3, 'Isabel debe combinar su papel de monarca de Castilla con el de esposa del rey Fernando. Los monarcas se enfrentan a desgracias personales como reyes y como padres, sin perder de vista su principal objetivo.', 'assets/img/series/Isabel.jpg', 'assets/img/series/Isabel-bg.jpg', 'Historia'),
(23, 'Versalles', 3, 'Historia sobre el poder del rey Louis XIV: el monarca que se igualó al sol, que se hizo Estado, el hombre que hizo de la moda, el arte y la gastronomía instrumentos clave de su poder, el hombre estratega, calculador, maquiavélico e inteligente.', 'assets/img/series/Versalles.jpg', 'assets/img/series/Versalles-bg.jpg', 'Historia'),
(24, 'Outlander', 3, 'Sigue la historia de Claire Randall, una enfermera de combate casada en los años 40, que misteriosamente es arrastrada atrás en el tiempo hasta 1743, donde se lanza de inmediato a un mundo desconocido, viéndose amenazada su propia vida. ', 'assets/img/series/Outlander.jpg', 'assets/img/series/Outlander-bg.jpg', 'Romance'),
(25, 'Emily in Paris', 3, 'Tras aceptar el trabajo de sus sueños en París, Emily Cooper, ejecutiva de marketing de Chicago, estrena una vida de aventuras mientras compagina trabajo, amistad y amor.', 'assets/img/series/Emily.jpg', 'assets/img/series/Emily-bg.jpg', 'Romance'),
(26, 'From Scratch', 1, 'Amahle \"Amy\" Wheeler, una estudiante estadounidense que estudia en Italia, conoce y se enamora de Lino, un chef siciliano. Cuando Lino enfrenta problemas de salud y el futuro de la pareja se ve amenazado, las dos familias se unen.', 'assets/img/series/FromScratch.jpg', 'assets/img/series/FromScratch-bg.jpg', 'Romance'),
(27, 'Modern Love', 2, 'Serie de televisión basada en la columna del New York Times que explora las relaciones, el amor y la conexión humana.', 'assets/img/series/ModernLove.jpg', 'assets/img/series/ModernLove-bg.jpg', 'Romance'),
(28, 'Starstruck', 3, 'Una aventura de una noche en Nochevieja se vuelve mucho más complicada para Jessie cuando descubre que él es una estrella de cine. Lo que ella pensó que se convertiría en una anécdota divertida, pronto se convierte en otra cosa.', 'assets/img/series/Starstruck.jpg', 'assets/img/series/Starstruck-bg.jpg', 'Romance'),
(29, 'El Ministerio del Tiempo', 4, 'Serie en la que en cada capítulo se viajará a un momento de la Historia. Estos viajes, realizados desde el Ministerio del mismo nombre por una patrulla singular, tienen una misión fundamental: impedir que el pasado cambie.', 'assets/img/series/MDTiempo.jpg', 'assets/img/series/MDTiempo-bg.jpg', 'Historia'),
(30, 'Águila Roja', 9, 'Un héroe anónimo justiciero, conocido con el apelativo de Águila Roja, ayuda a los más desfavorecidos y busca sin descanso a los culpables del trágico asesinato de su joven esposa.', 'assets/img/series/ARoja.jpg', 'assets/img/series/ARoja-bg.jpg', 'Historia'),
(31, 'Foodie Love', 1, 'Una pareja, ambos apasionados de la gastronomía, tienen una cita tras conocerse por Internet. Los dos comienzan a sentar las bases de la relación pero el sabor amargo del pasado tendrá se verá aplacado por los nuevos platos.', 'assets/img/series/FoodieLove.jpg', 'assets/img/series/FoodieLove-bg.jpg', 'Romance'),
(32, 'Pequeñas coincidencias', 3, 'Un hombre y una mujer tienen algo en común a pesar de no conocerse: ambos buscan a su media naranja. Él es un crítico gastronómico que disfruta de su vida de soltero hasta que llega su hermano a su hogar.', 'assets/img/series/PCoincidencias.jpg', 'assets/img/series/PCoincidencias-bg.jpg', 'Romance'),
(33, 'American Horror Story', 12, 'La casa que eligen los Harmon para alojarse en Los Ángeles es antigua, tétrica y cuenta con un sótano en el que no sólo habita el polvo, sino también una malvada criatura.', 'assets/img/series/Ahorror.jpg', 'assets/img/series/Ahorror-bg.jpg', 'Terror'),
(34, 'Chucky', 3, 'Chucky se encuentra con que su dueño se trata de un niño llamado Jake. En la noche de Halloween, decide ir a por uno de los enemigos de Jake en una fiesta de disfraces, lo que le obliga a Jake a tener que detenerle a toda costa.', 'assets/img/series/Chucky.jpg', 'assets/img/series/Chucky-bg.jpg', 'Terror'),
(35, 'Slasher', 5, 'Años después del atroz asesinato de sus padres, una mujer regresa a su ciudad natal. Desafortunadamente, un nuevo asesino anda suelto recreando crímenes del pasado.', 'assets/img/series/Slasher.jpg', 'assets/img/series/Slasher-bg.jpg', 'Terror'),
(36, 'El Exorcista', 2, 'Adaptación de la obra de William Blatty de 1971, moderna aproximación en forma de thriller serializado que sigue a dos hombres muy diferentes que tratan de poner fin a la posesión demoníaca que está horrorizando a una familia.', 'assets/img/series/ElExorcista.jpg', 'assets/img/series/ElExorcista-bg.jpg', 'Terror'),
(37, 'Hannibal', 3, 'Antes de convertirse en el famoso asesino que todos conocemos, el doctor Hannibal Lecter es un respetado psiquiatra que comienza a tratar al joven agente del FBI Will Graham. ', 'assets/img/series/Hannibal.jpg', 'assets/img/series/Hannibal-bg.jpg', 'Terror'),
(38, 'La maldición de Hill House', 1, 'Un grupo de hermanos crece en lo que acaba convirtiéndose en la casa encantada más famosa del país. Ya como adultos, viéndose obligados a reunirse tras una tragedia, la familia tendrá que afrontar los fantasmas del pasado...', 'assets/img/series/LMDHHouse.jpg', 'assets/img/series/LMDHHouse-bg.jpg', 'Terror'),
(39, 'La niebla', 1, 'Los habitantes de un pueblo de Maine descubren cómo una niebla, que les ha invadido repentinamente, oculta criaturas aterradoras.', 'assets/img/series/LaNiebla.jpg', 'assets/img/series/LaNiebla-bg.jpg', 'Terror'),
(40, 'Marianne', 1, 'Una novelista se da cuenta de que sus historias de terror se hacen realidad y decide volver a su ciudad natal para enfrentarse a los demonios del pasado que la inspiran.', 'assets/img/series/Marianne.jpg', 'assets/img/series/Marianne-bg.jpg', 'Terror');

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
(29, 'Laura', 'Laura', 'email', 'foto', 'FF9CE3');

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
  MODIFY `idPelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `idSerie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `idAcceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
