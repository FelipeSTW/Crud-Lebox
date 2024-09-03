-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para virtualschool
CREATE DATABASE IF NOT EXISTS `laravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravel`;

-- Volcando estructura para tabla virtualschool.composicion_cursos
CREATE TABLE IF NOT EXISTS `composicion_cursos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `año` year NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `curso_id` bigint unsigned NOT NULL,
  `fk_curso_asignatura` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_curso_idx` (`curso_id`),
  KEY `fk_userCom_idx` (`user_id`),
  KEY `composicion_cursos_FK` (`fk_curso_asignatura`),
  CONSTRAINT `composicion_cursos_FK` FOREIGN KEY (`fk_curso_asignatura`) REFERENCES `asignaturas` (`id`),
  CONSTRAINT `fk_curso` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  CONSTRAINT `fk_userCom` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.composicion_cursos: ~159 rows (aproximadamente)
INSERT IGNORE INTO `composicion_cursos` (`id`, `año`, `user_id`, `curso_id`, `fk_curso_asignatura`) VALUES
	(1, '2023', 14, 2, 2),
	(2, '2023', 14, 2, 16),
	(3, '2023', 16, 2, 16),
	(4, '2023', 17, 3, 16),
	(5, '2023', 18, 1, 16),
	(7, '2023', 21, 20, 2),
	(8, '2023', 21, 20, 3),
	(9, '2023', 21, 20, 4),
	(10, '2023', 21, 20, 6),
	(11, '2023', 21, 20, 9),
	(12, '2023', 21, 20, 11),
	(13, '2023', 21, 20, 12),
	(14, '2023', 21, 20, 13),
	(15, '2023', 21, 20, 14),
	(16, '2023', 21, 20, 15),
	(17, '2023', 21, 20, 16),
	(18, '2023', 22, 1, 2),
	(19, '2023', 22, 1, 3),
	(20, '2023', 22, 1, 4),
	(21, '2023', 22, 1, 6),
	(22, '2023', 22, 1, 9),
	(23, '2023', 22, 1, 11),
	(24, '2023', 22, 1, 12),
	(25, '2023', 22, 1, 13),
	(26, '2023', 22, 1, 14),
	(27, '2023', 22, 1, 15),
	(28, '2023', 22, 1, 16),
	(29, '2023', 24, 1, 2),
	(30, '2023', 24, 1, 3),
	(31, '2023', 24, 1, 4),
	(32, '2023', 24, 1, 6),
	(33, '2023', 24, 1, 9),
	(34, '2023', 24, 1, 11),
	(35, '2023', 24, 1, 12),
	(36, '2023', 24, 1, 13),
	(37, '2023', 24, 1, 14),
	(38, '2023', 24, 1, 15),
	(39, '2023', 24, 1, 16),
	(40, '2023', 25, 1, 2),
	(41, '2023', 25, 1, 3),
	(42, '2023', 25, 1, 4),
	(43, '2023', 25, 1, 6),
	(44, '2023', 25, 1, 9),
	(45, '2023', 25, 1, 11),
	(46, '2023', 25, 1, 12),
	(47, '2023', 25, 1, 13),
	(48, '2023', 25, 1, 14),
	(49, '2023', 25, 1, 15),
	(50, '2023', 25, 1, 16),
	(51, '2023', 26, 1, 2),
	(52, '2023', 26, 1, 3),
	(53, '2023', 26, 1, 4),
	(54, '2023', 26, 1, 6),
	(55, '2023', 26, 1, 9),
	(56, '2023', 26, 1, 11),
	(57, '2023', 26, 1, 12),
	(58, '2023', 26, 1, 13),
	(59, '2023', 26, 1, 14),
	(60, '2023', 26, 1, 15),
	(61, '2023', 26, 1, 16),
	(62, '2023', 27, 1, 2),
	(63, '2023', 27, 1, 3),
	(64, '2023', 27, 1, 4),
	(65, '2023', 27, 1, 6),
	(66, '2023', 27, 1, 9),
	(67, '2023', 27, 1, 11),
	(68, '2023', 27, 1, 12),
	(69, '2023', 27, 1, 13),
	(70, '2023', 27, 1, 14),
	(71, '2023', 27, 1, 15),
	(72, '2023', 27, 1, 16),
	(73, '2023', 28, 1, 2),
	(74, '2023', 28, 1, 3),
	(75, '2023', 28, 1, 4),
	(76, '2023', 28, 1, 6),
	(77, '2023', 28, 1, 9),
	(78, '2023', 28, 1, 11),
	(79, '2023', 28, 1, 12),
	(80, '2023', 28, 1, 13),
	(81, '2023', 28, 1, 14),
	(82, '2023', 28, 1, 15),
	(83, '2023', 28, 1, 16),
	(84, '2023', 29, 1, 2),
	(85, '2023', 29, 1, 3),
	(86, '2023', 29, 1, 4),
	(87, '2023', 29, 1, 6),
	(88, '2023', 29, 1, 9),
	(89, '2023', 29, 1, 11),
	(90, '2023', 29, 1, 12),
	(91, '2023', 29, 1, 13),
	(92, '2023', 29, 1, 14),
	(93, '2023', 29, 1, 15),
	(94, '2023', 29, 1, 16),
	(95, '2023', 30, 1, 2),
	(96, '2023', 30, 1, 3),
	(97, '2023', 30, 1, 4),
	(98, '2023', 30, 1, 6),
	(99, '2023', 30, 1, 9),
	(100, '2023', 30, 1, 11),
	(101, '2023', 30, 1, 12),
	(102, '2023', 30, 1, 13),
	(103, '2023', 30, 1, 14),
	(104, '2023', 30, 1, 15),
	(105, '2023', 30, 1, 16),
	(106, '2023', 31, 2, 2),
	(107, '2023', 31, 2, 3),
	(108, '2023', 31, 2, 4),
	(109, '2023', 31, 2, 6),
	(110, '2023', 31, 2, 9),
	(111, '2023', 31, 2, 11),
	(112, '2023', 31, 2, 12),
	(113, '2023', 31, 2, 13),
	(114, '2023', 31, 2, 14),
	(115, '2023', 31, 2, 15),
	(116, '2023', 31, 2, 16),
	(117, '2023', 32, 2, 2),
	(118, '2023', 32, 2, 3),
	(119, '2023', 32, 2, 4),
	(120, '2023', 32, 2, 6),
	(121, '2023', 32, 2, 9),
	(122, '2023', 32, 2, 11),
	(123, '2023', 32, 2, 12),
	(124, '2023', 32, 2, 13),
	(125, '2023', 32, 2, 14),
	(126, '2023', 32, 2, 15),
	(127, '2023', 32, 2, 16),
	(128, '2024', 33, 1, 2),
	(129, '2024', 33, 1, 3),
	(130, '2024', 33, 1, 4),
	(131, '2024', 33, 1, 6),
	(132, '2024', 33, 1, 9),
	(133, '2024', 33, 1, 11),
	(134, '2024', 33, 1, 12),
	(135, '2024', 33, 1, 13),
	(136, '2024', 33, 1, 14),
	(137, '2024', 33, 1, 15),
	(138, '2024', 33, 1, 16),
	(139, '2024', 34, 13, 2),
	(140, '2024', 34, 13, 3),
	(141, '2024', 34, 13, 4),
	(142, '2024', 34, 13, 6),
	(143, '2024', 34, 13, 9),
	(144, '2024', 34, 13, 11),
	(145, '2024', 34, 13, 12),
	(146, '2024', 34, 13, 13),
	(147, '2024', 34, 13, 14),
	(148, '2024', 34, 13, 15),
	(149, '2024', 34, 13, 16),
	(150, '2024', 35, 1, 2),
	(151, '2024', 35, 1, 3),
	(152, '2024', 35, 1, 4),
	(153, '2024', 35, 1, 6),
	(154, '2024', 35, 1, 9),
	(155, '2024', 35, 1, 11),
	(156, '2024', 35, 1, 12),
	(157, '2024', 35, 1, 13),
	(158, '2024', 35, 1, 14),
	(159, '2024', 35, 1, 15),
	(160, '2024', 35, 1, 16);

-- Volcando estructura para tabla virtualschool.comunas
CREATE TABLE IF NOT EXISTS `comunas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_comuna` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.comunas: ~20 rows (aproximadamente)
INSERT IGNORE INTO `comunas` (`id`, `nombre_comuna`) VALUES
	(1, 'SANTIAGO'),
	(2, 'PROVIDENCIA'),
	(3, 'LAS CONDES'),
	(4, 'LA REINA'),
	(5, 'ÑUÑOA'),
	(6, 'MACUL'),
	(7, 'LA FLORIDA'),
	(8, 'MAIPÚ'),
	(9, 'QUINTA NORMAL'),
	(10, 'ESTACIÓN CENTRAL'),
	(11, 'INDEPENDENCIA'),
	(12, 'CONCHALÍ'),
	(13, 'RENCA'),
	(14, 'HUECHURABA'),
	(15, 'RECOLETA'),
	(16, 'CERRO NAVIA'),
	(17, 'LO PRADO'),
	(18, 'PUDAHUEL'),
	(19, 'PEÑALOLÉN'),
	(20, 'CERRILLOS');

-- Volcando estructura para tabla virtualschool.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.cursos: ~24 rows (aproximadamente)
INSERT IGNORE INTO `cursos` (`id`, `nombre_curso`) VALUES
	(1, 'PRIMERO BÁSICO A'),
	(2, 'PRIMERO BÁSICO B'),
	(3, 'SEGUNDO BÁSICO A'),
	(4, 'SEGUNDO BÁSICO B'),
	(5, 'TERCERO BÁSICO A'),
	(6, 'TERCERO BÁSICO B'),
	(7, 'CUARTO BÁSICO A'),
	(8, 'CUARTO BÁSICO B'),
	(9, 'QUINTO BÁSICO A'),
	(10, 'QUINTO BÁSICO B'),
	(11, 'SEXTO BÁSICO A'),
	(12, 'SEXTO BÁSICO B'),
	(13, 'SÉPTIMO BÁSICO A'),
	(14, 'SÉPTIMO BÁSICO B'),
	(15, 'OCTAVO BÁSICO A'),
	(16, 'OCTAVO BÁSICO  B'),
	(17, 'PRIMERO MEDIO A'),
	(18, 'PRIMERO MEDIO B'),
	(19, 'SEGUNDO MEDIO A'),
	(20, 'SEGUNDO MEDIO B'),
	(21, 'TERCERO MEDIO A'),
	(22, 'TERCERO MEDIO B'),
	(23, 'CUARTO MEDIO A'),
	(24, 'CUARTO MEDIO B');

-- Volcando estructura para tabla virtualschool.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.migrations: ~0 rows (aproximadamente)

-- Volcando estructura para tabla virtualschool.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.model_has_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla virtualschool.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.model_has_roles: ~22 rows (aproximadamente)
INSERT IGNORE INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(36, 'App\\Models\\User', 11),
	(37, 'App\\Models\\User', 12),
	(39, 'App\\Models\\User', 13),
	(41, 'App\\Models\\User', 14),
	(38, 'App\\Models\\User', 15),
	(41, 'App\\Models\\User', 16),
	(41, 'App\\Models\\User', 17),
	(41, 'App\\Models\\User', 18),
	(41, 'App\\Models\\User', 19),
	(41, 'App\\Models\\User', 20),
	(41, 'App\\Models\\User', 21),
	(41, 'App\\Models\\User', 22),
	(41, 'App\\Models\\User', 23),
	(41, 'App\\Models\\User', 24),
	(41, 'App\\Models\\User', 25),
	(41, 'App\\Models\\User', 26),
	(41, 'App\\Models\\User', 27),
	(41, 'App\\Models\\User', 28),
	(41, 'App\\Models\\User', 29),
	(41, 'App\\Models\\User', 30),
	(41, 'App\\Models\\User', 31),
	(41, 'App\\Models\\User', 32),
	(41, 'App\\Models\\User', 33),
	(41, 'App\\Models\\User', 34),
	(41, 'App\\Models\\User', 35);

-- Volcando estructura para tabla virtualschool.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.password_reset_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla virtualschool.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.permissions: ~3 rows (aproximadamente)
INSERT IGNORE INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(13, 'editar usuarios', 'web', '2023-10-28 16:32:27', '2023-10-28 16:32:27'),
	(14, 'mantenedores', 'web', '2023-10-28 16:32:28', '2023-10-28 16:32:28'),
	(15, 'crear encuesta', 'web', '2023-10-28 16:32:28', '2023-10-28 16:32:28');

-- Volcando estructura para tabla virtualschool.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.personal_access_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla virtualschool.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.roles: ~6 rows (aproximadamente)
INSERT IGNORE INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(36, 'administrador', 'web', '2023-10-28 16:32:27', '2023-10-28 16:32:27'),
	(37, 'director', 'web', '2023-10-28 16:32:27', '2023-10-28 16:32:27'),
	(38, 'utp', 'web', '2023-10-28 16:32:27', '2023-10-28 16:32:27'),
	(39, 'profesor', 'web', '2023-10-28 16:32:27', '2023-10-28 16:32:27'),
	(40, 'apoderado', 'web', '2023-10-28 16:32:27', '2023-10-28 16:32:27'),
	(41, 'alumno', 'web', '2023-10-28 16:32:27', '2023-10-28 16:32:27');

-- Volcando estructura para tabla virtualschool.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.role_has_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla virtualschool.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.sessions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla virtualschool.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_user` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rut` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` int DEFAULT NULL,
  `direccion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_user_comuna` bigint unsigned NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alumnos` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `fk_comuna_idx` (`fk_user_comuna`),
  CONSTRAINT `fk_comuna` FOREIGN KEY (`fk_user_comuna`) REFERENCES `comunas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla virtualschool.users: ~20 rows (aproximadamente)
INSERT IGNORE INTO `users` (`id`, `nombre_user`, `apellido_user`, `rut`, `celular`, `direccion`, `fk_user_comuna`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `alumnos`, `deleted_at`) VALUES
	(11, 'Felipe', 'Ahumada', '11.111.111-1', NULL, 'calle 1', 2, 'fahumada@gmail.com', NULL, '$2y$10$lSB3X0uERB6lMy9oC.Z1p.pa3Y0H3mDUudxIc3ImkBwHJD0J2FmAK', 'sGS2PHT7k0sPyZ82zXyH9TLudHt0HZInmQa1OeH5IwLR3l1vBE92oHEskXr2', '2023-10-28 16:32:28', '2023-11-14 00:08:44', NULL, NULL),
	(12, 'Felipe', 'Ahumada', '12.111.111-1', NULL, 'calle 2', 2, 'fahumada87@gmail.com', NULL, '$2y$10$iOwkLxXYI.xmW6F0i4H8ru7B8232RY3RCtO9lbboeU6O1v7CWIiXK', NULL, '2023-10-28 16:32:28', '2023-11-14 00:13:39', NULL, NULL),
	(13, 'maikelis', 'Salazar', '13.111.111-1', NULL, 'calle 3', 2, 'maikelis@gmail.com', NULL, '$2y$10$IlpEZnDu56ByqrSFwaPBcep71PRPU.LrVNRn/kokCvXjQbvaoxE9i', NULL, '2023-10-28 16:32:28', '2023-10-28 16:32:28', NULL, NULL),
	(14, 'Juan', 'Veloz', '14.111.111-1', NULL, 'calle 4', 2, 'juan@gmail.com', NULL, '$2y$10$X8KnoqLpKJC/qqx2yChOd.rA9RFO0OoBYijry6U0b06XM5vKeYYy2', NULL, '2023-10-28 16:32:29', '2023-11-14 02:45:44', NULL, NULL),
	(15, 'Carlos', 'Aguilar', '15.111.111-1', NULL, 'calle 5', 2, 'carlos@gmail.com', NULL, '$2y$10$k4eoUjlMfj.9zuQwfaiAj.7C8PSiwPn.t9GGkaxlKG3IUGndQUhuW', NULL, '2023-10-28 16:32:29', '2023-10-28 16:32:29', NULL, NULL),
	(16, 'mario', 'casas', '20.277.371-1', NULL, 'avenida recoleta 3444', 1, 'mario@gmail.com', NULL, '$2y$10$f/wuVhx9qmyyQSuYLxjdoeNpOlHBRsG7hXzUaRf6TFL.bm8Gp8mFe', NULL, '2023-11-03 20:51:30', '2023-11-03 20:51:30', NULL, NULL),
	(17, 'cristiano', 'ronaldo', '10.764.398-2', NULL, 'alberto undurraga 1489', 1, 'cristiano@gmail.com', NULL, '$2y$10$6FBfpW2aGvZLybuKh4D5P.cPSAajQlVy26qmeRfwJmBML1omveu5C', NULL, '2023-11-07 13:38:37', '2023-11-07 13:38:37', NULL, NULL),
	(18, 'martin', 'salgado', '20.273.371-1', NULL, 'alberto undurraga 1489', 1, 'martin@gmail.com', NULL, '$2y$10$2w2E1k.nN8zQI2v52U4MJupqxKAGk3pMZ1MzAngildxqf7biMGqLy', NULL, '2023-11-07 14:23:33', '2023-11-14 00:07:31', NULL, NULL),
	(21, 'pedro', 'perez', '2229393-3', NULL, 'alberto undurraga 1489', 1, 'pedro@gmail.com', NULL, '$2y$10$/9gwj8u5pB8sTaUN0ROM7uKsE5lZoivWs0pNogEIG4XE3dE8KEacS', NULL, '2023-11-10 01:21:07', '2023-11-14 00:08:05', NULL, NULL),
	(22, 'Gaspar', 'Salazar', '21.345.678-1', NULL, 'martinez rosales 2033', 1, 'gaspar.salazar@gmail.com', NULL, '$2y$10$iiGWJK9mM0LCKwmE9iSolOhySllaxbUuBCJsBlFcML2O67soneUfq', NULL, '2023-11-14 23:13:41', '2024-07-03 03:59:02', NULL, '2024-07-03 03:59:02'),
	(23, 'Roberto', 'Velez', '20.342.125-3', NULL, 'rigoberto sanchez 2344', 1, 'roberto.velez@gmail.com', NULL, '$2y$10$6z0KYeZbl55VXrTF9RMMn.lQZQD7jl7SAAH0179zTGD/jUPvWylMu', NULL, '2023-11-14 23:15:34', '2024-07-03 04:16:14', NULL, '2024-07-03 04:16:14'),
	(24, 'Raquel', 'Yuretic', '20.498.297-k', NULL, 'Huasco 1994', 1, 'raquel.yuretic@gmail.com', NULL, '$2y$10$S8108A4evXGIIGiy0h78nuaq/Cp/nyRNpBntfiQiYCtF/fkWaq0dq', NULL, '2023-11-14 23:18:05', '2023-11-14 23:18:05', NULL, NULL),
	(25, 'Humberto', 'Sanchez', '23.487.287-2', NULL, 'jardines etereos 284', 1, 'humberto.sanchez@gmail.com', NULL, '$2y$10$582lLB1eRsIrcZp2VEg.4uyUKaJx.o2uUn9OSUx/DlEV/BbOJkSCK', NULL, '2023-11-14 23:19:17', '2023-11-14 23:19:17', NULL, NULL),
	(26, 'Javiera', 'Llanos', '23.546.246-k', NULL, 'martinez perez 234', 1, 'javiera.llanos@gmail.com', NULL, '$2y$10$COPLhTvp5fWlWTO8OnQPkONkJYUD1BlyYg1Fe0ku4Zsj1aFwAb5eK', NULL, '2023-11-14 23:20:08', '2023-11-14 23:20:08', NULL, NULL),
	(27, 'Kevin', 'Risoto', '23.567.213-4', NULL, 'Teniente Heraldo 235', 1, 'kevin.risoto@gmail.com', NULL, '$2y$10$rutAG6rkanM5Kkjy4b2J.OfvbERcVbdvAL3Fdww2bLsg7eSP0KW5u', NULL, '2023-11-14 23:23:00', '2023-11-14 23:23:00', NULL, NULL),
	(28, 'Fabiola', 'Bellas', '25.234.456-4', NULL, 'pasaje vi 234, casa 1', 1, 'fabiola.bellas@gmail.com', NULL, '$2y$10$xxC2LqlBxV90ujBszkBmWuDyPyB9gzKXTKvRQ51Ay5c4lJMhbGtmO', NULL, '2023-11-14 23:24:31', '2024-07-03 04:07:09', NULL, '2024-07-03 04:07:09'),
	(29, 'Karla', 'Mejias', '23.456.237-2', NULL, 'Dragon ancestral 2334', 1, 'karla.mejias@gmail.com', NULL, '$2y$10$tA22gYBORsRulbcTyM9pIOzJY1z0cGJTv8XtPSc/.CDyOEuaBgucO', NULL, '2023-11-14 23:25:28', '2023-11-14 23:25:28', NULL, NULL),
	(30, 'Marco', 'Torres', '26.678.345-4', NULL, 'veloso ronco 2345', 1, 'marco.torres@gmail.com', NULL, '$2y$10$2ZAswn3wZhXX1g27NGGao.1PWlzxSxZhCbdVPeCg15tT6arXCKvv6', NULL, '2023-11-14 23:26:14', '2023-11-14 23:26:14', NULL, NULL),
	(31, 'Viviana', 'Vivanco', '22.456.234-2', NULL, 'javiera gacitua 23454', 1, 'viviana.vivanco@gmail.com', NULL, '$2y$10$R1lkj9qir4HCMaq1CUIsu.9PR.S8hYPNBvQ3Eh7p.shm/QqogWxm2', NULL, '2023-11-14 23:27:58', '2023-11-14 23:27:58', NULL, NULL),
	(32, 'Mary', 'Curie', '22.436.234-2', NULL, 'maria gaspares 2345', 1, 'mary.curie@gmail.com', NULL, '$2y$10$a3MnnBAgL3dO4xYk3vr5ue13SgCkfNV/NnF/HPas6K7z0laruDK8a', NULL, '2023-11-14 23:30:23', '2024-07-03 04:00:38', NULL, '2024-07-03 04:00:38'),
	(33, 'Juan Esteban', 'vidal martinez', '111111111-1', NULL, 'jose santos ossa 3892', 1, 'rocksanto@hotmail.com', NULL, '$2y$10$zfUNtiPrZh9WUMKjKrj.sOne.aMDStn1GEuiSgMalmh7bXhHitska', NULL, '2024-07-03 04:34:55', '2024-07-03 04:34:55', NULL, NULL),
	(34, 'Andres Felipe', 'Contreras Baez', '111111111-2', NULL, 'via sur 653', 1, 'bavaliw941@monutri.com', NULL, '$2y$10$jZDWxdXIqywlnuPBQ2QrYOy9a3rzdnYpENAO44f5a3VulZCVnBEse', NULL, '2024-07-03 04:46:36', '2024-07-03 04:46:36', NULL, NULL),
	(35, 'Javiera', 'Carrera', '16802968-4', NULL, 'Via sur 985', 1, 'jiajskskss@gmail.com', NULL, '$2y$10$p7Yn68zczON2WYo1ElKV/OgN3NrCXok3D/wx0iOKG2MQUZmna/g.6', NULL, '2024-07-03 05:12:02', '2024-07-03 05:12:02', NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
