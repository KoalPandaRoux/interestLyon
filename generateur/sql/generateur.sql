-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 10 Octobre 2016 à 18:07
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `generateur`
--

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE `lieu` (
  `id` int(11) NOT NULL,
  `nom` varchar(110) NOT NULL,
  `adresse` varchar(110) NOT NULL,
  `description` varchar(100) NOT NULL,
  `url` varchar(110) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lieu`
--

INSERT INTO `lieu` (`id`, `nom`, `adresse`, `description`, `url`, `id_type`) VALUES
(1, 'Hôtel-Dieu de Lyon', '1 Place de l\'Hôpital, 69002 Lyon', 'L\'Hôtel-Dieu de Lyon est l\'un des plus grands bâtiments de la presqu\'île de Lyon.', 'https://stample.co/', 1),
(2, 'Ossuaire de la Chapelle St Clair', '147 rue Créqui, 69006 Lyon', 'Cette chapelle est élevée à la mémoire des victimes du siège de Lyon en 1793.', 'https://stample.co/', 3),
(3, 'Musée des marionnettes', '100 Rue Saint-Georges, 69005 Lyon', 'LE MUSÉE DES MARIONNETTES DU MONDE', 'https://stample.co/', 2),
(4, 'Patinoire Charlemagne', '100 Cours Charlemagne, 69002 Lyon', 'La patinoire Charlemagne est une patinoire de Lyon inaugurée en 1969. ', 'https://stample.co/', 7),
(5, 'Les halles de Paul Bocuse', '102 Cours Lafayette, 69003 Lyon', 'Manger', 'https://stample.co/', 4),
(6, 'Auditorium Part-Dieu', '149 Rue Garibaldi, 69003 Lyon', 'https://stample.co/', 'https://stample.co/', 6),
(7, 'Parc de La Tête d\'Or', '\r\nParc de La Tête d\'Or, Rue de Créqui, 69006 Lyon', 'https://stample.co/', 'https://stample.co/', 5);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `type` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`id_type`, `type`) VALUES
(1, 'Architecture'),
(2, 'Musée'),
(3, 'Insolite'),
(4, 'Gastronomie'),
(5, 'Jardin'),
(6, 'Musique'),
(7, 'Historique');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `lieu`
--
ALTER TABLE `lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
