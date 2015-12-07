-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 07 Décembre 2015 à 00:09
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `projet_bovins`
--

-- --------------------------------------------------------

--
-- Structure de la table `abattoir`
--

CREATE TABLE IF NOT EXISTS `abattoir` (
  `nom_abat` varchar(30) NOT NULL,
  `n_tel_abat` varchar(10) NOT NULL,
  `adr_abat` text NOT NULL,
  PRIMARY KEY (`nom_abat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `agriculteur`
--

CREATE TABLE IF NOT EXISTS `agriculteur` (
  `id_agriculteur` int(11) NOT NULL,
  `nom_agri` varchar(30) NOT NULL,
  `prenom_agri` varchar(30) NOT NULL,
  `n_tel_agri` varchar(10) NOT NULL,
  `adr_agri` text NOT NULL,
  PRIMARY KEY (`id_agriculteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bovin`
--

CREATE TABLE IF NOT EXISTS `bovin` (
  `code_boucle` varchar(15) NOT NULL,
  `nom_bovin` varchar(30) NOT NULL,
  `pays` varchar(2) NOT NULL,
  `departement` int(2) NOT NULL,
  `num_travail` int(4) NOT NULL,
  `date_naissance` date NOT NULL,
  `date_mort` date DEFAULT NULL,
  `race` varchar(30) NOT NULL,
  `sexe` char(1) DEFAULT NULL,
  `id_agriculteur_bovin` int(4) NOT NULL,
  `nom_abat_bovin` varchar(30) DEFAULT 'BovinStillAlive',
  PRIMARY KEY (`code_boucle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
