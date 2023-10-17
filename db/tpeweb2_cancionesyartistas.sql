-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2023 a las 03:13:22
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
(1, 'Bad Bunny', 'Descripción 1', 25, 'Puerto Rico'),
(2, 'Arcangel', 'Descripción 2', 30, 'Puerto Rico'),
(3, 'Daddy Yankee', 'Ramón Luis Ayala Rodríguez, conocido artísticamente como Daddy Yankee, es un cantante, compositor, productor discográfico, locutor de radio​ y empresario puertorriqueño.​ Es considerado como el «rey del reguetón», tanto por los críticos como por los fanáticos de la música.', 46, 'Puerto Rico'),
(4, 'Don Omar', 'William Omar Landrón Rivera, conocido por su nombre artístico Don Omar, es un cantante, rapero, compositor, productor, empresario, actor puertorriqueño, ​​​​​​ considerado como el «rey del reguetón», tanto por los críticos como por los fanáticos de la música.​​​ Ha incursionado en diferentes géneros.', 45, 'Puerto Rico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id_cancion` int(11) NOT NULL,
  `nombre_artista` varchar(30) DEFAULT NULL,
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
(1, 'Bad Bunny', 'Amorfoda', 'Amorfoda', 'Urbano Latino', '2:33', 'No quiero que más nadie me hable de amor\r\nYa me cansé, to\' esos trucos ya me los sé\r\nEsos dolores los pasé, yeh, yeh, yeh\r\nNo quiero que más nadie me hable de amor\r\nYa me cansé, to\' esos trucos ya me los sé\r\nEsos dolores los pasé\r\nHoy te odio en el secreto, ante todo lo confieso\r\nSi pudiera te pidiera que devuelva\' to\' los besos que te di\r\nLa\' palabra\' y todo el tiempo que perdí\r\nMe arrepiento una y mil veces de haber confiao\' en ti (huh)\r\nQuisiera que te sientas como yo me siento (siento)\r\nQuisiera ser como tú, sin sentimiento\r\nQuisiera sacarte de mi pensamiento\r\nQuisiera cambiarle el final al cuento\r\nLas barras y los tragos han sido testigo\'\r\nDel dolor que me causaste y to\' lo que hiciste conmigo\r\nUn infeliz en el amor que aún no te supera\r\nY que ahora camina solo sin nadie por to\'as las acera\'\r\nPreguntándole a Dios si en verdad el amor existe\r\nY por qué si yo era tan bueno to\'a esta mierda tú me hiciste\r\nLo más cabrón es que tú ves todo como un chiste\r\nSiempre voy a maldecir el día en que naciste\r\nLos chocolates que te di y todas las flores\r\nSe convierten hoy en día en pesadilla\' y dolore\'\r\nYa yo perdí la fe de que tú mejore\'\r\nSi después de la lluvia sale el arcoíri\' pero sin colore\', yeh\r\nNo quiero que más nadie me hable de amor\r\nYa me cansé, to\' esos trucos ya me los sé\r\nEsos dolores los pasé, yeh, yeh, yeh\r\nNo quiero que más nadie me hable de amor\r\nYa me cansé, to\' esos trucos ya me los sé\r\nEsos dolores los pasé, yeh, yeh, yeh'),
(2, 'Bad Bunny', 'Yo perreo sola', 'YHLQMDLG', 'Urbano Latino', '2:53', 'Ante\' tú me pichaba\' (tú me pichaba\')\r\nAhora yo picheo (mmh, nah)\r\nAntes tú no quería\' (no quería\')\r\nAhora yo no quiero (mmh, no)\r\nAnte\' tú me pichaba\'\r\nAhora yo picheo (ja, ja)\r\nAntes tú no quería\' (ey)\r\nAhora yo no quiero, no, tranqui\r\nYo perreo sola (hmm, ey)\r\nYo perreo sola (perreo sola, ja, ja, mmh-mmh)\r\nYo perreo sola (ja, ja, mmh, ey)\r\nYo perreo sola (perreo sola)\r\nOkay, okay, ey, ey, ey\r\nQue ningún baboso se le pegue (¡no!)\r\nLa disco se prende cuando ella llegue (¡wuh!)\r\nA los hombres los tienes de hobby\r\nUna malcriá como Nairobi (¡ja, ja!)\r\nY tú la ve\' bebiendo de la botella\r\nLos nene\' y las nena\' quieren con ella\r\nTiene má\' de veinte, me enseñó la cédula (ajá)\r\nEy, del amor e\'una incrédula (¡wuh!)\r\nElla está soltera antes que se pusiera de moda (¡ey!)\r\nNo cree en amor desde \"Amorfoda\" (¡no!)\r\nEl DJ la pone y se las sabe todas\r\nSe trepa en la mesa y que se jodan (¡wuh!)\r\nEn el perreo no se quita (¡no!)\r\nFuma y se pone bellaquita\r\nTe llama si te necesita\r\nPero por ahora está solita\r\nElla perrea sola (ey, ey, ey, ey, ey), ey\r\nElla perrea sola (perrea sola, ella perrea sola, sola, sola), ey\r\nElla perrea sola (ey, ey, ey, ey, ey, ey)\r\nElla perrea sola (ella perrea sola, ella perrea sola)\r\nTiene una amiga problemática\r\nY otra que casi ni habla\r\nPero las tre\' son una\' diabla\' (prr)\r\nY hoy se puso minifalda\r\nLos phillie\' en las Louis Vuitton los guarda\r\nY me dice papi (papi, sí; yes, yes)\r\nTa bien dura como Natti (ah)\r\nBorracha y loca, a ella no le importa (¡wuh!)\r\nVamo\' a perrear, la vida es corta, ey (¡wuh!)\r\nY me dice, papi (papi, sí; yes, yes)\r\nTa bien dura como Natti (ah)\r\nDespué\' de las 12:00 no se comporta (ey)\r\nVamo\' a perrear, la vida e\'corta (¡wuh!)\r\nAnte\' tú me pichaba\' (tú me pichaba\')\r\nAhora yo picheo (hmm, nah; loco)\r\nAnte\' tú no quería\' (¿pero cuándo yo dije eso?)\r\nAhora yo no quiero (pero, pero; no)\r\nAnte\' tú me pichaba\' (nah)\r\nAhora yo picheo (yo nunca te he pichao, mami)\r\nAnte\' tú no quería\' (ay, Dio\'; ey)\r\nAhora yo no quiero, no, tranqui\r\nYo perreo sola (mmh, ey)\r\nYo perreo sola (perreo sola, ja, ja, mmh-mmh)\r\nYo perreo sola (ja, ja, mmh, ey)\r\nYo perreo sola (perreo sola)'),
(3, 'Bad Bunny', 'Neverita', 'Un verano sin ti', 'Urbano Latino', '3:00', 'Yo estoy puesto pa ti y tú te me quitas\r\nDiablo, qué piquete la chamaquita\r\nEl corazón lo puso en la neverita\r\nDice que este verano se queda solita\r\nYo estoy puesto pa ti y tú te me quitas\r\nDiablo, qué piquete la chamaquita\r\nEl corazón lo puso en la neverita\r\nDice que este verano se queda solita\r\nPero nunca sola, sola\r\nAmores vienen y van, como las olas\r\nEl DM explotao, tos le escriben: \"hola\"\r\nUna fila cabrona y yo quiero la cola\r\nYeh, yeh, yeh\r\nDéjame untarte el sunblock pa que no te quemes\r\nAquí hay muchas nenas lindas, pero tú la tienes\r\nJugar conmigo, eso te entretiene\r\nNo seas mala, me tienes de meme\r\nMe siento como el sol, ey\r\nCuando te pones sunblock\r\nBaby, déjame entrar, dale, quítame el lock, ey\r\nQue me la pasaría contigo viendo TikTok\r\nDéjame sorprenderte, ey\r\nDéjame untarte el sunblock pa que no te quemes\r\nAquí hay muchas nenas lindas, pero tú la tienes\r\nJugar conmigo, eso te entretiene\r\nNo seas mala, me tienes de meme\r\nYo estoy puesto pa ti y tú te me quitas\r\nDiablo, qué piquete la chamaquita\r\nEl corazón lo puso en la neverita\r\nDice que este verano se queda solita\r\nPero nunca sola, sola\r\nAmores vienen y van, como las olas\r\nTú lo que eres e\'una abusadora\r\nVo\' a buscarte una cerveza y de vez el cora\r\nYeh, yeh, yeh'),
(4, 'Arcangel', 'La jumpa', 'SR. SANTOS', 'Urbano Latino', '4:15', 'Ah\r\nYao\r\nArcángel, pa\r\nOnce a\r\nWuh-uh\r\nA ella no le gusta el reguetón\r\nPero le encanta cómo canta la sensación (yeah)\r\nNo fue mi intención (yeah, yeah)\r\nQuedarme con toa la atención\r\nVivo en una mansión y no me sé ni la dirección (Oh my god)\r\nEstá cabrón, muy cabrón\r\nPapi Arca, pídanme la bendición\r\nJoder (tío)\r\nMi casa es un hotel y se ve cabrona la vista (hermoso)\r\nEn ella puedo aterrizar un avión\r\nSolo me falta la pista (oh)\r\nImposible que falle esta combinación\r\nDe flow una ensalada mixta (ah)\r\nPalomo, no insistas\r\nCuando se habla de grandeza no estás en la lista\r\nNeverland\r\nLos desmonto como Legoland\r\nY si yo te señalo, lo\' mío\' te lo dan\r\nY vas pa dentro, pero de la van\r\nDel cuello pa arriba hace mucho frío\r\nYo llego y cae nieve en el caserío\r\nDejando sin regalo\' a estos malparíos\r\nSanta Claus, con la esencia del Grinch metío\r\nY yo la vi, anda con dos\r\nLa amiga me miró\r\nAl VIP se pegó\r\nClaro que sí, claro que entró\r\nHola\r\nMi nombre es Arcángel, un gusto, un placer\r\nHoy tú te vas con una leyenda que no va a volver a nacer (ey)\r\nY ya la vi, anda con dos\r\nLa amiga me miró\r\nAl VIP se pegó\r\nClaro que sí, claro que entró\r\nHola, je\r\nMi nombre es Bad Bunny, un gusto, un placer\r\nAprovéchame hoy, que obligao no me vuelves a ver\r\nTu baby quiere que la rompa\r\nLuka, step back\r\nLa Jumpa\r\nTú estás loco por vender el alma\r\nPero ni el diablo te la compra\r\nYo no tengo compe\r\nPregúntaselo a tu compa\r\nTo el mundo ya sabe, por eso Bad Bunny ni ronca\r\nA mí me escuchan las abuelas y sus nietecitos maleantes\r\nTiradores y estudiantes\r\nDoctores y gánsters\r\nNatural y con implante\r\nLos adultos y los infantes\r\nEn Barcelona y Alicante\r\nEn Santurce y Almirante\r\nCruzando la calle con los Beatles\r\nDamian Lillard y otro buzzer beater\r\nEl que quiera, que me tire\r\nOtra cosa es que yo mire\r\nNah, nah, nah, je\r\nYo soy un pitcher, yo soy un pitcher, ey\r\nY este es otro juego que me voy no hitter\r\nVengo de PR, tierra de Clemente\r\nA mí sin cojones me tienen to\' los Jeters, ey\r\nLos haters no salen, yo nunca los veo en la calle\r\nPa mí que ellos viven en Twitter, je\r\nEy, okay, estoy ocupado haciendo dinero\r\nSo, no tengo tiempo pa cuidar mis hijos\r\nQue ninguno cobra más de lo que cobra la babysitter\r\nPapi, vámonos ya, quiero chingar\r\nOkay, okay, dame un break (ey)\r\nTe escupo la boca, te jalo el pelo\r\nTe doy con el bicho y con el lelo\r\nEn el jet privado, un polvo en el cielo\r\nHoy quiero una puta, una modelo, ey, ah\r\nMami, chapéame, no me molesta, je\r\nQue después yo te voy a romper con el néctar\r\nY ya le di a las dos\r\nLa amiga repitió\r\nGuau, ¡qué rico me lo mamó!\r\nEn la boca de la otra se la echó\r\nHola, je\r\nMi nombre es Benito, un gusto, un placer\r\nHoy chingaste con una leyenda que no va a volver a nacer\r\nY yo la vi, anda con dos\r\nLa amiga me miró\r\nAl VIP se pegó\r\nClaro que sí, claro que entró\r\nHola\r\nMi nombre es Austin, un gusto, un placer\r\nEstás escuchando a una leyenda que no va a volver a nacer, no\r\nUh\r\nYeah\r\nYeh-yeh-yeh-yeh\r\nYeh-yeh-yeh-yeh, eh (probando)\r\nSeñor Santos y el señor Martínez once again\r\nEl fenómeno\r\nArcángel, pa, je\r\nYes, sir\r\nEy, Bad Bunny, baby (EHXX \"The Professor\")\r\nBad Bunny, baby (It\'s Flow Factory)\r\nBad Bunny, baby\r\nBad Bunny, baby (ey)\r\nBad Bunny, baby, ey\r\nBad Bunny, baby, ey\r\nBad Bunny, baby, ba-ba-ba, bi-di-bam-bam-bum-bum'),
(5, 'Daddy Yankee', 'Problema', 'Latino Hits 2021', 'Reggaeton', '3:04', '¡Fuego!\r\nFue...\r\nDa-ddy Yan...\r\nLe dio hasta abajo y se le vio el gistro (eh)\r\nLo má\' cabrón que mis ojo\' han visto\r\nPa\' mí tú ere\' un challenge como lo\' de TikTok\r\nTú ere\' un problema y yo amo lo\' conflicto\'\r\nY dice, ¡wuh! (wuh)\r\nElla le dio hasta abajo y se le vio el, ¡wuh! (wuh; ¿qué?)\r\nQue de toda\' su\' amiga\' ella e\' la que má\', ¡wuh! (you know)\r\nNo\' pasa por el lao y to\' dijimo\' (\"¡wuh, wuh, wuh!\", sigue, sigue, sigue)\r\nEsa gata e\' problema, problema\r\nElla siempre e\' el tema\r\nTú ere\' un problema, problema (¿qué?)\r\nCómo me daña el sistema\r\nEsa gata e\' problema, problema (come on)\r\nElla siempre e\' el tema\r\nTú ere\' un problema, problema (prr, ¡fuego!)\r\nCómo me daña el sistema (yo\')\r\n24 / 7 rompiendo la ley (hey)\r\nElla tiene la salsa como Ruben Blades (hey, salsa)\r\nSiempre OG, nunca fake, hey (se mandó)\r\n\'Tás botando humo como un vape, let\'s go, ma\' (wuh, wuh)\r\nSíguelo, ya botamo\' el reloj (eh, eh)\r\nLa galla se empiquetó y al Insta me etiquetó (pu-pu-pu-pum)\r\nMovimiento sexy, nunca Robocop (shh)\r\nBúscala en los trending, siempre está en el top (sube, ¿qué, qué, qué?)\r\nMuchos le tiran y no le dan (¿cómo?, dile, oh, oh, oh)\r\nSiempre ha sido así, eso e\' parte del plan (¿qué, qué?)\r\nSi hablamo\' de nivel, nunca le llegarán (come on)\r\nElla tiene el trébol y anda con su clan\r\nVengan, ven (¡wuh!)\r\nElla le dio hasta abajo y se le vio el (wuh; ¿qué?)\r\nDe toda\' su\' amiga\' ella e\' la que má\' (¡wuh!, you know)\r\nNo\' pasa po\' el lao y to\' dijimo\' (\"¡wuh, wuh, wuh!\", sigue, sigue, sigue)\r\nEsa gata e\' problema, problema\r\nElla siempre e\' el tema\r\nTú ere\' un problema, problema (¿qué, qué?)\r\nCómo me daña el sistema\r\nEsa gata e\' problema, problema (come on)\r\nElla siempre e\' el tema\r\nTú ere\' un problema, problema (prr, ¡fuego!)\r\nCómo me daña el sistema\r\nLe dio hasta abajo y se le vio el gistro (eh)\r\nLo má\' cabrón que mis ojo\' han visto\r\nPa\' mí tú ere\' un challenge como lo\' de TikTok\r\nTú ere\' un problema y yo amo lo\' conflicto\'\r\nY dice (wuh)\r\nElla le dio hasta abajo y se le vio el (wuh; ¿qué?)\r\nDe toda\' su\' amiga\' ella e\' la que má\' (wuh, you know)\r\nNo\' pasa po\' el lao y to\' dijimo\' (\"¡wuh, wuh, wuh!\", sigue, sigue, sigue)\r\nEsa gata e\' problema, problema\r\nElla siempre e\' el tema\r\nTú ere\' un problema, problema (¿qué?)\r\nCómo me daña el sistema\r\nEsa gata e\' problema, problema (come on, come on)\r\nElla siempre e\' el tema\r\nTú ere\' un problema, problema (prr, ¡fuego!)\r\nCómo me daña el sis...\r\nYankee, nos fuimos hasta abajo (hasta abajo, girl)\r\nYankee, nos fuimos hasta abajo (hasta abajo, girl)\r\nYankee, nos fuimos hasta abajo (hasta abajo, girl)\r\nYankee, nos fuimos hasta abajo (¿qué, qué?)\r\nPerreando, perreando\r\nPerreando, nadie tumba la pared\r\nPerreando, perreando\r\nPerreando, ¡fuego!'),
(6, 'Daddy Yankee', 'El Pony', 'EL PONY', 'Urbano Latino', '3:32', 'Siquida-da-da\r\nSiquida-da-da\r\nSigui, Daddy Yankee, you\r\n¡Wuh!\r\nEy\r\nVen y móntate en el pony (¡wuh!)\r\nEn el pony (ey)\r\nPareces una stripper en el tubo haciendo money\r\nVen y móntate en el pony (¡wuh wuh!)\r\nEn el pony (ey)\r\nA todo ese cinnabon yo le voy a pasar la honey (¿qué, qué?)\r\nEn la machina se monta, vuelve y se desmonta\r\nSi estás bellaqui (-llaqui, ¿qué, qué, qué?)\r\nTú eres la jockey (jockey)\r\nEn la machina se monta, vuelve y se desmonta\r\nSi estás bellaqui (-llaqui, ¿qué, qué, qué?)\r\nTú eres la jockey (jockey)\r\n¿Qué tú eres under?, Lo quiero ver\r\nTe pones suci, lo quiero ver\r\nTú dices que eso rebota, lo quiero ver\r\nDiablos, qué abuso de poder, quiero tocar y no ver\r\n¡Síguelo!\r\nVámonos pa la danger zone (¡wuh!)\r\nQue los que la llevan sabes quiénes son\r\nConmigo ella es otra versión\r\nLe gustan los Phillies como Iverson\r\nPa calentarte, yo tengo el don\r\nLlegaste cruda y te vas well done\r\nSi lo estás pensando vete con Nicky\r\nQue yo no creo en El Perdón (wuh wuh wuh)\r\nConmigo no te asustes, yo no jalo (¡wuh!)\r\nPero voy a acribillarte sin usar un palo\r\nEl que tienes en tu casa me dicen que salió malo\r\nEnvíame el location que yo bajo y te lo instalo, ¡aló!\r\nNo te me vayas de foco, ni te me pierdas tampoco\r\nSé que te gusta el dulce y tengo los besitos de coco\r\nCaíste poco a poco con el dueño del hipódromo (¡wuh!)\r\nOlvídate de estos caballos locos (ey)\r\nVen y móntate en el pony (¡wuh!)\r\nEn el pony (Ey)\r\nPareces una stripper en el tubo haciendo money\r\nVen y móntate en el pony (¡wuh wuh!)\r\nEn el pony (ey)\r\nA todo ese cinnabon yo le voy a pasar la honey (¿qué qué?)\r\nEn la machina se monta, vuelve y se desmonta\r\nSi estás bellaqui (-llaqui, ¿qué, qué, qué?)\r\nTú eres la jockey (jockey)\r\nEn la machina se monta, vuelve y se desmonta\r\nSi estás bellaqui (-llaqui, ¿qué, qué, qué?)\r\nTú eres la jockey (jockey)\r\n¿Qué tú eres under?, Lo quiero ver\r\nTe pones suci, lo quiero ver\r\nTú dices que eso rebota, lo quiero ver\r\nDiablo, qué abuso de poder, quiero tocar y no ver\r\n¡Síguelo!\r\nQue le meta al flow, que la meta al swing\r\nYo voy con todo sin Robitussin\r\nQue mueva el montón, que se marque el jean\r\nDura como dumbbell sin ir al gym\r\nTiene un nalgaje que le ronca\r\nPero no cualquiera viene y se le monta\r\nReady pa la bronca, me dicen \"El Tonka\"\r\nPorque tengo más espuelas que Tim Duncan\r\nSi la presionas, ella te pichea (pichea)\r\nSi la llevas con calma, ella te presea (presea)\r\nEsa movie de bichote no la capea (no, no)\r\nCúcala, pa que veas, te tira y te frontea, ¡uy! (Ah)\r\nTiene un nalgaje que le ronca (ey, ey, ey)\r\nPero no cualquiera viene y se le monta\r\nReady pa la bronca, me dicen \"El Tonka\"\r\nPorque tengo más espuelas que Tim Duncan\r\nYa caché ese Pokemón, tu pelo es el jaquimón (¡wuh!)\r\nPa la jockey separé el sillón y- (ey, ey)\r\nVen y móntate en el pony (¡wuh!)\r\nEn el pony (ey)\r\nPareces una stripper en el tubo haciendo money\r\nVen y móntate en el pony (¡wuh wuh!)\r\nEn el pony (ey)\r\nA todo ese cinnabon yo le voy a pasar la honey (¿qué, qué?)\r\nEn la machina se monta, vuelve y se desmonta\r\nSi estás bellaqui (-llaqui, ¿qué, qué, qué?)\r\nTú eres la jockey (jockey)\r\nEn la machina se monta, vuelve y se desmonta\r\nSi estás bellaqui (-llaqui, ¿qué, qué, qué?)\r\nTú eres la jockey (jockey)\r\nEy'),
(7, 'Don Omar', 'Hasta abajo', 'Onda Latina Summer 2010', 'Reggaeton', '3:54', 'D, D, D\r\nD, D, D\r\nD, D, D\r\nAsí hasta abajo soy yo\r\nUno\r\nSí, sí, DJ Eliel en la casa, tírale\r\nLa noche está pa\' un philly\r\nUn shot de Henny\r\nUna buena disco la música un buen DJ\r\nQue ponga una del Cangri una de Yandel y Wisin\r\nUna \'e Tego Calde también una de Ivy\r\nLa noche está pa\' Wippy fumar creepy\r\nMientras te la subo tu de Nuvo date un sippy\r\nQue pongan una nasty de Chencho y Maldy\r\nY una loca que ande con la misma nota \'e Randy\r\nLa noche está pa\' un philly\r\nUn shot de Henny\r\nUna buena disco la música un buen DJ\r\nQue ponga una del Cangri una de Yandel y Wisin\r\nUna \'e Tego Calde también una de Ivy\r\nLa noche está pa\' Wippy fumar creepy\r\nMientras te la subo tú de nuvo date un sippy\r\nQue pongan una nasty de Chencho y Maldy\r\nY una loca que ande con la misma nota \'e Randy\r\nAsí hasta abajo soy yo\r\nD, D, D\r\nAsí hasta abajo soy yo\r\nD, D, D\r\nAsí hasta abajo soy yo\r\nAsí hasta abajo soy yo\r\nAsí hasta abajo soy yo\r\nI Don\r\nSencillo\r\nAsí hasta abajo soy yo (desde la luna)\r\nAsí hasta abajo soy yo\r\nPor eso le llaman el que habla con las manos\r\nAsí hasta abajo soy yo\r\nAsí hasta abajo soy yo\r\nVenga Philly, una seta la matricula completa\r\nNo importa, con respecto un poquito que lo revienta\r\nSeñorita busca dembow llegaron a la fiesta\r\nEsta noche canta el negro por eso andan revueltas\r\nAmiga vea pa tu falta ve que le falta y anda buscando\r\nYo solo quiero verte de espalda\r\nComo te encanta nena perreando\r\nYo solo quiero ver tu booty por la disco modelando\r\nQue tu te ves goody goody cuando le doy\r\nOtro shot baila y sola\r\nOtro dembow de Eliel rompe las consolas\r\nOtro mas, DJ jode las bocinas\r\nQue se joda la vecina y si vamos pa encima\r\nMángala, espoteá\' en una esquina\r\nUn sexy movimiento pide gasolina\r\nAnda fuga, guilla de nena fina\r\nEnferma de la música y dembow su medicina\r\n\'Esbocá, gritando pa encima\r\nOtro shot de tequila ponle pila y has fila\r\nMotiva esperando que el DJ decida\r\nPoner una de las mías pa\' bailarla to\' el día\r\nAsí hasta abajo soy yo\r\nAsí hasta abajo soy yo\r\nAsí hasta abajo soy yo\r\nAsí hasta abajo soy yo\r\nLa noche está pa\' un philly\r\nUn shot de Henny\r\nUna buena disco la música un buen DJ\r\nQue ponga una del Cangri una de Yandel y Wisin\r\nUna \'e Tego Calde también una de Ivy\r\nLa noche está pa\' Wippy, fumar creepy\r\nMientras te la subo tú de nuvo date un sippy\r\nQue pongan una nasty de Chencho y Maldy\r\nY una loca que ande con la misma nota \'e Randy\r\nAsí hasta abajo soy yo\r\nEliel\r\nLa noche está\r\nAsí hasta abajo soy yo\r\nDesde la fábrica de los éxitos\r\nRonca music\r\nAsí hasta abajo soy yo\r\nAsí hasta abajo soy yo\r\nLa noche está pa\' un\r\nLa noche está pa\' un\r\nLa noche está pa\' un philly\r\nLa noche está pa\' un\r\nLa noche está pa\' un\r\nLa noche está pa\' un philly\r\nAsí hasta abajo soy yo');

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
(1, 'webadmin', '$2y$10$x0UWBvnHbYJ8KuHsqJwM1.oQnE6WUsJGt8tGy1KhPz.UEddOx4eja', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_artista` (`nombre_artista`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id_cancion`),
  ADD KEY `nombre_artista` (`nombre_artista`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id_cancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
