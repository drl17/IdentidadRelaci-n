-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2023 a las 04:11:49
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `identidadrelacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorías`
--

CREATE TABLE `categorías` (
  `ID_Categoría` int(11) NOT NULL,
  `Descripción` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `categorías`
--

INSERT INTO `categorías` (`ID_Categoría`, `Descripción`) VALUES
(22009, 'Electrodomésticos'),
(22010, 'Mercado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `ID_GrupoC` int(11) NOT NULL,
  `Nombre` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `ID_GrupoC`, `Nombre`) VALUES
(9901, 4456, 'Eliana'),
(9902, 4456, 'Maria'),
(9903, 4457, 'Juan'),
(9904, 4456, 'Erika'),
(9905, 4457, 'Enrique');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleordencompra`
--

CREATE TABLE `detalleordencompra` (
  `ID_OrdenC` int(11) NOT NULL,
  `ID_Producto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `detalleordencompra`
--

INSERT INTO `detalleordencompra` (`ID_OrdenC`, `ID_Producto`, `Cantidad`) VALUES
(55501, 88888, 1),
(55501, 88889, 2),
(55502, 88890, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `ID_Empleado` int(11) NOT NULL,
  `ID_Territorio` int(11) NOT NULL,
  `Nombre` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`ID_Empleado`, `ID_Territorio`, `Nombre`) VALUES
(1001, 3301, 'Ana'),
(1002, 3301, 'Pepe'),
(1003, 3301, 'Leo'),
(1004, 3304, 'Andrea'),
(1005, 3301, 'Abelardo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupoclientes`
--

CREATE TABLE `grupoclientes` (
  `ID_GrupoC` int(11) NOT NULL,
  `Descripción` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `grupoclientes`
--

INSERT INTO `grupoclientes` (`ID_GrupoC`, `Descripción`) VALUES
(4456, 'Clientes potenciales'),
(4457, 'Clientes fieles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordencompra`
--

CREATE TABLE `ordencompra` (
  `ID_OrdenC` int(11) NOT NULL,
  `ID_Empleado` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `ordencompra`
--

INSERT INTO `ordencompra` (`ID_OrdenC`, `ID_Empleado`, `ID_Cliente`) VALUES
(55501, 1003, 9901),
(55502, 1001, 9903);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Producto` int(11) NOT NULL,
  `ID_Proveedor` int(11) NOT NULL,
  `ID_Categoría` int(11) NOT NULL,
  `Nombre` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `Precio_Unitario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_Producto`, `ID_Proveedor`, `ID_Categoría`, `Nombre`, `Precio_Unitario`) VALUES
(88888, 1901, 22009, 'Televisor 50”', 2985000),
(88889, 1901, 22009, 'Computador', 2000000),
(88890, 1903, 22010, 'Pitaya 500 gr', 5500),
(88891, 1901, 22009, 'Smartphone X', 2100000),
(88892, 1902, 22010, 'Arroz bolsa 10 Kg', 33000),
(88893, 1902, 22010, 'Tallarines bolsa 500 gr', 3000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID_Proveedor` int(11) NOT NULL,
  `Nombre` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`ID_Proveedor`, `Nombre`) VALUES
(1901, 'Samsung'),
(1902, 'Agro Campo'),
(1903, 'Surtifruver');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `territorio`
--

CREATE TABLE `territorio` (
  `ID_Territorio` int(11) NOT NULL,
  `Descripción` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `territorio`
--

INSERT INTO `territorio` (`ID_Territorio`, `Descripción`) VALUES
(33001, 'Medellín'),
(33002, 'Bogotá'),
(33003, 'Cali'),
(33004, 'Cartagena');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorías`
--
ALTER TABLE `categorías`
  ADD PRIMARY KEY (`ID_Categoría`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`),
  ADD KEY `ID_GrupoC` (`ID_GrupoC`);

--
-- Indices de la tabla `detalleordencompra`
--
ALTER TABLE `detalleordencompra`
  ADD KEY `ID_OrdenC` (`ID_OrdenC`),
  ADD KEY `ID_Producto` (`ID_Producto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`ID_Empleado`),
  ADD KEY `ID_Territorio` (`ID_Territorio`);

--
-- Indices de la tabla `grupoclientes`
--
ALTER TABLE `grupoclientes`
  ADD PRIMARY KEY (`ID_GrupoC`);

--
-- Indices de la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD PRIMARY KEY (`ID_OrdenC`),
  ADD KEY `ID_Empleado` (`ID_Empleado`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Producto`),
  ADD KEY `ID_Proveedor` (`ID_Proveedor`),
  ADD KEY `ID_Categoría` (`ID_Categoría`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID_Proveedor`);

--
-- Indices de la tabla `territorio`
--
ALTER TABLE `territorio`
  ADD PRIMARY KEY (`ID_Territorio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`ID_GrupoC`) REFERENCES `grupoclientes` (`ID_GrupoC`);

--
-- Filtros para la tabla `detalleordencompra`
--
ALTER TABLE `detalleordencompra`
  ADD CONSTRAINT `detalleordencompra_ibfk_1` FOREIGN KEY (`ID_OrdenC`) REFERENCES `ordencompra` (`ID_OrdenC`),
  ADD CONSTRAINT `detalleordencompra_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`ID_Producto`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`ID_Territorio`) REFERENCES `territorio` (`ID_Territorio`);

--
-- Filtros para la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD CONSTRAINT `ordencompra_ibfk_1` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleados` (`ID_Empleado`),
  ADD CONSTRAINT `ordencompra_ibfk_2` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedores` (`ID_Proveedor`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`ID_Categoría`) REFERENCES `categorías` (`ID_Categoría`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
