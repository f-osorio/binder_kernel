CREATE DATABASE metrics;
use metrics;

DROP TABLE IF EXISTS `bibliometrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliometrics`(
    `handle` varchar(500) NOT NULL,
    `year` int(4) DEFAULT NULL,
    `cites` int(4) DEFAULT NULL,
    `impact_factor` int(11) DEFAULT NULL,
    `if_5` int(11) DEFAULT NULL,
    `documents_published` int(11) DEFAULT NULL,
    `h_index` int(11) DEFAULT NULL,
    `type` varchar(500) DEFAULT NULL,
    `issn1` varchar(500) DEFAULT NULL,
    `issn2` varchar(500) DEFAULT NULL,
    `type2` varchar(500) DEFAULT NULL,
    `year3` int(4) DEFAULT NULL,
    `scimago_id` bigint(11) DEFAULT NULL,
    `sjr` decimal(8,4) DEFAULT NULL,
    `type4` varchar(500) DEFAULT NULL,
    `year5` int(4) DEFAULT NULL,
    `journ_qual` varchar(2) DEFAULT NULL,
    `type6` varchar(500) DEFAULT NULL,
    `year7` int(4) DEFAULT NULL,
    `bwl` varchar(2) DEFAULT NULL,
    `type8` varchar(500) DEFAULT NULL,
    `year9` int(4) DEFAULT NULL,
    `vwl` varchar(2) DEFAULT NULL,
    `journal_name` varchar(500) DEFAULT NULL,
    PRIMARY KEY (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=165901 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `altmetrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `altmetrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `altmetric_score` int(11) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `journal_name` varchar(500) DEFAULT NULL,
  `print_issn` varchar(500) DEFAULT NULL,
  `online_issn` varchar(500) DEFAULT NULL,
  `subjects` varchar(500) DEFAULT NULL,
  `affiliation` varchar(500) DEFAULT NULL,
  `publication_date` varchar(100) DEFAULT NULL,
  `doi` varchar(500) DEFAULT NULL,
  `news` int(11) DEFAULT NULL,
  `blog` int(11) DEFAULT NULL,
  `policy` int(11) DEFAULT NULL,
  `patent` int(11) DEFAULT NULL,
  `twitter` int(11) DEFAULT NULL,
  `peer_review` int(11) DEFAULT NULL,
  `weibo` int(11) DEFAULT NULL,
  `facebook` int(11) DEFAULT NULL,
  `wikipedia` int(11) DEFAULT NULL,
  `google` int(11) DEFAULT NULL,
  `linkedIn` int(11) DEFAULT NULL,
  `reddit` int(11) DEFAULT NULL,
  `pinterest` int(11) DEFAULT NULL,
  `f1000` int(11) DEFAULT NULL,
  `qa` int(11) DEFAULT NULL,
  `videos` int(11) DEFAULT NULL,
  `syllabi` int(11) DEFAULT NULL,
  `mendeley` int(11) DEFAULT NULL,
  `dimensions_citations` int(11) DEFAULT NULL,
  `details_page` varchar(500) DEFAULT NULL,
  `badge_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165902 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `mendeley`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mendeley` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `doi` varchar(50) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `year` varchar(50) NOT NULL DEFAULT '',
  `issn` varchar(500) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `publisher` varchar(200) DEFAULT NULL,
  `discipline` varchar(350) DEFAULT NULL,
  `electronic` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`doi`)
) ENGINE=InnoDB AUTO_INCREMENT=598910 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Load Data in Tables
--
LOAD DATA INFILE "/var/lib/db_files/biblio_data.csv"
INTO TABLE bibliometrics
COLUMNS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 Lines;

LOAD DATA INFILE "/var/lib/db_files/mendeley_doi.csv"
INTO TABLE mendeley
COLUMNS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 Lines;

LOAD DATA INFILE "/var/lib/db_files/cleaned_altmetrics.csv"
INTO TABLE altmetrics
COLUMNS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 Lines;