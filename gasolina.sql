-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-06-2019 a las 10:54:15
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gasolina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `civil`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcar la base de datos para la tabla `civil`
--

INSERT INTO `civil` (`zona`, `tipo_carga`, `id`, `placas`, `marca`, `tipo`, `modelo`, `area`, `periodo`, `vale`, `cantidad`, `fecha_carga`, `kilometraje`, `carga_real`, `conductor`, `firma`) VALUES
('z centro', 'normal', 19, 'ver-45-56', 'nissan', 'sedan', 'suru', 'san luis potosi', '56', '56', '600', '2012-12-12', '60000', '500 L', 'JUAN JOSE', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`zona`, `tipo_carga`, `id`, `placas`, `marca`, `tipo`, `modelo`, `area`, `periodo`, `vale`, `cantidad`, `fecha_carga`, `kilometraje`, `carga_real`, `conductor`, `firma`) VALUES
('z centro', 'normal', 1, 'car-56-678', 'honda', 'sedan', 'city', '78380', 'matutino', '455634', '1000', '2019-12-01', '60000', '500 L', 'jose juan', ''),
('z media', 'extraordinaria', 2, 'cev-67-787', 'vw', 'sedan', 'jetta', '78380', 'matutino', '12345', '780', '2019-04-04', '20000', '400 L', 'sergio antonio rodriguez', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
