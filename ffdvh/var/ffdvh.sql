-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mer 26 Mai 2010 à 22:37
-- Version du serveur: 5.1.41
-- Version de PHP: 5.3.2-1ubuntu4.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `ffdvh`
--







-- --------------------------------------------------------

--
-- Structure de la table `jlx_user`
--

DROP TABLE IF EXISTS `jlx_user`;
CREATE TABLE IF NOT EXISTS `jlx_user` (
  `usr_login` varchar(50) NOT NULL DEFAULT '',
  `usr_password` varchar(50) NOT NULL DEFAULT '',
  `usr_email` varchar(255) NOT NULL DEFAULT '',
  `usr_pseudo` varchar(50) NOT NULL DEFAULT '',
  `usr_scorelecture` int(11) NOT NULL DEFAULT 0,
  `usr_localisation` varchar(255) DEFAULT '',
  `usr_theme` varchar(50),
  PRIMARY KEY (`usr_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jlx_user`
--

INSERT INTO `jlx_user` (`usr_login`, `usr_password`, `usr_email`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@localhost.localdomain');


-- --------------------------------------------------------

--
-- Structure de la table `jacl2_group`
--

DROP TABLE IF EXISTS `jacl2_group`;
CREATE TABLE IF NOT EXISTS `jacl2_group` (
  `id_aclgrp` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '',
  `grouptype` tinyint(4) NOT NULL DEFAULT '0',
  `ownerlogin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_aclgrp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `jacl2_group`
--

INSERT INTO `jacl2_group` (`id_aclgrp`, `name`, `grouptype`, `ownerlogin`) VALUES
(1, 'admins', 0, NULL),
(2, 'users', 1, NULL),
(3, 'admin', 2, 'admin'),
(0, 'anonymous', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `jacl2_rights`
--

DROP TABLE IF EXISTS `jacl2_rights`;
CREATE TABLE IF NOT EXISTS `jacl2_rights` (
  `id_aclsbj` varchar(100) NOT NULL DEFAULT '',
  `id_aclgrp` int(11) NOT NULL DEFAULT '0',
  `id_aclres` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_aclsbj`,`id_aclgrp`,`id_aclres`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jacl2_rights`
--

INSERT INTO `jacl2_rights` (`id_aclsbj`, `id_aclgrp`, `id_aclres`) VALUES
('acl.group.create', 1, ''),
('acl.group.delete', 1, ''),
('acl.group.modify', 1, ''),
('acl.group.view', 1, ''),
('acl.user.modify', 1, ''),
('acl.user.view', 1, ''),
('auth.user.change.password', 1, ''),
('auth.user.change.password', 2, ''),
('auth.user.modify', 1, ''),
('auth.user.modify', 2, ''),
('auth.user.view', 1, ''),
('auth.user.view', 2, ''),
('auth.users.change.password', 1, ''),
('auth.users.create', 1, ''),
('auth.users.delete', 1, ''),
('auth.users.list', 1, ''),
('auth.users.modify', 1, ''),
('auth.users.view', 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `jacl2_subject`
--

DROP TABLE IF EXISTS `jacl2_subject`;
CREATE TABLE IF NOT EXISTS `jacl2_subject` (
  `id_aclsbj` varchar(100) NOT NULL DEFAULT '',
  `label_key` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_aclsbj`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jacl2_subject`
--

INSERT INTO `jacl2_subject` (`id_aclsbj`, `label_key`) VALUES
('acl.user.view', 'jelix~acl2db.acl.user.view'),
('acl.user.modify', 'jelix~acl2db.acl.user.modify'),
('acl.group.modify', 'jelix~acl2db.acl.group.modify'),
('acl.group.create', 'jelix~acl2db.acl.group.create'),
('acl.group.delete', 'jelix~acl2db.acl.group.delete'),
('acl.group.view', 'jelix~acl2db.acl.group.view'),
('auth.users.list', 'jelix~auth.acl.users.list'),
('auth.users.view', 'jelix~auth.acl.users.view'),
('auth.users.modify', 'jelix~auth.acl.users.modify'),
('auth.users.create', 'jelix~auth.acl.users.create'),
('auth.users.delete', 'jelix~auth.acl.users.delete'),
('auth.users.change.password', 'jelix~auth.acl.users.change.password'),
('auth.user.view', 'jelix~auth.acl.user.view'),
('auth.user.modify', 'jelix~auth.acl.user.modify'),
('auth.user.change.password', 'jelix~auth.acl.user.change.password');

-- --------------------------------------------------------

--
-- Structure de la table `jacl2_user_group`
--

DROP TABLE IF EXISTS `jacl2_user_group`;
CREATE TABLE IF NOT EXISTS `jacl2_user_group` (
  `login` varchar(50) NOT NULL DEFAULT '',
  `id_aclgrp` int(11) NOT NULL DEFAULT '0',
  KEY `login` (`login`,`id_aclgrp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jacl2_user_group`
--

INSERT INTO `jacl2_user_group` (`login`, `id_aclgrp`) VALUES
('admin', 1),
('admin', 3);





-- --------------------------------------------------------

--
-- Structure de la table `dvh_anomalie`
--

DROP TABLE IF EXISTS `dvh_anomalie`;
CREATE TABLE IF NOT EXISTS `dvh_anomalie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_login` varchar(50) DEFAULT NULL,
  `raison` int(11) DEFAULT NULL,
  `commentaire` mediumtext,
  `livre` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usr_login` (`usr_login`),
  KEY `raison` (`raison`),
  KEY `livre` (`livre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;

--
-- Contenu de la table `dvh_anomalie`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_article`
--

DROP TABLE IF EXISTS `dvh_article`;
CREATE TABLE IF NOT EXISTS `dvh_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_login` varchar(50) DEFAULT NULL,
  `categorie` int(11) DEFAULT NULL,
  `titre` varchar(256) DEFAULT NULL,
  `texte` mediumtext,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usr_login` (`usr_login`),
  KEY `categorie` (`categorie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_article`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_blacklist`
--

DROP TABLE IF EXISTS `dvh_blacklist`;
CREATE TABLE IF NOT EXISTS `dvh_blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `longip` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `motif` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_blacklist`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_categorie_article`
--

DROP TABLE IF EXISTS `dvh_categorie_article`;
CREATE TABLE IF NOT EXISTS `dvh_categorie_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_categorie_article`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_categorie_livre`
--

DROP TABLE IF EXISTS `dvh_categorie_livre`;
CREATE TABLE IF NOT EXISTS `dvh_categorie_livre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_categorie_livre`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_categorie_news`
--

DROP TABLE IF EXISTS `dvh_categorie_news`;
CREATE TABLE IF NOT EXISTS `dvh_categorie_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_categorie_news`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_chapitre`
--

DROP TABLE IF EXISTS `dvh_chapitre`;
CREATE TABLE IF NOT EXISTS `dvh_chapitre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `livre` int(11) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `livre` (`livre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_chapitre`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_commentaire`
--

DROP TABLE IF EXISTS `dvh_commentaire`;
CREATE TABLE IF NOT EXISTS `dvh_commentaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_login` varchar(50) DEFAULT NULL,
  `livre` int(11) DEFAULT NULL,
  `texte` mediumtext,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `livre` (`livre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_commentaire`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_difficulte`
--

DROP TABLE IF EXISTS `dvh_difficulte`;
CREATE TABLE IF NOT EXISTS `dvh_difficulte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(20) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_difficulte`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_livre`
--

DROP TABLE IF EXISTS `dvh_livre`;
CREATE TABLE IF NOT EXISTS `dvh_livre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categorie` int(11) NOT NULL,
  `usr_login` varchar(50) DEFAULT NULL,
  `date_publication` datetime NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `resume` mediumtext,
  `nom_heros` varchar(63) DEFAULT NULL,
  `force` int(11) DEFAULT NULL,
  `endurance` int(11) DEFAULT NULL,
  `dexterite` int(11) DEFAULT NULL,
  `intelligence` int(11) DEFAULT NULL,
  `perception` int(11) DEFAULT NULL,
  `volonte` int(11) DEFAULT NULL,
  `charisme` int(11) DEFAULT NULL,
  `publiee` int(11) DEFAULT NULL,
  `moderee` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `nb_lues` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categorie` (`categorie`),
  KEY `usr_login` (`usr_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_livre`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_livres_lus`
--

DROP TABLE IF EXISTS `dvh_livres_lus`;
CREATE TABLE IF NOT EXISTS `dvh_livres_lus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_login` varchar(50) DEFAULT NULL,
  `livre` int(11) DEFAULT NULL,
  `difficulte` int(11) DEFAULT NULL,
  `termine` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usr_login` (`usr_login`),
  KEY `livre` (`livre`),
  KEY `difficulte` (`difficulte`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_livres_lus`
--


-- --------------------------------------------------------
/*

--
-- Structure de la table `dvh_membre`
--

DROP TABLE IF EXISTS `dvh_membre`;
CREATE TABLE IF NOT EXISTS `dvh_membre` (
  `id` int(11) NOT NULL DEFAULT '0',
  `pseudo` varchar(30) DEFAULT NULL,
  `adr_mail` varchar(50) DEFAULT NULL,
  `localisation` varchar(255) DEFAULT NULL,
  `score_lecture` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `dvh_membre`
--
*/


-- --------------------------------------------------------

--
-- Structure de la table `dvh_news`
--

DROP TABLE IF EXISTS `dvh_news`;
CREATE TABLE IF NOT EXISTS `dvh_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_login` varchar(50) DEFAULT NULL,
  `categorie` int(11) DEFAULT NULL,
  `titre` varchar(256) DEFAULT NULL,
  `texte` mediumtext,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usr_login` (`usr_login`),
  KEY `categorie` (`categorie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_news`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_paragraphe`
--

DROP TABLE IF EXISTS `dvh_paragraphe`;
CREATE TABLE IF NOT EXISTS `dvh_paragraphe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chapitre` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `texte` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_paragraphe`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_possession`
--

DROP TABLE IF EXISTS `dvh_possession`;
CREATE TABLE IF NOT EXISTS `dvh_possession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(127) DEFAULT NULL,
  `description` mediumtext,
  `taille` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_possession`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_possession_deriv`
--

DROP TABLE IF EXISTS `dvh_possession_deriv`;
CREATE TABLE IF NOT EXISTS `dvh_possession_deriv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coeff` int(11) DEFAULT NULL,
  `attr` char(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_possession_deriv`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_possession_livre`
--

DROP TABLE IF EXISTS `dvh_possession_livre`;
CREATE TABLE IF NOT EXISTS `dvh_possession_livre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `livre` int(11) DEFAULT NULL,
  `possession` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `possession` (`possession`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_possession_livre`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_raison_erreur`
--

DROP TABLE IF EXISTS `dvh_raison_erreur`;
CREATE TABLE IF NOT EXISTS `dvh_raison_erreur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `intitule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_raison_erreur`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_rang`
--

DROP TABLE IF EXISTS `dvh_rang`;
CREATE TABLE IF NOT EXISTS `dvh_rang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(32) DEFAULT NULL,
  `seuil` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_rang`
--


-- --------------------------------------------------------

--
-- Structure de la table `dvh_type_erreur`
--

DROP TABLE IF EXISTS `dvh_type_erreur`;
CREATE TABLE IF NOT EXISTS `dvh_type_erreur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dvh_type_erreur`
--

DROP TABLE IF EXISTS `pfm_credential`;

DROP TABLE IF EXISTS `pfm_groups`;

DROP TABLE IF EXISTS `pfm_group_credential`;

DROP TABLE IF EXISTS `pfm_users`;


DROP TABLE IF EXISTS `pfm_user_group`;
