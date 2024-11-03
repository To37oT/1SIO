-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 24 nov. 2023 à 09:01
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `2025_asterix_legion`
--
CREATE DATABASE IF NOT EXISTS `1sio_asterix_legion` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `1sio_asterix_legion`;

-- --------------------------------------------------------

--
-- Structure de la table `camp`
--

CREATE TABLE `camp` (
  `CodeCamp` varchar(5) NOT NULL,
  `NomCamp` varchar(20) NOT NULL,
  `NbPers` mediumint(9) NOT NULL,
  `LibelleRegion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `camp`
--

INSERT INTO `camp` (`CodeCamp`, `NomCamp`, `NbPers`, `LibelleRegion`) VALUES
('ALB30', 'Album', 25, 'Aquitaine'),
('ALU20', 'Aluminium', 20, 'Armorique'),
('AQU20', 'Aquarium', 50, 'Armorique'),
('AUD30', 'Auditorium', 60, 'Aquitaine'),
('BAL40', 'Balatum', 50, 'corse'),
('CAL40', 'Calcium', 35, 'Corse'),
('CEM40', 'Cemonum', 50, 'Corse'),
('CHO40', 'Chouingum', 20, 'Corse'),
('GER40', 'Geranium', 35, 'Corse'),
('JOL30', 'Jolimum', 45, 'Aquitaine'),
('LAU20', 'Laudanum', 50, 'Armorique'),
('MER40', 'Mercurocrum', 55, 'corse'),
('MET30', 'Metronum', 55, 'Aquitaine'),
('PET20', 'Petitbonum', 30, 'Armorique'),
('POS30', 'Postscriptum', 20, 'Aquitaine'),
('SOD40', 'Sodium', 15, 'Corse'),
('STE30', 'Sternum', 20, 'Aquitaine'),
('TAR40', 'Tartopum', 40, 'Corse'),
('ULT20', 'Ultimatum', 35, 'Armorique');

-- --------------------------------------------------------

--
-- Structure de la table `diriger`
--

CREATE TABLE `diriger` (
  `CodeResp` varchar(5) NOT NULL,
  `CodeCamp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `diriger`
--

INSERT INTO `diriger` (`CodeResp`, `CodeCamp`) VALUES
('Abs01', 'BAL40'),
('Cet05', 'TAR40'),
('Cho01', 'TAR40'),
('Dip08', 'ALB30'),
('Fai01', 'AUD30'),
('Fai02', 'AUD30'),
('Fle01', 'GER40'),
('Gar01', 'LAU20'),
('Gar01', 'ULT20'),
('Mal01', 'ULT20'),
('Mot02', 'STE30'),
('Nen02', 'ALU20'),
('Nen03', 'CEM40'),
('Obt05', 'AQU20'),
('Our01', 'BAL40'),
('Pac01', 'CAL40'),
('Pac01', 'JOL30'),
('Pac01', 'STE30'),
('Ple05', 'MER40'),
('Plu01', 'PET20'),
('Roi85', 'LAU20'),
('Roi85', 'PET20'),
('Sac05', 'STE30'),
('Sau03', 'AQU20'),
('Sci01', 'SOD40'),
('Sou01', 'CEM40');

-- --------------------------------------------------------

--
-- Structure de la table `legionnaire`
--

CREATE TABLE `legionnaire` (
  `CodeLegi` varchar(6) NOT NULL,
  `NomLegi` varchar(30) NOT NULL,
  `NbAnEngage` mediumint(9) NOT NULL,
  `CodeResp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `legionnaire`
--

INSERT INTO `legionnaire` (`CodeLegi`, `NomLegi`, `NbAnEngage`, `CodeResp`) VALUES
('Ang012', 'Anglaigus', 15, 'Our01'),
('Arr398', 'Arrèdebus', 10, 'Aeo01'),
('Bal524', 'Ballondebaudrus', 25, 'Obt05'),
('Bel844', 'Belinconnus', 15, 'Mal01'),
('Bis548', 'Biscornus', 5, 'Fai02'),
('Bri598', 'Briseradius', 10, 'Roi85'),
('Car022', 'Cartapus', 25, 'Dip08'),
('Cub544', 'Cubitus', 25, 'Cho01'),
('Fai547', 'Faitexcus', 25, 'Sac05'),
('Gaz542', 'Gazpachoandalus', 10, 'Abs01'),
('Hot648', 'Hotelterminus', 25, 'Sac05'),
('Hum348', 'Humerus', 25, 'Roi85'),
('Hyp248', 'Hypothénus', 15, 'Obt05'),
('Inc544', 'Incongrus', 5, 'Yen01'),
('Jol458', 'Joligibus', 20, 'Sau03'),
('Lap588', 'Lapsus', 15, 'Nen02'),
('Lup255', 'Lupus', 15, 'Mal01'),
('Mar268', 'Marchéopus', 25, 'Sac05'),
('Mil365', 'Milexcus', 35, 'Roi85'),
('Min249', 'Minus', 25, 'Obt05'),
('Mor548', 'Mordicus', 15, 'Sou02'),
('Nam699', 'Namaspamus', 5, 'Cet05'),
('Oct529', 'Octopus', 10, 'Fle01'),
('Oli867', 'Olibrius', 15, 'Gar01'),
('Par635', 'Pardessus', 15, 'Nen03'),
('Per845', 'Perclus', 20, 'Abs01'),
('Pet954', 'Petilarus', 30, 'Sci01'),
('Pla965', 'Plampemus', 25, 'Roi85'),
('Pom655', 'Pompilius', 15, 'Mot02'),
('Pro349', 'Processus', 5, 'Ple05'),
('Que255', 'Quelquilfus', 25, 'Ple05'),
('Quo222', 'Quoideplus', 15, 'Plu01'),
('Ric988', 'Rictus', 35, 'Fai01'),
('Sau628', 'Saudepus', 15, 'Fai01'),
('Sav888', 'Savancosinus', 5, 'Ple05'),
('Str577', 'Stradivarius', 25, 'Fle01'),
('Str654', 'Stratocumulus', 20, 'Gar01'),
('Tad688', 'Tadévirus', 15, 'Gar01'),
('Tax266', 'Taxensus', 15, 'Ple05'),
('Tik648', 'Tikedbus', 5, 'Dip08'),
('Toh844', 'Tohubohus', 5, 'Mot02'),
('Tom588', 'Tomatojus', 25, 'Mal01'),
('Yap599', 'Yapadebonus', 25, 'Ple05');

-- --------------------------------------------------------

--
-- Structure de la table `responsable`
--

CREATE TABLE `responsable` (
  `CodeResp` varchar(5) NOT NULL,
  `NomResp` varchar(30) NOT NULL,
  `AgeResp` mediumint(9) NOT NULL,
  `NbAnneeLegion` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `responsable`
--

INSERT INTO `responsable` (`CodeResp`, `NomResp`, `AgeResp`, `NbAnneeLegion`) VALUES
('Abs01', 'Absolumentexclus', 30, 10),
('Aeo01', 'Aerobus', 34, 20),
('Bon03', 'Bonusmalus', 40, 20),
('Cet05', 'Cétinconcensus', 33, 20),
('Cho01', 'Chorus', 25, 35),
('Dip08', 'Diplodocus', 24, 25),
('Epi03', 'Epinedecactus', 38, 15),
('Fai01', 'Faipalgugus', 24, 30),
('Fai02', 'Faimoiducuscus', 22, 25),
('Fle01', 'Fleurdelotus', 25, 10),
('Gar01', 'Garovirus', 30, 10),
('Mal01', 'Malosinus', 28, 30),
('Mot02', 'Motus', 28, 20),
('Nen02', 'Nenjetépus', 45, 10),
('Nen03', 'Nenpeuplus', 40, 20),
('Obt05', 'Obtus', 32, 15),
('Our01', 'Oursenplus', 25, 5),
('Pac01', 'Pacotéalargus', 30, 30),
('Ple05', 'Pleindastus', 36, 15),
('Plu01', 'Plutoqueprevus', 28, 10),
('Roi85', 'Roideprus', 29, 10),
('Sac05', 'Sacapus', 27, 30),
('Sau03', 'Saugrenus', 44, 10),
('Sci01', 'Sciencifus', 34, 15),
('Sou01', 'Sousentendus', 38, 5),
('Sou02', 'Soutienmordicus', 39, 10),
('Yen01', 'Yenapus', 26, 15);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`CodeCamp`);

--
-- Index pour la table `diriger`
--
ALTER TABLE `diriger`
  ADD PRIMARY KEY (`CodeResp`,`CodeCamp`),
  ADD KEY `CodeResp` (`CodeResp`),
  ADD KEY `CodeCamp` (`CodeCamp`);

--
-- Index pour la table `legionnaire`
--
ALTER TABLE `legionnaire`
  ADD PRIMARY KEY (`CodeLegi`),
  ADD KEY `CodeResp` (`CodeResp`);

--
-- Index pour la table `responsable`
--
ALTER TABLE `responsable`
  ADD PRIMARY KEY (`CodeResp`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `diriger`
--
ALTER TABLE `diriger`
  ADD CONSTRAINT `diriger_ibfk_1` FOREIGN KEY (`CodeCamp`) REFERENCES `camp` (`CodeCamp`),
  ADD CONSTRAINT `diriger_ibfk_2` FOREIGN KEY (`CodeResp`) REFERENCES `responsable` (`CodeResp`);

--
-- Contraintes pour la table `legionnaire`
--
ALTER TABLE `legionnaire`
  ADD CONSTRAINT `legionnaire_ibfk_1` FOREIGN KEY (`CodeResp`) REFERENCES `responsable` (`CodeResp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
