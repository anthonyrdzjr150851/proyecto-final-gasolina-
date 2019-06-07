-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2019 at 11:10 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gasolina`
--

-- --------------------------------------------------------

--
-- Table structure for table `civil`
--

CREATE TABLE IF NOT EXISTS `civil` (
  `zona` varchar(50) NOT NULL,
  `tipo_carga` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placas` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `periodo` varchar(50) NOT NULL,
  `vale` varchar(50) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `fecha_carga` date NOT NULL,
  `kilometraje` varchar(50) NOT NULL,
  `carga_real` varchar(50) NOT NULL,
  `conductor` varchar(50) NOT NULL,
  `firma` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `civil`
--

INSERT INTO `civil` (`zona`, `tipo_carga`, `id`, `placas`, `marca`, `tipo`, `modelo`, `area`, `periodo`, `vale`, `cantidad`, `fecha_carga`, `kilometraje`, `carga_real`, `conductor`, `firma`) VALUES
('z huasteca', 'extraordinaria', 23, 'chh78-567', 'ferrari', 'sedan', 'v1', '78380', 'vespertino', '54321', '3500', '2012-08-09', '20000', '1200 L', 'arochi rincon', ''),
('z centro', 'normal', 19, 'ver-45-56', 'nissan', 'sedan', 'suru', 'san luis potosi', '56', '56', '600', '2012-12-12', '60000', '500 L', 'JUAN JOSE', '');

-- --------------------------------------------------------

--
-- Table structure for table `civil1`
--

CREATE TABLE IF NOT EXISTS `civil1` (
  `zona` varchar(50) NOT NULL,
  `tipo_carga` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placas` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `conductor` varchar(50) NOT NULL,
  `vale` varchar(50) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `fecha_carga` datetime NOT NULL,
  `kilometraje` varchar(50) NOT NULL,
  `carga_real` varchar(50) NOT NULL,
  `fecha_inicial` date NOT NULL,
  `fecha_final` date NOT NULL,
  `firma` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `civil1`
--

INSERT INTO `civil1` (`zona`, `tipo_carga`, `id`, `placas`, `marca`, `tipo`, `modelo`, `area`, `conductor`, `vale`, `cantidad`, `fecha_carga`, `kilometraje`, `carga_real`, `fecha_inicial`, `fecha_final`, `firma`) VALUES
('z huasteca', 'extraordinaria', 6, 'UZN589', 'BMW', 'deportivo', 'i8', '78436', 'Rafael Llamas', '621561', '13', '2019-06-06 00:00:00', '13000', '136', '2019-06-06', '2019-06-06', 'chacal');

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `zona` varchar(50) NOT NULL,
  `tipo_carga` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placas` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `periodo` varchar(50) NOT NULL,
  `vale` varchar(50) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `fecha_carga` date NOT NULL,
  `kilometraje` varchar(50) NOT NULL,
  `carga_real` varchar(50) NOT NULL,
  `conductor` varchar(50) NOT NULL,
  `firma` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`zona`, `tipo_carga`, `id`, `placas`, `marca`, `tipo`, `modelo`, `area`, `periodo`, `vale`, `cantidad`, `fecha_carga`, `kilometraje`, `carga_real`, `conductor`, `firma`) VALUES
('z centro', 'normal', 1, 'car-56-678', 'honda', 'sedan', 'city', '78380', 'matutino', '455634', '1000', '2019-12-01', '60000', '500 L', 'jose juan', ''),
('z media', 'extraordinaria', 2, 'cev-67-787', 'vw', 'sedan', 'jetta', '78380', 'matutino', '12345', '780', '2019-04-04', '20000', '400 L', 'sergio antonio rodriguez', '');

-- --------------------------------------------------------

--
-- Table structure for table `empleados1`
--

CREATE TABLE IF NOT EXISTS `empleados1` (
  `zona` varchar(50) NOT NULL,
  `tipo_carga` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placas` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `conductor` varchar(50) NOT NULL,
  `vale` varchar(50) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `fecha_carga` datetime NOT NULL,
  `kilometraje` varchar(50) NOT NULL,
  `carga_real` varchar(50) NOT NULL,
  `fecha_inicial` date NOT NULL,
  `fecha_final` date NOT NULL,
  `firma` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `empleados1`
--

INSERT INTO `empleados1` (`zona`, `tipo_carga`, `id`, `placas`, `marca`, `tipo`, `modelo`, `area`, `conductor`, `vale`, `cantidad`, `fecha_carga`, `kilometraje`, `carga_real`, `fecha_inicial`, `fecha_final`, `firma`) VALUES
('z media', 'extraordinaria', 8, 'UWU125', 'CHEVROLET', 'deportivo', 'CAVALIER', '78144', 'PEPITO', '555', '13', '2019-06-06 00:00:00', '555', '136', '2019-06-06', '2019-06-22', 'arochi'),
('z centro', 'normal', 7, 'UZN589', 'BMW', 'deportivo', 'i8', '78436', 'Rafael Llamas', '621561', '500', '2019-06-06 00:00:00', '555', '5000', '2019-06-06', '2019-06-21', ''),
('z centro', 'normal', 6, 'UZN589', 'BMW', 'deportivo', 'i8', '78436', 'Rafael Llamas', '621561', '500', '2019-06-06 00:00:00', '50000', '22', '2019-06-06', '2019-06-06', 'df516sd51'),
('z media', 'normal', 5, 'arochi', 'arochi', '555', '555', '555', '555', '555', '555', '2019-06-06 00:00:00', '555', '555', '2019-06-21', '2019-06-29', '555');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
