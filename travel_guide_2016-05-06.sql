/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.27 : Database - travel_guide
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`travel_guide` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `travel_guide`;

/*Table structure for table `auto_fare` */

DROP TABLE IF EXISTS `auto_fare`;

CREATE TABLE `auto_fare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `km` float NOT NULL,
  `day` int(11) NOT NULL,
  `night` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;

/*Data for the table `auto_fare` */

insert  into `auto_fare`(`id`,`km`,`day`,`night`) values (1,1.5,18,23),(2,1.6,19,24),(3,1.7,21,26),(4,1.8,22,27),(5,1.9,23,29),(6,2,24,30),(7,2.1,26,32),(8,2.2,27,33),(9,2.3,28,35),(10,2.4,29,37),(11,2.5,30,38),(12,2.6,32,40),(13,2.7,33,41),(14,2.8,34,43),(15,2.9,35,44),(16,3,37,46),(17,3.1,38,47),(18,3.2,39,49),(19,3.3,40,50),(20,3.4,41,52),(21,3.5,43,53),(22,3.6,44,55),(23,3.7,45,56),(24,3.8,46,58),(25,3.9,48,59),(26,4,49,61),(27,4.1,50,62),(28,4.2,51,64),(29,4.3,52,65),(30,4.4,54,67),(31,4.5,55,69),(32,4.6,56,70),(33,4.7,57,72),(34,4.8,58,73),(35,4.9,60,75),(36,5,61,76),(37,5.1,62,78),(38,5.2,63,79),(39,5.3,65,81),(40,5.4,66,82),(41,5.5,67,84),(42,5.6,68,85),(43,5.7,69,87),(44,5.8,71,88),(45,5.9,72,90),(46,6,73,91),(47,6.1,74,93),(48,6.2,76,94),(49,6.3,77,96),(50,6.4,78,97),(51,6.5,79,99),(52,6.6,80,100),(53,6.7,82,102),(54,6.8,83,104),(55,6.9,84,105),(56,7,85,107),(57,7.1,86,108),(58,7.2,88,110),(59,7.3,89,111),(60,7.4,90,113),(61,7.5,91,114),(62,7.6,93,116),(63,7.7,94,117),(64,7.8,95,119),(65,7.9,96,120),(66,8,97,122),(67,8.1,99,123),(68,8.2,100,125),(69,8.3,101,126),(70,8.4,102,128),(71,8.5,104,129),(72,8.6,105,131),(73,8.7,106,132),(74,8.8,107,134),(75,8.9,108,136),(76,9,110,137),(77,9.1,111,139),(78,9.2,112,140),(79,9.3,113,142),(80,9.4,114,142),(81,9.5,116,145),(82,9.6,117,146),(83,9.7,118,148),(84,9.8,119,149),(85,9.9,121,151),(86,10,122,152),(87,10.1,123,154),(88,10.2,124,155),(89,10.3,125,157),(90,10.4,127,158),(91,10.5,128,160),(92,10.6,129,161),(93,10.7,130,163),(94,10.8,132,164),(95,10.9,133,166),(96,11,134,167),(97,11.1,135,169),(98,11.2,136,171),(99,11.3,138,172),(100,11.4,139,174),(101,11.5,140,175),(102,11.6,141,177),(103,11.7,143,178),(104,11.8,144,180),(105,11.9,145,181),(106,12,146,183),(107,12.1,147,184),(108,12.2,149,186),(109,12.3,150,187),(110,12.4,151,189),(111,12.5,152,190),(112,12.6,153,192),(113,12.7,155,193),(114,12.8,156,195),(115,12.9,157,196),(116,13,158,198),(117,13.1,160,199),(118,13.2,161,201),(119,13.3,162,202),(120,13.4,163,204),(121,13.5,164,206),(122,13.6,166,207),(123,13.7,167,209),(124,13.8,168,210),(125,13.9,169,212),(126,14,171,213),(127,14.1,172,215),(128,14.2,173,216),(129,14.3,174,218),(130,14.4,175,219),(131,14.5,177,221),(132,14.6,178,222),(133,14.7,179,224),(134,14.8,180,225),(135,14.9,181,227),(136,15,183,228),(137,15.1,184,230),(138,15.2,185,231),(139,15.3,186,233),(140,15.4,188,234),(141,15.5,189,236),(142,15.6,190,238),(143,15.7,191,239),(144,15.8,192,241),(145,15.9,194,242),(146,16,195,244),(147,16.1,196,245),(148,16.2,197,247),(149,16.3,199,248),(150,16.4,200,250),(151,16.5,201,251),(152,16.6,202,253),(153,16.7,203,254),(154,16.8,205,256),(155,16.9,206,257),(156,17,207,259),(157,17.1,208,260),(158,17.2,209,262),(159,17.3,211,263),(160,17.4,212,265),(161,17.5,213,266),(162,17.6,214,268),(163,17.7,216,269),(164,17.8,217,271),(165,17.9,218,273),(166,18,219,274),(167,18.1,220,276),(168,18.2,222,277),(169,18.3,223,279),(170,18.4,224,280),(171,18.5,225,282),(172,18.6,227,283),(173,18.7,228,285),(174,18.8,229,286),(175,18.9,230,288),(176,19,231,289),(177,19.1,233,291),(178,19.2,234,292),(179,19.3,235,294),(180,19.4,236,295),(181,19.5,238,297),(182,19.6,239,298),(183,19.7,240,300),(184,19.8,241,301),(185,19.9,242,303),(186,20,244,305),(187,20.1,245,306),(188,20.2,246,308),(189,20.3,247,309),(190,20.4,248,311),(191,20.5,250,312),(192,20.6,251,314),(193,20.7,252,315),(194,20.8,253,317),(195,20.9,255,318),(196,21,256,320),(197,21.1,257,321),(198,21.2,258,323),(199,21.3,259,324),(200,21.4,261,326),(201,21.5,262,327),(202,21.6,263,329),(203,21.7,264,330),(204,21.8,266,332),(205,21.9,267,333),(206,22,268,335),(207,22.1,269,336),(208,22.2,270,338),(209,22.3,272,340),(210,22.4,273,341),(211,22.5,274,342),(212,22.6,275,344),(213,22.7,276,346),(214,22.8,278,347),(215,22.9,279,349),(216,23,280,350),(217,23.1,281,352),(218,23.2,283,353),(219,23.3,284,355),(220,23.4,285,356),(221,23.5,286,358),(222,23.6,287,359),(223,23.7,289,361),(224,23.8,290,362),(225,23.9,291,364),(226,24,292,365),(227,24.1,294,367),(228,24.2,295,368),(229,24.3,296,370),(230,24.4,297,371),(231,24.5,298,373),(232,24.6,300,375),(233,24.7,301,376),(234,24.8,302,378),(235,24.9,303,379),(236,25,305,381),(237,25.1,306,382),(238,25.2,307,384),(239,25.3,308,385),(240,25.4,309,387),(241,25.5,311,388),(242,25.6,312,390),(243,25.7,313,391),(244,25.8,314,393),(245,25.9,315,394),(246,26,317,396),(247,26.1,318,397),(248,26.2,319,399),(249,26.3,320,400),(250,26.4,322,402),(251,26.5,323,403),(252,26.6,324,405),(253,26.7,325,407),(254,26.8,326,408),(255,26.9,328,410),(256,27,329,411),(257,27.1,330,413),(258,27.2,331,414),(259,27.3,333,416),(260,27.4,334,417),(261,27.5,335,419),(262,27.6,336,420),(263,27.7,337,422),(264,27.8,339,423),(265,27.9,340,425),(266,28,341,426),(267,28.1,342,428),(268,28.2,343,429),(269,28.3,345,431),(270,28.4,346,432),(271,28.5,347,434),(272,28.6,348,435),(273,28.7,350,437),(274,28.8,351,438),(275,28.9,352,440),(276,29,353,442),(277,29.1,354,443),(278,29.2,356,445),(279,29.3,357,446),(280,29.4,358,448),(281,29.5,359,449),(282,29.6,361,451),(283,29.7,362,452),(284,29.8,363,454),(285,29.9,364,455),(286,30,365,457),(287,30.1,367,458),(288,30.2,368,460),(289,30.3,369,461),(290,30.4,370,463),(291,30.5,371,464),(292,30.6,373,466),(293,30.7,374,467),(294,30.8,375,469),(295,30.9,376,470),(296,31,378,472),(297,31.1,379,473),(298,31.2,380,475),(299,31.3,381,477),(300,31.4,382,478),(301,31.5,384,480),(302,31.6,385,481),(303,31.7,386,483),(304,31.8,387,484),(305,31.9,389,486),(306,32,390,487),(307,32.1,391,489),(308,32.2,392,490),(309,32.3,393,492),(310,32.4,395,493),(311,32.5,396,495),(312,32.6,397,496),(313,32.7,398,498),(314,32.8,400,499),(315,32.9,401,501),(316,33,402,502),(317,33.1,403,504),(318,33.2,404,505),(319,33.3,405,507),(320,33.4,406,509),(321,33.5,407,510),(322,33.6,408,512),(323,33.7,409,513),(324,33.8,410,515),(325,33.9,412,516),(326,34,414,518),(327,34.1,415,519),(328,34.2,417,521),(329,34.3,418,522),(330,34.4,419,524),(331,34.5,420,525),(332,34.6,421,527),(333,34.7,423,528),(334,34.8,424,530),(335,34.9,425,531),(336,35,426,533),(337,35.1,428,534),(338,35.2,429,536),(339,35.3,430,537),(340,35.4,431,539),(341,35.5,432,540),(342,35.6,434,542),(343,35.7,435,544),(344,35.8,436,545),(345,35.9,437,547),(346,36,438,548),(347,36.1,440,550),(348,36.2,441,551),(349,36.3,442,553),(350,36.4,443,554),(351,36.5,445,556),(352,36.6,446,557),(353,36.7,447,559),(354,36.8,448,560),(355,36.9,449,562),(356,37,451,563),(357,37.1,452,565),(358,37.2,453,566),(359,37.3,454,568),(360,37.4,456,569),(361,37.5,457,571),(362,37.6,458,572),(363,37.7,459,574),(364,37.8,460,576),(365,37.9,462,577),(366,38,463,579),(367,38.1,464,580),(368,38.2,465,582),(369,38.3,466,583),(370,38.4,468,585),(371,38.5,469,586),(372,38.6,470,588),(373,38.7,471,589),(374,38.8,473,591),(375,38.9,474,592),(376,39,475,594),(377,39.1,476,595),(378,39.2,477,597),(379,39.3,479,598),(380,39.4,480,600),(381,39.5,481,601),(382,39.6,482,603),(383,39.7,484,604),(384,39.8,485,606),(385,39.9,486,607),(386,40,487,609),(387,40.1,488,611),(388,40.2,490,612),(389,40.3,491,614),(390,40.4,492,615),(391,40.5,493,617),(392,40.6,495,618),(393,40.7,496,620),(394,40.8,497,621),(395,40.9,498,623),(396,41,499,624),(397,41.1,501,626),(398,41.2,502,627),(399,41.3,503,629),(400,41.4,504,630),(401,41.5,505,632),(402,41.6,507,633),(403,41.7,508,635),(404,41.8,509,636),(405,41.9,510,638),(406,42,512,639),(407,42.1,513,641),(408,42.2,514,642),(409,42.3,515,644),(410,42.4,516,646),(411,42.5,518,647),(412,42.6,519,649),(413,42.7,520,650),(414,42.8,521,652),(415,42.9,523,653),(416,43,524,655),(417,43.1,525,656),(418,43.2,526,658),(419,43.3,527,659),(420,43.4,529,661),(421,43.5,530,662),(422,43.6,531,664),(423,43.7,532,665),(424,43.8,533,667),(425,43.9,535,668),(426,44,536,670),(427,44.1,537,671),(428,44.2,538,673),(429,44.3,540,674),(430,44.4,541,676),(431,44.5,542,678),(432,44.6,543,679),(433,44.7,544,681),(434,44.8,546,682),(435,44.9,547,684),(436,45,548,685),(437,45.1,549,687),(438,45.2,551,688),(439,45.3,552,690),(440,45.4,553,691),(441,45.5,554,693),(442,45.6,555,694),(443,45.7,557,696),(444,45.8,558,697),(445,45.9,559,699),(446,46,560,700),(447,46.1,561,702),(448,46.2,563,703),(449,46.3,564,705),(450,46.4,565,706),(451,46.5,566,708),(452,46.6,568,709),(453,46.7,569,711),(454,46.8,570,713),(455,46.9,571,714),(456,47,572,716),(457,47.1,574,717),(458,47.2,575,719),(459,47.3,576,720),(460,47.4,577,722),(461,47.5,579,723),(462,47.6,580,725),(463,47.7,581,726),(464,47.8,582,728),(465,47.9,583,729),(466,48,585,731),(467,48.1,586,732),(468,48.2,587,734),(469,48.3,588,735),(470,48.4,590,737),(471,48.5,591,738),(472,48.6,592,740),(473,48.7,593,741),(474,48.8,594,743),(475,48.9,596,745),(476,49,597,746),(477,49.1,598,748),(478,49.2,599,749),(479,49.3,600,751),(480,49.4,602,752),(481,49.5,603,754),(482,49.6,604,755),(483,49.7,605,757),(484,49.8,607,758),(485,49.9,608,760),(486,50,609,761),(487,50.1,610,763),(488,50.2,611,764),(489,50.3,613,766),(490,50.4,614,767),(491,50.5,615,769),(492,50.6,616,770),(493,50.7,618,772),(494,50.8,619,773),(495,50.9,620,775),(496,51,621,776),(497,51.1,622,778),(498,51.2,624,780),(499,51.3,625,781),(500,51.4,626,783);

/*Table structure for table `local_first` */

DROP TABLE IF EXISTS `local_first`;

CREATE TABLE `local_first` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `station` varchar(255) NOT NULL,
  `CCG` int(50) NOT NULL,
  `MEL` int(50) NOT NULL,
  `CYR` int(50) NOT NULL,
  `GTR` int(50) NOT NULL,
  `MCT` int(50) NOT NULL,
  `MX` int(50) NOT NULL,
  `PL` int(50) NOT NULL,
  `EPR` int(50) NOT NULL,
  `DDR` int(50) NOT NULL,
  `MRU` int(50) NOT NULL,
  `MM` int(50) NOT NULL,
  `BA` int(50) NOT NULL,
  `KHR` int(50) NOT NULL,
  `STC` int(50) NOT NULL,
  `VPL` int(50) NOT NULL,
  `ADH` int(50) NOT NULL,
  `JOS` int(50) NOT NULL,
  `GM` int(50) NOT NULL,
  `MDD` int(50) NOT NULL,
  `KILE` int(50) NOT NULL,
  `BVI` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `local_first` */

insert  into `local_first`(`id`,`station`,`CCG`,`MEL`,`CYR`,`GTR`,`MCT`,`MX`,`PL`,`EPR`,`DDR`,`MRU`,`MM`,`BA`,`KHR`,`STC`,`VPL`,`ADH`,`JOS`,`GM`,`MDD`,`KILE`,`BVI`) values (1,'CCG',0,50,50,50,50,50,50,50,50,50,50,50,50,50,105,105,105,135,135,140,140),(2,'MEL',50,0,50,50,50,50,50,50,50,50,50,50,50,50,105,105,105,135,135,135,140),(3,'CYR',50,50,0,50,50,50,50,50,50,50,50,50,50,50,105,105,105,105,135,135,140),(4,'GTR',50,50,50,0,50,50,50,50,50,50,50,50,50,50,105,105,105,105,135,135,140),(5,'MCT',50,50,50,50,0,50,50,50,50,50,50,50,50,50,105,105,105,105,105,135,135),(6,'MX',50,50,50,50,50,0,50,50,50,50,50,50,50,50,50,105,105,105,105,135,135),(7,'PL',50,50,50,50,50,50,0,50,50,50,50,50,50,50,50,50,105,105,105,105,135),(8,'EPR',50,50,50,50,50,50,50,0,50,50,50,50,50,50,50,50,50,105,105,105,105),(9,'DDR',50,50,50,50,50,50,50,50,0,50,50,50,50,50,50,50,50,105,105,105,105),(10,'MRU',50,50,50,50,50,50,50,50,50,0,50,50,50,50,50,50,50,105,105,105,105),(11,'MM',50,50,50,50,50,50,50,50,50,50,0,50,50,50,50,50,50,70,105,105,105),(12,'BA',50,50,50,50,50,50,50,50,50,50,50,0,50,50,50,50,50,70,70,105,105),(13,'KHR',50,50,50,50,50,50,50,50,50,50,50,50,0,50,50,50,50,70,70,70,105),(14,'STC',50,50,50,50,50,50,50,50,50,50,50,50,50,0,50,50,50,50,70,70,105),(15,'VPL',105,105,105,105,105,50,50,50,50,50,50,50,50,50,0,50,50,50,50,70,70),(16,'ADH',105,105,105,105,105,105,50,50,50,50,50,50,50,50,50,0,50,50,50,50,70),(17,'JOS',105,105,105,105,105,105,105,50,50,50,50,50,50,50,50,50,0,50,50,50,70),(18,'GM',135,135,105,105,105,105,105,105,105,105,70,70,70,50,50,50,50,0,50,50,50),(19,'MDD',135,135,135,135,105,105,105,105,105,105,105,70,70,70,50,50,50,50,0,50,50),(20,'KILE',140,135,135,135,135,135,105,105,105,105,105,105,70,70,70,50,50,50,50,0,50),(21,'BVI',140,140,140,140,135,135,135,105,105,105,105,105,105,105,70,70,70,50,50,50,0);

/*Table structure for table `local_second` */

DROP TABLE IF EXISTS `local_second`;

CREATE TABLE `local_second` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `Station` varchar(255) NOT NULL,
  `CCG` int(50) NOT NULL,
  `MEL` int(50) NOT NULL,
  `CYR` int(50) NOT NULL,
  `GTR` int(50) NOT NULL,
  `MCT` int(50) NOT NULL,
  `MX` int(50) NOT NULL,
  `PL` int(50) NOT NULL,
  `EPR` int(50) NOT NULL,
  `DDR` int(50) NOT NULL,
  `MRU` int(50) NOT NULL,
  `MM` int(50) NOT NULL,
  `BA` int(50) NOT NULL,
  `KHR` int(50) NOT NULL,
  `STC` int(50) NOT NULL,
  `VPL` int(50) NOT NULL,
  `ADH` int(50) NOT NULL,
  `JOS` int(50) NOT NULL,
  `GM` int(50) NOT NULL,
  `MDD` int(50) NOT NULL,
  `KILE` int(50) NOT NULL,
  `BVI` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `local_second` */

insert  into `local_second`(`id`,`Station`,`CCG`,`MEL`,`CYR`,`GTR`,`MCT`,`MX`,`PL`,`EPR`,`DDR`,`MRU`,`MM`,`BA`,`KHR`,`STC`,`VPL`,`ADH`,`JOS`,`GM`,`MDD`,`KILE`,`BVI`) values (1,'CCG',0,5,5,5,5,5,5,5,10,10,10,10,10,10,10,10,10,10,10,15,15),(2,'MEL',5,0,5,5,5,5,5,5,5,10,10,10,10,10,10,10,10,10,10,10,15),(3,'CYR',5,5,0,5,5,5,5,5,5,5,10,10,10,10,10,10,10,10,10,10,15),(4,'GTR',5,5,5,0,5,5,5,5,5,5,5,10,10,10,10,10,10,10,10,10,15),(5,'MCT',5,5,5,5,0,5,5,5,5,5,5,10,10,10,10,10,10,10,10,10,10),(6,'MX',5,5,5,5,5,0,5,5,5,5,5,5,10,10,10,10,10,10,10,10,10),(7,'PL',5,5,5,5,5,5,0,5,5,5,5,5,5,5,10,10,10,10,10,10,10),(8,'EPR',5,5,5,5,5,5,5,0,5,5,5,5,5,5,10,10,10,10,10,10,10),(9,'DDR',10,5,5,5,5,5,5,5,0,5,5,5,5,5,5,10,10,10,10,10,10),(10,'MRU',10,10,5,5,5,5,5,5,5,0,5,5,5,5,5,10,10,10,10,10,10),(11,'MM',10,10,10,5,5,5,5,5,5,5,0,5,5,5,5,5,10,10,10,10,10),(12,'BA',10,10,10,10,10,5,5,5,5,5,5,0,5,5,5,5,5,10,10,10,10),(13,'KHR',10,10,10,10,10,10,5,5,5,5,5,5,0,5,5,5,5,10,10,10,10),(14,'STC',10,10,10,10,10,10,5,5,5,5,5,5,5,0,5,5,5,5,10,10,10),(15,'VPL',10,10,10,10,10,10,10,10,5,5,5,5,5,5,0,5,5,5,5,10,10),(16,'ADH',10,10,10,10,10,10,10,10,10,10,5,5,5,5,5,0,5,5,5,5,10),(17,'JOS',10,10,10,10,10,10,10,10,10,10,5,5,5,5,5,5,0,5,5,5,10),(18,'GM',10,10,10,10,10,10,10,10,10,10,10,10,5,5,5,5,5,0,5,5,5),(19,'MDD',10,10,10,10,10,10,10,10,10,10,10,10,10,5,5,5,5,5,0,5,5),(20,'KILE',15,10,10,10,10,10,10,10,10,10,10,10,10,10,5,5,5,5,5,0,5),(21,'BVI',15,15,15,15,10,10,10,10,10,10,10,10,10,10,10,10,5,5,5,5,0);

/*Table structure for table `metro_fare` */

DROP TABLE IF EXISTS `metro_fare`;

CREATE TABLE `metro_fare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `fare` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

/*Data for the table `metro_fare` */

insert  into `metro_fare`(`id`,`source`,`destination`,`fare`) values (1,'Versova','D N Nagar',10),(2,'Versova','Andheri',30),(3,'Versova','Western Express Highway',40),(4,'Versova','Chakala',50),(5,'Versova','Airport Road',60),(6,'Versova','Marol Naka',70),(7,'Versova','Saki Naka',80),(8,'Versova','Asalpha',90),(9,'Versova','Jagruti Nagar',100),(10,'Versova','Ghatkopar',110),(11,'Versova','Azad Nagar',20),(12,'D N Nagar','Azad Nagar',10),(13,'D N Nagar','Andheri',20),(14,'D N Nagar','Western Express Highway',30),(15,'D N Nagar','Chakala',40),(16,'D N Nagar','Airport Road',50),(17,'D N Nagar','Marol Naka',60),(18,'D N Nagar','Saki Naka',70),(19,'D N Nagar','Asalpha',80),(20,'D N Nagar','Jagruti Nagar',90),(21,'D N Nagar','Ghatkopar',100),(22,'D N Nagar','Versova',10),(23,'Azad Nagar','D N Nagar',10),(24,'Azad Nagar','Andheri',10),(25,'Azad Nagar','Western Express Highway',20),(26,'Azad Nagar','Chakala',30),(27,'Azad Nagar','Airport Road',40),(28,'Azad Nagar','Marol Naka',50),(29,'Azad Nagar','Saki Naka',60),(30,'Azad Nagar','Asalpha',70),(31,'Azad Nagar','Jagruti Nagar',80),(32,'Azad Nagar','Ghatkopar',90),(33,'Azad Nagar','Versova',20),(34,'Andheri','D N Nagar',20),(35,'Andheri','Azad Nagar',10),(36,'Andheri','Western Express Highway',10),(37,'Andheri','Chakala',20),(38,'Andheri','Airport Road',30),(39,'Andheri','Marol Naka',40),(40,'Andheri','Saki Naka',50),(41,'Andheri','Asalpha',60),(42,'Andheri','Jagruti Nagar',70),(43,'Andheri','Ghatkopar',80),(44,'Andheri','Versova',30),(45,'Western Express Highway','D N Nagar',30),(46,'Western Express Highway','Azad Nagar',20),(47,'Western Express Highway','Andheri',10),(48,'Western Express Highway','Chakala',10),(49,'Western Express Highway','Airport Road',20),(50,'Western Express Highway','Marol Naka',30),(51,'Western Express Highway','Saki Naka',40),(52,'Western Express Highway','Asalpha',50),(53,'Western Express Highway','Jagruti Nagar',60),(54,'Western Express Highway','Ghatkopar',70),(55,'Western Express Highway','Versova',40),(56,'Chakala','D N Nagar',40),(57,'Chakala','Azad Nagar',30),(58,'Chakala','Andheri',20),(59,'Chakala','Western Express Highway',10),(60,'Chakala','Airport Road',10),(61,'Chakala','Marol Naka',20),(62,'Chakala','Saki Naka',30),(63,'Chakala','Asalpha',40),(64,'Chakala','Jagruti Nagar',50),(65,'Chakala','Ghatkopar',60),(66,'Chakala','Versova',50),(67,'Airport Road','D N Nagar',50),(68,'Airport Road','Azad Nagar',40),(69,'Airport Road','Andheri',30),(70,'Airport Road','Western Express Highway',20),(71,'Airport Road','Chakala',10),(72,'Airport Road','Marol Naka',10),(73,'Airport Road','Saki Naka',20),(74,'Airport Road','Asalpha',30),(75,'Airport Road','Jagruti Nagar',40),(76,'Airport Road','Ghatkopar',50),(77,'Airport Road','Versova',60),(78,'Marol Naka','D N Nagar',60),(79,'Marol Naka','Azad Nagar',50),(80,'Marol Naka','Andheri',40),(81,'Marol Naka','Western Express Highway',30),(82,'Marol Naka','Chakala',20),(83,'Marol Naka','Airport Road',10),(84,'Marol Naka','Saki Naka',10),(85,'Marol Naka','Asalpha',20),(86,'Marol Naka','Jagruti Nagar',30),(87,'Marol Naka','Ghatkopar',40),(88,'Marol Naka','Versova',70),(89,'Saki Naka','D N Nagar',70),(90,'Saki Naka','Azad Nagar',60),(91,'Saki Naka','Andheri',50),(92,'Saki Naka','Western Express Highway',40),(93,'Saki Naka','Chakala',30),(94,'Saki Naka','Airport Road',20),(95,'Saki Naka','Marol Naka',10),(96,'Saki Naka','Asalpha',10),(97,'Saki Naka','Jagruti Nagar',20),(98,'Saki Naka','Ghatkopar',30),(99,'Saki Naka','Versova',80),(100,'Asalpha','D N Nagar',80),(101,'Asalpha','Azad Nagar',70),(102,'Asalpha','Andheri',60),(103,'Asalpha','Western Express Highway',40),(104,'Asalpha','Chakala',30),(105,'Asalpha','Airport Road',20),(106,'Asalpha','Marol Naka',10),(107,'Asalpha','Saki Naka',10),(108,'Asalpha','Jagruti Nagar',20),(109,'Asalpha','Ghatkopar',30),(110,'Asalpha','Versova',90),(111,'Jagruti Nagar','D N Nagar',90),(112,'Jagruti Nagar','Azad Nagar',80),(113,'Jagruti Nagar','Andheri',70),(114,'Jagruti Nagar','Western Express Highway',60),(115,'Jagruti Nagar','Chakala',50),(116,'Jagruti Nagar','Airport Road',40),(117,'Jagruti Nagar','Marol Naka',30),(118,'Jagruti Nagar','Saki Naka',20),(119,'Jagruti Nagar','Asalpha',10),(120,'Jagruti Nagar','Versova',100),(121,'Jagruti Nagar','Ghatkopar',10),(122,'Ghatkopar','D N Nagar',100),(123,'Ghatkopar','Azad Nagar',90),(124,'Ghatkopar','Andheri',80),(125,'Ghatkopar','Western Express Highway',70),(126,'Ghatkopar','Chakala',60),(127,'Ghatkopar','Airport Road',50),(128,'Ghatkopar','Marol Naka',40),(129,'Ghatkopar','Saki Naka',30),(130,'Ghatkopar','Asalpha',20),(131,'Ghatkopar','Jagruti Nagar',10),(132,'Ghatkopar','Versova',110);

/*Table structure for table `taxi_fare` */

DROP TABLE IF EXISTS `taxi_fare`;

CREATE TABLE `taxi_fare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `km` float NOT NULL,
  `day` int(11) NOT NULL,
  `night` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=587 DEFAULT CHARSET=utf8;

/*Data for the table `taxi_fare` */

insert  into `taxi_fare`(`id`,`km`,`day`,`night`) values (1,1.5,22,28),(2,1.6,24,30),(3,1.7,25,32),(4,1.8,27,33),(5,1.9,28,35),(6,2,30,37),(7,2.1,31,39),(8,2.2,33,41),(9,2.3,34,43),(10,2.4,36,45),(11,2.5,37,46),(12,2.6,39,48),(13,2.7,40,50),(14,2.8,42,52),(15,2.9,43,54),(16,3,45,56),(17,3.1,46,58),(18,3.2,47,59),(19,3.3,49,61),(20,3.4,50,63),(21,3.5,52,65),(22,3.6,53,67),(23,3.7,55,69),(24,3.8,56,70),(25,3.9,58,72),(26,4,59,74),(27,4.1,61,76),(28,4.2,62,78),(29,4.3,64,80),(30,4.4,65,82),(31,4.5,67,83),(32,4.6,68,85),(33,4.7,70,87),(34,4.8,71,89),(35,4.9,73,91),(36,5,74,93),(37,5.1,76,95),(38,5.2,77,96),(39,5.3,79,98),(40,5.4,80,100),(41,5.5,82,102),(42,5.6,83,104),(43,5.7,85,106),(44,5.8,86,108),(45,5.9,88,109),(46,6,89,111),(47,6.1,91,113),(48,6.2,92,115),(49,6.3,93,117),(50,6.4,95,119),(51,6.5,96,121),(52,6.6,98,122),(53,6.7,99,124),(54,6.8,101,126),(55,6.9,102,128),(56,7,104,130),(57,7.1,105,132),(58,7.2,107,134),(59,7.3,108,135),(60,7.4,110,137),(61,7.5,111,139),(62,7.6,113,141),(63,7.7,114,143),(64,7.8,116,145),(65,7.9,117,147),(66,8,119,148),(67,8.1,120,150),(68,8.2,122,152),(69,8.3,123,154),(70,8.4,125,156),(71,8.5,126,158),(72,8.6,128,160),(73,8.7,129,161),(74,8.8,131,163),(75,8.9,132,165),(76,9,134,167),(77,9.1,135,169),(78,9.2,137,171),(79,9.3,138,173),(80,9.4,139,174),(81,9.5,141,176),(82,9.6,142,178),(83,9.7,144,180),(84,9.8,145,182),(85,9.9,147,184),(86,10,148,186),(87,10.1,150,187),(88,10.2,151,189),(89,10.3,153,191),(90,10.4,154,193),(91,10.5,156,195),(92,10.6,157,197),(93,10.7,159,198),(94,10.8,160,200),(95,10.9,162,202),(96,11,163,204),(97,11.1,165,206),(98,11.2,166,208),(99,11.3,168,210),(100,11.4,169,211),(101,11.5,171,213),(102,11.6,172,215),(103,11.7,174,217),(104,11.8,175,219),(105,11.9,177,221),(106,12,178,223),(107,12.1,180,224),(108,12.2,181,226),(109,12.3,183,228),(110,12.4,184,230),(111,12.5,186,232),(112,12.6,187,234),(113,12.7,188,236),(114,12.8,190,237),(115,12.9,191,239),(116,13,193,241),(117,13.1,194,243),(118,13.2,196,245),(119,13.3,197,247),(120,13.4,199,249),(121,13.5,200,250),(122,13.6,202,252),(123,13.7,203,254),(124,13.8,205,256),(125,13.9,206,258),(126,14,208,260),(127,14.1,209,262),(128,14.2,211,263),(129,14.3,212,265),(130,14.4,214,267),(131,14.5,215,269),(132,14.6,217,271),(133,14.7,218,273),(134,14.8,220,275),(135,14.9,221,276),(136,15,223,278),(137,15.1,224,280),(138,15.2,226,282),(139,15.3,227,284),(140,15.4,229,286),(141,15.5,230,288),(142,15.6,232,289),(143,15.7,233,291),(144,15.8,234,293),(145,15.9,236,295),(146,16,237,297),(147,16.1,239,299),(148,16.2,240,301),(149,16.3,242,302),(150,16.4,243,304),(151,16.5,245,306),(152,16.6,246,308),(153,16.7,248,310),(154,16.8,249,312),(155,16.9,251,313),(156,17,252,315),(157,17.1,254,317),(158,17.2,255,319),(159,17.3,257,321),(160,17.4,258,323),(161,17.5,260,325),(162,17.6,261,326),(163,17.7,263,328),(164,17.8,264,330),(165,17.9,266,332),(166,18,267,334),(167,18.1,269,336),(168,18.2,270,338),(169,18.3,272,339),(170,18.4,273,341),(171,18.5,275,343),(172,18.6,276,345),(173,18.7,278,347),(174,18.8,279,349),(175,18.9,280,351),(176,19,282,352),(177,19.1,283,354),(178,19.2,285,356),(179,19.3,286,358),(180,19.4,288,360),(181,19.5,289,362),(182,19.6,291,364),(183,19.7,292,365),(184,19.8,294,367),(185,19.9,295,369),(186,20,297,371),(187,20.1,298,373),(188,20.2,300,375),(189,20.3,301,377),(190,20.4,303,378),(191,20.5,304,380),(192,20.6,306,382),(193,20.7,307,384),(194,20.8,309,386),(195,20.9,310,388),(196,21,312,390),(197,21.1,313,391),(198,21.2,315,393),(199,21.3,316,395),(200,21.4,318,397),(201,21.5,319,399),(202,21.6,321,401),(203,21.7,322,403),(204,21.8,324,404),(205,21.9,325,406),(206,22,326,408),(207,22.1,328,410),(208,22.2,329,412),(209,22.3,331,414),(210,22.4,332,416),(211,22.5,334,417),(212,22.6,335,419),(213,22.7,337,421),(214,22.8,338,423),(215,22.9,340,425),(216,23,341,427),(217,23.1,343,429),(218,23.2,344,430),(219,23.3,346,432),(220,23.4,347,434),(221,23.5,349,436),(222,23.6,350,438),(223,23.7,352,440),(224,23.8,353,441),(225,23.9,355,443),(226,24,356,445),(227,24.1,358,447),(228,24.2,359,449),(229,24.3,361,451),(230,24.4,362,453),(231,24.5,364,454),(232,24.6,365,456),(233,24.7,367,458),(234,24.8,368,460),(235,24.9,370,462),(236,25,371,464),(237,25.1,372,466),(238,25.2,374,467),(239,25.3,375,469),(240,25.4,377,471),(241,25.5,378,473),(242,25.6,380,475),(243,25.7,381,477),(244,25.8,383,479),(245,25.9,384,480),(246,26,386,482),(247,26.1,387,484),(248,26.2,389,486),(249,26.3,390,488),(250,26.4,392,490),(251,26.5,393,492),(252,26.6,395,493),(253,26.7,396,495),(254,26.8,398,497),(255,26.9,399,499),(256,27,401,501),(257,27.1,402,503),(258,27.2,404,505),(259,27.3,405,506),(260,27.4,407,508),(261,27.5,408,510),(262,27.6,410,512),(263,27.7,411,514),(264,27.8,413,516),(265,27.9,414,518),(266,28,416,519),(267,28.1,417,521),(268,28.2,418,523),(269,28.3,420,525),(270,28.4,421,527),(271,28.5,423,529),(272,28.6,424,531),(273,28.7,426,532),(274,28.8,427,534),(275,28.9,429,536),(276,29,430,538),(277,29.1,432,540),(278,29.2,433,542),(279,29.3,435,544),(280,29.4,436,545),(281,29.5,438,547),(282,29.6,439,549),(283,29.7,441,551),(284,29.8,442,553),(285,29.9,444,555),(286,30,445,557),(287,30.1,447,558),(288,30.2,448,560),(289,30.3,450,562),(290,30.4,451,564),(291,30.5,453,566),(292,30.6,454,568),(293,30.7,456,569),(294,30.8,457,571),(295,30.9,459,573),(296,31,460,575),(297,31.1,462,577),(298,31.2,463,579),(299,31.3,464,581),(300,31.4,466,582),(301,31.5,467,584),(302,31.6,469,586),(303,31.7,470,588),(304,31.8,472,590),(305,31.9,473,592),(306,32,475,594),(307,32.1,476,595),(308,32.2,378,597),(309,32.3,479,599),(310,32.4,481,601),(311,32.5,482,603),(312,32.6,484,605),(313,32.7,485,607),(314,32.8,487,608),(315,32.9,488,610),(316,33,490,612),(317,33.1,491,614),(318,33.2,493,616),(319,33.3,494,618),(320,33.4,496,620),(321,33.5,497,621),(322,33.6,499,623),(323,33.7,500,625),(324,33.8,502,627),(325,33.9,503,629),(326,34,505,631),(327,34.1,506,633),(328,34.2,508,634),(329,34.3,509,636),(330,34.4,510,638),(331,34.5,512,640),(332,34.6,513,642),(333,34.7,515,644),(334,34.8,516,646),(335,34.9,518,647),(336,35,519,649),(337,35.1,521,651),(338,35.2,522,653),(339,35.3,524,655),(340,35.4,525,657),(341,35.5,527,659),(342,35.6,528,660),(343,35.7,530,662),(344,35.8,531,664),(345,35.9,533,666),(346,36,534,668),(347,36.1,536,670),(348,36.2,537,672),(349,36.3,539,673),(350,36.4,540,675),(351,36.5,542,677),(352,36.6,543,679),(353,36.7,545,681),(354,36.8,546,683),(355,36.9,548,684),(356,37,549,686),(357,37.1,551,688),(358,37.2,552,690),(359,37.3,554,692),(360,37.4,555,694),(361,37.5,557,696),(362,37.6,558,697),(363,37.7,559,699),(364,37.8,561,701),(365,37.9,562,703),(366,38,564,705),(367,38.1,565,707),(368,38.2,567,709),(369,38.3,568,710),(370,38.4,570,712),(371,38.5,571,714),(372,38.6,573,716),(373,38.7,574,718),(374,38.8,576,720),(375,38.9,577,722),(376,39,579,723),(377,39.1,580,725),(378,39.2,582,727),(379,39.3,583,729),(380,39.4,585,731),(381,39.5,586,733),(382,39.6,588,735),(383,39.7,589,736),(384,39.8,591,738),(385,39.9,592,740),(386,40,594,742),(387,40.1,595,744),(388,40.2,597,746),(389,40.3,598,748),(390,40.4,600,749),(391,40.5,601,751),(392,40.6,603,753),(393,40.7,604,755),(394,40.8,605,757),(395,40.9,607,759),(396,41,608,761),(397,41.1,610,762),(398,41.2,611,764),(399,41.3,613,766),(400,41.4,614,768),(401,41.5,616,770),(402,41.6,617,772),(403,41.7,619,774),(404,41.8,620,775),(405,41.9,622,777),(406,42,623,779),(407,42.1,625,781),(408,42.2,626,783),(409,42.3,628,785),(410,42.4,629,787),(411,42.5,631,788),(412,42.6,632,790),(413,42.7,634,792),(414,42.8,635,794),(415,42.9,637,796),(416,43,638,798),(417,43.1,640,800),(418,43.2,641,801),(419,43.3,643,803),(420,43.4,644,805),(421,43.5,646,807),(422,43.6,647,809),(423,43.7,649,811),(424,43.8,650,812),(425,43.9,651,814),(426,44,653,816),(427,44.1,654,818),(428,44.2,656,820),(429,44.3,657,822),(430,44.4,659,824),(431,44.5,660,825),(432,44.6,662,827),(433,44.7,663,829),(434,44.8,665,831),(435,44.9,666,833),(436,45,668,835),(437,45.1,669,837),(438,45.2,671,838),(439,45.3,672,840),(440,45.4,674,842),(441,45.5,675,844),(442,45.6,677,846),(443,45.7,678,848),(444,45.8,680,850),(445,45.9,681,851),(446,46,683,853),(447,46.1,684,855),(448,46.2,686,857),(449,46.3,687,859),(450,46.4,689,861),(451,46.5,690,863),(452,46.6,692,864),(453,46.7,693,866),(454,46.8,695,868),(455,46.9,696,870),(456,47,697,872),(457,47.1,699,874),(458,47.2,700,876),(459,47.3,702,877),(460,47.4,703,879),(461,47.5,705,881),(462,47.6,706,883),(463,47.7,708,885),(464,47.8,709,887),(465,47.9,711,889),(466,48,712,890),(467,48.1,714,892),(468,48.2,715,894),(469,48.3,717,896),(470,48.4,718,898),(471,48.5,720,900),(472,48.6,721,902),(473,48.7,723,903),(474,48.8,724,905),(475,48.9,726,907),(476,49,727,909),(477,49.1,729,911),(478,49.2,730,913),(479,49.3,732,915),(480,49.4,733,916),(481,49.5,735,918),(482,49.6,736,920),(483,49.7,738,922),(484,49.8,739,924),(485,49.9,741,926),(486,50,742,928),(487,50.1,743,929),(488,50.2,745,931),(489,50.3,746,933),(490,50.4,748,935),(491,50.5,749,937),(492,50.6,751,939),(493,50.7,752,940),(494,50.8,754,942),(495,50.9,755,944),(496,51,757,946),(497,51.1,758,948),(498,51.2,760,950),(499,51.3,761,952),(500,51.4,763,953),(501,51.5,764,955),(502,51.6,766,957),(503,51.7,767,959),(504,51.8,769,961),(505,51.9,770,963),(506,52,772,965),(507,52.1,773,966),(508,52.2,775,968),(509,52.3,776,970),(510,52.4,778,972),(511,52.5,779,974),(512,52.6,781,976),(513,52.7,782,978),(514,52.8,784,979),(515,52.9,785,981),(516,53,787,983),(517,53.1,788,985),(518,53.2,789,987),(519,53.3,791,989),(520,53.4,792,991),(521,53.5,794,992),(522,53.6,795,994),(523,53.7,797,996),(524,53.8,798,998),(525,53.9,800,1000),(526,54,801,1002),(527,54.1,803,1004),(528,54.2,804,1005),(529,54.3,806,1007),(530,54.4,807,1009),(531,54.5,809,1011),(532,54.6,810,1013),(533,54.7,812,1015),(534,54.8,813,1017),(535,54.9,815,1018),(536,55,816,1020),(537,55.1,818,1022),(538,55.2,819,1024),(539,55.3,821,1026),(540,55.4,822,1028),(541,55.5,824,1030),(542,55.6,825,1031),(543,55.7,827,1033),(544,55.8,828,1035),(545,55.9,830,1037),(546,56,831,1039),(547,56.1,833,1041),(548,56.2,834,1043),(549,56.3,835,1044),(550,56.4,837,1046),(551,56.5,838,1048),(552,56.6,840,1050),(553,56.7,841,1052),(554,56.8,843,1054),(555,56.9,844,1055),(556,57,846,1057),(557,57.1,847,1059),(558,57.2,849,1061),(559,57.3,850,1063),(560,57.4,852,1065),(561,57.5,853,1067),(562,57.6,855,1068),(563,57.7,856,1070),(564,57.8,858,1072),(565,57.9,859,1074),(566,58,861,1076),(567,58.1,862,1078),(568,58.2,864,1080),(569,58.3,865,1081),(570,58.4,867,1083),(571,58.5,868,1085),(572,58.6,870,1087),(573,58.7,871,1089),(574,58.8,873,1091),(575,58.9,874,1093),(576,59,876,1094),(577,59.1,877,1096),(578,59.2,879,1098),(579,59.3,880,1100),(580,59.4,881,1102),(581,59.5,883,1104),(582,59.6,884,1106),(583,59.7,886,1107),(584,59.8,887,1109),(585,59.9,889,1111),(586,60,890,1113);

/*Table structure for table `train_fare` */

DROP TABLE IF EXISTS `train_fare`;

CREATE TABLE `train_fare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` text NOT NULL,
  `destination` text NOT NULL,
  `first_class` int(11) NOT NULL,
  `second_class` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

/*Data for the table `train_fare` */

insert  into `train_fare`(`id`,`source`,`destination`,`first_class`,`second_class`) values (1,'Borivali','kandivali,malad,goregao',50,5),(2,'Borivali','Jogeshwari,Andheri,Vile Parle',70,10),(3,'Borivali','Santacruz,Khar Road,Bandra,Mahim,Matunga,Dadar,Elphistone Road',105,10),(4,'Borivali','Lower Parel,Mahalaxmi,Mumbai Central',135,10),(5,'Borivali','Grant Road,Charni Road,Marine Lines,Churchgate',140,15),(6,'Kandivali','Malad,Goregaon,Jogeshwari,Andheri',50,5),(7,'Kandivali','Vile Parle,Santacruz,Khar Road',70,10),(8,'Kandivali','Bandra,Mahim,Matunga,Dadar,Elphistone Road,Lower Parel',105,10),(9,'Kandivali','Mahalaxmi,Mumbai Central,Grant Road,Charni Road,Marine Lines',135,10),(10,'Kandivali','Churchgate',140,15),(11,'Malad','Borivali,Kandivali,Goregaon,Jogeshwari,Andheri,Vile Parle',50,5),(12,'Malad','Santacruz,Khar Road,Bandra',70,10),(13,'Malad','Mahim,Matunga,Dadar,Elphistone Road,Lower Parel,Mahalaxmi,Mumbai Central',105,10),(14,'Malad','Grant Road,Charni Road,Marine Lines,Churchgate',135,10),(15,'Goregaon','Borivali,Kandivali,Malad,Jogeshwari,Andheri,Vile Parle,Santacruz',50,5),(16,'Goregaon','Khar Road,Bandra,Mahim',70,10),(17,'Goregaon','Matunga,Dadar,Elphistone Road,Lower Parel,Mahalaxmi,Mumbai Central,Grant Road,Charni Road',105,10),(18,'Goregaon','Marine Lines,Churchgate',135,10),(19,'Jogeshwari','Borivali',70,10),(20,'Jogeshwari','Kandivali,Malad,Goregaon,Jogeshwari,Andheri,Vile Parle,Santacruz,Khar Road,Bandra',50,5),(21,'Jogeshwari','Mahim,Matunga,Dadar,Elphistone Road',70,10),(22,'Jogeshwari','Lower Parel,Mahalaxmi,Mumbai Central,Grant Road,Churchgate',105,10),(23,'Andheri','Borivali',70,10),(24,'Andheri','Kandivali,Malad,Goregaon,Jogeshwari,Andheri,Vile Parle,Santacruz,Khar Road,Bandra,Mahim',50,5),(25,'Andheri','Matunga,Dadar,Elphistone Road,Lower Parel',70,10),(26,'Andheri','Mahalaxmi,Mumbai Central,Grant Road,Charni Road,Marine Lines,Churchgate',105,10),(27,'Vile Parle','Borivali,Kandivali',70,10),(28,'Vile Parle','Malad,Goregaon,Jogeshwari,Andheri,Vile Parle,Santacruz,Khar Road,Bandra,Mahim,Matunga,Dadar',50,5),(29,'Vile Parle','Elphistone Road,Lower Parel,Mahalaxmi',70,10),(30,'Vile Parle','Mumbai Central,Grant Road,Charni Road,Marine Lines,Churchgate',105,10),(31,'Santacruz','Borivali',105,10),(32,'Santacruz','Kandivali,Malad',70,10),(33,'Santacruz','Goregaon,Jogeshwari,Andheri,Vile Parle,Santacruz,Khar Road,Bandra,Mahim,Matunga,Dadar',50,5),(34,'Santacruz','Mahalaxmi,Mumbai Central,Grant Road',70,10),(35,'Santacruz','Charni Road,Marine Lines,Churchgate',105,10),(36,'Khar Road','Borivali',105,10),(37,'Khar Road','Kandivali,Malad,Goregaon',70,10),(38,'Khar Road','Jogeshwari,Andheri,Vile Parle,Santacruz,Bandra,Mah',50,5),(39,'Khar Road','Mahalaxmi,Mumbai Central,Grant Road,Charni Road,Ma',70,10),(40,'Khar Road','Churchgate',105,10),(41,'Bandra','Borivali,Kandivali',105,10),(42,'Bandra','Malad,Goregaon',70,10),(43,'Bandra','Jogeshwari,Andheri,Vile Parle,Santacruz,Khar Road,',50,5),(44,'Bandra','Mumbai Central,Grant Road,Charni Road,Marine Lines',70,10),(45,'Mahim','Borivali,Kandivali,Malad',105,10),(46,'Mahim','Goregaon,Jogeshwari',70,10),(47,'Mahim','Andheri,Vile Parle,Santacruz,Khar Road,Bandra,Matu',50,5),(48,'Mahim','Charni Road,Marine Lines,Churchgate',70,10),(49,'Matunga','Borivali,Kandivali,Malad,Goregaon',105,10),(50,'Matunga','Jogeshwari,Andheri',70,10),(51,'Matunga','Vile Parle,Santacruz,Khar Road,Bandra,Mahim,Dadar,',50,5),(52,'Matunga','Marine Lines,Churchgate',70,10),(53,'Dadar','Borivali,Kandivali,Malad,Goregaon',105,10),(54,'Dadar','Jogeshwari,Andheri',70,10),(55,'Dadar','Vile Parle,Santacruz,Khar Road,Bandra,Mahim,Matung',50,5),(56,'Dadar','Churchgate',70,10),(57,'Elphistone Road','Borivali,Kandivali,Malad,Goregaon',105,10),(58,'Elphistone Road','Jogeshwari,Andheri,Vile Parle',70,10),(59,'Elphistone Road','Santacruz,Khar Road,Bandra,Mahim,Matunga,Dadar,Low',50,5),(60,'Lower Parel','Borivali',135,10),(61,'Lower Parel','Kandivali,Malad,Goregaon,Jogeshwari',105,10),(62,'Lower Parel','Andheri,Vile Parle',70,10),(63,'Lower Parel','Santacruz,Khar Road,Bandra,Mahim,Matunga,Dadar,Elp',50,5),(64,'Mahalaxmi','Borivali,Kandivali',135,10),(65,'Mahalaxmi','Malad,Goregaon,Jogeshwari,Andheri',105,10),(66,'Mahalaxmi','Vile Parle,Santacruz,Khar Road',70,10),(67,'Mahalaxmi','Bandra,Mahim,Matunga,Dadar,Elphistone Road,Lower P',50,5),(68,'Mumbai Central','Borivali,Kandivali',135,10),(69,'Mumbai Central','Malad,Goregaon,Jogeshwari,Andheri,Vile Parle',105,10),(70,'Mumbai Central','Santacruz,Khar Road,Bandra',70,10),(71,'Mumbai Central','Mahim,Matunga,Dadar,Elphistone Road,Lower Parel,Ma',50,5),(72,'Grant Road','Borivali',140,15),(73,'Grant Road','Kandivali,Malad',135,10),(74,'Grant Road','Goregaon,Jogeshwari,Andheri,Vile Parle',105,10),(75,'Grant Road','Santacruz,Khar Road,Bandra',70,10),(76,'Grant Road','Mahim,Matunga,Dadar,Elphistone Road,Lower Parel,Ma',50,5),(77,'Charni Road','Borivali',140,15),(78,'Charni Road','Kandivali,Malad',135,10),(79,'Charni Road','Goregaon,Jogeshwari,Andheri,Vile Parle,Santacruz',105,10),(80,'Charni Road','Khar Road,Bandra,Mahim',70,10),(81,'Charni Road','Matunga,Dadar,Elphistone Road,Lower Parel,Mahalaxm',50,5),(82,'Marine Lines','Borivali',140,15),(83,'Marine Lines','Kandivali,Malad,Goregaon,Jogeshwari',135,10),(84,'Marine Lines','Andheri,Vile Parle,Santacruz',105,10),(85,'Marine Lines','Khar Road,Bandra,Mahim,Matunga',70,10),(86,'Marine Lines','Dadar,Elphistone Road,Lower Parel,Mahalaxmi,Mumbai',50,5),(87,'Churchgate','Borivali,Kandivali',140,15),(88,'Churchgate','Malad,Goregaon',135,10),(89,'Churchgate','Jogeshwari,Andheri,Vile Parle,Santacruz,Khar Road',105,10),(90,'Churchgate','Bandra,Mahim,Matunga,Dadar',70,10),(91,'Churchgate','Elphistone Road,Lower Parel,Mahalaxmi,Mumbai Centr',50,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;