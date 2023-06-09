-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2023 a las 04:09:31
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `votacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id`, `nombre`) VALUES
(1, 'candidato_1'),
(2, 'candidato_1'),
(3, 'candidato_3'),
(4, 'candidato_4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id` int(14) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id`, `nombre`, `id_region`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'Putre', 1),
(4, 'General Lagos', 1),
(5, 'Iquique', 2),
(6, 'Alto Hospicio', 2),
(7, 'Pozo Almonte', 2),
(8, 'Camiña', 2),
(9, 'Colchane', 2),
(10, 'Huara', 2),
(11, 'Pica', 2),
(12, 'Antofagasta', 3),
(13, 'Mejillones', 3),
(14, 'Sierra Gorda', 3),
(15, 'Taltal', 3),
(16, 'Calama', 3),
(17, 'Ollagüe', 3),
(18, 'San Pedro de Atacama', 3),
(19, 'Tocopilla', 3),
(20, 'María Elena', 3),
(21, 'Copiapó', 4),
(22, 'Caldera', 4),
(23, 'Tierra Amarilla', 4),
(24, 'Chañaral', 4),
(25, 'Diego de Almagro', 4),
(26, 'Vallenar', 4),
(27, 'Alto del Carmen', 4),
(28, 'Freirina', 4),
(29, 'Huasco', 4),
(30, 'La Serena', 5),
(31, 'Coquimbo', 5),
(32, 'Andacollo', 5),
(33, 'La Higuera', 5),
(34, 'Paihuano', 5),
(35, 'Vicuña', 5),
(36, 'Illapel', 5),
(37, 'Canela', 5),
(38, 'Los Vilos', 5),
(39, 'Salamanca', 5),
(40, 'Ovalle', 5),
(41, 'Combarbalá', 5),
(42, 'Monte Patria', 5),
(43, 'Punitaqui', 5),
(44, 'Río Hurtado', 5),
(45, 'Valparaíso', 6),
(46, 'Casablanca', 6),
(47, 'Concón', 6),
(48, 'Juan Fernández', 6),
(49, 'Puchuncaví', 6),
(50, 'Quintero', 6),
(51, 'Viña del Mar', 6),
(52, 'Isla de Pascua', 6),
(53, 'Los Andes', 6),
(54, 'Calle Larga', 6),
(55, 'Rinconada', 6),
(56, 'San Esteban', 6),
(57, 'La Ligua', 6),
(58, 'Cabildo', 6),
(59, 'Papudo', 6),
(60, 'Petorca', 6),
(61, 'Zapallar', 6),
(62, 'Quillota', 6),
(63, 'La Cruz', 6),
(64, 'Nogales', 6),
(65, 'San Antonio', 6),
(66, 'Santo Domingo', 6),
(67, 'Algarrobo', 6),
(68, 'Cartagena', 6),
(69, 'El Quisco', 6),
(70, 'El Tabo', 6),
(71, 'San Felipe', 6),
(72, 'Catemu', 6),
(73, 'Llaillay', 6),
(74, 'Panquehue', 6),
(75, 'Putaendo', 6),
(76, 'Santa María', 6),
(77, 'Quilpué', 6),
(78, 'Limache', 6),
(79, 'Olmué', 6),
(80, 'Villa Alemana', 6),
(81, 'Santiago', 7),
(82, 'Cerrillos', 7),
(83, 'Cerro Navia', 7),
(84, 'Conchalí', 7),
(85, 'El Bosque', 7),
(86, 'Estación Central', 7),
(87, 'Huechuraba', 7),
(88, 'Independencia', 7),
(89, 'La Cisterna', 7),
(90, 'La Florida', 7),
(91, 'La Granja', 7),
(92, 'La Pintana', 7),
(93, 'La Reina', 7),
(94, 'Las Condes', 7),
(95, 'Lo Barnechea', 7),
(96, 'Lo Espejo', 7),
(97, 'Lo Prado', 7),
(98, 'Macul', 7),
(99, 'Maipú', 7),
(100, 'Ñuñoa', 7),
(101, 'Pedro Aguirre Cerda', 7),
(102, 'Peñalolén', 7),
(103, 'Providencia', 7),
(104, 'Pudahuel', 7),
(105, 'Quilicura', 7),
(106, 'Quinta Normal', 7),
(107, 'Recoleta', 7),
(108, 'Renca', 7),
(109, 'San Joaquín', 7),
(110, 'San Miguel', 7),
(111, 'San Ramón', 7),
(112, 'Vitacura', 7),
(113, 'Puente Alto', 7),
(114, 'Pirque', 7),
(115, 'San José de Maipo', 7),
(116, 'Colina', 7),
(117, 'Lampa', 7),
(118, 'Tiltil', 7),
(119, 'San Bernardo', 7),
(120, 'Buin', 7),
(121, 'Calera de Tango', 7),
(122, 'Paine', 7),
(123, 'Melipilla', 7),
(124, 'Alhué', 7),
(125, 'Curacaví', 7),
(126, 'María Pinto', 7),
(127, 'San Pedro', 7),
(128, 'Talagante', 7),
(129, 'El Monte', 7),
(130, 'Isla de Maipo', 7),
(131, 'Padre Hurtado', 7),
(132, 'Peñaflor', 7),
(133, 'Rancagua', 8),
(134, 'Codegua', 8),
(135, 'Coinco', 8),
(136, 'Coltauco', 8),
(137, 'Doñihue', 8),
(138, 'Graneros', 8),
(139, 'Las Cabras', 8),
(140, 'Machalí', 8),
(141, 'Malloa', 8),
(142, 'Mostazal', 8),
(143, 'Olivar', 8),
(144, 'Peumo', 8),
(145, 'Pichidegua', 8),
(146, 'Quinta de Tilcoco', 8),
(147, 'Rengo', 8),
(148, 'Requínoa', 8),
(149, 'San Vicente', 8),
(150, 'Pichilemu', 8),
(151, 'La Estrella', 8),
(152, 'Litueche', 8),
(153, 'Marchihue', 8),
(154, 'Navidad', 8),
(155, 'Paredones', 8),
(156, 'Talca', 9),
(157, 'Constitución', 9),
(158, 'Curepto', 9),
(159, 'Empedrado', 9),
(160, 'Maule', 9),
(161, 'Pelarco', 9),
(162, 'Pencahue', 9),
(163, 'Río Claro', 9),
(164, 'San Clemente', 9),
(165, 'San Rafael', 9),
(166, 'Cauquenes', 9),
(167, 'Chanco', 9),
(168, 'Pelluhue', 9),
(169, 'Curicó', 9),
(170, 'Hualañé', 9),
(171, 'Licantén', 9),
(172, 'Molina', 9),
(173, 'Rauco', 9),
(174, 'Romeral', 9),
(175, 'Sagrada Familia', 9),
(176, 'Teno', 9),
(177, 'Vichuquén', 9),
(178, 'Linares', 9),
(179, 'Colbún', 9),
(180, 'Longaví', 9),
(181, 'Parral', 9),
(182, 'Retiro', 9),
(183, 'San Javier', 9),
(184, 'Villa Alegre', 9),
(185, 'Yerbas Buenas', 9),
(186, 'Chillán', 10),
(187, 'Bulnes', 10),
(188, 'Chillán Viejo', 10),
(189, 'El Carmen', 10),
(190, 'Pemuco', 10),
(191, 'Pinto', 10),
(192, 'Quillón', 10),
(193, 'San Ignacio', 10),
(194, 'Yungay', 10),
(195, 'Cobquecura', 10),
(196, 'Coelemu', 10),
(197, 'Ninhue', 10),
(198, 'Portezuelo', 10),
(199, 'Ránquil', 10),
(200, 'Treguaco', 10),
(201, 'Concepción', 11),
(202, 'Coronel', 11),
(203, 'Chiguayante', 11),
(204, 'Florida', 11),
(205, 'Hualqui', 11),
(206, 'Lota', 11),
(207, 'Penco', 11),
(208, 'San Pedro de la Paz', 11),
(209, 'Santa Juana', 11),
(210, 'Talcahuano', 11),
(211, 'Tomé', 11),
(212, 'Hualpén', 11),
(213, 'Lebu', 11),
(214, 'Arauco', 11),
(215, 'Cañete', 11),
(216, 'Contulmo', 11),
(217, 'Curanilahue', 11),
(218, 'Los Álamos', 11),
(219, 'Tirúa', 11),
(220, 'Los Ángeles', 11),
(221, 'Antuco', 11),
(222, 'Cabrero', 11),
(223, 'Laja', 11),
(224, 'Mulchén', 11),
(225, 'Nacimiento', 11),
(226, 'Negrete', 11),
(227, 'Quilaco', 11),
(228, 'Quilleco', 11),
(229, 'San Rosendo', 11),
(230, 'Santa Bárbara', 11),
(231, 'Tucapel', 11),
(232, 'Yumbel', 11),
(233, 'Alto Biobío', 11),
(234, 'Temuco', 12),
(235, 'Carahue', 12),
(236, 'Cunco', 12),
(237, 'Curarrehue', 12),
(238, 'Freire', 12),
(239, 'Galvarino', 12),
(240, 'Gorbea', 12),
(241, 'Lautaro', 12),
(242, 'Loncoche', 12),
(243, 'Melipeuco', 12),
(244, 'Nueva Imperial', 12),
(245, 'Padre las Casas', 12),
(246, 'Perquenco', 12),
(247, 'Pitrufquén', 12),
(248, 'Pucón', 12),
(249, 'Saavedra', 12),
(250, 'Teodoro Schmidt', 12),
(251, 'Toltén', 12),
(252, 'Vilcún', 12),
(253, 'Villarrica', 12),
(254, 'Cholchol', 12),
(255, 'Valdivia', 13),
(256, 'Corral', 13),
(257, 'Lanco', 13),
(258, 'Los Lagos', 13),
(259, 'Máfil', 13),
(260, 'Mariquina', 13),
(261, 'Paillaco', 13),
(262, 'Panguipulli', 13),
(263, 'La Unión', 13),
(264, 'Futrono', 13),
(265, 'Lago Ranco', 13),
(266, 'Río Bueno', 13),
(267, 'Puerto Montt', 14),
(268, 'Calbuco', 14),
(269, 'Cochamó', 14),
(270, 'Fresia', 14),
(271, 'Frutillar', 14),
(272, 'Los Muermos', 14),
(273, 'Llanquihue', 14),
(274, 'Maullín', 14),
(275, 'Puerto Varas', 14),
(276, 'Castro', 14),
(277, 'Ancud', 14),
(278, 'Chonchi', 14),
(279, 'Curaco de Vélez', 14),
(280, 'Dalcahue', 14),
(281, 'Puqueldón', 14),
(282, 'Queilén', 14),
(283, 'Quellón', 14),
(284, 'Quemchi', 14),
(285, 'Quinchao', 14),
(286, 'Osorno', 14),
(287, 'Puerto Octay', 14),
(288, 'Purranque', 14),
(289, 'Puyehue', 14),
(290, 'Río Negro', 14),
(291, 'San Juan de la Costa', 14),
(292, 'San Pablo', 14),
(293, 'Chaitén', 14),
(294, 'Futaleufú', 14),
(295, 'Hualaihué', 14),
(296, 'Palena', 14),
(297, 'Coihaique', 15),
(298, 'Lago Verde', 15),
(299, 'Aisén', 15),
(300, 'Cisnes', 15),
(301, 'Guaitecas', 15),
(302, 'Cochrane', 15),
(303, 'O\'Higgins', 15),
(304, 'Tortel', 15),
(305, 'Punta Arenas', 16),
(306, 'Laguna Blanca', 16),
(307, 'Río Verde', 16),
(308, 'San Gregorio', 16),
(309, 'Cabo de Hornos (Ex Navarino)', 16),
(310, 'Antártica', 16),
(311, 'Porvenir', 16),
(312, 'Primavera', 16),
(313, 'Timaukel', 16),
(314, 'Natales', 16),
(315, 'Torres del Paine', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id`, `nombre`) VALUES
(1, 'Arica y Parinacota'),
(2, 'Tarapacá'),
(3, 'Antofagasta'),
(4, 'Atacama'),
(5, 'Coquimbo'),
(6, 'Valparaíso'),
(7, 'Región Metropolitana'),
(8, 'Libertador General Bernardo O\'Higgins'),
(9, 'Maule'),
(10, 'Ñuble'),
(11, 'Biobío'),
(12, 'La Araucanía'),
(13, 'Los Ríos'),
(14, 'Los Lagos'),
(15, 'Aysén del General Carlos Ibáñez del Campo'),
(16, 'Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votaciones`
--

CREATE TABLE `votaciones` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_region` int(255) NOT NULL,
  `id_comuna` int(255) NOT NULL,
  `id_candidato` int(255) NOT NULL,
  `medio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `votaciones`
--
ALTER TABLE `votaciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `votaciones`
--
ALTER TABLE `votaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
