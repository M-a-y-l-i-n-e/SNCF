-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 21 jan. 2020 à 14:00
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sncf`
--
CREATE DATABASE IF NOT EXISTS `sncf` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sncf`;

-- --------------------------------------------------------

--
-- Structure de la table `gare`
--

CREATE TABLE IF NOT EXISTS `gare` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nomgare` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tgv`
--

CREATE TABLE IF NOT EXISTS `tgv` (
  `id` int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `idgaredepart` int(11) KEY NOT NULL,
  `idgarearrivee` int(11) KEY NOT NULL,
  `horairedepart` date NOT NULL,
  `duree` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `gare`
--
ALTER TABLE `gare`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tgv`
--

-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `gare`
--
ALTER TABLE `gare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tgv`
--
ALTER TABLE `tgv`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tgv`
--
ALTER TABLE `tgv`
  ADD CONSTRAINT `garearriv` FOREIGN KEY (`idgarearrivee`) REFERENCES `gare` (`id`),
  ADD CONSTRAINT `garedepart` FOREIGN KEY (`idgaredepart`) REFERENCES `gare` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
