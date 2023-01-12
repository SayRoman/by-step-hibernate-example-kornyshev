-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.62-log - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных hospital
CREATE DATABASE IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `hospital`;

-- Дамп структуры для таблица hospital.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Building` int(11) NOT NULL,
  `Financing` double NOT NULL,
  `Namedep` varchar(100) CHARACTER SET utf8 NOT NULL,
  `DoctorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Namedep`,`DoctorId`) USING BTREE,
  KEY `DoctorId` (`DoctorId`),
  CONSTRAINT `FK_departments_doctors` FOREIGN KEY (`DoctorId`) REFERENCES `doctors` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы hospital.departments: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`Id`, `Building`, `Financing`, `Namedep`, `DoctorId`) VALUES
	(1, 1, 200, 'Terapeft', 1),
	(2, 2, 3000, 'Kardio', 2);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Дамп структуры для таблица hospital.diseases
CREATE TABLE IF NOT EXISTS `diseases` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Severity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы hospital.diseases: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
INSERT INTO `diseases` (`Id`, `Name`, `Severity`) VALUES
	(1, 'orv', 1),
	(2, 'korona', 10);
/*!40000 ALTER TABLE `diseases` ENABLE KEYS */;

-- Дамп структуры для таблица hospital.doctors
CREATE TABLE IF NOT EXISTS `doctors` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Namedoctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Phone` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Salary` double NOT NULL,
  `Surname` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Namedoctor`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы hospital.doctors: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` (`Id`, `Namedoctor`, `Phone`, `Salary`, `Surname`) VALUES
	(1, 'Ivan', '123', 5000, 'Ivanovich'),
	(2, 'Petr', '124', 5500, 'Petrovich');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;

-- Дамп структуры для таблица hospital.examinations
CREATE TABLE IF NOT EXISTS `examinations` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DayOfWeek` int(11) NOT NULL,
  `EndTime` time NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `StartTime` time NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы hospital.examinations: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `examinations` DISABLE KEYS */;
INSERT INTO `examinations` (`Id`, `DayOfWeek`, `EndTime`, `Name`, `StartTime`) VALUES
	(1, 1, '08:04:00', 'fluorographia', '08:00:00'),
	(2, 1, '08:17:00', 'blood test', '08:13:00');
/*!40000 ALTER TABLE `examinations` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
