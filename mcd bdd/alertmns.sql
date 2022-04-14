-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 11 avr. 2022 à 14:01
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
-- Base de données : `alertmns`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

DROP TABLE IF EXISTS `appartient`;
CREATE TABLE IF NOT EXISTS `appartient` (
  `ID_USERS` int(11) NOT NULL,
  `ID_GOUPE` int(11) NOT NULL,
  PRIMARY KEY (`ID_USERS`,`ID_GOUPE`),
  KEY `ID_GOUPE` (`ID_GOUPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appartient`
--

INSERT INTO `appartient` (`ID_USERS`, `ID_GOUPE`) VALUES
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
  `ID_GOUPE` int(11) NOT NULL,
  `ID_MESSAGE` int(11) NOT NULL,
  PRIMARY KEY (`ID_GOUPE`,`ID_MESSAGE`),
  KEY `ID_MESSAGE` (`ID_MESSAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `expedier`
--

INSERT INTO `expedier` (`ID_GOUPE`, `ID_MESSAGE`) VALUES
(1, 8);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
CREATE TABLE IF NOT EXISTS `groupe` (
  `ID_GOUPE` int(11) NOT NULL AUTO_INCREMENT,
  `nom_groupe` varchar(50) NOT NULL,
  `date_de_creation` datetime NOT NULL,
  `ID_TYPE` int(11) NOT NULL,
  `ID_USERS` int(11) NOT NULL,
  PRIMARY KEY (`ID_GOUPE`),
  KEY `ID_TYPE` (`ID_TYPE`),
  KEY `ID_USERS` (`ID_USERS`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`ID_GOUPE`, `nom_groupe`, `date_de_creation`, `ID_TYPE`, `ID_USERS`) VALUES
(1, 'dev_web_1', '2021-07-29 12:50:46', 1, 25),
(2, 'dev_web_2', '2021-08-29 11:54:48', 2, 2),
(3, 'cda_java', '2022-03-29 10:40:12', 4, 26),
(4, 'cda_c#', '2022-08-10 09:54:46', 2, 33),
(5, 'bsd', '2021-07-29 11:54:46', 4, 31);

-- --------------------------------------------------------

--
-- Structure de la table `lire`
--

DROP TABLE IF EXISTS `lire`;
CREATE TABLE IF NOT EXISTS `lire` (
  `ID_USERS` int(11) NOT NULL,
  `ID_MESSAGE` int(11) NOT NULL,
  `heure_de_lecture` datetime NOT NULL,
  PRIMARY KEY (`ID_USERS`,`ID_MESSAGE`),
  KEY `ID_MESSAGE` (`ID_MESSAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `message_envoye_users`
--

DROP TABLE IF EXISTS `message_envoye_users`;
CREATE TABLE IF NOT EXISTS `message_envoye_users` (
  `ID_MESSAGE` int(11) NOT NULL AUTO_INCREMENT,
  `texte` varchar(50) NOT NULL,
  `date_d_envoi` datetime NOT NULL,
  `destinataire` varchar(50) NOT NULL,
  `ID_USERS` int(11) NOT NULL,
  PRIMARY KEY (`ID_MESSAGE`),
  KEY `ID_USERS` (`ID_USERS`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `message_envoye_users`
--

INSERT INTO `message_envoye_users` (`ID_MESSAGE`, `texte`, `date_d_envoi`, `destinataire`, `ID_USERS`) VALUES
(1, 'penatibus et magnis dis parturient montes, nascetu', '2022-12-16 06:32:01', 'Erasmus Mcneil', 59),
(2, 'turpis. Aliquam adipiscing lobortis risus. In mi p', '2021-12-16 13:27:15', 'Leo Nicholson', 92),
(3, 'arcu. Curabitur ut odio vel est tempor bibendum. D', '2023-02-28 12:39:00', 'Gavin Horne', 5),
(4, 'aliquet, metus urna convallis erat, eget tincidunt', '2021-07-07 23:01:35', 'Ivory Hardy', 10),
(5, 'purus sapien, gravida non, sollicitudin a, malesua', '2023-01-21 02:19:57', 'Kathleen Duran', 12),
(6, 'ornare, facilisis eget, ipsum. Donec sollicitudin ', '2021-12-30 09:49:52', 'Lunea Ballard', 19),
(7, 'lectus ante dictum mi, ac mattis velit justo nec', '2022-01-31 00:15:36', 'Melyssa Daniel', 19),
(8, 'et malesuada fames ac turpis egestas. Fusce alique', '2021-07-13 02:38:37', 'Basil Browning', 25),
(9, 'vitae semper egestas, urna justo faucibus lectus, ', '2023-04-10 22:11:41', 'Ian Baird', 30),
(10, 'mauris, rhoncus id, mollis nec, cursus a, enim. Su', '2022-05-06 02:03:16', 'Shelly May', 32);

-- --------------------------------------------------------

--
-- Structure de la table `moderateur`
--

DROP TABLE IF EXISTS `moderateur`;
CREATE TABLE IF NOT EXISTS `moderateur` (
  `ID_USERS` int(11) NOT NULL,
  `ID_GOUPE` int(11) NOT NULL,
  PRIMARY KEY (`ID_USERS`,`ID_GOUPE`),
  KEY `ID_GOUPE` (`ID_GOUPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `moderateur`
--

INSERT INTO `moderateur` (`ID_USERS`, `ID_GOUPE`) VALUES
(25, 1),
(33, 4),
(31, 5);

-- --------------------------------------------------------

--
-- Structure de la table `type_groupe`
--

DROP TABLE IF EXISTS `type_groupe`;
CREATE TABLE IF NOT EXISTS `type_groupe` (
  `ID_TYPE` int(11) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_groupe`
--

INSERT INTO `type_groupe` (`ID_TYPE`, `NOM`) VALUES
(1, 'intervenant'),
(2, 'stagiaires'),
(3, 'annonceur'),
(4, 'employer');

-- --------------------------------------------------------

--
-- Structure de la table `type_users`
--

DROP TABLE IF EXISTS `type_users`;
CREATE TABLE IF NOT EXISTS `type_users` (
  `ID_TYPE_USER` int(11) NOT NULL AUTO_INCREMENT,
  `nom_type_user` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_TYPE_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_users`
--

INSERT INTO `type_users` (`ID_TYPE_USER`, `nom_type_user`) VALUES
(1, 'moderateur'),
(2, 'admin'),
(3, 'intervenant'),
(4, 'employer'),
(5, 'stagiaires'),
(6, 'annonceur');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID_USERS` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `E_mail` varchar(50) NOT NULL,
  `date_de_creation` datetime NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL,
  `type_users` varchar(50) NOT NULL,
  `ID_TYPE_USER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_USERS`),
  KEY `ID_TYPE_USER` (`ID_TYPE_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID_USERS`, `Nom`, `prenom`, `E_mail`, `date_de_creation`, `mot_de_passe`, `type_users`, `ID_TYPE_USER`) VALUES
(1, 'Lunea', 'Ballard', 'vitae.aliquet@protonmail.com', '2021-08-29 11:54:46', 'ZUY03JII3SQ', 'admin', 2),
(2, 'Erasmus', 'Mcneil', 'metus.aliquam.erat@protonmail.edu', '2021-10-28 18:55:29', 'SXN75FPZ0DM', 'utilisateur', 5),
(3, 'Genevieve', 'Small', 'tempor@outlook.edu', '2021-12-21 06:29:47', 'VGM97NVL3XJ', 'utilisateur', 5),
(4, 'Ivory', 'Hardy', 'nunc.quisque@protonmail.ca', '2022-05-27 12:23:16', 'GZH12JSV6ZG', 'utilisateur', 5),
(5, 'Derek', 'Joseph', 'mauris.sit.amet@google.ca', '2021-07-21 20:45:09', 'QYJ28CYK8LR', 'utilisateur', 5),
(6, 'Raya', 'Spears', 'proin.vel.nisl@yahoo.edu', '2022-12-16 21:12:02', 'WEM67TTI9YL', 'admin', 2),
(7, 'Rudyard', 'Cain', 'et@outlook.net', '2023-02-22 13:14:37', 'ZJF62RCC6TE', 'utilisateur', 5),
(8, 'Adena', 'Charles', 'tempor.erat@outlook.com', '2023-03-25 17:46:18', 'DTE41HRG9SW', 'utilisateur', 5),
(9, 'Hamish', 'Arnold', 'aliquet.libero@google.com', '2021-09-11 00:29:25', 'ZPL35BEJ2LU', 'utilisateur', 5),
(10, 'Ian', 'Rosa', 'libero.et@icloud.net', '2022-10-06 16:49:01', 'IAG67KWC7EH', 'utilisateur', 5),
(11, 'Honorato', 'Ferrell', 'mauris@protonmail.org', '2022-05-06 18:22:44', 'RDC32NVF7VB', 'admin', 2),
(12, 'Tarik', 'Wyatt', 'consectetuer.ipsum.nunc@aol.couk', '2022-04-14 19:57:14', 'YRD71HGW5DK', 'utilisateur', 5),
(13, 'Cameron', 'Holden', 'lacinia.orci.consectetuer@aol.com', '2022-11-27 22:37:30', 'ILX35DUB3UP', 'utilisateur', 5),
(14, 'Melyssa', 'Daniel', 'cursus@yahoo.edu', '2021-08-01 01:27:14', 'XNN55WSS9CO', 'utilisateur', 5),
(15, 'Dante', 'Stein', 'volutpat@outlook.net', '2022-08-09 10:29:20', 'GTB05EME4HY', 'utilisateur', 5),
(16, 'Octavius', 'Whitaker', 'magna.nec.quam@icloud.edu', '2023-03-20 20:49:37', 'FUS47KKW4RC', 'moderateur', 1),
(17, 'Basil', 'Browning', 'ut@icloud.couk', '2022-11-27 15:20:22', 'DFO27VBF4JQ', 'utilisateur', 5),
(18, 'Leo', 'Nicholson', 'nec.diam.duis@protonmail.edu', '2022-10-04 00:33:02', 'NWI52DDC1MD', 'utilisateur', 5),
(19, 'Griffin', 'Stephenson', 'praesent.luctus.curabitur@yahoo.edu', '2021-08-16 14:59:17', 'OWN93FAU5QH', 'utilisateur', 5),
(20, 'Kathleen', 'Duran', 'diam.sed@yahoo.net', '2022-01-18 09:44:38', 'EQR95OFK7VS', 'utilisateur', 5),
(21, 'Teegan', 'Young', 'tellus.aenean@google.net', '2021-06-09 08:04:12', 'PKV33MLY0OV', 'moderateur', 1),
(22, 'Ivory', 'Hayes', 'sed@yahoo.edu', '2022-08-28 18:30:00', 'LIL25JKN7SX', 'utilisateur', 5),
(23, 'Igor', 'Shields', 'imperdiet.ornare.in@hotmail.net', '2022-11-18 11:49:22', 'UUS08FBD7IF', 'utilisateur', 5),
(24, 'Dana', 'Long', 'urna.nullam@outlook.com', '2022-02-03 01:54:59', 'ZEW35BDX5KJ', 'utilisateur', 3),
(25, 'Cameron', 'Torres', 'a@outlook.couk', '2022-04-07 07:27:06', 'EDI10YEX1JV', 'moderateur', 1),
(26, 'Jescie', 'Dotson', 'non@icloud.ca', '2022-01-23 08:17:57', 'TIN17TBF4UR', 'utilisateur', 4),
(27, 'Margaret', 'Newton', 'nullam@aol.ca', '2022-09-15 11:54:57', 'PTY28VOI9EV', 'utilisateur', 4),
(28, 'Octavius', 'Burks', 'ut.nec@protonmail.ca', '2022-09-26 13:46:52', 'TQK32KFD6WG', 'moderateur', 4),
(29, 'Oleg', 'Bridges', 'sem@google.com', '2022-06-08 20:58:49', 'IPX51SAX2VJ', 'utilisateur', 4),
(30, 'Shelly', 'May', 'ut.molestie@yahoo.edu', '2022-11-08 06:28:10', 'LMD15QUC0KM', 'utilisateur', 4),
(31, 'Clarke', 'Dodson', 'ac@outlook.net', '2022-06-15 15:55:30', 'FRN75FWP5JD', 'moderateur', 1),
(32, 'Neville', 'Carpenter', 'ante.ipsum@hotmail.net', '2022-01-09 17:06:38', 'OUV32UYA3PK', 'utilisateur', 4),
(33, 'Xander', 'Harrell', 'mauris.blandit@protonmail.org', '2023-03-31 00:30:34', 'TKS71DHZ3HA', 'moderateur', 1),
(34, 'Victor', 'Montoya', 'neque.nullam@aol.org', '2022-10-07 17:04:22', 'WKD23TEB6EJ', 'utilisateur', 5),
(35, 'Gavin', 'Horne', 'arcu@google.edu', '2022-12-30 02:54:54', 'JPI15LNN5QC', 'utilisateur', 6),
(36, 'Kiayada', 'Sutton', 'cubilia@icloud.ca', '2022-09-25 21:55:25', 'KUA11YRW2GC', 'utilisateur', 4),
(37, 'Quyn', 'Mooney', 'eu.dolor.egestas@google.org', '2021-08-05 15:15:25', 'KIY23BLX5YN', 'utilisateur', 3),
(38, 'Carl', 'Cochran', 'morbi.sit@outlook.org', '2023-02-05 00:53:19', 'STQ32KFH2JX', 'utilisateur', 4),
(39, 'Alea', 'Gallagher', 'vel@aol.net', '2022-05-20 02:39:30', 'CGB86NZO7HL', 'utilisateur', 5),
(40, 'Addison', 'Hooper', 'eu@hotmail.com', '2021-08-29 01:25:44', 'XRH99OFX3EK', 'utilisateur', 4),
(41, 'Tatum', 'Johnson', 'nisi.mauris@icloud.com', '2022-01-29 09:56:49', 'XWH45RMP5OC', 'utilisateur', 4),
(42, 'Keane', 'Aguilar', 'risus.morbi@protonmail.org', '2022-06-26 19:00:30', 'EKF93IYU2HN', 'utilisateur', 3),
(43, 'Alisa', 'Moreno', 'ut.semper@protonmail.com', '2023-02-04 03:21:40', 'CPG69UIJ6LL', 'utilisateur', 5),
(44, 'Colleen', 'Duran', 'pede.praesent.eu@hotmail.couk', '2021-10-03 06:16:39', 'WJE82BNH5BG', 'utilisateur', 5),
(45, 'Lila', 'Russo', 'vitae@hotmail.org', '2021-05-09 08:39:03', 'CZW34JKA8QO', 'utilisateur', 5),
(46, 'Daryl', 'Good', 'amet.massa@hotmail.net', '2021-09-12 15:30:23', 'KPN25UNB5FU', 'utilisateur', 5),
(47, 'Serena', 'Carr', 'ultricies@icloud.com', '2023-01-01 00:28:38', 'SBK40QGN2HR', 'utilisateur', 3),
(48, 'Cole', 'Baldwin', 'metus@hotmail.net', '2022-10-08 20:06:26', 'QWK63DIL8JH', 'utilisateur', 3),
(49, 'Nyssa', 'Saunders', 'dictum@aol.net', '2023-02-28 21:57:17', 'AQT01IXC3SV', 'utilisateur', 3),
(50, 'Reuben', 'Bullock', 'sem.mollis@protonmail.couk', '2022-12-28 04:11:39', 'VUS88BWD5FS', 'utilisateur', 3),
(51, 'Jescie', 'Bradford', 'nunc.commodo.auctor@protonmail.com', '2022-08-07 08:09:26', 'RPQ29GHZ4QF', 'utilisateur', 3),
(52, 'Dalton', 'Cox', 'sodales.nisi@aol.com', '2021-05-16 22:51:18', 'TQB22GNU8XD', 'utilisateur', 3),
(53, 'Keane', 'Porter', 'nunc.nulla.vulputate@protonmail.edu', '2021-08-03 22:50:08', 'RJF71UJP1XV', 'utilisateur', 5),
(54, 'Wynter', 'Mills', 'eu.turpis@google.ca', '2022-06-03 16:12:54', 'FFR11UCQ6IO', 'utilisateur', 5),
(55, 'Angelica', 'Shepard', 'mus.donec@aol.com', '2022-09-16 06:23:39', 'URY54OTQ6NF', 'utilisateur', 5),
(56, 'Bert', 'Cummings', 'elit.sed@icloud.org', '2023-02-13 09:11:22', 'BCB24CLL5IO', 'utilisateur', 5),
(57, 'Kaseem', 'Ramsey', 'eu.tempor.erat@outlook.edu', '2021-09-21 08:18:42', 'OXM54GQN9NI', 'utilisateur', 5),
(58, 'Forrest', 'Stafford', 'nam.consequat.dolor@google.ca', '2022-04-03 19:41:47', 'SMM16LYM6CO', 'utilisateur', 5),
(59, 'Addison', 'Ball', 'ridiculus.mus.proin@outlook.edu', '2021-09-08 11:53:31', 'OGH93XEG6NZ', 'utilisateur', 5),
(60, 'Colorado', 'Russell', 'urna.nullam@google.net', '2021-10-16 01:19:13', 'VRH22SPE2SP', 'utilisateur', 5),
(61, 'Jaime', 'Gomez', 'orci.luctus@icloud.com', '2023-02-22 03:50:38', 'RQG68WJL0EP', 'utilisateur', 5),
(62, 'Sandra', 'Pennington', 'ornare@google.edu', '2021-09-17 03:13:28', 'JAY52YSF8XB', 'utilisateur', 5),
(63, 'Mason', 'Buck', 'in.magna@hotmail.net', '2021-05-29 12:18:51', 'PCP12JUL7UY', 'utilisateur', 5),
(64, 'Amery', 'Baker', 'nec@hotmail.edu', '2021-04-20 00:22:48', 'GXV24UHC0HC', 'utilisateur', 5),
(65, 'Sigourney', 'Price', 'sem.nulla@protonmail.net', '2022-06-23 22:02:46', 'FDK76DUO8CR', 'utilisateur', 5),
(66, 'Maia', 'Carson', 'sit.amet@protonmail.ca', '2023-03-05 11:57:04', 'RMP24ZHC1EF', 'utilisateur', 5),
(67, 'Honorato', 'Yates', 'molestie@outlook.edu', '2022-01-22 00:18:59', 'BKH60TVB4CU', 'utilisateur', 5),
(68, 'Magee', 'Hardy', 'odio.auctor.vitae@outlook.org', '2021-10-23 07:11:29', 'UJY34RVE3EI', 'utilisateur', 5),
(69, 'Kitra', 'Dejesus', 'nonummy.ut@icloud.edu', '2021-07-30 04:47:14', 'BRW36WCF3UP', 'utilisateur', 5),
(70, 'Tamara', 'Whitney', 'vitae.semper@google.couk', '2021-10-11 08:45:37', 'ITG72EYV4JS', 'utilisateur', 5),
(71, 'Gil', 'Workman', 'scelerisque.scelerisque.dui@hotmail.edu', '2022-06-07 12:49:26', 'PBQ95QUG8LW', 'utilisateur', 5),
(72, 'Evan', 'Robbins', 'erat@yahoo.org', '2023-03-30 20:31:35', 'MWE31VPK2XD', 'utilisateur', 5),
(73, 'Emily', 'Love', 'sem.consequat.nec@protonmail.com', '2022-04-18 21:07:04', 'NMP62ULH1QX', 'utilisateur', 5),
(74, 'Lareina', 'Guerrero', 'tempus@hotmail.org', '2021-04-18 23:19:58', 'OFY72ZTN7LR', 'utilisateur', 5),
(75, 'Larissa', 'Diaz', 'consequat.lectus.sit@google.org', '2023-03-05 00:46:04', 'SUI62YNR1PB', 'utilisateur', 5),
(76, 'Harlan', 'Richards', 'donec.felis@yahoo.com', '2022-01-11 04:10:50', 'LJB00FJE4NW', 'utilisateur', 3),
(77, 'Martena', 'Fulton', 'et.magna@aol.net', '2022-07-11 17:14:42', 'NMR16RNT1HM', 'utilisateur', 4),
(78, 'Dustin', 'Norman', 'cras.sed@google.net', '2021-09-07 00:25:16', 'VEK87HJJ2ES', 'utilisateur', 5),
(79, 'Mohammad', 'Holder', 'convallis.est@hotmail.com', '2023-03-01 07:06:31', 'EIC78JUO7BU', 'utilisateur', 3),
(80, 'Benjamin', 'Slater', 'mollis@yahoo.com', '2022-09-01 20:23:45', 'TMT77ROZ4SB', 'utilisateur', 4),
(81, 'Harriet', 'Briggs', 'sed.leo@outlook.ca', '2021-06-03 20:18:43', 'YHS18OBU6NX', 'utilisateur', 5),
(82, 'Orli', 'Jensen', 'mi.eleifend@icloud.ca', '2021-07-03 14:01:02', 'RAS36BCX1DY', 'utilisateur', 4),
(83, 'Chase', 'Hurst', 'sollicitudin@hotmail.couk', '2021-09-13 22:54:59', 'CCE34IXC0DC', 'utilisateur', 5),
(84, 'Isadora', 'Allen', 'nec.mauris@yahoo.couk', '2022-07-26 09:16:06', 'HYA77WVP1JQ', 'utilisateur', 5),
(85, 'Nadine', 'Frederick', 'curabitur.egestas@hotmail.net', '2022-12-14 13:21:17', 'UXB26WLI7OH', 'utilisateur', 5),
(86, 'Conan', 'Battle', 'neque.nullam@hotmail.couk', '2022-11-19 12:06:25', 'LBN05VNG9BE', 'utilisateur', 5),
(87, 'Uma', 'Hopkins', 'egestas.fusce.aliquet@google.org', '2021-12-17 12:34:42', 'LRW27QFJ2SD', 'utilisateur', 5),
(88, 'Martha', 'Potts', 'dictum.ultricies@hotmail.org', '2022-11-13 03:21:21', 'SKZ01JSY3BQ', 'utilisateur', 5),
(89, 'Cade', 'Myers', 'est.nunc.laoreet@outlook.couk', '2021-07-18 13:20:21', 'ZIJ76LUQ6CD', 'utilisateur', 5),
(90, 'Richard', 'Rodriguez', 'condimentum.eget.volutpat@yahoo.net', '2022-05-28 04:34:04', 'IGT65KCH5GU', 'utilisateur', 5),
(91, 'Dean', 'Contreras', 'metus.aenean@aol.org', '2022-02-03 02:39:27', 'OTX32IMG8KM', 'utilisateur', 5),
(92, 'Imelda', 'Winters', 'curabitur.consequat@aol.com', '2022-11-04 00:49:14', 'KIG61ROV9VY', 'utilisateur', 5),
(93, 'Brady', 'Cannon', 'ligula.elit@icloud.ca', '2023-03-25 01:56:53', 'UMT12CVM4XX', 'utilisateur', 5),
(94, 'Madonna', 'Strickland', 'mattis.velit@outlook.com', '2021-11-25 09:49:52', 'DPI46VNG3TK', 'utilisateur', 3),
(95, 'Lance', 'Rocha', 'ut.mi@outlook.com', '2023-01-29 00:49:00', 'JGN71RPB8NE', 'utilisateur', 5),
(96, 'Kylee', 'Peck', 'est.nunc.ullamcorper@aol.com', '2021-09-23 12:46:20', 'WGD64LGU4WC', 'utilisateur', 5),
(97, 'Yasir', 'Mccarthy', 'ut.tincidunt.orci@yahoo.ca', '2021-09-24 05:34:53', 'CCH27TFS7GM', 'utilisateur', 5),
(98, 'Quail', 'Hampton', 'pede.suspendisse@icloud.couk', '2022-12-01 22:05:41', 'TCU75RIE5ST', 'utilisateur', 5),
(99, 'Tarik', 'Hamilton', 'curae.donec@aol.net', '2022-06-16 17:57:52', 'QHQ08UPR6RI', 'utilisateur', 5),
(100, 'Oliver', 'Talley', 'ornare.lectus.ante@hotmail.org', '2023-03-14 20:02:43', 'QLK32GGI8RC', 'utilisateur', 5),
(101, 'Ann', 'Franks', 'sapien.imperdiet@hotmail.net', '2021-09-07 17:05:49', 'BBV91QLK1GO', 'utilisateur', 5),
(102, 'Xantha', 'Avery', 'ac.orci.ut@icloud.com', '2022-04-01 13:47:20', 'CPG01VXJ4XP', 'utilisateur', 5),
(103, 'Hamish', 'O\'connor', 'diam.dictum@outlook.org', '2022-11-12 05:40:08', 'DFM10CQO5BD', 'utilisateur', 5),
(104, 'Dora', 'Irwin', 'feugiat.nec@hotmail.net', '2023-02-03 04:28:02', 'QGV93OQL9DX', 'utilisateur', 5),
(105, 'Desiree', 'Howell', 'non.luctus.sit@icloud.ca', '2022-10-26 21:17:16', 'OPF98WRM7OD', 'utilisateur', 5),
(106, 'Alana', 'Cooper', 'nibh.donec.est@yahoo.org', '2022-11-12 04:47:10', 'UIK83VKS4BQ', 'utilisateur', 5),
(107, 'Autumn', 'Perry', 'volutpat@aol.edu', '2022-06-30 23:43:41', 'MIW44RJL5DU', 'utilisateur', 5),
(108, 'Fitzgerald', 'Jacobs', 'ornare@aol.org', '2022-10-27 08:50:35', 'USH74TAC6SN', 'utilisateur', 5),
(109, 'Lawrence', 'Mendez', 'mauris.erat@google.org', '2022-09-18 06:58:17', 'VBH13NYS8IL', 'utilisateur', 5),
(110, 'Phelan', 'Webster', 'sem.consequat.nec@protonmail.edu', '2022-04-30 08:54:30', 'BWE52MJQ1BU', 'utilisateur', 5),
(111, 'Tyler', 'Chen', 'et.lacinia@outlook.com', '2023-02-03 17:51:06', 'JTL62VBV8BY', 'utilisateur', 5),
(112, 'Howard', 'Camacho', 'ornare.in@aol.ca', '2021-05-06 03:39:20', 'PCX62UIZ2AS', 'utilisateur', 5),
(113, 'Ishmael', 'Avery', 'tempor@yahoo.ca', '2022-08-18 19:30:47', 'EQV91VXE9KV', 'utilisateur', 5),
(114, 'Gregory', 'Watson', 'placerat.orci@protonmail.com', '2022-09-06 23:01:42', 'WCR21KGW4UR', 'utilisateur', 5),
(115, 'Colorado', 'Cooke', 'amet.faucibus@icloud.couk', '2021-06-08 00:42:28', 'SBM91IYO3HN', 'utilisateur', 5),
(116, 'Ebony', 'Levine', 'ridiculus@icloud.org', '2023-01-08 19:41:30', 'SMD22WXX7PP', 'utilisateur', 5),
(117, 'Aurelia', 'Williams', 'gravida.praesent.eu@google.com', '2022-10-24 02:35:25', 'SFH28CYN1IM', 'utilisateur', 5),
(118, 'Orla', 'Slater', 'placerat.augue.sed@outlook.edu', '2023-03-29 02:43:17', 'AWW13MYY6PL', 'utilisateur', 5),
(119, 'Fletcher', 'Mcintyre', 'et.arcu@icloud.net', '2021-08-31 22:03:06', 'DMU75XNY2YY', 'utilisateur', 5),
(120, 'Rama', 'Lopez', 'nec.enim@google.org', '2022-01-25 03:59:39', 'HBS74TWR5IF', 'utilisateur', 5),
(121, 'Blake', 'Valdez', 'et.rutrum@hotmail.net', '2022-06-03 01:01:00', 'FVW52PWS7CC', 'utilisateur', 5),
(122, 'Dai', 'Winters', 'cursus@yahoo.couk', '2022-11-22 14:25:36', 'UNH32YVF0NR', 'utilisateur', 5),
(123, 'Galena', 'Griffith', 'dui.cras@outlook.ca', '2022-06-27 08:44:33', 'QML21YLF7JP', 'utilisateur', 5),
(124, 'Ivory', 'Weaver', 'arcu.sed@icloud.org', '2023-03-10 10:35:40', 'MUC36VFX0EW', 'utilisateur', 5),
(125, 'Lucian', 'Bright', 'interdum.enim.non@outlook.couk', '2022-01-05 03:43:32', 'MXU95SLU7MO', 'utilisateur', 5),
(126, 'Francis', 'Jackson', 'diam@aol.net', '2023-02-25 13:35:51', 'XWT68SKI1AC', 'utilisateur', 5),
(127, 'Joshua', 'Vang', 'tortor@icloud.com', '2022-09-14 16:58:18', 'HSC77JGN9UH', 'utilisateur', 5),
(128, 'Lionel', 'Paul', 'duis.gravida@hotmail.net', '2022-03-10 23:01:43', 'XWO32UAT9GO', 'utilisateur', 5),
(129, 'Amena', 'Hardin', 'malesuada.malesuada@icloud.ca', '2022-07-27 06:45:58', 'GZA35DKB7CN', 'utilisateur', 5),
(130, 'Randall', 'Avery', 'duis.a.mi@google.edu', '2021-06-14 15:03:35', 'GVF40XXY6XH', 'utilisateur', 5),
(131, 'Wayne', 'Sosa', 'amet.nulla.donec@yahoo.org', '2021-06-18 13:45:19', 'OMI40LUV1HH', 'utilisateur', 5),
(132, 'Ocean', 'Webb', 'mus.proin@yahoo.couk', '2022-08-12 14:27:37', 'HRE82PAF6AK', 'utilisateur', 5),
(133, 'Ryan', 'Calderon', 'augue.id@hotmail.ca', '2023-04-04 15:52:52', 'EFU65ITL4DO', 'utilisateur', 5),
(134, 'Alden', 'Pruitt', 'venenatis.a@yahoo.ca', '2021-09-20 22:15:19', 'LDW43HZW3FW', 'utilisateur', 5),
(135, 'Leila', 'Wynn', 'lacus@hotmail.edu', '2022-05-03 21:22:41', 'NEF70VTN3WY', 'utilisateur', 5),
(136, 'Nelle', 'Howell', 'suspendisse.tristique@outlook.org', '2023-01-29 18:58:14', 'NPZ62MIH5HN', 'utilisateur', 5),
(137, 'Hilda', 'Kline', 'est.arcu.ac@outlook.com', '2021-05-29 03:27:44', 'FLQ66QJF8RE', 'utilisateur', 5),
(138, 'Mark', 'Ashley', 'tristique.pharetra.quisque@protonmail.net', '2023-03-19 21:52:15', 'YPF25DCT8VB', 'utilisateur', 5),
(139, 'Roary', 'Carlson', 'auctor.non@protonmail.com', '2021-07-26 12:55:48', 'RUC71NUJ7OH', 'utilisateur', 5),
(140, 'Merritt', 'Nieves', 'at.libero@icloud.couk', '2022-03-26 22:53:46', 'DTP99CSV4OG', 'utilisateur', 5),
(141, 'Nita', 'Gentry', 'orci.donec@yahoo.ca', '2021-05-23 09:34:49', 'NCY34BDV8CD', 'utilisateur', 5),
(142, 'Quentin', 'Shannon', 'eu.enim@protonmail.com', '2021-09-09 17:20:54', 'OHH98PER0SR', 'utilisateur', 5),
(143, 'Cody', 'Moody', 'eget.varius@outlook.couk', '2023-02-25 18:56:05', 'EXX65MLY6XM', 'utilisateur', 5),
(144, 'Kelly', 'Castillo', 'parturient.montes@icloud.com', '2022-10-17 21:05:24', 'WIC18JBB7FQ', 'utilisateur', 5),
(145, 'Kirestin', 'Stevenson', 'odio.vel@yahoo.net', '2022-04-28 17:20:47', 'EAO46YAL6KJ', 'utilisateur', 5),
(146, 'Tatiana', 'Langley', 'etiam.laoreet@yahoo.org', '2022-08-11 10:50:39', 'QAT74SOI2BX', 'utilisateur', 5),
(147, 'Ava', 'Alvarado', 'fringilla.cursus@hotmail.ca', '2021-10-25 15:21:58', 'PQL17CYO3VD', 'utilisateur', 5),
(148, 'Shelly', 'Finch', 'ante@yahoo.com', '2021-04-30 18:28:48', 'BML95THL3PD', 'utilisateur', 5),
(149, 'Quinn', 'Rice', 'nam@protonmail.com', '2022-04-12 02:28:41', 'ZGO55HBS7SJ', 'utilisateur', 5),
(150, 'Cameron', 'Hartman', 'sit.amet.ornare@outlook.org', '2022-01-14 16:43:55', 'NUW13XKN2MH', 'utilisateur', 5),
(151, 'Mary', 'O\'donnell', 'magna.duis.dignissim@icloud.ca', '2022-12-11 04:36:48', 'GOV83FIR1CJ', 'utilisateur', 5),
(152, 'Tucker', 'Lynn', 'suscipit.nonummy@aol.ca', '2023-01-09 22:39:39', 'RLX46GTY5OW', 'utilisateur', 5),
(153, 'Isadora', 'Mason', 'fermentum.fermentum@hotmail.ca', '2021-09-03 03:16:51', 'PSI17JST1YQ', 'utilisateur', 5),
(154, 'Minerva', 'Giles', 'ornare.fusce@yahoo.couk', '2021-08-12 19:25:15', 'QHT31CTE1XD', 'utilisateur', 5),
(155, 'Luke', 'Day', 'quis.lectus@protonmail.couk', '2021-09-26 07:29:08', 'UIE35CQH3OK', 'utilisateur', 5),
(156, 'Cooper', 'Mclean', 'nisl@yahoo.couk', '2021-06-16 00:15:32', 'OGQ78VHB7JX', 'utilisateur', 5),
(157, 'Lillian', 'Keith', 'ante@aol.edu', '2021-11-24 22:35:40', 'IOF63WNL5RE', 'utilisateur', 3),
(158, 'Graiden', 'Decker', 'leo.morbi.neque@google.ca', '2021-06-26 09:36:32', 'GEB35KZN4EX', 'utilisateur', 4),
(159, 'Herman', 'Albert', 'sed.turpis@aol.couk', '2021-08-05 19:11:01', 'SGW88FKD2WP', 'utilisateur', 4),
(160, 'Noah', 'Mayo', 'lobortis.risus@aol.ca', '2021-10-18 13:31:47', 'TLL61MGZ8ML', 'utilisateur', 4),
(161, 'Ryder', 'Gordon', 'pharetra.felis.eget@hotmail.net', '2021-10-30 07:02:40', 'TJS84CXB4HM', 'utilisateur', 5),
(162, 'Jael', 'Rodriguez', 'consectetuer.adipiscing@yahoo.couk', '2022-11-26 18:21:39', 'RZQ29EPK4XN', 'utilisateur', 5),
(163, 'Cheryl', 'Russo', 'in.sodales@google.ca', '2023-01-11 13:59:48', 'GKU45JAW5JU', 'utilisateur', 5),
(164, 'Hu', 'Kaufman', 'vivamus.nibh.dolor@protonmail.net', '2021-08-06 22:07:08', 'HRT15NZH2ND', 'utilisateur', 5),
(165, 'Erin', 'Dawson', 'sociis@outlook.couk', '2023-03-27 04:13:52', 'TOA46WIT2PG', 'utilisateur', 5),
(166, 'Porter', 'Gamble', 'orci.ut@protonmail.ca', '2021-12-22 01:28:32', 'YOX11NOQ8UX', 'utilisateur', 5),
(167, 'Venus', 'Rosa', 'eget@icloud.couk', '2022-12-07 01:18:35', 'SHK81YTT4WQ', 'utilisateur', 5),
(168, 'Dale', 'Lang', 'nec.imperdiet.nec@aol.com', '2023-02-20 18:31:22', 'VXC23OBF4XI', 'utilisateur', 5),
(169, 'Lael', 'Harmon', 'at@yahoo.ca', '2021-12-05 00:35:32', 'MZD62NAO4YQ', 'utilisateur', 5),
(170, 'Abel', 'Raymond', 'ac@outlook.couk', '2022-11-23 11:55:36', 'VXG44LCL7PW', 'utilisateur', 5),
(171, 'Blythe', 'Haynes', 'sociis.natoque.penatibus@google.ca', '2022-02-23 05:22:00', 'TWX69NXQ7LG', 'utilisateur', 5),
(172, 'Neville', 'Phillips', 'pellentesque@yahoo.org', '2023-03-26 07:12:07', 'FMW25OBE6CC', 'utilisateur', 5),
(173, 'Damian', 'Mitchell', 'primis.in.faucibus@outlook.edu', '2022-10-02 03:05:41', 'NOD30LLS6TY', 'utilisateur', 5),
(174, 'Lucius', 'Reynolds', 'nonummy.ultricies.ornare@icloud.couk', '2023-02-02 05:51:49', 'RKZ01YSG4ZE', 'utilisateur', 5),
(175, 'Yeo', 'Gilbert', 'dolor.fusce@protonmail.com', '2022-03-13 01:04:13', 'XNO37KNS8IT', 'utilisateur', 5),
(176, 'Shay', 'Mcknight', 'nunc.mauris@hotmail.org', '2021-10-02 17:07:13', 'UKQ08MBD4UA', 'utilisateur', 3),
(177, 'Zorita', 'Mills', 'a.scelerisque@protonmail.edu', '2022-06-17 23:25:57', 'VNM57OOO2ID', 'utilisateur', 4),
(178, 'Ivan', 'Barker', 'euismod@yahoo.net', '2022-01-30 13:29:34', 'CXR47TUE4XS', 'utilisateur', 5),
(179, 'Inga', 'Fuller', 'ac@aol.ca', '2022-06-17 03:18:38', 'CNH82QYJ7IL', 'utilisateur', 4),
(180, 'Cassidy', 'Valenzuela', 'ut.eros.non@outlook.couk', '2022-06-05 03:56:43', 'MJZ49FSI3RY', 'utilisateur', 3),
(181, 'Thor', 'George', 'malesuada.vel@icloud.net', '2021-09-09 02:38:19', 'PTM49YLW2RX', 'utilisateur', 5),
(182, 'Gloria', 'Davis', 'est@protonmail.couk', '2022-07-28 03:07:48', 'EUE15NTH7MF', 'utilisateur', 3),
(183, 'Colby', 'Haynes', 'orci.luctus@icloud.com', '2021-06-10 05:26:26', 'DMP12UNI8PH', 'utilisateur', 4),
(184, 'Christian', 'Kerr', 'quisque.purus@google.com', '2022-01-03 01:13:56', 'YCQ65LPG0AY', 'utilisateur', 5),
(185, 'Wang', 'Butler', 'in.mi.pede@hotmail.net', '2021-05-11 02:34:45', 'PEF27RID2WP', 'utilisateur', 5),
(186, 'Jared', 'Burns', 'eu.ultrices.sit@icloud.couk', '2022-09-17 02:09:05', 'MVP37LVO2OY', 'utilisateur', 5),
(187, 'Clayton', 'Stone', 'quisque.libero@hotmail.couk', '2021-10-03 19:59:36', 'DCZ55UHP6DS', 'utilisateur', 5),
(188, 'Regan', 'Logan', 'scelerisque.scelerisque@protonmail.edu', '2022-07-06 16:13:49', 'NIU45EUC5LO', 'utilisateur', 5),
(189, 'Jana', 'Benton', 'eu.sem@outlook.edu', '2021-06-04 10:34:39', 'BYQ88KBS4AC', 'utilisateur', 5),
(190, 'Brenda', 'Cunningham', 'mauris@yahoo.net', '2023-02-15 19:43:12', 'HUU35QEN4OF', 'utilisateur', 5),
(191, 'Harding', 'Delacruz', 'magna.et.ipsum@google.org', '2022-05-30 07:45:21', 'FXH84HKV2GT', 'utilisateur', 5),
(192, 'Yuli', 'Gaines', 'velit.pellentesque@google.net', '2022-04-26 02:24:09', 'YRI78YDU6ZY', 'utilisateur', 5),
(193, 'Devin', 'Adkins', 'enim.consequat@icloud.org', '2022-10-09 11:15:52', 'STM66ZRM3JX', 'utilisateur', 5),
(194, 'Gretchen', 'Tyler', 'et.tristique@google.ca', '2022-02-09 02:25:29', 'DGH22XMJ7VK', 'utilisateur', 5),
(195, 'Alana', 'Hubbard', 'lacus.etiam@yahoo.couk', '2021-08-20 20:12:02', 'KIS20VLB6BS', 'utilisateur', 5),
(196, 'Harriet', 'Spears', 'leo.cras@outlook.couk', '2021-09-08 22:24:50', 'WIP64PYM1TN', 'utilisateur', 5),
(197, 'David', 'Huffman', 'odio.tristique@google.com', '2022-03-27 14:34:41', 'OHL48QSJ5LF', 'utilisateur', 5),
(198, 'Xyla', 'Estrada', 'a@google.net', '2021-05-27 01:30:29', 'YUK65REX3BQ', 'utilisateur', 5),
(199, 'Melanie', 'Webb', 'nisl.arcu.iaculis@aol.edu', '2022-05-15 12:15:55', 'HEF53DRR6YS', 'utilisateur', 5),
(200, 'Maia', 'Ward', 'dictum@yahoo.couk', '2022-04-05 07:30:11', 'RUF65FVK1UC', 'utilisateur', 5);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`ID_USERS`) REFERENCES `users` (`ID_USERS`),
  ADD CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`ID_GOUPE`) REFERENCES `groupe` (`ID_GOUPE`);

--
-- Contraintes pour la table `expedier`
--
ALTER TABLE `expedier`
  ADD CONSTRAINT `expedier_ibfk_1` FOREIGN KEY (`ID_GOUPE`) REFERENCES `groupe` (`ID_GOUPE`),
  ADD CONSTRAINT `expedier_ibfk_2` FOREIGN KEY (`ID_MESSAGE`) REFERENCES `message_envoye_users` (`ID_MESSAGE`);

--
-- Contraintes pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD CONSTRAINT `groupe_ibfk_1` FOREIGN KEY (`ID_TYPE`) REFERENCES `type_groupe` (`ID_TYPE`),
  ADD CONSTRAINT `groupe_ibfk_2` FOREIGN KEY (`ID_USERS`) REFERENCES `users` (`ID_USERS`);

--
-- Contraintes pour la table `lire`
--
ALTER TABLE `lire`
  ADD CONSTRAINT `lire_ibfk_1` FOREIGN KEY (`ID_USERS`) REFERENCES `users` (`ID_USERS`),
  ADD CONSTRAINT `lire_ibfk_2` FOREIGN KEY (`ID_MESSAGE`) REFERENCES `message_envoye_users` (`ID_MESSAGE`);

--
-- Contraintes pour la table `message_envoye_users`
--
ALTER TABLE `message_envoye_users`
  ADD CONSTRAINT `message_envoye_users_ibfk_1` FOREIGN KEY (`ID_USERS`) REFERENCES `users` (`ID_USERS`);

--
-- Contraintes pour la table `moderateur`
--
ALTER TABLE `moderateur`
  ADD CONSTRAINT `moderateur_ibfk_1` FOREIGN KEY (`ID_USERS`) REFERENCES `users` (`ID_USERS`),
  ADD CONSTRAINT `moderateur_ibfk_2` FOREIGN KEY (`ID_GOUPE`) REFERENCES `groupe` (`ID_GOUPE`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`ID_TYPE_USER`) REFERENCES `type_users` (`ID_TYPE_USER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
