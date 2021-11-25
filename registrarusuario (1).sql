-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2021 a las 19:27:26
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registrarusuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrarusuario`
--

CREATE TABLE `registrarusuario` (
  `Usuario` varchar(30) NOT NULL,
  `Clave` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registrarusuario`
--

INSERT INTO `registrarusuario` (`Usuario`, `Clave`) VALUES
('loki', '123'),
('loki', '1234'),
('elpepe', '123456'),
('elpepe', '1234567'),
('etesetch', '$2y$10$vTPZ0Z67UoIedMPDLTkw3O04cTBSS.81js7PU/N5mhlT1bRE8uZbm'),
('', '$2y$10$KBHm6aAr/9xUSB0olqXSC.LbwT8rVLAj18M57g7rwp/ZDTTS1mOK.'),
('', '$2y$10$6NC2tcRsYXD8bYlFkLN1seR64R7D0guHW0PiMz79GB8oYLrgRCa7G');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
