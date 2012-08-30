-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 30 Août 2012 à 06:52
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `albums`
--

INSERT INTO `albums` (`id`, `name`, `year`, `description`, `tracklist`, `price`, `quantity`, `user_id`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'The electrobubblepunk EP', 2010, 'Style: Electrobubblepunk\r\nRelease Date: Sept. 9th 2010\r\nFormat: 10" EP + CD // Copies: 350\r\nOrange vinyl - handprinted covers - orange & gold editions!\r\nprice: 10/15€\r\n\r\nhttp://www.facebook.com/pages/Viudmoth/76846703984\r\nhttp://www.noomiz.com/viudmoth\r\nhttp://www.myspace.com/viudmoth', 'Funny cats 03:13\r\nLittle petula 03:20\r\nSpeed Leon 03:27\r\nStrange Mission 04:04\r\nRed Light 04:22\r\nGreen-eyed Monster 02:49\r\nCougnaaahhh! 04:19\r\nBlugga terror 03:59\r\nDance Epidemic 03:42', 20, 15, 1, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Abstructurate EP', 2010, 'CD or 12" Vinyl\r\n\r\nhttp://boyaent.bandcamp.com/album/abstructurate-ep-free-preview\r\nhttp://www.facebook.com/pages/Ucture/28124837389', '1.\r\nIntro 02:39\r\n2.\r\nMastic Bastard 05:13\r\n3.\r\nLarsen Lupin 03:28\r\n4.\r\nAncolie Sofa 02:07\r\n5.\r\nNevermind The Destruction 05:13\r\n6.\r\nLethal Lead 04:53\r\n7.\r\nHoping Parade 04:58', 23, 8, 1, 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(3, 'Bishop Dust', 2011, 'http://www.myspace.com/bishopdust/music', '1 Meeting Points 4:40\r\n2 Yo Nugga! 3:34\r\n3 Big up Back up (it''s too late mix) 3:46\r\n4 Chromatic Pawns 4:03\r\n5 Of mice and man 3:33', 15, 12, 1, 1, NULL, '2012-08-30 01:00:00', '2012-08-30 01:00:00'),
(4, 'Wide Open Empty', 2009, 'Label:\r\nAkamusic – 2009005\r\nFormat:\r\nCD, Enhanced, EP \r\nCountry:\r\nBelgium\r\nReleased:\r\n08 Jun 2009\r\nGenre:\r\nElectronic, Hip Hop, Pop, Stage & Screen\r\nStyle:\r\nPop Rap, Conscious, Crunk, Abstract, Grime, Bounce, RnB/Swing, Ragga HipHop, Dubstep, Hip Hop, Thug Rap, Electro, Jungle', '1	Depotax –	 Elastik (feat. Himself)\r\nFeaturing – Elastik\r\n3:32	\r\n2	Depotax –	 Pose\r\nArranged By – Bishop Dust, Depotax\r\n4:10	\r\n3	Depotax –	 Almost	3:05	\r\n4	Code 314 MathiasB.* –	 The Soft Machine - We Do Remember RMX\r\nRemix – Depotax\r\n3:25	\r\n5	Depotax –	 We Down - Heaven Knows\r\nArranged By – Bishop Dust, Depotax\r\n3:31	\r\n6	Depotax –	 Day Shift	2:13	\r\nVideo1		 The Depotax Showcase ''09	1:45	\r\nVideo2		 Elastik (feat. himself) LIVE at Charleroi Coliseum - Synapse Birthday	3:35	\r\nVideo3		 Episode 7	1:00', 21, 10, 1, 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(5, 'Ghost Love', 2011, 'Design – Laurent Nyssen\r\nMastered By – Andrew Liles\r\nMusic By – Phil Maggi', '1		 Blood And Heart Weavings	4:35	\r\n2		 This Stabbing Silence	1:43	\r\n3		 Antecedents	2:24	\r\n4		 Forest	3:53	\r\n5		 Hordes	3:47	\r\n6		 Meshes, Ashes	2:34	\r\n7		 The Tumult	4:57	\r\n8		 Tightrope	1:28	\r\n9		 Slavery	5:56	\r\n10		 Witches	5:27	\r\n11		 Chains	5:07', 22, 4, 1, 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(6, 'Aerial', 2008, 'Mastered At – Optimum Mastering\r\nPublished By – Multiverse Media Publishing\r\nDistributed By – Baked Goods\r\nPhonographic Copyright (p) – Multiverse Ltd.\r\nCopyright (c) – Multiverse Ltd.\r\n\r\nDesign – John Coulthart\r\nMastered By – Shawn Joseph\r\nPhotography By – Liz Eve\r\nWritten-By, Producer – Dave Huismans\r\n\r\nAll tracks written and produced in 2562, The Hague/NL.\r\nComes in a standard Jewelcase.\r\n© & ? Multiverse Ltd 2008.', '1		 Redux	4:42	\r\n2		 Morvern	4:52	\r\n3		 Moog Dub	4:37	\r\n4		 Channel Two	5:28	\r\n5		 Techno Dread	5:32	\r\n6		 Basin Dub	4:53	\r\n7		 Greyscale	5:04	\r\n8		 Enforcers	5:49	\r\n9		 Kameleon	5:35	\r\n10		 The Times	4:44	', 28, 3, 1, 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(7, 'BOYA''s Beats & Bliss', 2009, 'Breaks, IDM, Power Electronics, Ambient', '01	Squeaky Lobster –	 Flying Ruppies		\r\n02	Total Racoon –	 Shabbath Rasta Shabbath		\r\n03	Ucture –	 Chicken Legs In Neverland		\r\n04	Bishop Dust –	 Of Mice And Man		\r\n05	Bitriplex –	 Syphonne		\r\n06	Al Capile –	 Le Bal Des Robots		\r\n07	Antilux –	 Black Discovery		\r\n08	Ext''inT –	 A New Plant		\r\n09	A Big Monster In A Little Box –	 Wood Motion Doll		\r\n10	Anthropoke –	 Onanose\r\nComposition – Seal Phüric, Trionix\r\nMaterials – Dj P\r\n11	High, Eye and I –	 L''ossuaire Pt.1		', 19, 35, 1, 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(8, 'Aerial', 2008, 'Mastered At – Optimum Mastering\r\nPublished By – Multiverse Media Publishing\r\nDistributed By – Baked Goods\r\nPhonographic Copyright (p) – Multiverse Ltd.\r\nCopyright (c) – Multiverse Ltd.\r\n\r\nDesign – John Coulthart\r\nMastered By – Shawn Joseph\r\nPhotography By – Liz Eve\r\nWritten-By, Producer – Dave Huismans\r\n\r\nAll tracks written and produced in 2562, The Hague/NL.\r\nComes in a standard Jewelcase.\r\n© & ? Multiverse Ltd 2008.', '1		 Redux	4:42	\r\n2		 Morvern	4:52	\r\n3		 Moog Dub	4:37	\r\n4		 Channel Two	5:28	\r\n5		 Techno Dread	5:32	\r\n6		 Basin Dub	4:53	\r\n7		 Greyscale	5:04	\r\n8		 Enforcers	5:49	\r\n9		 Kameleon	5:35	\r\n10		 The Times	4:44	', 28, 3, 1, 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(9, 'BOYA''s Beats & Bliss', 2009, 'Breaks, IDM, Power Electronics, Ambient', '01	Squeaky Lobster –	 Flying Ruppies		\r\n02	Total Racoon –	 Shabbath Rasta Shabbath		\r\n03	Ucture –	 Chicken Legs In Neverland		\r\n04	Bishop Dust –	 Of Mice And Man		\r\n05	Bitriplex –	 Syphonne		\r\n06	Al Capile –	 Le Bal Des Robots		\r\n07	Antilux –	 Black Discovery		\r\n08	Ext''inT –	 A New Plant		\r\n09	A Big Monster In A Little Box –	 Wood Motion Doll		\r\n10	Anthropoke –	 Onanose\r\nComposition – Seal Phüric, Trionix\r\nMaterials – Dj P\r\n11	High, Eye and I –	 L''ossuaire Pt.1		', 19, 35, 1, 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(10, 'Aerial', 2008, 'Mastered At – Optimum Mastering\r\nPublished By – Multiverse Media Publishing\r\nDistributed By – Baked Goods\r\nPhonographic Copyright (p) – Multiverse Ltd.\r\nCopyright (c) – Multiverse Ltd.', '1		 Redux	4:42	\r\n2		 Morvern	4:52	\r\n3		 Moog Dub	4:37	\r\n4		 Channel Two	5:28	\r\n5		 Techno Dread	5:32	\r\n6		 Basin Dub	4:53	\r\n7		 Greyscale	5:04	\r\n8		 Enforcers	5:49	\r\n9		 Kameleon	5:35	\r\n10		 The Times	4:44	', 28, 3, 1, 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(11, 'BOYA''s Beats & Bliss', 2009, 'Breaks, IDM, Power Electronics, Ambient', '01	Squeaky Lobster –	 Flying Ruppies		\r\n02	Total Racoon –	 Shabbath Rasta Shabbath		\r\n03	Ucture –	 Chicken Legs In Neverland		\r\n04	Bishop Dust –	 Of Mice And Man		\r\n05	Bitriplex –	 Syphonne		\r\n06	Al Capile –	 Le Bal Des Robots		\r\n07	Antilux –	 Black Discovery		\r\n08	Ext''inT –	 A New Plant		\r\n09	A Big Monster In A Little Box –	 Wood Motion Doll		\r\n10	Anthropoke –	 Onanose\r\nComposition – Seal Phüric, Trionix\r\nMaterials – Dj P\r\n11	High, Eye and I –	 L''ossuaire Pt.1		', 19, 35, 1, 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `albums_artists`
--

CREATE TABLE `albums_artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_artists_album_id_index` (`album_id`),
  KEY `albums_artists_artist_id_index` (`artist_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `albums_artists`
--

INSERT INTO `albums_artists` (`id`, `album_id`, `artist_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 4),
(7, 7, 5),
(8, 10, 6),
(9, 11, 7);

-- --------------------------------------------------------

--
-- Structure de la table `albums_labels`
--

CREATE TABLE `albums_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_labels_album_id_index` (`album_id`),
  KEY `albums_labels_label_id_index` (`label_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `albums_labels`
--

INSERT INTO `albums_labels` (`id`, `album_id`, `label_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 3),
(6, 7, 2),
(7, 8, 4);

-- --------------------------------------------------------

--
-- Structure de la table `albums_tags`
--

CREATE TABLE `albums_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_tags_album_id_index` (`album_id`),
  KEY `albums_tags_tag_id_index` (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `albums_tags`
--

INSERT INTO `albums_tags` (`id`, `album_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 3),
(6, 5, 2),
(7, 6, 3),
(8, 9, 3),
(9, 8, 2),
(10, 11, 3),
(11, 10, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `artists`
--

INSERT INTO `artists` (`id`, `artist`, `description`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Viudmoth', '', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ucture', '', 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(3, 'Bishop Dust', '', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Depotax', 'La musique de Depotax est sans aucun doute la musique qui m’a le plus impressionner depuis que j’écoute de la musique, Depotax nous propose un univers étrange, parfois effrayant tout en restant attirant, cette musique peut vous déstabiliser dés les premières notes de chacun des titres pour vous envouter quelques secondes plus tard, l’envie d’aller plus loin sans savoir où cette musique va nous amener, la sensation étrange de se balader sur un chemin sans fin qui nous proposerait comme sortie une chute dans le vide sans pour autant prendre un seul risque.', 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(5, 'Phil Maggi', '', 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(6, '2562 C.J. Boy', '', 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(7, 'Various', '', 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `user_id`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'First news', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo elementum libero viverra placerat. Sed neque dolor, adipiscing in iaculis in, commodo vel enim. Phasellus neque sem, faucibus ut imperdiet nec, vehicula a diam. Vestibulum consectetur semper urna eu ultricies. Pellentesque vel urna a tortor ullamcorper porttitor. Nunc et eros diam. Aenean nec turpis vitae ligula laoreet facilisis a sed est. Nunc ultrices sollicitudin feugiat. Integer sit amet mauris ante, eget tincidunt purus.\r\n\r\nMorbi mattis aliquam libero nec imperdiet. Cras dignissim varius justo eget porttitor. Proin mauris tellus, lobortis sit amet dictum eu, pharetra eu velit. Aliquam quis orci quis risus dignissim aliquet nec at est. Nullam ut ipsum non massa viverra condimentum et vitae purus. Proin tempor malesuada tincidunt. Nam laoreet congue libero, at volutpat libero condimentum et. Aenean laoreet convallis erat, nec laoreet erat faucibus ut. Sed magna massa, cursus et imperdiet at, elementum a mauris.', 1, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'qsdqsdqssq', 'dqsdqsdqsdqsd', 1, 1, NULL, '2012-08-30 02:46:32', '2012-08-30 02:46:32'),
(4, 'J.A.T.A.C. LE CENTRAL', 'Thu_30 August 8 pm\r\n\r\nStart at 20:00 till end of plunge\r\n\r\nVisuals, Videurshow, Magic-Caca\r\nVideo, Surprises, Attempts,\r\nConcert and Dj set\r\n\r\n\r\nBe there on time for Air-blast', 1, 1, NULL, '2012-08-30 02:49:19', '2012-08-30 02:49:19');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `labels`
--

INSERT INTO `labels` (`id`, `label`, `description`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'umbrelladelika', '', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Akamusic', '', 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(3, 'Idiosyncratics', '', 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(4, 'Tectonic', '', 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(5, 'BOYADELIKA', '', 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00');

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
('application', '2012_08_16_000005_create_albums_artists', 3),
('application', '2012_08_16_000005_create_albums_labels', 3),
('application', '2012_08_16_000005_create_albums_tags', 3),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `description`, `visible`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Electro', '', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Electronic', '', 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00'),
(3, 'Ambient', '', 1, NULL, '2012-08-30 00:00:00', '2012-08-30 00:00:00');

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
-- Contraintes pour la table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `albums_artists`
--
ALTER TABLE `albums_artists`
  ADD CONSTRAINT `albums_artists_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `albums_artists_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `albums_labels`
--
ALTER TABLE `albums_labels`
  ADD CONSTRAINT `albums_labels_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `albums_labels_ibfk_2` FOREIGN KEY (`label_id`) REFERENCES `labels` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `albums_tags`
--
ALTER TABLE `albums_tags`
  ADD CONSTRAINT `albums_tags_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `albums_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
  ADD CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pictures_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pictures_ibfk_3` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
