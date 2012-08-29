-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 29 Août 2012 à 11:26
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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `description` text NOT NULL,
  `tracklist` text NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `album_tags` text,
  `user_id` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `albums`
--

INSERT INTO `albums` (`id`, `name`, `artist`, `label`, `year`, `description`, `tracklist`, `price`, `quantity`, `album_tags`, `user_id`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(4, 'Linear Accelerator 23', 'Dopplereffekt', 'International Deejay Gigolo Records', 2005, 'For a while there, Dopplereffekt became synonymous with the electro-revival. At least the good end of it. But with Linear Accelerator, they throw everything out the window and go for straight-up atmosphere, albeit an atmosphere that surrounded Pluto. The first of three long tracks, “Photo Injector,” drifts by on strange chugs of rhythm and analog trills; it’s what hypersleep sounds like. “Niobium Resonators” goes for large sweeps of sound that make you feel like you’re being dragged through an alien desert, and “Gravitron” is the spacewalk of an astronaut who’s been abandoned by his ship. “Myon-Neutrino” rockets into new, more urgent, and terribly dark territory; “Z-Boson” sparkles like spacedust; and “Higgs-Mechanism” is a long journey into the unknown. Completely astounding.', 'Niobium Resonators	14:25	\r\nGraviton	13:56	\r\nMyon-Neutrino	5:14	\r\nZ-Boson	8:28	\r\nNiobium Resonators	14:25	\r\nGraviton	13:56	\r\nMyon-Neutrino	5:14	\r\nZ-Boson	8:28		\r\nMyon-Neutrino	5:14	\r\nZ-Boson	8:28	\r\nHiggs-Mechanism	7:57', 19, 12, 'Electro, Experimental, Ambient', 1, 1, NULL, '2012-08-28 10:09:50', '2012-08-28 10:09:50'),
(6, 'Calabi Yau Space10', 'Dopplereffekt332', 'Rephlex', 2009, 'Another masterpiece by the nebulous Drexciya legacy. Breaking with all conventional musical rules this records continues the journey into unexplored terrain much like other recent material in other disguises (Der Zyklus, Arpanet). IMHO the artist(s) behind it have discovered sound sculpturing with Absynth. That''s what makes it organic and machinesque at the same time all while sounding confusing to the uncommitted listener. The fascination and confusion arising with recent discoveries in modern physics is very much audible here. If you don''t understand what the track titles mean you probably won''t understand the music as well.', 'Calabi Yau Manifold	2:19	\r\nHyperelliptic Surfaces	12:16	\r\nHolomorpic N-0 Form	2:39	\r\nCompactification	1:55	\r\nMirror Symmetry	3:44	\r\nNon Vanishing Harmonic Spinor	6:38	\r\nHypersurface	3:34	\r\nDimension 11	4:11', 10, 2, 'Abstract, Electro, Ambient', 1, 1, NULL, '2012-08-28 13:25:25', '2012-08-28 13:25:25'),
(7, 'Linear Accelerator0', 'Dopplereffekt0', 'International Deejay Gigolo Records', 2000, 'For a while there, Dopplereffekt became synonymous with the electro-revival. At least the good end of it. But with Linear Accelerator, they throw everything out the window and go for straight-up atmosphere, albeit an atmosphere that surrounded Pluto. The first of three long tracks, “Photo Injector,” drifts by on strange chugs of rhythm and analog trills; it’s what hypersleep sounds like. “Niobium Resonators” goes for large sweeps of sound that make you feel like you’re being dragged through an alien desert, and “Gravitron” is the spacewalk of an astronaut who’s been abandoned by his ship. “Myon-Neutrino” rockets into new, more urgent, and terribly dark territory; “Z-Boson” sparkles like spacedust; and “Higgs-Mechanism” is a long journey into the unknown. Completely astounding.', 'Photo Injector	21:08	\r\nNiobium Resonators	14:25	\r\nGraviton	13:56	\r\nMyon-Neutrino	5:14	\r\nZ-Boson	8:28	\r\nHiggs-Mechanism	7:57', 21, -1, 'Electro, Experimental, Ambient', 1, 1, NULL, '2012-08-28 10:09:50', '2012-08-28 10:09:50'),
(9, 'Linear Accelerator1111', 'Dopplereffekt1111', 'International Deejay Gigolo Records', 2003, 'For a while there, Dopplereffekt became synonymous with the electro-revival. At least the good end of it. But with Linear Accelerator, they throw everything out the window and go for straight-up atmosphere, albeit an atmosphere that surrounded Pluto. The first of three long tracks, “Photo Injector,” drifts by on strange chugs of rhythm and analog trills; it’s what hypersleep sounds like. “Niobium Resonators” goes for large sweeps of sound that make you feel like you’re being dragged through an alien desert, and “Gravitron” is the spacewalk of an astronaut who’s been abandoned by his ship. “Myon-Neutrino” rockets into new, more urgent, and terribly dark territory; “Z-Boson” sparkles like spacedust; and “Higgs-Mechanism” is a long journey into the unknown. Completely astounding.', 'Photo Injector	21:08	\r\nNiobium Resonators	14:25	\r\nGraviton	13:56	\r\nMyon-Neutrino	5:14	\r\nZ-Boson	8:28	\r\nHiggs-Mechanism	7:57', 21, -1, 'Electro, Experimental, Ambient', 1, 1, NULL, '2012-08-28 10:09:50', '2012-08-28 10:09:50'),
(11, 'Calabi Yau Space', 'Dopplereffekt', 'Rephlex', 2009, 'Another masterpiece by the nebulous Drexciya legacy. Breaking with all conventional musical rules this records continues the journey into unexplored terrain much like other recent material in other disguises (Der Zyklus, Arpanet). IMHO the artist(s) behind it have discovered sound sculpturing with Absynth. That''s what makes it organic and machinesque at the same time all while sounding confusing to the uncommitted listener. The fascination and confusion arising with recent discoveries in modern physics is very much audible here. If you don''t understand what the track titles mean you probably won''t understand the music as well.', 'Calabi Yau Manifold	2:19	\r\nHyperelliptic Surfaces	12:16	\r\nHolomorpic N-0 Form	2:39	\r\nCompactification	1:55	\r\nMirror Symmetry	3:44	\r\nNon Vanishing Harmonic Spinor	6:38	\r\nHypersurface	3:34	\r\nDimension 11	4:11', 10, 2, 'Abstract, Electro, Ambient, rock, yo', 1, 1, NULL, '2012-08-28 13:25:25', '2012-08-28 13:25:25'),
(12, 'Calabi Yau Space', 'Dopplereffekt', 'Rephlex', 2009, 'Another masterpiece by the nebulous Drexciya legacy. Breaking with all conventional musical rules this records continues the journey into unexplored terrain much like other recent material in other disguises (Der Zyklus, Arpanet). IMHO the artist(s) behind it have discovered sound sculpturing with Absynth. That''s what makes it organic and machinesque at the same time all while sounding confusing to the uncommitted listener. The fascination and confusion arising with recent discoveries in modern physics is very much audible here. If you don''t understand what the track titles mean you probably won''t understand the music as well.', 'Calabi Yau Manifold	2:19	\r\nHyperelliptic Surfaces	12:16	\r\nHolomorpic N-0 Form	2:39	\r\nCompactification	1:55	\r\nMirror Symmetry	3:44	\r\nNon Vanishing Harmonic Spinor	6:38	\r\nHypersurface	3:34	\r\nDimension 11	4:11', 10, 2, 'Abstract, Electro, Ambient, rock, yo', 1, 1, NULL, '2012-08-28 13:25:25', '2012-08-28 13:25:25');

-- --------------------------------------------------------

--
-- Structure de la table `albums_tags`
--

CREATE TABLE `albums_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_tags_tag_id_index` (`tag_id`),
  KEY `albums_tags_album_id_index` (`album_id`)
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
('application', '2012_07_28_000002_create_albums', 2),
('application', '2012_08_16_000003_create_pictures', 2),
('application', '2012_08_16_000004_create_tags', 2),
('application', '2012_08_16_000005_create_albums_tags', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `location` varchar(300) NOT NULL,
  `thumbfeat` varchar(300) NOT NULL,
  `thumbcat` varchar(300) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pictures_album_id_index` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text NOT NULL,
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
(1, 'isa', '$2a$08$LRVY4Ww29y7PwvLgTTWcuOIdo/57pegRBfp0RTdP/gcHd6DupxpAC', 'Admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
