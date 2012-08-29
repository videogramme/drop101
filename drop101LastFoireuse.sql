-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 29 Août 2012 à 17:16
-- Version du serveur: 5.5.25
-- Version de PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `drop101`
--

-- --------------------------------------------------------

--
-- Structure de la table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `description` text NOT NULL,
  `tracklist` text NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `albums_artists`
--

CREATE TABLE `albums_artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_artists_artist_id_index` (`artist_id`),
  KEY `albums_artists_album_id_index` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `albums_labels`
--

CREATE TABLE `albums_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_labels_label_id_index` (`label_id`),
  KEY `albums_labels_album_id_index` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `albums_tags`
--

CREATE TABLE `albums_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_tags_tag_id_index` (`tag_id`),
  KEY `albums_tags_album_id_index` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `events_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `laravel_migrations`
--

CREATE TABLE `laravel_migrations` (
  `bundle` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`bundle`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `laravel_migrations`
--

INSERT INTO `laravel_migrations` (`bundle`, `name`, `batch`) VALUES
('application', '2012_07_28_000001_create_users', 1),
('application', '2012_07_28_000002_create_albums', 1),
('application', '2012_07_28_000002_create_events', 1),
('application', '2012_07_28_000002_create_news', 1),
('application', '2012_08_16_000003_create_pictures', 1),
('application', '2012_08_16_000004_create_artists', 1),
('application', '2012_08_16_000004_create_labels', 1),
('application', '2012_08_16_000004_create_tags', 1),
('application', '2012_08_16_000005_create_albums_artists', 1),
('application', '2012_08_16_000005_create_albums_labels', 1),
('application', '2012_08_16_000005_create_albums_tags', 1);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `location` varchar(300) NOT NULL,
  `thumbbig` varchar(300) NOT NULL,
  `thumbsmall` varchar(300) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pictures_album_id_index` (`album_id`),
  KEY `pictures_event_id_index` (`event_id`),
  KEY `pictures_news_id_index` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '5',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `role`, `created_at`, `updated_at`) VALUES
(1, 'isa', '$2a$08$WNfhaI.wSY.d7D3OP.NGAeictBgW9Ft7bu6MvP31VRZpIxPISfEyu', 'Admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `albums_artists`
--
ALTER TABLE `albums_artists`
  ADD CONSTRAINT `albums_artists_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `albums_artists_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `albums_labels`
--
ALTER TABLE `albums_labels`
  ADD CONSTRAINT `albums_labels_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `albums_labels_ibfk_1` FOREIGN KEY (`label_id`) REFERENCES `labels` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `albums_tags`
--
ALTER TABLE `albums_tags`
  ADD CONSTRAINT `albums_tags_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `albums_tags_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `pictures_ibfk_3` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pictures_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
