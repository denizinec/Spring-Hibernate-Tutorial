USE `employee_directory`;

DROP TABLE IF EXISTS `authorities`;
DROP TABLE IF EXISTS `users`;

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(68) NOT NULL,
  `enabled` tinyint NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `users`
--

INSERT INTO `users` 
VALUES 
('john','{bcrypt}$2a$10$PsOAAEaqkL6lPXzPPOo4Bu9JPslGtFpnH3RA7UkGX.9mcHPUZ4IVC',1),
('mary','{bcrypt}$2a$10$zOHazY2RGt6fvmDCApTkUeUt4fggiuhmKqMBdrlVWBSUnOsPNLYa6',1),
('heather','{bcrypt}$2a$10$jNLTeMPsk0HOS97vylheTeaHC9rvlfeuUQX/RFHS0duOcxXQ/LPA2',1);


--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `authorities`
--

INSERT INTO `authorities` 
VALUES 
('john','ROLE_EMPLOYEE'),
('mary','ROLE_EMPLOYEE'),
('mary','ROLE_MANAGER'),
('heather','ROLE_EMPLOYEE'),
('heather','ROLE_MANAGER'),
('heather','ROLE_ADMIN');


