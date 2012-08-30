-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 29 Août 2012 à 21:09
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
-- Structure de la table `albumartists`
--

CREATE TABLE `albumartists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albumartists_artist_id_index` (`artist_id`),
  KEY `albumartists_album_id_index` (`album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `albumartists`
--

INSERT INTO `albumartists` (`id`, `artist_id`, `album_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `albumlabels`
--

CREATE TABLE `albumlabels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albumlabels_label_id_index` (`label_id`),
  KEY `albumlabels_album_id_index` (`album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `albumlabels`
--

INSERT INTO `albumlabels` (`id`, `label_id`, `album_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `albums`
--

INSERT INTO `albums` (`id`, `name`, `year`, `description`, `tracklist`, `price`, `quantity`, `user_id`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'The electrobubblepunk EP', 2010, 'Style: Electrobubblepunk\r\nRelease Date: Sept. 9th 2010\r\nFormat: 10" EP + CD // Copies: 350\r\nOrange vinyl - handprinted covers - orange & gold editions!\r\nprice: 10/15€', 'Red Lights 4:26\r\nLittle Petula 3:21\r\nDance Epidemic 3:43\r\nCougnaaahhh! 4:20\r\nFunny Cats 3:14', 20, 15, 1, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `albumtags`
--

CREATE TABLE `albumtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albumtags_tag_id_index` (`tag_id`),
  KEY `albumtags_album_id_index` (`album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `albumtags`
--

INSERT INTO `albumtags` (`id`, `tag_id`, `album_id`) VALUES
(1, 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `artists`
--

INSERT INTO `artists` (`id`, `artist`, `description`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Viudmoth', '', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `user_id`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'First news', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo elementum libero viverra placerat. Sed neque dolor, adipiscing in iaculis in, commodo vel enim. Phasellus neque sem, faucibus ut imperdiet nec, vehicula a diam. Vestibulum consectetur semper urna eu ultricies. Pellentesque vel urna a tortor ullamcorper porttitor. Nunc et eros diam. Aenean nec turpis vitae ligula laoreet facilisis a sed est. Nunc ultrices sollicitudin feugiat. Integer sit amet mauris ante, eget tincidunt purus.\r\n\r\nMorbi mattis aliquam libero nec imperdiet. Cras dignissim varius justo eget porttitor. Proin mauris tellus, lobortis sit amet dictum eu, pharetra eu velit. Aliquam quis orci quis risus dignissim aliquet nec at est. Nullam ut ipsum non massa viverra condimentum et vitae purus. Proin tempor malesuada tincidunt. Nam laoreet congue libero, at volutpat libero condimentum et. Aenean laoreet convallis erat, nec laoreet erat faucibus ut. Sed magna massa, cursus et imperdiet at, elementum a mauris.', 1, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `date`, `user_id`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'J.A.T.A.C. LE CENTRAL ', 'Start at 20:00 till end of plunge\r\n\r\nVisuals, Videurshow, Magic-Caca\r\nVideo, Surprises, Attempts,\r\nConcert and Dj set\r\n\r\n\r\nBe there on time for Air-blast', '2012-08-30 20:00:00', 1, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `labels`
--

INSERT INTO `labels` (`id`, `label`, `description`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'umbrelladelika', '', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
('application', '2012_07_28_000002_create_blogs', 1),
('application', '2012_07_28_000002_create_events', 1),
('application', '2012_07_28_000002_create_maps', 2),
('application', '2012_08_16_000003_create_pictures', 2),
('application', '2012_08_16_000004_create_artists', 2),
('application', '2012_08_16_000004_create_labels', 2),
('application', '2012_08_16_000004_create_tags', 2),
('application', '2012_08_16_000005_create_albumartists', 2),
('application', '2012_08_16_000005_create_albumlabels', 2),
('application', '2012_08_16_000005_create_albumtags', 2);

-- --------------------------------------------------------

--
-- Structure de la table `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `zoom` int(11) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `maps`
--

INSERT INTO `maps` (`id`, `title`, `description`, `lat`, `lng`, `zoom`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Café central', 'Borgval 14, Brussels, Belgium\r\n02 513 73 08', 50.8477, 4.34782, 17, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
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
  KEY `pictures_blog_id_index` (`blog_id`)
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `description`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Electro', '', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 'isa', '$2a$08$AjZmNHBE5ymqleGzvML5xeD2bXvHmjbxsM9/LTEr8Bf6PB9gN0rX6', 'Admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `albumartists`
--
ALTER TABLE `albumartists`
  ADD CONSTRAINT `albumartists_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `albumartists_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `albumlabels`
--
ALTER TABLE `albumlabels`
  ADD CONSTRAINT `albumlabels_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `albumlabels_ibfk_1` FOREIGN KEY (`label_id`) REFERENCES `labels` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `albumtags`
--
ALTER TABLE `albumtags`
  ADD CONSTRAINT `albumtags_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `albumtags_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `pictures_ibfk_3` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pictures_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
