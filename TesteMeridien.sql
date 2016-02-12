/*
SQLyog Enterprise - MySQL GUI v8.2 RC2
MySQL - 5.6.27-0ubuntu0.14.04.1 : Database - TesteMeridien
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`TesteMeridien` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `TesteMeridien`;

/*Table structure for table `NivelAcesso` */

DROP TABLE IF EXISTS `NivelAcesso`;

CREATE TABLE `NivelAcesso` (
  `nivelAcesso` int(2) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  KEY `FK_NivelAcesso` (`idUsuario`),
  CONSTRAINT `FK_NivelAcesso` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `NivelAcesso` */

insert  into `NivelAcesso`(`nivelAcesso`,`idUsuario`) values (3,2),(2,3),(5,4),(4,6),(6,7),(8,8),(9,10),(10,9),(5,11),(4,12),(9,13);

/*Table structure for table `Usuario` */

DROP TABLE IF EXISTS `Usuario`;

CREATE TABLE `Usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `idade` int(3) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `Usuario` */

insert  into `Usuario`(`idUsuario`,`nome`,`idade`) values (2,'Pedro Miranda',30),(3,'Maria Erundina',47),(4,'Michel Marquez',19),(6,'Diego Fraga',31),(7,'Vinicius Gomes',32),(8,'Vilmar Trunks',36),(9,'Gustavo Ferreira',36),(10,'Amarildo José',16),(11,'Amanda da Silva',22),(12,'Alberto Fraga Silveira',29),(13,'Algusto Junges',19);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
