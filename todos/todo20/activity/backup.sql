# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.13)
# Database: activity
# Generation Time: 2013-12-16 22:22:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` text,
  `correct` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;

INSERT INTO `answers` (`answer_id`, `answer`, `correct`)
VALUES
	(1,'Westport',0),
	(2,'Greenwich',0),
	(3,'Darien',0),
	(4,'New Haven',0),
	(5,'East Haven',0),
	(6,'Branford',0),
	(7,'AZ',0),
	(8,'MO',0),
	(9,'CA',0),
	(10,'Mockingbird',0),
	(11,'Chicken',0),
	(12,'Cardinal',0),
	(13,'Gold and silver',0),
	(14,'She flies with her own wings',0),
	(15,'While I breathe, I hope\nReady in soul and resource',0),
	(16,'NY',1),
	(17,'CT',1),
	(18,'Albany',1),
	(19,'Hartford',1),
	(20,'New York City',1),
	(21,'Bridgeport',1),
	(22,'Bluejay',1),
	(23,'Robin',1),
	(24,'Ever upward',1),
	(25,'He who transplanted sustains',1);

/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table choices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `choices`;

CREATE TABLE `choices` (
  `choices_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `correct` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`choices_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table question
# ------------------------------------------------------------

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `state` text,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;

INSERT INTO `question` (`question_id`, `question`, `state`)
VALUES
	(1,'What is the state capital?','NY'),
	(2,'What is the largest city in the state?','NY'),
	(3,'What is the state abbreviation?','NY'),
	(4,'What is the state bird?','NY'),
	(5,'What is the state motto?','NY'),
	(6,'What is the state capital?','CT'),
	(7,'What is the largest city in the state?','CT'),
	(8,'What is the state abbreviation?','CT'),
	(9,'What is the state bird?','CT'),
	(10,'What is the state motto?','CT');

/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table quiz
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quiz`;

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz` text,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;

INSERT INTO `quiz` (`quiz_id`, `quiz`)
VALUES
	(1,'New_York'),
	(2,'Connecticut');

/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`user_id`, `user`)
VALUES
	(1,'Daffy duck'),
	(2,'Tessa'),
	(3,'Jeremy');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
