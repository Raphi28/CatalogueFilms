-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 13 mars 2026 à 10:07
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `catalogue_films_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `annee_sortie` int NOT NULL,
  `affiche` varchar(255) DEFAULT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8244BE224296D31F` (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `description`, `annee_sortie`, `affiche`, `genre_id`) VALUES
(1, 'film1', 'test description', 2026, 'https://imgs.search.brave.com/UTNc8oxZ9BeazPb5NXuDXeAmJSt8UGNJORxCD4203ak/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/ZWxiZS5wYXJpcy8z/OTc2LWhvbWVfZGVm/YXVsdC9hZmZpY2hl/LWFuY2llbm5lLWZp/bG0tbGUtbWFyZ2lu/YWwtYmVsbW9uZG8t/Y2FzYXJvLTE5ODMu/anBn', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
