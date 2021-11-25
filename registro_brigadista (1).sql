-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2021 a las 19:17:28
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_brigadista`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `Rut` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Empresa` varchar(255) NOT NULL,
  `Rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`Nombre`, `Apellido`, `Rut`, `Telefono`, `Empresa`, `Rol`) VALUES
('Comida de perro', 'aaaaaa', '2123123123', '+5698129837', 'tuvieja33333', 'Motosierrista'),
('anashei', 'tu vieja 3', '222', '22223', 'tuviejamarca', 'Conductor'),
('Comida de perro', 'aaaaaa', '2123123123', '+5698129837', 'tuvieja33333', 'Conductor'),
('Pablocai weko', 'weko', '20128391274', '1928312987498', 'PUTICLUB', 'Brigadista'),
('carlos', 'Parra', '123456789', '+569999999', 'cfta', 'Conductor'),
('asdasdasd', 'aasdasdasd', '12312312312123', 'asdasdasdasd', 'asdasdasdas', 'Motosierrista');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
