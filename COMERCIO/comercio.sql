-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2019 a las 01:56:24
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comercio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `nombre`, `email`, `foto`, `password`, `perfil`, `estado`, `fecha`) VALUES
(3, 'edu', 'edu@gmail.com', 'vistas/img/perfiles/499.png', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'administrador', 1, '2019-05-13 16:32:47'),
(8, 'edu', 'djkd@jjd.com', 'vistas/img/perfiles/318.jpg', '$2a$07$asxx54ahjppf45sd87a5au0U0504m9wHCe9uk9d4gzu9EkT2Wm30C', 'administrador', 1, '2019-06-10 16:59:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `img` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `ruta`, `tipo`, `img`, `estado`, `fecha`) VALUES
(1, 'sin-categoria', 'sin-categoria', 'vistas/img/banner/default.jpg', 1, '2019-07-09 03:15:28'),
(3, 'calzado', 'categorias', 'vistas/img/banner/web.jpg', 1, '2019-06-05 05:34:05'),
(4, 'zapatillas', 'subcategorias', 'vistas/img/banner/ropaHombre.jpg', 1, '2019-06-10 16:58:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabeceras`
--

CREATE TABLE `cabeceras` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `palabrasClaves` text COLLATE utf8_spanish_ci NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cabeceras`
--

INSERT INTO `cabeceras` (`id`, `ruta`, `titulo`, `descripcion`, `palabrasClaves`, `portada`, `fecha`) VALUES
(1, 'inicio', 'Tienda Virtual', 'hola que tal realizando pruebas', 'preuba1,preuba2,preuea3, preuba5', 'vistas/img/cabeceras/default.jpg', '2019-04-17 17:10:51'),
(9, 'preuba12', 'preuba12', 'edjk', 'edu', 'vistas/img/cabeceras/default/default.jpg', '2019-04-24 15:42:19'),
(10, 'preuba12', 'preuba12', 'edjk', 'edu', 'vistas/img/cabeceras/default/default.jpg', '2019-04-24 15:42:43'),
(11, 'preuba12', 'preuba12', 'edjk', 'edu', 'vistas/img/cabeceras/default/default.jpg', '2019-04-24 15:43:16'),
(12, 'e', 'e', 's', 's', 'vistas/img/cabeceras/default/default.jpg', '2019-04-24 15:49:03'),
(13, 'e', 'e', 's', 's', 'vistas/img/cabeceras/default/default.jpg', '2019-04-24 15:49:17'),
(14, 'd', 'd', 'd', 'd', 'vistas/img/cabeceras/default/default.jpg', '2019-04-24 15:55:36'),
(15, 's', 's', 'ds', 's', 'vistas/img/cabeceras/default/default.jpg', '2019-04-24 16:05:33'),
(16, 's', 's', 'ds', 's', 'vistas/img/cabeceras/default/default.jpg', '2019-04-24 16:06:06'),
(17, 's', 's', 'ds', 's', 'vistas/img/cabeceras/default/default.jpg', '2019-04-24 16:06:14'),
(22, 'edu', 'edu', 'ss', 's', 'vistas/img/cabeceras/default/default.jpg', '2019-04-25 16:29:09'),
(23, 'edu', 'edu', 'ss', 's', 'vistas/img/cabeceras/default/default.jpg', '2019-04-25 16:29:32'),
(30, 'ppeppe', 'PPEPPE', 'EDUARDUISDDLSKLDKSLDKLSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 'DD', 'vistas/img/cabeceras/default/default.jpg', '2019-04-25 18:30:23'),
(31, 'producto-de-prueba', 'producto de prueba', 'este es un producto de prueba', 'prueba,prueba2,prueba3', 'vistas/img/cabeceras/default/default.jpg', '2019-04-26 15:40:21'),
(32, 'wwwwwwwww', 'wwwwwwwww', 'w', 'w', 'vistas/img/cabeceras/default/default.jpg', '2019-04-26 15:47:00'),
(35, 'sandalias', 'sandalias', 'es un buen producto', 'edu', 'vistas/img/cabeceras/sandalias.jpg', '2019-04-30 16:17:11'),
(36, 'Ropa-Dama', 'ROPA DAMA', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaq', 'lorem,lorem2,lorem3', 'vistas/img/cabeceras/default/default.jpg', '2019-05-01 03:11:06'),
(37, 'pantalones', 'Pantalones', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaq', 'lorem1,lorem2', 'vistas/img/cabeceras/default/default.jpg', '2019-05-01 02:58:04'),
(38, 'pantalon-negro', 'Pantalon negro', 'Sed ut perspiciatisptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni ', 'lorem1,lorem2', 'vistas/img/cabeceras/default/default.jpg', '2019-05-02 01:14:22'),
(44, 'jean-azul', 'jean azul', 'pantalon azul Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiu', 'pantalon', 'vistas/img/cabeceras/default/default.jpg', '2019-05-02 01:17:59'),
(45, 'casacas', 'casacas', 'pantalon azul Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusanti', 'lorem1,lorem2', 'vistas/img/cabeceras/default/default.jpg', '2019-05-02 14:06:58'),
(48, 'polos', 'polos', 'pantalon azul Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusanti', 'edu', 'vistas/img/cabeceras/default/default.jpg', '2019-05-02 14:19:31'),
(49, 'polo-rosa', 'polo rosa', 'pantalon azul Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusanti', 'edu', 'vistas/img/cabeceras/default/default.jpg', '2019-05-02 14:22:16'),
(50, 'vestidos', 'vestidos', 'lorem ipsio eeys shjs dsjdhsjhdjshs ds', 'edu', 'vistas/img/cabeceras/default/default.jpg', '2019-05-02 15:02:02'),
(51, 'vestido-amarillo', 'vestido amarillo', 'lorem ipsio eeys shjs dsjdhsjhdjshs ds', 'w', 'vistas/img/cabeceras/default/default.jpg', '2019-05-02 15:04:13'),
(54, 'calzado', 'CALZADO', 'LOREM', 'jwk', 'vistas/img/cabeceras/default/default.jpg', '2019-05-09 16:56:19'),
(55, 'zapatillas', 'zapatillas', 'jsj', 'js', 'vistas/img/cabeceras/default/default.jpg', '2019-05-02 15:42:35'),
(59, 'prueba2', 'PRUEBA2', 'PPJS', 'S', 'vistas/img/cabeceras/default/default.jpg', '2019-05-27 13:37:11'),
(60, 'prueba', 'prueba', 'orueba', 'prueba', 'vistas/img/cabeceras/default/default.jpg', '2019-06-11 03:21:02'),
(61, 'prueba', 'prueba', 'prueba', 'prueba', 'vistas/img/cabeceras/default/default.jpg', '2019-06-11 03:22:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `estado`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(5, 'ROPA DAMA', 'Ropa-Dama', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-06-07 15:09:16'),
(8, 'CALZADO', 'calzado', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-06-07 15:03:35'),
(9, 'PRUEBA', 'prueba', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-06-11 03:21:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `calificacion` float NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_usuario`, `id_producto`, `calificacion`, `comentario`, `fecha`) VALUES
(4, 20, 500, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus,', '2019-02-26 21:35:28'),
(6, 17, 500, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicin...\r\n', '2019-02-26 20:39:54'),
(7, 18, 500, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicin...\r\n', '2019-02-26 20:41:00'),
(8, 21, 500, 5, 'producto ok', '2019-03-14 17:24:50'),
(9, 20, 4, 0, '', '2019-03-14 05:44:58'),
(10, 20, 500, 0, '', '2019-03-14 16:32:31'),
(11, 20, 500, 0, '', '2019-03-14 16:34:27'),
(12, 20, 500, 0, '', '2019-03-14 16:35:17'),
(13, 20, 1, 0, '', '2019-03-14 16:38:00'),
(14, 21, 500, 0, '', '2019-03-14 17:24:40'),
(15, 21, 1, 0, '', '2019-03-14 17:27:45'),
(16, 21, 500, 0, '', '2019-03-21 14:45:32'),
(17, 21, 1, 0, '', '2019-03-21 14:54:29'),
(18, 20, 0, 0, '', '2019-03-21 17:01:35'),
(19, 20, 0, 0, '', '2019-03-21 17:04:08'),
(20, 20, 0, 0, '', '2019-03-21 17:21:24'),
(21, 20, 500, 0, '', '2019-03-21 17:24:38'),
(22, 20, 497, 0, '', '2019-03-21 17:25:24'),
(23, 21, 260, 0, '', '2019-03-28 22:33:51'),
(24, 21, 464, 0, '', '2019-04-14 01:23:19'),
(25, 21, 464, 0, '', '2019-04-14 14:07:55'),
(26, 21, 458, 0, '', '2019-04-17 13:09:11'),
(27, 21, 457, 0, '', '2019-04-17 13:10:01'),
(28, 21, 457, 0, '', '2019-04-17 13:10:18'),
(29, 21, 407, 0, '', '2019-04-17 13:12:07'),
(30, 21, 460, 0, '', '2019-04-17 13:59:58'),
(31, 21, 460, 0, '', '2019-04-17 14:08:16'),
(32, 21, 459, 0, '', '2019-04-17 14:59:43'),
(33, 25, 410, 5, 'excelevnte prodcjsmfdk dkjskdjkjdks dksjkdjskdj sdskdjskjdjskdjksjdkskdjksjkjdskjdksdsjdkjskjdksjkdskdjsjdsjjdsjkdksk', '2019-04-30 01:03:05'),
(34, 21, 482, 4, 'SSJKDSJDKSJ', '2019-07-08 20:52:49'),
(35, 21, 482, 0, '', '2019-05-04 15:23:45'),
(36, 25, 485, 0, '', '2019-05-04 15:43:37'),
(37, 1, 485, 0, '', '2019-05-04 15:50:01'),
(38, 21, 485, 5, 'LA ENTREGA FUE INMEDIATA Y EL PRODUCTO FUE DE BUENA CALIDAD MUCHAS GRACIAS BANGUI', '2019-05-08 14:46:14'),
(39, 21, 484, 4.5, 'bueno', '2019-05-09 16:42:26'),
(40, 21, 477, 5, 'buen producto sigue asi tienda bangui', '2019-08-17 03:28:19'),
(41, 21, 477, 0, '', '2019-05-10 15:11:56'),
(42, 21, 482, 0, '', '2019-05-10 15:14:30'),
(43, 21, 482, 0, '', '2019-05-10 15:19:41'),
(44, 21, 482, 0, '', '2019-05-11 01:02:37'),
(45, 21, 480, 0, '', '2019-05-11 01:02:37'),
(46, 21, 480, 0, '', '2019-05-22 01:18:31'),
(47, 21, 480, 0, '', '2019-05-22 03:44:57'),
(48, 20, 484, 4.5, 'buen producto', '2019-05-24 17:49:07'),
(49, 21, 477, 0, '', '2019-05-31 14:47:43'),
(50, 21, 480, 0, '', '2019-06-07 16:31:52'),
(51, 21, 479, 4, 'muy bueno', '2019-07-04 22:08:15'),
(52, 3, 479, 0, '', '2019-07-05 20:47:36'),
(53, 21, 482, 0, '', '2019-07-08 20:52:37'),
(54, 21, 480, 0, '', '2019-07-09 15:09:26'),
(55, 3, 484, 0, '', '2019-07-10 21:51:32'),
(56, 3, 474, 0, '', '2019-07-10 21:51:32'),
(57, 21, 474, 0, '', '2019-07-29 21:26:52'),
(58, 21, 480, 0, '', '2019-07-30 02:05:23'),
(59, 3, 480, 0, '', '2019-08-13 16:35:22'),
(60, 3, 477, 0, '', '2019-08-13 16:37:23'),
(61, 3, 477, 0, '', '2019-08-13 16:42:44'),
(62, 3, 480, 0, '', '2019-08-13 16:47:33'),
(63, 3, 480, 0, '', '2019-08-13 23:00:08'),
(64, 3, 480, 0, '', '2019-08-16 19:52:32'),
(65, 21, 480, 0, '', '2019-08-16 22:51:02'),
(66, 21, 482, 0, '', '2019-08-16 22:53:14'),
(67, 21, 482, 0, '', '2019-08-16 22:54:40'),
(68, 21, 482, 0, '', '2019-08-16 22:57:12'),
(69, 21, 482, 0, '', '2019-08-17 03:23:24'),
(70, 21, 482, 0, '', '2019-08-17 03:26:57'),
(71, 21, 477, 0, '', '2019-08-17 03:26:57'),
(72, 21, 482, 0, '', '2019-08-21 03:30:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id` int(11) NOT NULL,
  `impuesto` float NOT NULL,
  `envioNacional` float NOT NULL,
  `envioInternacional` float NOT NULL,
  `tasaMinimaNal` float NOT NULL,
  `tasaMinimaInt` float NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `clienteIdPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `llaveSecretaPaypal` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id`, `impuesto`, `envioNacional`, `envioInternacional`, `tasaMinimaNal`, `tasaMinimaInt`, `pais`, `modoPaypal`, `clienteIdPaypal`, `llaveSecretaPaypal`) VALUES
(1, 18, 1, 2, 10, 15, 'PE', 'sandbox', 'AaxzISBchyfiEWff_44u9CxOBKvV1HWU3X0fDguwOdOieWwrLyKXwSQ9inmGHCv_mxSjQjJnCwB5Ac35', 'EF8X5YK-rfv-IR77s1LsCKbi4CJQQ2QrFI0oBUFXWRwwoAIp6ZQTz9Ki8Mef1M6Q4zrOvcEFTqVFB3gK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `envio` int(11) NOT NULL,
  `metodo` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `detalle` text COLLATE utf8_spanish_ci NOT NULL,
  `pago` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_usuario`, `id_producto`, `envio`, `metodo`, `email`, `direccion`, `pais`, `cantidad`, `detalle`, `pago`, `fecha`) VALUES
(34, 21, 482, 0, 'paypal', 'ruieducassal-buyer@gmail.com', 'jiron jose diez canseco, lima, san  martin de porras, 01', 'PE', 9, '', 90, '2019-08-16 22:53:14'),
(35, 21, 482, 0, 'paypal', 'ruieducassal-buyer@gmail.com', 'jiron jose diez canseco, lima, san  martin de porras, 01', 'PE', 9, '', 90, '2019-08-16 22:54:39'),
(36, 21, 482, 0, 'paypal', 'ruieducassal-buyer@gmail.com', 'jiron jose diez canseco, lima, san  martin de porras, 01', 'PE', 9, '', 90, '2019-08-16 22:57:12'),
(37, 21, 482, 1, 'paypal', 'ruieducassal-buyer@gmail.com', 'jiron jose diez canseco, lima, san  martin de porras, 01', 'PE', 1, 'casaca amarilla-m-amarillo', 10, '2019-08-17 05:07:26'),
(38, 21, 482, 2, 'paypal', 'ruieducassal-buyer@gmail.com', 'jiron jose diez canseco, lima, san  martin de porras, 01', 'PE', 1, 'casaca amarilla-m-amarillo', 10, '2019-08-17 05:07:11'),
(39, 21, 477, 2, 'paypal', 'ruieducassal-buyer@gmail.com', 'jiron jose diez canseco, lima, san  martin de porras, 01', 'PE', 2, 'Jeans-xs-Negro-BANGUI', 87.84, '2019-08-17 05:06:12'),
(40, 21, 482, 0, 'paypal', 'ruieducassal-buyer@gmail.com', 'jiron jose diez canseco, lima, san  martin de porras, 01', 'PE', 1, 'casaca amarilla-m-amarillo', 10, '2019-08-21 03:30:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseos`
--

CREATE TABLE `deseos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `deseos`
--

INSERT INTO `deseos` (`id`, `id_usuario`, `id_producto`, `fecha`) VALUES
(15, 24, 3, '2019-02-28 19:33:10'),
(16, 24, 27, '2019-02-28 19:33:11'),
(18, 21, 498, '2019-03-21 14:52:58'),
(30, 25, 500, '2019-04-05 14:02:44'),
(31, 25, 500, '2019-04-05 14:04:47'),
(32, 25, 500, '2019-04-05 14:04:49'),
(33, 25, 497, '2019-04-05 14:04:54'),
(34, 25, 4, '2019-04-05 14:05:37'),
(35, 25, 4, '2019-04-05 14:05:59'),
(36, 25, 500, '2019-04-05 14:07:06'),
(37, 25, 470, '2019-04-06 22:02:47'),
(38, 25, 467, '2019-04-07 05:01:49'),
(39, 1, 470, '2019-04-23 16:55:48'),
(40, 21, 477, '2019-05-09 15:22:25'),
(41, 21, 483, '2019-05-16 15:48:33'),
(42, 21, 484, '2019-07-30 01:58:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `publicacion` text COLLATE utf8_spanish_ci NOT NULL,
  `publicacio2` text COLLATE utf8_spanish_ci NOT NULL,
  `publicacion3` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `publicacion`, `publicacio2`, `publicacion3`) VALUES
(1, '<blockquote class=\"instagram-media\" data-instgrm-permalink=\"https://www.instagram.com/p/Bn91tB2AbOa/?utm_source=ig_embed&amp;utm_medium=loading\" data-instgrm-version=\"12\" style=\" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);\"><div style=\"padding:16px;\"> <a href=\"https://www.instagram.com/p/Bn91tB2AbOa/?utm_source=ig_embed&amp;utm_medium=loading\" style=\" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;\" target=\"_blank\"> <div style=\" display: flex; flex-direction: row; align-items: center;\"> <div style=\"background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;\"></div> <div style=\"display: flex; flex-direction: column; flex-grow: 1; justify-content: center;\"> <div style=\" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;\"></div> <div style=\" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;\"></div></div></div><div style=\"padding: 19% 0;\"></div><div style=\"display:block; height:50px; margin:0 auto 12px; width:50px;\"><svg width=\"50px\" height=\"50px\" viewBox=\"0 0 60 60\" version=\"1.1\" xmlns=\"https://www.w3.org/2000/svg\" xmlns:xlink=\"https://www.w3.org/1999/xlink\"><g stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\"><g transform=\"translate(-511.000000, -20.000000)\" fill=\"#000000\"><g><path d=\"M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631\"></path></g></g></g></svg></div><div style=\"padding-top: 8px;\"> <div style=\" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;\"> Ver esta publicación en Instagram</div></div><div style=\"padding: 12.5% 0;\"></div> <div style=\"display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;\"><div> <div style=\"background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);\"></div> <div style=\"background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;\"></div> <div style=\"background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);\"></div></div><div style=\"margin-left: 8px;\"> <div style=\" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;\"></div> <div style=\" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)\"></div></div><div style=\"margin-left: auto;\"> <div style=\" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);\"></div> <div style=\" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);\"></div> <div style=\" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);\"></div></div></div> <div style=\"display: flex; flex-direction: column; flex-grow: 1; justify-content: center; margin-bottom: 24px;\"> <div style=\" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 224px;\"></div> <div style=\" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 144px;\"></div></div></a><p style=\" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;\"><a href=\"https://www.instagram.com/p/Bn91tB2AbOa/?utm_source=ig_embed&amp;utm_medium=loading\" style=\" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;\" target=\"_blank\">Una publicación compartida de Bangüi♡ (@bangui.peru)</a> el <time style=\" font-family:Arial,sans-serif; font-size:14px; line-height:17px;\" datetime=\"2018-09-20T23:23:33+00:00\">20 Sep, 2018 a las 4:23 PDT</time></p></div></blockquote> <script async src=\"//www.instagram.com/embed.js\"></script>', '<blockquote class=\"instagram-media\" data-instgrm-captioned data-instgrm-permalink=\"https://www.instagram.com/p/BZNMR5LgBxF/\" data-instgrm-version=\"12\" style=\" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);\"><div style=\"padding:16px;\"> <a href=\"https://www.instagram.com/p/BZNMR5LgBxF/\" style=\" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;\" target=\"_blank\"> <div style=\" display: flex; flex-direction: row; align-items: center;\"> <div style=\"background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;\"></div> <div style=\"display: flex; flex-direction: column; flex-grow: 1; justify-content: center;\"> <div style=\" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;\"></div> <div style=\" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;\"></div></div></div><div style=\"padding: 19% 0;\"></div> <div style=\"display:block; height:50px; margin:0 auto 12px; width:50px;\"><svg width=\"50px\" height=\"50px\" viewBox=\"0 0 60 60\" version=\"1.1\" xmlns=\"https://www.w3.org/2000/svg\" xmlns:xlink=\"https://www.w3.org/1999/xlink\"><g stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\"><g transform=\"translate(-511.000000, -20.000000)\" fill=\"#000000\"><g><path d=\"M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631\"></path></g></g></g></svg></div><div style=\"padding-top: 8px;\"> <div style=\" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;\"> Ver esta publicación en Instagram</div></div><div style=\"padding: 12.5% 0;\"></div> <div style=\"display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;\"><div> <div style=\"background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);\"></div> <div style=\"background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;\"></div> <div style=\"background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);\"></div></div><div style=\"margin-left: 8px;\"> <div style=\" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;\"></div> <div style=\" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)\"></div></div><div style=\"margin-left: auto;\"> <div style=\" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);\"></div> <div style=\" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);\"></div> <div style=\" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);\"></div></div></div></a> <p style=\" margin:8px 0 0 0; padding:0 4px;\"> <a href=\"https://www.instagram.com/p/BZNMR5LgBxF/\" style=\" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;\" target=\"_blank\">¡2 x s/60!⚠️ Friendly Oferta! ¡SE AGOTAN!?? ?Gamarra 939,Centro Comercial Damero,Gamarra Plaza/tienda 111 ?C.C. El Rey de Gamarra. Jr. Antonio bAzo #769 interior 6 ?Jiron Gamarra 1331, La Victoria.Centro Comercial ¨La 13 Avenue¨ local 203</a></p> <p style=\" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;\">Una publicación compartida de <a href=\"https://www.instagram.com/bangui.peru/\" style=\" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px;\" target=\"_blank\"> Bangüi♡</a> (@bangui.peru) el <time style=\" font-family:Arial,sans-serif; font-size:14px; line-height:17px;\" datetime=\"2017-09-19T02:38:32+00:00\">18 Sep, 2017 a las 7:38 PDT</time></p></div></blockquote> <script async src=\"//www.instagram.com/embed.js\"></script>', '<blockquote class=\"instagram-media\" data-instgrm-permalink=\"https://www.instagram.com/p/BfUt4tZAp7I/\" data-instgrm-version=\"12\" style=\" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);\"><div style=\"padding:16px;\"> <a href=\"https://www.instagram.com/p/BfUt4tZAp7I/\" style=\" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;\" target=\"_blank\"> <div style=\" display: flex; flex-direction: row; align-items: center;\"> <div style=\"background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;\"></div> <div style=\"display: flex; flex-direction: column; flex-grow: 1; justify-content: center;\"> <div style=\" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;\"></div> <div style=\" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;\"></div></div></div><div style=\"padding: 19% 0;\"></div> <div style=\"display:block; height:50px; margin:0 auto 12px; width:50px;\"></div><div style=\"padding-top: 8px;\"> <div style=\" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;\"> Ver esta publicación en Instagram</div></div><div style=\"padding: 12.5% 0;\"></div> <div style=\"display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;\"><div> <div style=\"background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);\"></div> <div style=\"background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;\"></div> <div style=\"background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);\"></div></div><div style=\"margin-left: 8px;\"> <div style=\" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;\"></div> <div style=\" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)\"></div></div><div style=\"margin-left: auto;\"> <div style=\" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);\"></div> <div style=\" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);\"></div> <div style=\" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);\"></div></div></div> <div style=\"display: flex; flex-direction: column; flex-grow: 1; justify-content: center; margin-bottom: 24px;\"> <div style=\" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 224px;\"></div> <div style=\" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 144px;\"></div></div></a><p style=\" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;\"><a href=\"https://www.instagram.com/p/BfUt4tZAp7I/\" style=\" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;\" target=\"_blank\">Una publicación compartida de Bangüi♡ (@bangui.peru)</a> el <time style=\" font-family:Arial,sans-serif; font-size:14px; line-height:17px;\" datetime=\"2018-02-18T03:55:14+00:00\">17 Feb, 2018 a las 7:55 PST</time></p></div></blockquote> ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `mensaje` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `nombre`, `email`, `mensaje`, `fecha`, `revision`) VALUES
(17, 'castillo', 'castillo@gmail.com', '', '2019-07-02 22:11:39', 1),
(18, 'eduardo', 'edu@gmail.com', '', '2019-07-05 15:36:37', 1),
(19, 'campos', 'camposherrera@gmail.com', '', '2019-07-09 09:10:00', 1),
(20, 'eduardfo', 'edu@gmail.com', '', '2019-07-09 09:51:42', 1),
(21, 'eva', 'eva@gmail.com', '', '2019-07-09 10:44:23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `apiFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `pixelFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `googleAnalytics` text COLLATE utf8_spanish_ci NOT NULL,
  `chatEnLinea` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `apiFacebook`, `pixelFacebook`, `googleAnalytics`, `chatEnLinea`, `fecha`) VALUES
(1, '#080606', '#ffffff', '#52ab98', '#f9f9f9', 'vistas/img/plantilla/logo.png', 'vistas/img/plantilla/icono.png', '[{\"red\":\"fa-facebook\",\"estilo\":\"facebookColor\",\"url\":\"http://facebook.com/\",\"activo\":1},{\"red\":\"fa-youtube\",\"estilo\":\"youtubeColor\",\"url\":\"http://facebook.com/\",\"activo\":1},{\"red\":\"fa-instagram\",\"estilo\":\"instagramColor\",\"url\":\"http://facebook.com/\",\"activo\":1},{\"red\":\"fa-whatsapp\",\"estilo\":\"whatsappColor\",\"url\":\"\",\"activo\":1}]', '\n      		\n<script>   window.fbAsyncInit = function() {     FB.init({       appId      : \'251897685747530\',       xfbml      : true,       version    : \'v3.2\'     });     FB.AppEvents.logPageView();   };    (function(d, s, id){      var js, fjs = d.getElementsByTagName(s)[0];      if (d.getElementById(id)) {return;}      js = d.createElement(s); js.id = id;      js.src = \"https://connect.facebook.net/en_US/sdk.js\";      fjs.parentNode.insertBefore(js, fjs);    }(document, \'script\', \'facebook-jssdk\'));    </script>', '\n  			\n  			\n  			<script>   !function(f,b,e,v,n,t,s)   {if(f.fbq)return;n=f.fbq=function(){n.callMethod?   n.callMethod.apply(n,arguments):n.queue.push(arguments)};   if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';   n.queue=[];t=b.createElement(e);t.async=!0;   t.src=v;s=b.getElementsByTagName(e)[0];   s.parentNode.insertBefore(t,s)}(window, document,\'script\',   \'https://connect.facebook.net/en_US/fbevents.js\');   fbq(\'init\', \'316365845705012\');   fbq(\'track\', \'PageView\'); </script> <noscript><img height=\"1\" width=\"1\" style=\"display:none\"   src=\"https://www.facebook.com/tr?id=316365845705012&ev=PageView&noscript=1\" /></noscript>    \n  			    \n  			    \n  			    \n  			    \n  			', '\n  			\n  			\n  			<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-136791962-1\"></script> <script>   window.dataLayer = window.dataLayer || [];   function gtag(){dataLayer.push(arguments);}   gtag(\'js\', new Date());    gtag(\'config\', \'UA-136791962-1\'); </script>      \n  			      \n  			      \n  			      \n  			      \n  			', '\n          \n          <!-- Smartsupp Live Chat script --> <script type=\"text/javascript\"> var _smartsupp = _smartsupp || {}; _smartsupp.key = \'b802fab381d65fc94b6a78661010ed7f63e25bd3\'; window.smartsupp||(function(d) {   var s,c,o=smartsupp=function(){ o._.push(arguments)};o._=[];   s=d.getElementsByTagName(\'script\')[0];c=d.createElement(\'script\');   c.type=\'text/javascript\';c.charset=\'utf-8\';c.async=true;   c.src=\'https://www.smartsuppchat.com/loader.js?\';s.parentNode.insertBefore(c,s); })(document); </script>\n          \n          ', '2019-08-21 23:49:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `portada2` text COLLATE utf8_spanish_ci NOT NULL,
  `vistas` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistasGratis` int(11) NOT NULL,
  `ventasGratis` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `ofertadoPorSubCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `nuevo` int(11) NOT NULL,
  `peso` float NOT NULL,
  `entrega` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `id_subcategoria`, `tipo`, `ruta`, `estado`, `titulo`, `titular`, `descripcion`, `multimedia`, `detalles`, `precio`, `portada`, `portada2`, `vistas`, `ventas`, `vistasGratis`, `ventasGratis`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `nuevo`, `peso`, `entrega`, `fecha`) VALUES
(474, 5, 28, 'fisico', 'pantalon-negro', 1, 'Pantalon negro', 'Sed ut perspiciatisptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni ...', 'Sed ut perspiciatisptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni ', '[{\"foto\":\"./vistas/img/multimedia/pantalon-negro/w8.jpg\"},{\"foto\":\"./vistas/img/multimedia/pantalon-negro/w3.jpg\"},{\"foto\":\"./vistas/img/multimedia/pantalon-negro/w1.jpg\"}]', '{\"Talla\":[\"s\",\"m\",\"xl\"],\"Color\":[\"rojo\",\"negro\",\"verde\"],\"Marca\":[]}', 55, 'vistas/img/productos/pantalon-negro.jpg', 'vistas/img/Portada2/pantalon-negro.jpg', 1, 10, 0, 0, 0, 1, 1, 33.55, 39, 'vistas/img/ofertas/pantalones.jpg', '2019-06-26 23:59:59', 0, 10, 5, '2019-05-01 03:08:01'),
(477, 5, 28, 'fisico', 'jeans', 1, 'Jeans', 'edu...', 'edu', '[{\"foto\":\"./vistas/img/multimedia/jeans/16405334_2.jpg\"},{\"foto\":\"./vistas/img/multimedia/jeans/16405334_3.jpg\"},{\"foto\":\"./vistas/img/multimedia/jeans/16405334_1.jpg\"},{\"foto\":\"./vistas/img/multimedia/jeans/16405334_4.jpg\"}]', '{\"Talla\":[\"xs\",\"s\",\"m\",\"l\",\"xl\"],\"Color\":[\"Verde\",\"Negro\",\"Blanco\",\"Mostaza\"],\"Marca\":[\"BANGUI\"]}', 72, 'vistas/img/productos/jeans.jpg', 'vistas/img/Portada2/jeans.jpg', 19, 7, 0, 0, 0, 1, 1, 43.92, 39, 'vistas/img/ofertas/pantalones.jpg', '2019-06-26 23:59:59', 0, 1, 5, '2019-05-02 00:53:29'),
(479, 5, 28, 'fisico', 'jean-negro', 1, 'Jean Negro', 's...', 's', '[{\"foto\":\"./vistas/img/multimedia/jean-negro/881447985_3.jpg\"},{\"foto\":\"./vistas/img/multimedia/jean-negro/880884514_1.jpg\"},{\"foto\":\"./vistas/img/multimedia/jean-negro/880884514_2.jpg\"},{\"foto\":\"./vistas/img/multimedia/jean-negro/880884514_5.jpg\"},{\"foto\":\"./vistas/img/multimedia/jean-negro/880884514_3.jpg\"},{\"foto\":\"./vistas/img/multimedia/jean-negro/880884514_4.jpg\"}]', '{\"Talla\":[\"xs\",\"s\",\"m\",\"l\",\"xl\"],\"Color\":[\"Negro\",\"Verde\",\"Blanco\",\"Mostaza\"],\"Marca\":[\"BANGUI\"]}', 80, 'vistas/img/productos/jean-negro.jpg', 'vistas/img/Portada2/jean-negro.jpg', 4, 2, 0, 0, 0, 1, 1, 48.8, 39, 'vistas/img/ofertas/pantalones.jpg', '2019-06-26 23:59:59', 0, 1, 5, '2019-05-02 01:00:46'),
(480, 5, 28, 'fisico', 'jean-azul', 1, 'jean azul', 'pantalon azul Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiu...', 'pantalon azul Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiu', '[{\"foto\":\"./vistas/img/multimedia/jean-azul/880884520_2.jpg\"},{\"foto\":\"./vistas/img/multimedia/jean-azul/880884520_1.jpg\"},{\"foto\":\"./vistas/img/multimedia/jean-azul/880884520_5.jpg\"},{\"foto\":\"./vistas/img/multimedia/jean-azul/880884520_3.jpg\"},{\"foto\":\"./vistas/img/multimedia/jean-azul/880884520_4.jpg\"}]', '{\"Talla\":[\"28\",\"30\",\"32\",\"34\"],\"Color\":[\"azul\"],\"Marca\":[\"banui\"]}', 85, 'vistas/img/productos/jean-azul.jpg', 'vistas/img/Portada2/jean-azul.jpg', 55, 17, 0, 0, 0, 1, 1, 51.85, 39, 'vistas/img/ofertas/pantalones.jpg', '2019-06-26 23:59:59', 0, 1, 5, '2019-05-02 01:07:02'),
(482, 5, 29, 'fisico', 'casaca-amarilla', 1, 'casaca amarilla', 'ss...', 'ss', '[{\"foto\":\"./vistas/img/multimedia/casaca-amarilla/881448688_1.jpg\"},{\"foto\":\"./vistas/img/multimedia/casaca-amarilla/881448688_3.jpg\"},{\"foto\":\"./vistas/img/multimedia/casaca-amarilla/881448688_2.jpg\"},{\"foto\":\"./vistas/img/multimedia/casaca-amarilla/881448688_4.jpg\"},{\"foto\":\"./vistas/img/multimedia/casaca-amarilla/881448688_5.jpg\"}]', '{\"Talla\":[\"s\",\"m\",\"l\",\"xl\",\"xs\"],\"Color\":[\"amarillo\"],\"Marca\":[]}', 54, 'vistas/img/productos/casaca-amarilla.jpg', 'vistas/img/Portada2/casaca-amarilla.jpg', 47, 36, 0, 0, 0, 0, 1, 10, 82, 'vistas/img/ofertas/casaca-amarilla.jpg', '2019-07-18 23:59:59', 0, 1, 4, '2019-05-02 14:11:43'),
(483, 5, 30, 'fisico', 'polo-rosa', 1, 'polo rosa', 'pantalon azul Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusanti...', 'pantalon azul Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusanti', '[{\"foto\":\"./vistas/img/multimedia/polo-rosa/881450104_1.jpg\"},{\"foto\":\"./vistas/img/multimedia/polo-rosa/881450104_4.jpg\"},{\"foto\":\"./vistas/img/multimedia/polo-rosa/881450104_2.jpg\"},{\"foto\":\"./vistas/img/multimedia/polo-rosa/881450104_3.jpg\"}]', '{\"Talla\":[],\"Color\":[],\"Marca\":[]}', 10, 'vistas/img/productos/polo-rosa.jpg', 'vistas/img/Portada2/polo-rosa.jpg', 5, 0, 0, 0, 0, 1, 1, 10, 0, 'vistas/img/ofertas/polos.jpg', '0000-00-00 00:00:00', 0, 1, 2, '2019-05-02 14:22:16'),
(484, 5, 31, 'fisico', 'vestido-amarillo', 1, 'vestido amarillo', 'lorem ipsio eeys shjs dsjdhsjhdjshs ds...', 'lorem ipsio eeys shjs dsjdhsjhdjshs ds', '[{\"foto\":\"./vistas/img/multimedia/vestido-amarillo/16640104_1.jpg\"},{\"foto\":\"./vistas/img/multimedia/vestido-amarillo/16553101_1.jpg\"},{\"foto\":\"./vistas/img/multimedia/vestido-amarillo/16553101_2.jpg\"},{\"foto\":\"./vistas/img/multimedia/vestido-amarillo/16640104_4.jpg\"},{\"foto\":\"./vistas/img/multimedia/vestido-amarillo/16640104_2.jpg\"},{\"foto\":\"./vistas/img/multimedia/vestido-amarillo/16640104_3.jpg\"}]', '{\"Talla\":[\"s\"],\"Color\":[\"amarillo\"],\"Marca\":[]}', 10, 'vistas/img/productos/vestido-amarillo.jpg', 'vistas/img/Portada2/vestido-amarillo.jpg', 10, 4, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 0, 1, 5, '2019-05-02 15:04:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `orden` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `nombre`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `orden`, `fecha`) VALUES
(25, '', 'vistas/img/slide/slide25/fondo.png', 'slideOpcion1', 'vistas/img/slide/slide25/producto.png', '{\"top\":\"5\",\"right\":\"5\",\"left\":\"\",\"width\":\"0\"}', '{\"top\":\"45\",\"right\":\"\",\"left\":\"20\",\"width\":\"15\"}', '{\"texto\":\"\",\"color\":\"#333\"}', '{\"texto\":\"\",\"color\":\"#777\"}', '{\"texto\":\"\",\"color\":\"#888\"}', '', '#', 2, '2019-07-09 07:45:02'),
(26, '', 'vistas/img/slide/slide26/fondo.jpg', 'slideOpcion1', 'vistas/img/slide/slide26/producto.png', '{\"top\":\"5\",\"right\":\"5\",\"left\":\"\",\"width\":\"0\"}', '{\"top\":\"20\",\"right\":\"\",\"left\":\"15\",\"width\":\"40\"}', '{\"texto\":\"\",\"color\":\"#333\"}', '{\"texto\":\"\",\"color\":\"#777777\"}', '{\"texto\":\"\",\"color\":\"#888\"}', '', '#', 3, '2019-07-09 06:35:27'),
(27, '', 'vistas/img/slide/slide27/fondo.jpg', 'slideOpcion1', 'vistas/img/slide/slide27/producto.png', '{\"top\":\"5\",\"right\":\"5\",\"left\":\"\",\"width\":\"0\"}', '{\"top\":\"10\",\"right\":\"\",\"left\":\"15\",\"width\":\"40\"}', '{\"texto\":\"\",\"color\":\"#333\"}', '{\"texto\":\"\",\"color\":\"#777\"}', '{\"texto\":\"\",\"color\":\"#888\"}', 'VER PRODUCTO', '#', 1, '2019-07-09 07:45:02'),
(28, '', 'vistas/img/slide/slide28/fondo.png', 'slideOpcion1', '', '{\"top\":\"\",\"right\":\"\",\"left\":\"\",\"width\":\"\"}', '{\"top\":\"20\",\"right\":\"\",\"left\":\"15\",\"width\":\"40\"}', '{\"texto\":\"\",\"color\":\"#333\"}', '{\"texto\":\"\",\"color\":\"#777\"}', '{\"texto\":\"\",\"color\":\"#888\"}', '', '#', 4, '2019-07-09 07:45:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slidedistribuidor`
--

CREATE TABLE `slidedistribuidor` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slidedistribuidor`
--

INSERT INTO `slidedistribuidor` (`id`, `ruta`, `titulo`, `descripcion`, `orden`) VALUES
(64, '../vistas/img/slidedistribuidor/slide791.jpg', '', '', 0),
(65, '../vistas/img/slidedistribuidor/slide499.jpg', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `subimg` text COLLATE utf8_spanish_ci NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `estado`, `subimg`, `ofertadoPorCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(28, 'Pantalones', 5, 'pantalones', 1, 'vistas/img/menu/pantalones.jpg', 0, 1, 0, 39, 'vistas/img/ofertas/pantalones.jpg', '2019-06-26 23:59:59', '2019-07-09 08:04:16'),
(29, 'casacas', 5, 'casacas', 1, 'vistas/img/menu/casacas.png', 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-06-07 15:09:15'),
(30, 'polos', 5, 'polos', 1, 'vistas/img/menu/polos.jpg', 0, 1, 29.9, 0, 'vistas/img/ofertas/polos.jpg', '2019-07-31 23:59:59', '2019-07-09 08:06:11'),
(31, 'vestidos', 5, 'vestidos', 1, 'vistas/img/menu/vestidos.jpg', 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-06-07 15:09:15'),
(32, 'zapatillas', 8, 'zapatillas', 1, 'vistas/img/menu/zapatilla-rosa.jpg', 0, 1, 0, 50, 'vistas/img/ofertas/zapatillas.jpg', '2019-07-20 23:59:59', '2019-07-09 05:27:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptores`
--

CREATE TABLE `suscriptores` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `suscriptores`
--

INSERT INTO `suscriptores` (`id`, `nombre`, `email`, `revision`) VALUES
(37, 'castillo', 'castillo@gmail.com', 1),
(39, 'campos', 'camposherrera@gmail.com', 1),
(40, 'eduardfo', 'edu@gmail.com', 1),
(41, 'eva', 'eva@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `modo` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `verificacion` int(11) NOT NULL,
  `emailEncriptado` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `email`, `modo`, `foto`, `verificacion`, `emailEncriptado`, `fecha`) VALUES
(17, 'edu', '$2a$07$asxx54ahjppf45sd87a5aue0LKug/2Za9XJtlBkxI8mcV1Sd1Df8K', 'edu@gmail.com', 'directo', '', 0, '5263346a7acbf6b65c17f41e4d2336e6', '2019-02-21 21:12:18'),
(18, 'edue', '$2a$07$asxx54ahjppf45sd87a5aumtXZE2EWqTFdWmtKhPP2a2tlX4zJhNi', 'edu@gmail.com', 'directo', '', 0, '5263346a7acbf6b65c17f41e4d2336e6', '2019-02-26 20:40:35'),
(20, 'Bangui Bangui', 'null', 'castillo2000edu@gmail.com', 'facebook', 'http://graph.facebook.com/141059546924506/picture?type=large', 0, 'null', '2019-02-21 21:46:50'),
(21, 'AplicacionesPro', 'null', 'ruieducassal@gmail.com', 'google', 'https://lh6.googleusercontent.com/-cIvUqsG0O5o/AAAAAAAAAAI/AAAAAAAADKo/-jjcFlkcN8Y/s96-c/photo.jpg', 0, 'null', '2019-02-22 20:17:52'),
(22, 'RUITOR', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'ruieducassal@hotmail.com', 'directo', '', 0, 'a8f9a851b5955b3b391734001383438d', '2019-05-07 04:40:47'),
(24, 'eduardo', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'ruieducassal@hotmail4.com', 'directo', 'vistas/img/usuarios/24/388.jpg', 0, 'd2bd621f5dd0c261d5d07b192f0b689c', '2019-02-28 19:37:06'),
(25, 'eduardo', '$2a$07$asxx54ahjppf45sd87a5au3AQuLQHJLTpaYeauax2W9DjW9JGWB/G', 'eva@gmail.com', 'directo', 'vistas/img/usuarios/25/262.png', 0, '1dddf864b183d010ba5280a462478168', '2019-06-20 17:15:49'),
(26, 'campos', '$2a$07$asxx54ahjppf45sd87a5au3AQuLQHJLTpaYeauax2W9DjW9JGWB/G', 'campos@gmail.com', 'directo', '', 0, 'f96a221131b933c158c58225176c5734', '2019-04-04 22:53:39'),
(27, 'castillo', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'castillo@gmail.com', 'directo', '', 1, '2e35f3b1f6800d14e1f235b49dd6cee8', '2019-05-28 15:05:44'),
(28, 'castillo', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'castillo@gmail.com', 'directo', '', 0, '2e35f3b1f6800d14e1f235b49dd6cee8', '2019-05-28 15:06:59'),
(29, 'eva', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'eva1@gmail.com', 'directo', '', 0, 'b99450f17c79fa23b60481f7b850972f', '2019-05-28 15:12:19'),
(30, 'eva', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'eva1@gmail.com', 'directo', '', 0, 'b99450f17c79fa23b60481f7b850972f', '2019-05-28 15:10:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspaises`
--

CREATE TABLE `visitaspaises` (
  `id` int(11) NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspaises`
--

INSERT INTO `visitaspaises` (`id`, `pais`, `codigo`, `cantidad`, `fecha`) VALUES
(6, 'United States', 'US', 1, '2019-05-06 14:53:05'),
(7, 'Peru', 'PE', 5, '2019-05-07 15:48:10'),
(8, 'Unknown', 'UN', 29, '2019-08-20 04:52:45'),
(9, 'Kazakhstan', 'KA', 1, '2019-06-07 14:29:57'),
(10, 'China', 'CH', 8, '2019-06-07 14:30:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspersonas`
--

CREATE TABLE `visitaspersonas` (
  `id` int(11) NOT NULL,
  `ip` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `visitas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspersonas`
--

INSERT INTO `visitaspersonas` (`id`, `ip`, `pais`, `visitas`, `fecha`) VALUES
(30, '167.136.105.196', 'United States', 1, '2019-05-06 14:45:10'),
(31, '153.205.198.22', 'Peru', 5, '2019-05-07 15:48:30'),
(32, '45.159.192.237', 'Unknown', 1, '2019-05-06 14:59:39'),
(33, '45.159.192.237', 'Unknown', 1, '2019-05-08 01:45:44'),
(34, '45.159.192.237', 'Unknown', 1, '2019-05-08 13:52:08'),
(35, '45.159.192.237', 'Unknown', 1, '2019-05-09 15:10:20'),
(36, '45.159.192.237', 'Unknown', 1, '2019-05-10 14:57:06'),
(37, '45.159.192.237', 'Unknown', 1, '2019-05-11 15:50:23'),
(38, '45.159.192.237', 'Unknown', 1, '2019-05-12 15:34:03'),
(39, '45.159.192.237', 'Unknown', 1, '2019-05-13 17:12:21'),
(40, '45.159.192.237', 'Unknown', 1, '2019-05-14 15:41:24'),
(41, '45.159.192.237', 'Unknown', 1, '2019-05-15 14:48:47'),
(42, '45.159.192.237', 'Unknown', 1, '2019-05-16 15:13:44'),
(43, '45.159.192.237', 'Unknown', 1, '2019-05-17 13:23:04'),
(44, '45.159.192.237', 'Unknown', 1, '2019-05-22 01:15:32'),
(45, '45.159.192.237', 'Unknown', 1, '2019-05-22 15:53:48'),
(46, '181.49.24.126, 8081', 'Unknown', 1, '2019-05-22 17:30:43'),
(47, '81.17.165.175', 'Kazakhstan', 1, '2019-05-22 17:31:36'),
(48, '17.80.198.6', 'China', 1, '2019-05-22 17:33:23'),
(49, '17.80.198.6', 'China', 1, '2019-05-23 05:00:08'),
(50, '45.159.192.237', 'Unknown', 1, '2019-05-23 15:06:13'),
(51, '17.80.198.6', 'China', 1, '2019-05-24 13:23:39'),
(52, '45.159.192.237', 'Unknown', 1, '2019-05-24 16:46:40'),
(53, '17.80.198.6', 'Unknown', 1, '2019-05-26 04:39:30'),
(54, '17.80.198.6', 'China', 1, '2019-05-26 05:00:54'),
(55, '17.80.198.6', 'Unknown', 1, '2019-05-27 12:56:57'),
(56, '45.159.192.237', 'Unknown', 1, '2019-05-27 16:29:11'),
(57, '17.80.198.6', 'China', 1, '2019-05-28 15:04:22'),
(58, '45.159.192.237', 'Unknown', 1, '2019-05-28 15:32:07'),
(59, '45.159.192.237', 'Unknown', 1, '2019-05-31 14:07:11'),
(60, '17.80.198.6', 'China', 1, '2019-05-31 14:07:55'),
(61, '17.80.198.6', 'China', 1, '2019-06-01 23:23:00'),
(62, '17.80.198.6', 'China', 1, '2019-06-03 14:00:15'),
(63, '45.159.192.237', 'Unknown', 1, '2019-06-05 04:40:58'),
(64, '45.159.192.237', 'Unknown', 1, '2019-06-05 06:11:11'),
(65, '45.159.192.237', 'Unknown', 1, '2019-06-06 16:14:32'),
(66, '45.159.192.237', 'Unknown', 1, '2019-06-07 14:24:33'),
(67, '45.159.192.237', 'Unknown', 1, '2019-06-09 23:53:41'),
(68, '45.159.192.237', 'Unknown', 1, '2019-08-13 16:15:03'),
(69, '45.159.192.237', 'Unknown', 1, '2019-08-20 04:52:45');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deseos`
--
ALTER TABLE `deseos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slidedistribuidor`
--
ALTER TABLE `slidedistribuidor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `deseos`
--
ALTER TABLE `deseos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=485;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `slidedistribuidor`
--
ALTER TABLE `slidedistribuidor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
