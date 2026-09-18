-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2026 a las 19:28:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `syshotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id` bigint(20) NOT NULL,
  `cupo_maximo_personas` int(11) DEFAULT NULL,
  `tipo` enum('ESTANDAR','PREMIUM','VIP') DEFAULT NULL,
  `sede_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id`, `cupo_maximo_personas`, `tipo`, `sede_id`) VALUES
(109, 4, 'ESTANDAR', 5),
(110, 4, 'ESTANDAR', 5),
(111, 4, 'ESTANDAR', 5),
(112, 4, 'ESTANDAR', 5),
(113, 4, 'ESTANDAR', 5),
(114, 4, 'ESTANDAR', 5),
(115, 4, 'ESTANDAR', 5),
(116, 4, 'ESTANDAR', 5),
(117, 4, 'ESTANDAR', 5),
(118, 4, 'ESTANDAR', 5),
(119, 4, 'ESTANDAR', 5),
(120, 4, 'ESTANDAR', 5),
(121, 4, 'ESTANDAR', 5),
(122, 4, 'ESTANDAR', 5),
(123, 4, 'ESTANDAR', 5),
(124, 4, 'ESTANDAR', 5),
(125, 4, 'ESTANDAR', 5),
(126, 4, 'ESTANDAR', 5),
(127, 4, 'ESTANDAR', 5),
(128, 4, 'ESTANDAR', 5),
(129, 4, 'ESTANDAR', 5),
(130, 4, 'ESTANDAR', 5),
(131, 4, 'ESTANDAR', 5),
(132, 4, 'ESTANDAR', 5),
(133, 4, 'ESTANDAR', 5),
(134, 4, 'ESTANDAR', 5),
(135, 4, 'ESTANDAR', 5),
(136, 4, 'ESTANDAR', 5),
(137, 4, 'ESTANDAR', 5),
(138, 4, 'ESTANDAR', 5),
(139, 4, 'PREMIUM', 5),
(140, 4, 'PREMIUM', 5),
(141, 4, 'PREMIUM', 5),
(142, 6, 'PREMIUM', 6),
(143, 6, 'PREMIUM', 6),
(144, 6, 'PREMIUM', 6),
(145, 6, 'PREMIUM', 6),
(146, 6, 'PREMIUM', 6),
(147, 6, 'PREMIUM', 6),
(148, 6, 'PREMIUM', 6),
(149, 6, 'PREMIUM', 6),
(150, 6, 'PREMIUM', 6),
(151, 6, 'PREMIUM', 6),
(152, 6, 'PREMIUM', 6),
(153, 6, 'PREMIUM', 6),
(154, 6, 'PREMIUM', 6),
(155, 6, 'PREMIUM', 6),
(156, 6, 'PREMIUM', 6),
(157, 6, 'PREMIUM', 6),
(158, 6, 'PREMIUM', 6),
(159, 6, 'PREMIUM', 6),
(160, 6, 'PREMIUM', 6),
(161, 6, 'PREMIUM', 6),
(162, 6, 'VIP', 6),
(163, 6, 'VIP', 6),
(164, 8, 'ESTANDAR', 7),
(165, 8, 'ESTANDAR', 7),
(166, 8, 'ESTANDAR', 7),
(167, 8, 'ESTANDAR', 7),
(168, 8, 'ESTANDAR', 7),
(169, 8, 'ESTANDAR', 7),
(170, 8, 'ESTANDAR', 7),
(171, 8, 'ESTANDAR', 7),
(172, 8, 'ESTANDAR', 7),
(173, 8, 'ESTANDAR', 7),
(174, 8, 'PREMIUM', 7),
(175, 6, 'ESTANDAR', 8),
(176, 6, 'ESTANDAR', 8),
(177, 6, 'ESTANDAR', 8),
(178, 6, 'ESTANDAR', 8),
(179, 6, 'ESTANDAR', 8),
(180, 6, 'ESTANDAR', 8),
(181, 6, 'ESTANDAR', 8),
(182, 6, 'ESTANDAR', 8),
(183, 6, 'ESTANDAR', 8),
(184, 6, 'ESTANDAR', 8),
(185, 6, 'ESTANDAR', 8),
(186, 6, 'ESTANDAR', 8),
(187, 6, 'ESTANDAR', 8),
(188, 6, 'ESTANDAR', 8),
(189, 6, 'ESTANDAR', 8),
(190, 6, 'ESTANDAR', 8),
(191, 6, 'ESTANDAR', 8),
(192, 6, 'ESTANDAR', 8),
(193, 6, 'ESTANDAR', 8),
(194, 6, 'ESTANDAR', 8),
(195, 6, 'PREMIUM', 8),
(196, 6, 'PREMIUM', 8),
(197, 6, 'PREMIUM', 8),
(198, 6, 'PREMIUM', 8),
(199, 6, 'PREMIUM', 8),
(200, 6, 'PREMIUM', 8),
(201, 6, 'PREMIUM', 8),
(202, 6, 'PREMIUM', 8),
(203, 6, 'PREMIUM', 8),
(204, 6, 'PREMIUM', 8),
(205, 6, 'PREMIUM', 8),
(206, 6, 'PREMIUM', 8),
(207, 6, 'PREMIUM', 8),
(208, 6, 'PREMIUM', 8),
(209, 6, 'PREMIUM', 8),
(210, 6, 'PREMIUM', 8),
(211, 6, 'PREMIUM', 8),
(212, 6, 'PREMIUM', 8),
(213, 6, 'PREMIUM', 8),
(214, 6, 'PREMIUM', 8),
(215, 6, 'VIP', 8),
(216, 6, 'VIP', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` bigint(20) NOT NULL,
  `cantidad_personas` int(11) DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `total_calculado` decimal(38,2) DEFAULT NULL,
  `habitacion_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id`, `nombre`) VALUES
(5, 'Barranquilla'),
(8, 'Bogotá'),
(6, 'Cali'),
(7, 'Cartagena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE `tarifas` (
  `id` bigint(20) NOT NULL,
  `precio_base_por_noche` decimal(38,2) DEFAULT NULL,
  `recargo_por_persona` decimal(38,2) DEFAULT NULL,
  `temporada` enum('ALTA','BAJA') DEFAULT NULL,
  `tipo_alojamiento` enum('ESTANDAR','PREMIUM','VIP') DEFAULT NULL,
  `sede_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tarifas`
--

INSERT INTO `tarifas` (`id`, `precio_base_por_noche`, `recargo_por_persona`, `temporada`, `tipo_alojamiento`, `sede_id`) VALUES
(13, 120000.00, 15000.00, 'BAJA', 'ESTANDAR', 5),
(14, 180000.00, 25000.00, 'ALTA', 'ESTANDAR', 5),
(15, 200000.00, 20000.00, 'BAJA', 'PREMIUM', 5),
(16, 280000.00, 35000.00, 'ALTA', 'PREMIUM', 5),
(17, 220000.00, 20000.00, 'BAJA', 'PREMIUM', 6),
(18, 300000.00, 35000.00, 'ALTA', 'PREMIUM', 6),
(19, 400000.00, 50000.00, 'BAJA', 'VIP', 6),
(20, 550000.00, 75000.00, 'ALTA', 'VIP', 6),
(21, 150000.00, 18000.00, 'BAJA', 'ESTANDAR', 7),
(22, 250000.00, 30000.00, 'ALTA', 'ESTANDAR', 7),
(23, 280000.00, 25000.00, 'BAJA', 'PREMIUM', 7),
(24, 400000.00, 45000.00, 'ALTA', 'PREMIUM', 7),
(25, 130000.00, 15000.00, 'BAJA', 'ESTANDAR', 8),
(26, 190000.00, 25000.00, 'ALTA', 'ESTANDAR', 8),
(27, 210000.00, 20000.00, 'BAJA', 'PREMIUM', 8),
(28, 290000.00, 35000.00, 'ALTA', 'PREMIUM', 8),
(29, 380000.00, 45000.00, 'BAJA', 'VIP', 8),
(30, 500000.00, 65000.00, 'ALTA', 'VIP', 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpcssd8bu8lhtyno6lfyscjfou` (`sede_id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKj1dyoxal4rnhdcxo4mv6bcivc` (`habitacion_id`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKli6ju353rjef6tcxlaxo43ao9` (`nombre`);

--
-- Indices de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK40exhqb6033a43m3uojyy5j3j` (`sede_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD CONSTRAINT `FKpcssd8bu8lhtyno6lfyscjfou` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `FKj1dyoxal4rnhdcxo4mv6bcivc` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones` (`id`);

--
-- Filtros para la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD CONSTRAINT `FK40exhqb6033a43m3uojyy5j3j` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
