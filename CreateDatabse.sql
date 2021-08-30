CREATE DATABASE /*!32312 IF NOT EXISTS*/`eCommcerce` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eCommcerce`;

/*Table structure for table `online Marketing` */

DROP TABLE IF EXISTS `onlineMkt`;

CREATE TABLE `onlineMkt` (
  `transactionNo` int(11) NOT NULL,
  `traffic` decimal(20) NOT NULL,
  `roas` decimal(20) NOT NULL,
  `cpc` decimal(20) NOT NULL,
  `cr` decimal(20) NOT NULL,
  `br` varchar(20) NOT NULL,
  `timeOnPage` varchar(20) NOT NULL,
  `orderNo` int(10) DEFAULT NULL,
  `Timedate` timestamp DEFAULT NULL,
  PRIMARY KEY (`transactionNo`)
  /*KEY `orderNo` (`orderNo`),
  CONSTRAINT `basicKeyFigures_fk_1` FOREIGN KEY (`orderNo`) REFERENCES `basicKeyFigures` (`orderNo`)*/
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `onlineMktEmail`;

CREATE TABLE `onlineMktEmail` (
  `newsletterID` int(11) NOT NULL,
  `Timedate` timestamp DEFAULT NULL,
  `transactionNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`newsletterID`)
  /* KEY `Timedate` (`Timedate`),
  KEY `transactionNo` (`transactionNo`),
  CONSTRAINT `frontend_fk_1` FOREIGN KEY (`Timedate`) REFERENCES `frontend` (`Timedate`),
  CONSTRAINT `onlineMkt_fk_1` FOREIGN KEY (`transactionNo`) REFERENCES `onlineMkt` (`transactionNo`) */
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

DROP TABLE IF EXISTS `frontend`;

CREATE TABLE `frontend` (
  `Timedate` timestamp NOT NULL,
  `Dropoutrate` decimal(10) NOT NULL,
  `transactionNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`Timedate`)
  /*KEY `transactionNo` (`transactionNo`),
  CONSTRAINT `onlineMkt_fk_2` FOREIGN KEY (`transactionNo`) REFERENCES `onlineMkt` (`transactionNo`)*/
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `ticketID` int(11) NOT NULL,
  `fullRT` decimal(20) NOT NULL,
  `transactionNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketID`)
  /*KEY `transactionNo` (`transactionNo`),
  CONSTRAINT `onlineMkt_fk_3` FOREIGN KEY (`transactionNo`) REFERENCES `onlineMkt` (`transactionNo`)*/
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `internalProcess`;

CREATE TABLE `internalProcess` (
  `articelNo` int(11) NOT NULL,
  `availability` decimal(20) NOT NULL,
  `totalTime` int(11) NOT NULL,
  PRIMARY KEY (`articelNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `basicKeyFigures`;

CREATE TABLE `basicKeyFigures` (
  `orderNo` int(11) NOT NULL,
  `revenue` decimal(20) NOT NULL,
  `sales` decimal(20) NOT NULL,
  `returns` decimal(20) DEFAULT NULL,
  `transactionNo` int(11) DEFAULT NULL,
  `articelNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderNo`)
  /*KEY `transactionNo` (`transactionNo`),
  KEY `articelNo` (`articelNo`),
  CONSTRAINT `onlineMkt_fk_4` FOREIGN KEY (`transactionNo`) REFERENCES `onlineMkt` (`transactionNo`),
  CONSTRAINT `internlaProcess_fk_1` FOREIGN KEY (`articelNo`) REFERENCES `internalProcess` (`articelNo`)*/
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* ADD FOREIGN KEYS
ALTER TABLE `onlineMkt` ADD CONSTRAINT `basicKeyFigures_fk_1` FOREIGN KEY (`orderNo`) REFERENCES `basicKeyFigures` (`orderNo`);
ALTER TABLE `onlineMktEmail` ADD CONSTRAINT `frontend_fk_1` FOREIGN KEY (`Timedate`) REFERENCES `frontend` (`Timedate`);
ALTER TABLE `onlineMktEmail` ADD CONSTRAINT `onlineMkt_fk_1` FOREIGN KEY (`transactionNo`) REFERENCES `onlineMkt` (`transactionNo`);
ALTER TABLE `frontend` ADD CONSTRAINT `onlineMkt_fk_2` FOREIGN KEY (`transactionNo`) REFERENCES `onlineMkt` (`transactionNo`);
ALTER TABLE `customer` ADD CONSTRAINT `onlineMkt_fk_3` FOREIGN KEY (`transactionNo`) REFERENCES `onlineMkt` (`transactionNo`);
ALTER TABLE `basicKeyFigures` ADD CONSTRAINT `onlineMkt_fk_4` FOREIGN KEY (`transactionNo`) REFERENCES `onlineMkt` (`transactionNo`);
ALTER TABLE `basicKeyFigures` ADD CONSTRAINT `internlaProcess_fk_1` FOREIGN KEY (`articelNo`) REFERENCES `internalProcess` (`articelNo`);*/




















