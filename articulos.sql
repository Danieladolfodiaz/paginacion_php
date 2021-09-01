-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-09-2021 a las 01:26:57
-- Versión del servidor: 8.0.23
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `curso_paginacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

DROP TABLE IF EXISTS `articulos`;
CREATE TABLE IF NOT EXISTS `articulos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `articulo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `articulo`) VALUES
(1, 'Fusce vitae mollis nisl, vitae finibus nunc. Morbi placerat leo et dui ultricies, accumsan gravida elit feugiat. Nam id luctus augue. Donec tristique euismod orci ut sollicitudin. Sed et semper ipsum. Aliquam interdum, ligula vitae vehicula viverra, mi augue tristique nulla, vulputate commodo tortor neque consequat eros.'),
(2, 'Nulla sem velit, dapibus a sapien vitae, volutpat vulputate nisi. Vestibulum luctus placerat tempor. Donec ut commodo mauris. Nulla dignissim mi a elit porttitor, eu finibus odio commodo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eu molestie mauris. Integer blandit justo nisi, sed pretium arcu congue nec. Sed ornare mauris sit amet ante blandit elementum. Nulla aliquam nunc eu arcu pharetra, gravida ornare felis maximus.'),
(3, 'Donec laoreet ligula vitae metus finibus, vel congue urna viverra. Ut a lectus massa. Morbi hendrerit ligula a nunc luctus vestibulum. Nunc eu sapien sed urna tincidunt egestas. Morbi laoreet, nibh nec consectetur convallis, quam neque aliquet nunc, at luctus nisl nisl cursus turpis. Quisque augue justo, ornare non nunc a, suscipit facilisis magna.'),
(4, 'Donec non commodo odio. Suspendisse aliquet nulla magna, et consectetur magna rutrum eget. Integer non finibus mauris. Proin ac ullamcorper dolor, quis porttitor tortor. Quisque vestibulum id mauris eu fermentum. Praesent ut maximus dolor. Integer tempus erat quis orci consectetur, id lobortis lorem ultrices. Integer consequat sem sit amet metus lobortis sollicitudin. Aliquam gravida turpis vitae urna pharetra gravida. Fusce quis libero sit amet nisl mattis laoreet.'),
(5, 'Maecenas sit amet consequat orci. Nullam a lectus vel nisl auctor mattis a in elit. Suspendisse nec metus id erat suscipit sollicitudin. Nam consectetur purus metus, in rutrum nunc sagittis a. Praesent placerat pulvinar nibh vitae laoreet. Nulla posuere facilisis ligula quis sagittis. Curabitur eleifend nisi ac mollis pulvinar.'),
(6, 'Cras dui enim, fringilla non enim in, auctor laoreet lorem. Nulla pretium quis massa id porta. Morbi ac nisi ullamcorper, rhoncus mauris eget, hendrerit ligula. Suspendisse ac porttitor eros, at convallis nibh. Duis malesuada interdum porttitor. Cras fermentum fermentum dui, nec eleifend odio congue ut. Suspendisse ullamcorper augue sit amet ante tempus, at eleifend nisl fermentum. Nulla facilisi.'),
(7, 'Mauris a dolor vitae nisi dignissim dictum vitae a urna. Nunc pulvinar risus sed enim laoreet, non eleifend est consequat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.'),
(8, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque a ipsum sed ante placerat volutpat. Duis nunc mauris, blandit et enim sit amet, dapibus volutpat tellus. Curabitur dapibus fermentum tincidunt. Praesent id eros massa. In vitae massa eros.'),
(9, 'Vivamus nec feugiat mauris. Donec eget aliquet diam. Vestibulum vitae viverra augue. Vestibulum ac tellus vitae tellus laoreet finibus nec eget mi. Cras consectetur vulputate ullamcorper. Donec at lorem feugiat, malesuada augue eget, laoreet tortor.'),
(10, 'Nam hendrerit lacus ut urna ultrices, vitae ultricies sem mattis. Mauris vulputate consequat odio vel lacinia. Vestibulum nibh libero, eleifend et sagittis sit amet, lobortis quis mauris. Nunc ultrices aliquam ligula at blandit. Praesent quis purus accumsan, laoreet sapien quis, condimentum lacus.'),
(11, 'Cras vitae sapien pellentesque, posuere elit in, aliquam leo. Proin mattis ligula a scelerisque venenatis. Donec a sapien turpis. Sed vehicula, elit efficitur sodales mollis, urna tortor viverra arcu, ut congue elit lectus vitae libero.'),
(12, 'Proin tincidunt mauris tempus, fringilla neque in, tempor erat. Quisque molestie ante ac tempor suscipit. Suspendisse ut erat pretium massa laoreet ornare. Pellentesque ultrices lorem mauris, id dapibus massa pulvinar id. Vivamus nec massa consequat, congue nisl vitae, tincidunt ipsum.'),
(13, 'Aliquam libero purus, dictum venenatis mattis ac, semper vel mi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi erat ante, vehicula eu quam eget, elementum luctus lacus. Ut id imperdiet ipsum. Ut lacinia, ipsum vitae dapibus feugiat, erat lorem egestas sem, vitae fermentum tellus augue nec nisi.'),
(14, 'Nulla facilisi. Quisque sit amet mauris aliquam, hendrerit mauris sed, finibus tortor. Sed ut mauris magna. Pellentesque commodo eu felis quis pellentesque. Aenean vulputate leo in tellus interdum egestas.'),
(15, 'Integer at aliquam turpis. Curabitur sagittis nisl in magna luctus, vel tempor sapien hendrerit. Vestibulum imperdiet non nulla a convallis. Morbi quis diam velit. Proin ut fermentum nunc. In non ullamcorper orci. Aenean nisi erat, hendrerit vitae orci vel, sollicitudin fringilla odio. Duis rutrum diam mi, quis dictum odio vulputate et.'),
(16, 'Nulla facilisi. Quisque sed dignissim ante. Mauris bibendum leo magna, et luctus tortor venenatis a. Praesent sed ante tellus. Suspendisse fermentum justo vitae augue efficitur, non tincidunt turpis cursus. Donec vehicula ipsum odio, quis ullamcorper nunc ornare id. Phasellus sagittis gravida metus, id volutpat orci dapibus sit amet. Maecenas in nunc consequat, porta nunc eu, lacinia ligula.'),
(17, 'Donec tristique, nisl nec lacinia varius, neque odio efficitur quam, sit amet efficitur metus turpis eu arcu. Aenean scelerisque, ex id pretium efficitur, lorem lectus dictum orci, vitae tempor leo mauris eu mauris. Praesent ac placerat urna, in ornare arcu.'),
(18, 'Integer vestibulum aliquet mi ultricies finibus. Nulla finibus elit ac interdum tempus. Duis laoreet aliquam mauris. Nulla vel imperdiet nisl. Fusce id libero nec eros laoreet volutpat nec vitae nisi. Vivamus tempor nulla eget aliquam egestas.'),
(19, 'Nulla vitae luctus lacus. Mauris rhoncus ex at nibh aliquam feugiat. Nunc id felis felis. Suspendisse tincidunt finibus augue, tristique tempor tellus lacinia nec. In posuere egestas tortor, vel porta ipsum accumsan eu. Nullam euismod vehicula sodales. Praesent semper mi non nulla varius egestas. Fusce tristique turpis eget quam placerat interdum. Maecenas tincidunt vestibulum lectus a mattis.'),
(20, 'Vivamus venenatis eros nec commodo aliquam. Ut tincidunt turpis nunc, vel eleifend risus mattis quis. Curabitur odio lacus, tincidunt in augue vel, dictum lacinia sapien. Cras molestie viverra rhoncus.'),
(21, 'Abemusa papoggf');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
