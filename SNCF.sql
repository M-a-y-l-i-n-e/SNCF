-- phpMyAdmin SQL Dump 

-- version 4.7.0 

-- https://www.phpmyadmin.net/ 

-- 

-- Hôte : 127.0.0.1 

-- Généré le :  lun. 20 jan. 2020 à 12:34 

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

CREATE `SNCF`
USE `SNCF`

-- -------------------------------------------------------- 

  

-- 

-- Structure de la table `gare` 

-- 

  

CREATE TABLE `gare` ( 

  `id` int(11) NOT NULL, 

  `nomgare` varchar(50) NOT NULL 

) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

  

-- -------------------------------------------------------- 

  

-- 

-- Structure de la table `tgv` 

-- 

  

CREATE TABLE `tgv` ( 

  `id` int(10) NOT NULL, 

  `idgaredepart` int(11) NOT NULL, 

  `idgarearrivee` int(11) NOT NULL, 

  `horairedepart` date NOT NULL, 

  `duree` time NOT NULL 

) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

  

 

- 

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

ALTER TABLE `tgv` 

  ADD PRIMARY KEY (`id`); 

  

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

  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;COMMIT; 

  

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */; 

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */; 

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */; 
