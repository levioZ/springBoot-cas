-- Dumping database structure for cas
CREATE DATABASE IF NOT EXISTS `cas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cas`;

-- Dumping structure for table cas.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `password`) VALUES
	(1, 'test@test.com', 'Mellon');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;