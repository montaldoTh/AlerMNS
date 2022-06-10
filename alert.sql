-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 10 juin 2022 à 20:23
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `alert`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

DROP TABLE IF EXISTS `appartient`;
CREATE TABLE IF NOT EXISTS `appartient` (
  `id_users` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  PRIMARY KEY (`id_users`,`id_groupe`),
  KEY `ID_GOUPE` (`id_groupe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appartient`
--

INSERT INTO `appartient` (`id_users`, `id_groupe`) VALUES
(25, 1),
(2, 2),
(26, 3),
(33, 4),
(31, 5);

-- --------------------------------------------------------

--
-- Structure de la table `expedier`
--

DROP TABLE IF EXISTS `expedier`;
CREATE TABLE IF NOT EXISTS `expedier` (
  `id_groupe` int(11) NOT NULL,
  `id_message` int(11) NOT NULL,
  PRIMARY KEY (`id_groupe`,`id_message`),
  KEY `ID_MESSAGE` (`id_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `expedier`
--

INSERT INTO `expedier` (`id_groupe`, `id_message`) VALUES
(1, 8);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
CREATE TABLE IF NOT EXISTS `groupe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupe_name` varchar(50) NOT NULL,
  `date_de_creation` datetime NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_TYPE` (`id_type`),
  KEY `ID_USERS` (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id`, `groupe_name`, `date_de_creation`, `id_type`, `id_users`) VALUES
(1, 'dev_web_1', '2021-07-29 12:50:46', 1, 25),
(2, 'dev_web_2', '2021-08-29 11:54:48', 2, 2),
(3, 'cda_java', '2022-03-29 10:40:12', 4, 26),
(4, 'cda_c#', '2022-08-10 09:54:46', 2, 33),
(5, 'bsd', '2021-07-29 11:54:46', 4, 31);

-- --------------------------------------------------------

--
-- Structure de la table `groupe_type`
--

DROP TABLE IF EXISTS `groupe_type`;
CREATE TABLE IF NOT EXISTS `groupe_type` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `groupe_type`
--

INSERT INTO `groupe_type` (`id_type`, `name`) VALUES
(1, 'intervenant'),
(2, 'stagiaires'),
(3, 'annonceur'),
(4, 'employer');

-- --------------------------------------------------------

--
-- Structure de la table `moderator`
--

DROP TABLE IF EXISTS `moderator`;
CREATE TABLE IF NOT EXISTS `moderator` (
  `id_users` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  PRIMARY KEY (`id_users`,`id_groupe`),
  KEY `ID_GOUPE` (`id_groupe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `moderator`
--

INSERT INTO `moderator` (`id_users`, `id_groupe`) VALUES
(25, 1),
(33, 4),
(31, 5);

-- --------------------------------------------------------

--
-- Structure de la table `msg_btw_users`
--

DROP TABLE IF EXISTS `msg_btw_users`;
CREATE TABLE IF NOT EXISTS `msg_btw_users` (
  `id_message` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) NOT NULL,
  `sending_date` datetime NOT NULL,
  `id_sender` int(11) NOT NULL,
  `id_receiver` int(11) NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `ID_USERS` (`id_sender`),
  KEY `FK_RECEIVER` (`id_receiver`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `msg_btw_users`
--

INSERT INTO `msg_btw_users` (`id_message`, `content`, `sending_date`, `id_sender`, `id_receiver`) VALUES
(1, 'Salut mec', '2022-06-02 06:50:15', 15, 217),
(2, 'Yo gros', '2022-06-02 06:50:15', 53, 217),
(3, 'Tu veu du pain', '2022-06-02 06:50:15', 201, 217),
(4, 'VBDSKGVBKk', '2022-06-02 06:50:15', 92, 217),
(5, 'TATAKAEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE', '2022-06-02 06:50:15', 106, 217),
(6, 'Non oui peut etre', '2022-06-02 06:50:15', 5, 217),
(7, 'FJIGODSJKFHLJSMDS', '2022-06-02 06:50:15', 178, 217),
(8, 'ca marsh bi1', '2022-06-02 06:50:15', 98, 217),
(9, 'INCROYAAAAAAAAAAAAABLE', '2022-06-02 06:59:41', 182, 217),
(10, 'PJGKFHGJSDKHGIOS', '2022-06-02 06:59:41', 200, 217),
(11, 'fdsgdsg', '2022-06-02 06:59:41', 30, 217),
(12, 'echo true hihihiiiiiiiiiiiiiiiiiiiiiiiiIIIIIIIIIIIIIIIIIII', '2022-06-02 06:59:41', 31, 217),
(13, 'dsghsjbvhjvds', '2022-06-02 06:59:41', 60, 217),
(14, 'vcgdsxvbdxc', '2022-06-02 06:59:41', 179, 217),
(15, 'bfdvsfgsvsvsv', '2022-06-02 06:59:41', 97, 217),
(16, 'Yo mecc', '2022-06-03 07:17:12', 217, 53),
(17, 'Ca va ?', '2022-06-03 07:17:12', 53, 217),
(18, 'Nan', '2022-06-03 07:17:12', 217, 53),
(19, 'Jvais le goomer', '2022-06-03 07:17:12', 217, 53),
(20, 'Qui ??? ', '2022-06-03 07:17:12', 53, 217),
(21, 'MON ZGEG GAHAHFHSDHUGUSYHGIUDSHGJKDSHJKBK\r\nreport me pls', '2022-06-03 07:17:12', 217, 53),
(22, 'f nds,gdsbn,', '2022-06-07 16:39:19', 217, 53),
(23, 'f nds,gdsbn,', '2022-06-07 16:39:21', 217, 53),
(24, 'f nds,gdsbn,', '2022-06-07 16:40:17', 217, 53),
(33, 'Ddfdgdsgfs', '2022-06-09 08:42:17', 217, 53),
(34, 'Adfssds', '2022-06-09 08:47:45', 217, 53),
(35, 'Adfssds', '2022-06-09 08:47:47', 217, 53),
(36, 'Adfssds', '2022-06-09 08:47:47', 217, 53),
(37, 'Adfssds', '2022-06-09 08:47:47', 217, 53),
(38, 'Hello sir', '2022-06-09 08:55:47', 217, 53),
(39, 'Hello sir', '2022-06-09 08:55:48', 217, 53),
(40, 'IiOoooooI', '2022-06-09 08:56:49', 217, 53),
(41, 'qsffsqd', '2022-06-09 09:00:24', 217, 53),
(42, 'One again I failed\n', '2022-06-09 09:01:38', 217, 53),
(43, 'One again I failed ???', '2022-06-09 09:02:21', 217, 53),
(44, 'Maybe a step', '2022-06-09 09:04:31', 217, 53),
(104, 'Salut mec', '2022-06-09 10:46:25', 217, 182),
(105, 'Adfdsgsf', '2022-06-09 10:46:35', 217, 182),
(106, 'Ayo', '2022-06-09 10:48:04', 217, 182),
(107, 'xwvbn,nn', '2022-06-09 10:49:45', 217, 53),
(108, 'qsfqsdfqs', '2022-06-09 10:50:32', 217, 53),
(109, 'qsdfghjk;l', '2022-06-09 10:52:21', 217, 53),
(110, 'xdfgbhjn,k', '2022-06-09 10:53:47', 217, 53),
(111, 'xdfgbhjn,k', '2022-06-09 10:54:38', 217, 53),
(112, 'sdcvbn', '2022-06-09 10:56:45', 217, 53),
(113, 'Test', '2022-06-09 10:57:09', 217, 53),
(114, 'azrfdg', '2022-06-09 10:57:20', 217, 53),
(115, 'qsdfg', '2022-06-09 10:57:48', 217, 53),
(116, 'Ca marche', '2022-06-09 10:58:18', 217, 53),
(117, 'Adffd', '2022-06-09 10:58:29', 217, 182),
(118, 'HOFGDIQG', '2022-06-09 09:01:07', 182, 217),
(119, 'Afdbdfbvc', '2022-06-09 16:53:53', 217, 182),
(120, 'DFqsfdgh', '2022-06-10 10:01:21', 217, 74),
(121, 'cvbbxwvwx', '2022-06-10 10:02:45', 217, 172);

-- --------------------------------------------------------

--
-- Structure de la table `read`
--

DROP TABLE IF EXISTS `read`;
CREATE TABLE IF NOT EXISTS `read` (
  `id_users` int(11) NOT NULL,
  `id_message` int(11) NOT NULL,
  `reading_hours` datetime NOT NULL,
  PRIMARY KEY (`id_users`,`id_message`),
  KEY `ID_MESSAGE` (`id_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `type_user`
--

DROP TABLE IF EXISTS `type_user`;
CREATE TABLE IF NOT EXISTS `type_user` (
  `id_type_user` int(11) NOT NULL AUTO_INCREMENT,
  `name_type_user` varchar(50) NOT NULL,
  PRIMARY KEY (`id_type_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_user`
--

INSERT INTO `type_user` (`id_type_user`, `name_type_user`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(50) NOT NULL,
  `registerDate` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `typeUser` varchar(50) NOT NULL,
  `id_type_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_TYPE_USER` (`id_type_user`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `lastName`, `firstName`, `email`, `registerDate`, `password`, `typeUser`, `id_type_user`) VALUES
(1, 'Lunea', 'Ballard', 'vitae.aliquet@protonmail.com', '2021-08-29 11:54:46', 'ZUY03JII3SQ', 'admin', 1),
(2, 'Erasmus', 'Mcneil', 'metus.aliquam.erat@protonmail.edu', '2021-10-28 18:55:29', 'SXN75FPZ0DM', 'user', 2),
(3, 'Genevieve', 'Small', 'tempor@outlook.edu', '2021-12-21 06:29:47', 'VGM97NVL3XJ', 'user', 2),
(4, 'Ivory', 'Hardy', 'nunc.quisque@protonmail.ca', '2022-05-27 12:23:16', 'GZH12JSV6ZG', 'user', 2),
(5, 'Derek', 'Joseph', 'mauris.sit.amet@google.ca', '2021-07-21 20:45:09', 'QYJ28CYK8LR', 'user', 2),
(6, 'Raya', 'Spears', 'proin.vel.nisl@yahoo.edu', '2022-12-16 21:12:02', 'WEM67TTI9YL', 'admin', 1),
(7, 'Rudyard', 'Cain', 'et@outlook.net', '2023-02-22 13:14:37', 'ZJF62RCC6TE', 'user', 2),
(8, 'Adena', 'Charles', 'tempor.erat@outlook.com', '2023-03-25 17:46:18', 'DTE41HRG9SW', 'user', 2),
(9, 'Hamish', 'Arnold', 'aliquet.libero@google.com', '2021-09-11 00:29:25', 'ZPL35BEJ2LU', 'user', 2),
(10, 'Ian', 'Rosa', 'libero.et@icloud.net', '2022-10-06 16:49:01', 'IAG67KWC7EH', 'user', 2),
(11, 'Honorato', 'Ferrell', 'mauris@protonmail.org', '2022-05-06 18:22:44', 'RDC32NVF7VB', 'admin', 1),
(12, 'Tarik', 'Wyatt', 'consectetuer.ipsum.nunc@aol.couk', '2022-04-14 19:57:14', 'YRD71HGW5DK', 'user', 2),
(13, 'Cameron', 'Holden', 'lacinia.orci.consectetuer@aol.com', '2022-11-27 22:37:30', 'ILX35DUB3UP', 'user', 2),
(14, 'Melyssa', 'Daniel', 'cursus@yahoo.edu', '2021-08-01 01:27:14', 'XNN55WSS9CO', 'user', 2),
(15, 'Dante', 'Stein', 'volutpat@outlook.net', '2022-08-09 10:29:20', 'GTB05EME4HY', 'user', 2),
(16, 'Octavius', 'Whitaker', 'magna.nec.quam@icloud.edu', '2023-03-20 20:49:37', 'FUS47KKW4RC', 'user', 2),
(17, 'Basil', 'Browning', 'ut@icloud.couk', '2022-11-27 15:20:22', 'DFO27VBF4JQ', 'user', 2),
(18, 'Leo', 'Nicholson', 'nec.diam.duis@protonmail.edu', '2022-10-04 00:33:02', 'NWI52DDC1MD', 'user', 2),
(19, 'Griffin', 'Stephenson', 'praesent.luctus.curabitur@yahoo.edu', '2021-08-16 14:59:17', 'OWN93FAU5QH', 'user', 2),
(20, 'Kathleen', 'Duran', 'diam.sed@yahoo.net', '2022-01-18 09:44:38', 'EQR95OFK7VS', 'user', 2),
(21, 'Teegan', 'Young', 'tellus.aenean@google.net', '2021-06-09 08:04:12', 'PKV33MLY0OV', 'user', 2),
(22, 'Ivory', 'Hayes', 'sed@yahoo.edu', '2022-08-28 18:30:00', 'LIL25JKN7SX', 'user', 2),
(23, 'Igor', 'Shields', 'imperdiet.ornare.in@hotmail.net', '2022-11-18 11:49:22', 'UUS08FBD7IF', 'user', 2),
(24, 'Dana', 'Long', 'urna.nullam@outlook.com', '2022-02-03 01:54:59', 'ZEW35BDX5KJ', 'user', 2),
(25, 'Cameron', 'Torres', 'a@outlook.couk', '2022-04-07 07:27:06', 'EDI10YEX1JV', 'user', 2),
(26, 'Jescie', 'Dotson', 'non@icloud.ca', '2022-01-23 08:17:57', 'TIN17TBF4UR', 'user', 2),
(27, 'Margaret', 'Newton', 'nullam@aol.ca', '2022-09-15 11:54:57', 'PTY28VOI9EV', 'user', 2),
(28, 'Octavius', 'Burks', 'ut.nec@protonmail.ca', '2022-09-26 13:46:52', 'TQK32KFD6WG', 'user', 2),
(29, 'Oleg', 'Bridges', 'sem@google.com', '2022-06-08 20:58:49', 'IPX51SAX2VJ', 'user', 2),
(30, 'Shelly', 'May', 'ut.molestie@yahoo.edu', '2022-11-08 06:28:10', 'LMD15QUC0KM', 'user', 2),
(31, 'Clarke', 'Dodson', 'ac@outlook.net', '2022-06-15 15:55:30', 'FRN75FWP5JD', 'user', 2),
(32, 'Neville', 'Carpenter', 'ante.ipsum@hotmail.net', '2022-01-09 17:06:38', 'OUV32UYA3PK', 'user', 2),
(33, 'Xander', 'Harrell', 'mauris.blandit@protonmail.org', '2023-03-31 00:30:34', 'TKS71DHZ3HA', 'user', 2),
(34, 'Victor', 'Montoya', 'neque.nullam@aol.org', '2022-10-07 17:04:22', 'WKD23TEB6EJ', 'user', 2),
(35, 'Gavin', 'Horne', 'arcu@google.edu', '2022-12-30 02:54:54', 'JPI15LNN5QC', 'user', 2),
(36, 'Kiayada', 'Sutton', 'cubilia@icloud.ca', '2022-09-25 21:55:25', 'KUA11YRW2GC', 'user', 2),
(37, 'Quyn', 'Mooney', 'eu.dolor.egestas@google.org', '2021-08-05 15:15:25', 'KIY23BLX5YN', 'user', 2),
(38, 'Carl', 'Cochran', 'morbi.sit@outlook.org', '2023-02-05 00:53:19', 'STQ32KFH2JX', 'user', 2),
(39, 'Alea', 'Gallagher', 'vel@aol.net', '2022-05-20 02:39:30', 'CGB86NZO7HL', 'user', 2),
(40, 'Addison', 'Hooper', 'eu@hotmail.com', '2021-08-29 01:25:44', 'XRH99OFX3EK', 'user', 2),
(41, 'Tatum', 'Johnson', 'nisi.mauris@icloud.com', '2022-01-29 09:56:49', 'XWH45RMP5OC', 'user', 2),
(42, 'Keane', 'Aguilar', 'risus.morbi@protonmail.org', '2022-06-26 19:00:30', 'EKF93IYU2HN', 'user', 2),
(43, 'Alisa', 'Moreno', 'ut.semper@protonmail.com', '2023-02-04 03:21:40', 'CPG69UIJ6LL', 'user', 2),
(44, 'Colleen', 'Duran', 'pede.praesent.eu@hotmail.couk', '2021-10-03 06:16:39', 'WJE82BNH5BG', 'user', 2),
(45, 'Lila', 'Russo', 'vitae@hotmail.org', '2021-05-09 08:39:03', 'CZW34JKA8QO', 'user', 2),
(46, 'Daryl', 'Good', 'amet.massa@hotmail.net', '2021-09-12 15:30:23', 'KPN25UNB5FU', 'user', 2),
(47, 'Serena', 'Carr', 'ultricies@icloud.com', '2023-01-01 00:28:38', 'SBK40QGN2HR', 'user', 2),
(48, 'Cole', 'Baldwin', 'metus@hotmail.net', '2022-10-08 20:06:26', 'QWK63DIL8JH', 'user', 2),
(49, 'Nyssa', 'Saunders', 'dictum@aol.net', '2023-02-28 21:57:17', 'AQT01IXC3SV', 'user', 2),
(50, 'Reuben', 'Bullock', 'sem.mollis@protonmail.couk', '2022-12-28 04:11:39', 'VUS88BWD5FS', 'user', 2),
(51, 'Jescie', 'Bradford', 'nunc.commodo.auctor@protonmail.com', '2022-08-07 08:09:26', 'RPQ29GHZ4QF', 'user', 2),
(52, 'Dalton', 'Cox', 'sodales.nisi@aol.com', '2021-05-16 22:51:18', 'TQB22GNU8XD', 'user', 2),
(53, 'Keane', 'Porter', 'nunc.nulla.vulputate@protonmail.edu', '2021-08-03 22:50:08', 'RJF71UJP1XV', 'user', 2),
(54, 'Wynter', 'Mills', 'eu.turpis@google.ca', '2022-06-03 16:12:54', 'FFR11UCQ6IO', 'user', 2),
(55, 'Angelica', 'Shepard', 'mus.donec@aol.com', '2022-09-16 06:23:39', 'URY54OTQ6NF', 'user', 2),
(56, 'Bert', 'Cummings', 'elit.sed@icloud.org', '2023-02-13 09:11:22', 'BCB24CLL5IO', 'user', 2),
(57, 'Kaseem', 'Ramsey', 'eu.tempor.erat@outlook.edu', '2021-09-21 08:18:42', 'OXM54GQN9NI', 'user', 2),
(58, 'Forrest', 'Stafford', 'nam.consequat.dolor@google.ca', '2022-04-03 19:41:47', 'SMM16LYM6CO', 'user', 2),
(59, 'Addison', 'Ball', 'ridiculus.mus.proin@outlook.edu', '2021-09-08 11:53:31', 'OGH93XEG6NZ', 'user', 2),
(60, 'Colorado', 'Russell', 'urna.nullam@google.net', '2021-10-16 01:19:13', 'VRH22SPE2SP', 'user', 2),
(61, 'Jaime', 'Gomez', 'orci.luctus@icloud.com', '2023-02-22 03:50:38', 'RQG68WJL0EP', 'user', 2),
(62, 'Sandra', 'Pennington', 'ornare@google.edu', '2021-09-17 03:13:28', 'JAY52YSF8XB', 'user', 2),
(63, 'Mason', 'Buck', 'in.magna@hotmail.net', '2021-05-29 12:18:51', 'PCP12JUL7UY', 'user', 2),
(64, 'Amery', 'Baker', 'nec@hotmail.edu', '2021-04-20 00:22:48', 'GXV24UHC0HC', 'user', 2),
(65, 'Sigourney', 'Price', 'sem.nulla@protonmail.net', '2022-06-23 22:02:46', 'FDK76DUO8CR', 'user', 2),
(66, 'Maia', 'Carson', 'sit.amet@protonmail.ca', '2023-03-05 11:57:04', 'RMP24ZHC1EF', 'user', 2),
(67, 'Honorato', 'Yates', 'molestie@outlook.edu', '2022-01-22 00:18:59', 'BKH60TVB4CU', 'user', 2),
(68, 'Magee', 'Hardy', 'odio.auctor.vitae@outlook.org', '2021-10-23 07:11:29', 'UJY34RVE3EI', 'user', 2),
(69, 'Kitra', 'Dejesus', 'nonummy.ut@icloud.edu', '2021-07-30 04:47:14', 'BRW36WCF3UP', 'user', 2),
(70, 'Tamara', 'Whitney', 'vitae.semper@google.couk', '2021-10-11 08:45:37', 'ITG72EYV4JS', 'user', 2),
(71, 'Gil', 'Workman', 'scelerisque.scelerisque.dui@hotmail.edu', '2022-06-07 12:49:26', 'PBQ95QUG8LW', 'user', 2),
(72, 'Evan', 'Robbins', 'erat@yahoo.org', '2023-03-30 20:31:35', 'MWE31VPK2XD', 'user', 2),
(73, 'Emily', 'Love', 'sem.consequat.nec@protonmail.com', '2022-04-18 21:07:04', 'NMP62ULH1QX', 'user', 2),
(74, 'Lareina', 'Guerrero', 'tempus@hotmail.org', '2021-04-18 23:19:58', 'OFY72ZTN7LR', 'user', 2),
(75, 'Larissa', 'Diaz', 'consequat.lectus.sit@google.org', '2023-03-05 00:46:04', 'SUI62YNR1PB', 'user', 2),
(76, 'Harlan', 'Richards', 'donec.felis@yahoo.com', '2022-01-11 04:10:50', 'LJB00FJE4NW', 'user', 2),
(77, 'Martena', 'Fulton', 'et.magna@aol.net', '2022-07-11 17:14:42', 'NMR16RNT1HM', 'user', 2),
(78, 'Dustin', 'Norman', 'cras.sed@google.net', '2021-09-07 00:25:16', 'VEK87HJJ2ES', 'user', 2),
(79, 'Mohammad', 'Holder', 'convallis.est@hotmail.com', '2023-03-01 07:06:31', 'EIC78JUO7BU', 'user', 2),
(80, 'Benjamin', 'Slater', 'mollis@yahoo.com', '2022-09-01 20:23:45', 'TMT77ROZ4SB', 'user', 2),
(81, 'Harriet', 'Briggs', 'sed.leo@outlook.ca', '2021-06-03 20:18:43', 'YHS18OBU6NX', 'user', 2),
(82, 'Orli', 'Jensen', 'mi.eleifend@icloud.ca', '2021-07-03 14:01:02', 'RAS36BCX1DY', 'user', 2),
(83, 'Chase', 'Hurst', 'sollicitudin@hotmail.couk', '2021-09-13 22:54:59', 'CCE34IXC0DC', 'user', 2),
(84, 'Isadora', 'Allen', 'nec.mauris@yahoo.couk', '2022-07-26 09:16:06', 'HYA77WVP1JQ', 'user', 2),
(85, 'Nadine', 'Frederick', 'curabitur.egestas@hotmail.net', '2022-12-14 13:21:17', 'UXB26WLI7OH', 'user', 2),
(86, 'Conan', 'Battle', 'neque.nullam@hotmail.couk', '2022-11-19 12:06:25', 'LBN05VNG9BE', 'user', 2),
(87, 'Uma', 'Hopkins', 'egestas.fusce.aliquet@google.org', '2021-12-17 12:34:42', 'LRW27QFJ2SD', 'user', 2),
(88, 'Martha', 'Potts', 'dictum.ultricies@hotmail.org', '2022-11-13 03:21:21', 'SKZ01JSY3BQ', 'user', 2),
(89, 'Cade', 'Myers', 'est.nunc.laoreet@outlook.couk', '2021-07-18 13:20:21', 'ZIJ76LUQ6CD', 'user', 2),
(90, 'Richard', 'Rodriguez', 'condimentum.eget.volutpat@yahoo.net', '2022-05-28 04:34:04', 'IGT65KCH5GU', 'user', 2),
(91, 'Dean', 'Contreras', 'metus.aenean@aol.org', '2022-02-03 02:39:27', 'OTX32IMG8KM', 'user', 2),
(92, 'Imelda', 'Winters', 'curabitur.consequat@aol.com', '2022-11-04 00:49:14', 'KIG61ROV9VY', 'user', 2),
(93, 'Brady', 'Cannon', 'ligula.elit@icloud.ca', '2023-03-25 01:56:53', 'UMT12CVM4XX', 'user', 2),
(94, 'Madonna', 'Strickland', 'mattis.velit@outlook.com', '2021-11-25 09:49:52', 'DPI46VNG3TK', 'user', 2),
(95, 'Lance', 'Rocha', 'ut.mi@outlook.com', '2023-01-29 00:49:00', 'JGN71RPB8NE', 'user', 2),
(96, 'Kylee', 'Peck', 'est.nunc.ullamcorper@aol.com', '2021-09-23 12:46:20', 'WGD64LGU4WC', 'user', 2),
(97, 'Yasir', 'Mccarthy', 'ut.tincidunt.orci@yahoo.ca', '2021-09-24 05:34:53', 'CCH27TFS7GM', 'user', 2),
(98, 'Quail', 'Hampton', 'pede.suspendisse@icloud.couk', '2022-12-01 22:05:41', 'TCU75RIE5ST', 'user', 2),
(99, 'Tarik', 'Hamilton', 'curae.donec@aol.net', '2022-06-16 17:57:52', 'QHQ08UPR6RI', 'user', 2),
(100, 'Oliver', 'Talley', 'ornare.lectus.ante@hotmail.org', '2023-03-14 20:02:43', 'QLK32GGI8RC', 'user', 2),
(101, 'Ann', 'Franks', 'sapien.imperdiet@hotmail.net', '2021-09-07 17:05:49', 'BBV91QLK1GO', 'user', 2),
(102, 'Xantha', 'Avery', 'ac.orci.ut@icloud.com', '2022-04-01 13:47:20', 'CPG01VXJ4XP', 'user', 2),
(103, 'Hamish', 'connor', 'diam.dictum@outlook.org', '2022-11-12 05:40:08', 'DFM10CQO5BD', 'user', 2),
(104, 'Dora', 'Irwin', 'feugiat.nec@hotmail.net', '2023-02-03 04:28:02', 'QGV93OQL9DX', 'user', 2),
(105, 'Desiree', 'Howell', 'non.luctus.sit@icloud.ca', '2022-10-26 21:17:16', 'OPF98WRM7OD', 'user', 2),
(106, 'Alana', 'Cooper', 'nibh.donec.est@yahoo.org', '2022-11-12 04:47:10', 'UIK83VKS4BQ', 'user', 2),
(107, 'Autumn', 'Perry', 'volutpat@aol.edu', '2022-06-30 23:43:41', 'MIW44RJL5DU', 'user', 2),
(108, 'Fitzgerald', 'Jacobs', 'ornare@aol.org', '2022-10-27 08:50:35', 'USH74TAC6SN', 'user', 2),
(109, 'Lawrence', 'Mendez', 'mauris.erat@google.org', '2022-09-18 06:58:17', 'VBH13NYS8IL', 'user', 2),
(110, 'Phelan', 'Webster', 'sem.consequat.nec@protonmail.edu', '2022-04-30 08:54:30', 'BWE52MJQ1BU', 'user', 2),
(111, 'Tyler', 'Chen', 'et.lacinia@outlook.com', '2023-02-03 17:51:06', 'JTL62VBV8BY', 'user', 2),
(112, 'Howard', 'Camacho', 'ornare.in@aol.ca', '2021-05-06 03:39:20', 'PCX62UIZ2AS', 'user', 2),
(113, 'Ishmael', 'Avery', 'tempor@yahoo.ca', '2022-08-18 19:30:47', 'EQV91VXE9KV', 'user', 2),
(114, 'Gregory', 'Watson', 'placerat.orci@protonmail.com', '2022-09-06 23:01:42', 'WCR21KGW4UR', 'user', 2),
(115, 'Colorado', 'Cooke', 'amet.faucibus@icloud.couk', '2021-06-08 00:42:28', 'SBM91IYO3HN', 'user', 2),
(116, 'Ebony', 'Levine', 'ridiculus@icloud.org', '2023-01-08 19:41:30', 'SMD22WXX7PP', 'user', 2),
(117, 'Aurelia', 'Williams', 'gravida.praesent.eu@google.com', '2022-10-24 02:35:25', 'SFH28CYN1IM', 'user', 2),
(118, 'Orla', 'Slater', 'placerat.augue.sed@outlook.edu', '2023-03-29 02:43:17', 'AWW13MYY6PL', 'user', 2),
(119, 'Fletcher', 'Mcintyre', 'et.arcu@icloud.net', '2021-08-31 22:03:06', 'DMU75XNY2YY', 'user', 2),
(120, 'Rama', 'Lopez', 'nec.enim@google.org', '2022-01-25 03:59:39', 'HBS74TWR5IF', 'user', 2),
(121, 'Blake', 'Valdez', 'et.rutrum@hotmail.net', '2022-06-03 01:01:00', 'FVW52PWS7CC', 'user', 2),
(122, 'Dai', 'Winters', 'cursus@yahoo.couk', '2022-11-22 14:25:36', 'UNH32YVF0NR', 'user', 2),
(123, 'Galena', 'Griffith', 'dui.cras@outlook.ca', '2022-06-27 08:44:33', 'QML21YLF7JP', 'user', 2),
(124, 'Ivory', 'Weaver', 'arcu.sed@icloud.org', '2023-03-10 10:35:40', 'MUC36VFX0EW', 'user', 2),
(125, 'Lucian', 'Bright', 'interdum.enim.non@outlook.couk', '2022-01-05 03:43:32', 'MXU95SLU7MO', 'user', 2),
(126, 'Francis', 'Jackson', 'diam@aol.net', '2023-02-25 13:35:51', 'XWT68SKI1AC', 'user', 2),
(127, 'Joshua', 'Vang', 'tortor@icloud.com', '2022-09-14 16:58:18', 'HSC77JGN9UH', 'user', 2),
(128, 'Lionel', 'Paul', 'duis.gravida@hotmail.net', '2022-03-10 23:01:43', 'XWO32UAT9GO', 'user', 2),
(129, 'Amena', 'Hardin', 'malesuada.malesuada@icloud.ca', '2022-07-27 06:45:58', 'GZA35DKB7CN', 'user', 2),
(130, 'Randall', 'Avery', 'duis.a.mi@google.edu', '2021-06-14 15:03:35', 'GVF40XXY6XH', 'user', 2),
(131, 'Wayne', 'Sosa', 'amet.nulla.donec@yahoo.org', '2021-06-18 13:45:19', 'OMI40LUV1HH', 'user', 2),
(132, 'Ocean', 'Webb', 'mus.proin@yahoo.couk', '2022-08-12 14:27:37', 'HRE82PAF6AK', 'user', 2),
(133, 'Ryan', 'Calderon', 'augue.id@hotmail.ca', '2023-04-04 15:52:52', 'EFU65ITL4DO', 'user', 2),
(134, 'Alden', 'Pruitt', 'venenatis.a@yahoo.ca', '2021-09-20 22:15:19', 'LDW43HZW3FW', 'user', 2),
(135, 'Leila', 'Wynn', 'lacus@hotmail.edu', '2022-05-03 21:22:41', 'NEF70VTN3WY', 'user', 2),
(136, 'Nelle', 'Howell', 'suspendisse.tristique@outlook.org', '2023-01-29 18:58:14', 'NPZ62MIH5HN', 'user', 2),
(137, 'Hilda', 'Kline', 'est.arcu.ac@outlook.com', '2021-05-29 03:27:44', 'FLQ66QJF8RE', 'user', 2),
(138, 'Mark', 'Ashley', 'tristique.pharetra.quisque@protonmail.net', '2023-03-19 21:52:15', 'YPF25DCT8VB', 'user', 2),
(139, 'Roary', 'Carlson', 'auctor.non@protonmail.com', '2021-07-26 12:55:48', 'RUC71NUJ7OH', 'user', 2),
(140, 'Merritt', 'Nieves', 'at.libero@icloud.couk', '2022-03-26 22:53:46', 'DTP99CSV4OG', 'user', 2),
(141, 'Nita', 'Gentry', 'orci.donec@yahoo.ca', '2021-05-23 09:34:49', 'NCY34BDV8CD', 'user', 2),
(142, 'Quentin', 'Shannon', 'eu.enim@protonmail.com', '2021-09-09 17:20:54', 'OHH98PER0SR', 'user', 2),
(143, 'Cody', 'Moody', 'eget.varius@outlook.couk', '2023-02-25 18:56:05', 'EXX65MLY6XM', 'user', 2),
(144, 'Kelly', 'Castillo', 'parturient.montes@icloud.com', '2022-10-17 21:05:24', 'WIC18JBB7FQ', 'user', 2),
(145, 'Kirestin', 'Stevenson', 'odio.vel@yahoo.net', '2022-04-28 17:20:47', 'EAO46YAL6KJ', 'user', 2),
(146, 'Tatiana', 'Langley', 'etiam.laoreet@yahoo.org', '2022-08-11 10:50:39', 'QAT74SOI2BX', 'user', 2),
(147, 'Ava', 'Alvarado', 'fringilla.cursus@hotmail.ca', '2021-10-25 15:21:58', 'PQL17CYO3VD', 'user', 2),
(148, 'Shelly', 'Finch', 'ante@yahoo.com', '2021-04-30 18:28:48', 'BML95THL3PD', 'user', 2),
(149, 'Quinn', 'Rice', 'nam@protonmail.com', '2022-04-12 02:28:41', 'ZGO55HBS7SJ', 'user', 2),
(150, 'Cameron', 'Hartman', 'sit.amet.ornare@outlook.org', '2022-01-14 16:43:55', 'NUW13XKN2MH', 'user', 2),
(151, 'Mary', 'donnell', 'magna.duis.dignissim@icloud.ca', '2022-12-11 04:36:48', 'GOV83FIR1CJ', 'user', 2),
(152, 'Tucker', 'Lynn', 'suscipit.nonummy@aol.ca', '2023-01-09 22:39:39', 'RLX46GTY5OW', 'user', 2),
(153, 'Isadora', 'Mason', 'fermentum.fermentum@hotmail.ca', '2021-09-03 03:16:51', 'PSI17JST1YQ', 'user', 2),
(154, 'Minerva', 'Giles', 'ornare.fusce@yahoo.couk', '2021-08-12 19:25:15', 'QHT31CTE1XD', 'user', 2),
(155, 'Luke', 'Day', 'quis.lectus@protonmail.couk', '2021-09-26 07:29:08', 'UIE35CQH3OK', 'user', 2),
(156, 'Cooper', 'Mclean', 'nisl@yahoo.couk', '2021-06-16 00:15:32', 'OGQ78VHB7JX', 'user', 2),
(157, 'Lillian', 'Keith', 'ante@aol.edu', '2021-11-24 22:35:40', 'IOF63WNL5RE', 'user', 2),
(158, 'Graiden', 'Decker', 'leo.morbi.neque@google.ca', '2021-06-26 09:36:32', 'GEB35KZN4EX', 'user', 2),
(159, 'Herman', 'Albert', 'sed.turpis@aol.couk', '2021-08-05 19:11:01', 'SGW88FKD2WP', 'user', 2),
(160, 'Noah', 'Mayo', 'lobortis.risus@aol.ca', '2021-10-18 13:31:47', 'TLL61MGZ8ML', 'user', 2),
(161, 'Ryder', 'Gordon', 'pharetra.felis.eget@hotmail.net', '2021-10-30 07:02:40', 'TJS84CXB4HM', 'user', 2),
(162, 'Jael', 'Rodriguez', 'consectetuer.adipiscing@yahoo.couk', '2022-11-26 18:21:39', 'RZQ29EPK4XN', 'user', 2),
(163, 'Cheryl', 'Russo', 'in.sodales@google.ca', '2023-01-11 13:59:48', 'GKU45JAW5JU', 'user', 2),
(164, 'Hu', 'Kaufman', 'vivamus.nibh.dolor@protonmail.net', '2021-08-06 22:07:08', 'HRT15NZH2ND', 'user', 2),
(165, 'Erin', 'Dawson', 'sociis@outlook.couk', '2023-03-27 04:13:52', 'TOA46WIT2PG', 'user', 2),
(166, 'Porter', 'Gamble', 'orci.ut@protonmail.ca', '2021-12-22 01:28:32', 'YOX11NOQ8UX', 'user', 2),
(167, 'Venus', 'Rosa', 'eget@icloud.couk', '2022-12-07 01:18:35', 'SHK81YTT4WQ', 'user', 2),
(168, 'Dale', 'Lang', 'nec.imperdiet.nec@aol.com', '2023-02-20 18:31:22', 'VXC23OBF4XI', 'user', 2),
(169, 'Lael', 'Harmon', 'at@yahoo.ca', '2021-12-05 00:35:32', 'MZD62NAO4YQ', 'user', 2),
(170, 'Abel', 'Raymond', 'ac@outlook.couk', '2022-11-23 11:55:36', 'VXG44LCL7PW', 'user', 2),
(171, 'Blythe', 'Haynes', 'sociis.natoque.penatibus@google.ca', '2022-02-23 05:22:00', 'TWX69NXQ7LG', 'user', 2),
(172, 'Neville', 'Phillips', 'pellentesque@yahoo.org', '2023-03-26 07:12:07', 'FMW25OBE6CC', 'user', 2),
(173, 'Damian', 'Mitchell', 'primis.in.faucibus@outlook.edu', '2022-10-02 03:05:41', 'NOD30LLS6TY', 'user', 2),
(174, 'Lucius', 'Reynolds', 'nonummy.ultricies.ornare@icloud.couk', '2023-02-02 05:51:49', 'RKZ01YSG4ZE', 'user', 2),
(175, 'Yeo', 'Gilbert', 'dolor.fusce@protonmail.com', '2022-03-13 01:04:13', 'XNO37KNS8IT', 'user', 2),
(176, 'Shay', 'Mcknight', 'nunc.mauris@hotmail.org', '2021-10-02 17:07:13', 'UKQ08MBD4UA', 'user', 2),
(177, 'Zorita', 'Mills', 'a.scelerisque@protonmail.edu', '2022-06-17 23:25:57', 'VNM57OOO2ID', 'user', 2),
(178, 'Ivan', 'Barker', 'euismod@yahoo.net', '2022-01-30 13:29:34', 'CXR47TUE4XS', 'user', 2),
(179, 'Inga', 'Fuller', 'ac@aol.ca', '2022-06-17 03:18:38', 'CNH82QYJ7IL', 'user', 2),
(180, 'Cassidy', 'Valenzuela', 'ut.eros.non@outlook.couk', '2022-06-05 03:56:43', 'MJZ49FSI3RY', 'user', 2),
(181, 'Thor', 'George', 'malesuada.vel@icloud.net', '2021-09-09 02:38:19', 'PTM49YLW2RX', 'user', 2),
(182, 'Gloria', 'Davis', 'est@protonmail.couk', '2022-07-28 03:07:48', 'EUE15NTH7MF', 'user', 2),
(183, 'Colby', 'Haynes', 'orci.luctus@icloud.com', '2021-06-10 05:26:26', 'DMP12UNI8PH', 'user', 2),
(184, 'Christian', 'Kerr', 'quisque.purus@google.com', '2022-01-03 01:13:56', 'YCQ65LPG0AY', 'user', 2),
(185, 'Wang', 'Butler', 'in.mi.pede@hotmail.net', '2021-05-11 02:34:45', 'PEF27RID2WP', 'user', 2),
(186, 'Jared', 'Burns', 'eu.ultrices.sit@icloud.couk', '2022-09-17 02:09:05', 'MVP37LVO2OY', 'user', 2),
(187, 'Clayton', 'Stone', 'quisque.libero@hotmail.couk', '2021-10-03 19:59:36', 'DCZ55UHP6DS', 'user', 2),
(188, 'Regan', 'Logan', 'scelerisque.scelerisque@protonmail.edu', '2022-07-06 16:13:49', 'NIU45EUC5LO', 'user', 2),
(189, 'Jana', 'Benton', 'eu.sem@outlook.edu', '2021-06-04 10:34:39', 'BYQ88KBS4AC', 'user', 2),
(190, 'Brenda', 'Cunningham', 'mauris@yahoo.net', '2023-02-15 19:43:12', 'HUU35QEN4OF', 'user', 2),
(191, 'Harding', 'Delacruz', 'magna.et.ipsum@google.org', '2022-05-30 07:45:21', 'FXH84HKV2GT', 'user', 2),
(192, 'Yuli', 'Gaines', 'velit.pellentesque@google.net', '2022-04-26 02:24:09', 'YRI78YDU6ZY', 'user', 2),
(193, 'Devin', 'Adkins', 'enim.consequat@icloud.org', '2022-10-09 11:15:52', 'STM66ZRM3JX', 'user', 2),
(194, 'Gretchen', 'Tyler', 'et.tristique@google.ca', '2022-02-09 02:25:29', 'DGH22XMJ7VK', 'user', 2),
(195, 'Alana', 'Hubbard', 'lacus.etiam@yahoo.couk', '2021-08-20 20:12:02', 'KIS20VLB6BS', 'user', 2),
(196, 'Harriet', 'Spears', 'leo.cras@outlook.couk', '2021-09-08 22:24:50', 'WIP64PYM1TN', 'user', 2),
(197, 'David', 'Huffman', 'odio.tristique@google.com', '2022-03-27 14:34:41', 'OHL48QSJ5LF', 'user', 2),
(198, 'Xyla', 'Estrada', 'a@google.net', '2021-05-27 01:30:29', 'YUK65REX3BQ', 'user', 2),
(199, 'Melanie', 'Webb', 'nisl.arcu.iaculis@aol.edu', '2022-05-15 12:15:55', 'HEF53DRR6YS', 'user', 2),
(200, 'Maia', 'Ward', 'dictum@yahoo.couk', '2022-04-05 07:30:11', 'RUF65FVK1UC', 'user', 2),
(201, 'el jadid', 'el houssaine ', 'ikky57@gmail.com', '2022-05-16 13:53:33', '55555', 'user', 2),
(202, 'jak', 'marc', 'toto@mns.fr', '2022-05-16 13:57:33', '2222', 'user', 2),
(203, 'vaucher', 'clement', 'v.clement@sfr.fr', '2022-05-19 13:03:39', '5555', 'user', 2),
(204, 'virus', 'corona', 'corona.virus@gmail.com', '2022-05-19 13:25:40', '77777', 'user', 2),
(208, 'qsdfgh', 'Theo', 'test@test.test', '2022-05-27 10:41:36', 'test', 'user', 2),
(209, 'sqdf', 'sdqfdgv', 'sqfqsf', '2022-05-27 10:47:50', 'qsd', 'user', 2),
(210, 'qgqdsqg', 'sdgdsgss', 'dsqfqsfgqsd', '2022-05-27 10:48:18', 'qsd', 'user', 2),
(211, 'azer', 'Azer', 'azer', '2022-05-27 10:53:55', '$argon2i$v=19$m=65536,t=4,p=1$L0RKU1VpeGcvNllaQ0thVw$5TCLaDSaf52zWJh2CCmnude7eVMgNUPSH0iYp/1aAbw', 'user', 2),
(212, 'Reza', 'Azer', 'Rezazer@test.tes', '2022-05-27 11:04:07', '$argon2i$v=19$m=65536,t=4,p=1$RFVWZ2FDWWJ0WmxzOWxqMg$p4LgOWFfE37TRx/SnuHR5TtnaETn5WxYsotYr64U+MA', 'user', 2),
(213, 'Z', 'A', 'E', '2022-05-27 11:05:59', '$argon2i$v=19$m=65536,t=4,p=1$YmtJRDJNeUU4Q2ZKcEFYOQ$SDhzfP5B6rFRNJz5Nb1ig8v8aC1F5NmpZSoxH1ITyyA', 'user', 2),
(214, 'ER', 'AZ', 'TY', '2022-05-27 11:06:09', '$argon2i$v=19$m=65536,t=4,p=1$Sm5lZ1dpbE00VEdYSTM2Rw$fqL6PamMpBI5hVRlUeOHRGEiD2BtaOPZprgYBvBz0JM', 'user', 2),
(215, 'zaeraztraze', 'zertraze', 'razeazra', '2022-05-27 11:07:35', '$argon2i$v=19$m=65536,t=4,p=1$c0lVUi40cEE3ZnY1OW9MeQ$5UHXbG0mpBZ//H6JiWNiTBnhrxg3wgVL2qUFen/6gBs', 'user', 2),
(216, 'Hashage', 'sansCle', 'test.sh@test.ts', '2022-05-27 11:13:40', 'Z05GVVVQVXdBZlAuZ2pjcw$t1vcRWE6Ny9OSm+QQwCt3Z7SlgZ1VEDJoj/eHusfstE', 'user', 2),
(217, 'Montaldo', 'Théo', 'montaldo.to@gmail.com', '2022-05-30 08:44:26', 'NnVEOGd3Tk1OMWw4ckEzTA$UON8DEH4uBrvCJQ7sulTx2vhYAgoxKp6uXUpojPgY34', 'user', 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`id_groupe`) REFERENCES `groupe` (`id`);

--
-- Contraintes pour la table `expedier`
--
ALTER TABLE `expedier`
  ADD CONSTRAINT `expedier_ibfk_1` FOREIGN KEY (`id_groupe`) REFERENCES `groupe` (`id`),
  ADD CONSTRAINT `expedier_ibfk_2` FOREIGN KEY (`id_message`) REFERENCES `msg_btw_users` (`id_message`);

--
-- Contraintes pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD CONSTRAINT `groupe_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `groupe_type` (`id_type`),
  ADD CONSTRAINT `groupe_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `moderator`
--
ALTER TABLE `moderator`
  ADD CONSTRAINT `moderator_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `moderator_ibfk_2` FOREIGN KEY (`id_groupe`) REFERENCES `groupe` (`id`);

--
-- Contraintes pour la table `msg_btw_users`
--
ALTER TABLE `msg_btw_users`
  ADD CONSTRAINT `FK_RECEIVER` FOREIGN KEY (`id_receiver`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_SENDER` FOREIGN KEY (`id_sender`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `read`
--
ALTER TABLE `read`
  ADD CONSTRAINT `read_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `read_ibfk_2` FOREIGN KEY (`id_message`) REFERENCES `msg_btw_users` (`id_message`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_type_user`) REFERENCES `type_user` (`id_type_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
