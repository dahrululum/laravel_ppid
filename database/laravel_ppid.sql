/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : laravel_ppid

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2025-04-04 16:05:28
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO admin_menu VALUES ('1', '0', '1', 'Dashboard', 'icon-chart-bar', '/', null, null, '2025-04-04 09:00:09');
INSERT INTO admin_menu VALUES ('2', '0', '4', 'Admin', 'icon-server', '', null, null, '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('3', '2', '5', 'Users', 'icon-users', 'auth/users', null, null, '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('4', '2', '6', 'Roles', 'icon-user', 'auth/roles', null, null, '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('5', '2', '7', 'Permission', 'icon-ban', 'auth/permissions', null, null, '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('6', '2', '8', 'Menu', 'icon-bars', 'auth/menu', null, null, '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('7', '2', '9', 'Operation log', 'icon-history', 'auth/logs', null, null, '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('8', '0', '10', 'Helpers', 'icon-cogs', '', null, '2025-04-04 08:47:20', '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('9', '8', '11', 'Scaffold', 'icon-keyboard', 'helpers/scaffold', null, '2025-04-04 08:47:20', '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('10', '8', '12', 'Database terminal', 'icon-database', 'helpers/terminal/database', null, '2025-04-04 08:47:20', '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('11', '8', '13', 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', null, '2025-04-04 08:47:20', '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('12', '8', '14', 'Routes', 'icon-list-alt', 'helpers/routes', null, '2025-04-04 08:47:20', '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('13', '0', '15', 'Media manager', 'icon-file', 'media', null, '2025-04-04 08:47:39', '2025-04-04 09:00:03');
INSERT INTO admin_menu VALUES ('14', '0', '3', 'Pages', 'icon-book-open', 'http://127.0.0.1:8000/admin/pages', null, '2025-04-04 08:58:56', '2025-04-04 09:00:49');
INSERT INTO admin_menu VALUES ('15', '0', '2', 'Categories', 'icon-clipboard-list', 'http://127.0.0.1:8000/admin/categories', null, '2025-04-04 08:59:58', '2025-04-04 09:00:38');

-- ----------------------------
-- Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO admin_operation_log VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-04 08:46:48', '2025-04-04 08:46:48');
INSERT INTO admin_operation_log VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-04 08:47:25', '2025-04-04 08:47:25');
INSERT INTO admin_operation_log VALUES ('3', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-04 08:47:42', '2025-04-04 08:47:42');
INSERT INTO admin_operation_log VALUES ('4', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2025-04-04 08:47:52', '2025-04-04 08:47:52');
INSERT INTO admin_operation_log VALUES ('5', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 08:48:12', '2025-04-04 08:48:12');
INSERT INTO admin_operation_log VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 08:48:58', '2025-04-04 08:48:58');
INSERT INTO admin_operation_log VALUES ('7', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 08:49:00', '2025-04-04 08:49:00');
INSERT INTO admin_operation_log VALUES ('8', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-04 08:49:06', '2025-04-04 08:49:06');
INSERT INTO admin_operation_log VALUES ('9', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-04 08:49:40', '2025-04-04 08:49:40');
INSERT INTO admin_operation_log VALUES ('10', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-04 08:49:41', '2025-04-04 08:49:41');
INSERT INTO admin_operation_log VALUES ('11', '1', 'admin/pages', 'GET', '127.0.0.1', '[]', '2025-04-04 08:50:43', '2025-04-04 08:50:43');
INSERT INTO admin_operation_log VALUES ('12', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 08:51:33', '2025-04-04 08:51:33');
INSERT INTO admin_operation_log VALUES ('13', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 08:51:51', '2025-04-04 08:51:51');
INSERT INTO admin_operation_log VALUES ('14', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 08:52:12', '2025-04-04 08:52:12');
INSERT INTO admin_operation_log VALUES ('15', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 08:52:14', '2025-04-04 08:52:14');
INSERT INTO admin_operation_log VALUES ('16', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-04-04 08:52:22', '2025-04-04 08:52:22');
INSERT INTO admin_operation_log VALUES ('17', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2025-04-04 08:52:27', '2025-04-04 08:52:27');
INSERT INTO admin_operation_log VALUES ('18', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"cache:clear\",\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\"}', '2025-04-04 08:52:34', '2025-04-04 08:52:34');
INSERT INTO admin_operation_log VALUES ('19', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"config:clear\",\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\"}', '2025-04-04 08:52:50', '2025-04-04 08:52:50');
INSERT INTO admin_operation_log VALUES ('20', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2025-04-04 08:52:52', '2025-04-04 08:52:52');
INSERT INTO admin_operation_log VALUES ('21', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"model:show\",\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\"}', '2025-04-04 08:53:10', '2025-04-04 08:53:10');
INSERT INTO admin_operation_log VALUES ('22', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"route:list\",\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\"}', '2025-04-04 08:53:21', '2025-04-04 08:53:21');
INSERT INTO admin_operation_log VALUES ('23', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"route:cache\",\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\"}', '2025-04-04 08:54:07', '2025-04-04 08:54:07');
INSERT INTO admin_operation_log VALUES ('24', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"view:cache\",\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\"}', '2025-04-04 08:54:20', '2025-04-04 08:54:20');
INSERT INTO admin_operation_log VALUES ('25', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2025-04-04 08:54:24', '2025-04-04 08:54:24');
INSERT INTO admin_operation_log VALUES ('26', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 08:58:06', '2025-04-04 08:58:06');
INSERT INTO admin_operation_log VALUES ('27', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-04 08:58:46', '2025-04-04 08:58:46');
INSERT INTO admin_operation_log VALUES ('28', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Pages\",\"icon\":\"icon-book-open\",\"uri\":\"http:\\/\\/127.0.0.1:8000\\/pages\",\"roles\":[null],\"permission\":null,\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\"}', '2025-04-04 08:58:56', '2025-04-04 08:58:56');
INSERT INTO admin_operation_log VALUES ('29', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 08:58:56', '2025-04-04 08:58:56');
INSERT INTO admin_operation_log VALUES ('30', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Categories\",\"icon\":\"icon-clipboard-list\",\"uri\":\"http:\\/\\/127.0.0.1:8000\\/categories\",\"roles\":[null],\"permission\":null,\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\"}', '2025-04-04 08:59:58', '2025-04-04 08:59:58');
INSERT INTO admin_operation_log VALUES ('31', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 08:59:59', '2025-04-04 08:59:59');
INSERT INTO admin_operation_log VALUES ('32', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"}]\",\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\"}', '2025-04-04 09:00:03', '2025-04-04 09:00:03');
INSERT INTO admin_operation_log VALUES ('33', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 09:00:03', '2025-04-04 09:00:03');
INSERT INTO admin_operation_log VALUES ('34', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"}]\",\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\"}', '2025-04-04 09:00:09', '2025-04-04 09:00:09');
INSERT INTO admin_operation_log VALUES ('35', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 09:00:09', '2025-04-04 09:00:09');
INSERT INTO admin_operation_log VALUES ('36', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 09:00:11', '2025-04-04 09:00:11');
INSERT INTO admin_operation_log VALUES ('37', '1', 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '[]', '2025-04-04 09:00:32', '2025-04-04 09:00:32');
INSERT INTO admin_operation_log VALUES ('38', '1', 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Categories\",\"icon\":\"icon-clipboard-list\",\"uri\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\",\"roles\":[null],\"permission\":null,\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\",\"_method\":\"PUT\"}', '2025-04-04 09:00:38', '2025-04-04 09:00:38');
INSERT INTO admin_operation_log VALUES ('39', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 09:00:38', '2025-04-04 09:00:38');
INSERT INTO admin_operation_log VALUES ('40', '1', 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '[]', '2025-04-04 09:00:43', '2025-04-04 09:00:43');
INSERT INTO admin_operation_log VALUES ('41', '1', 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Pages\",\"icon\":\"icon-book-open\",\"uri\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/pages\",\"roles\":[null],\"permission\":null,\"_token\":\"dGI94rv5GCt0DyZnZ5syGcjzWHkjm71dI1LhVAeS\",\"_method\":\"PUT\"}', '2025-04-04 09:00:49', '2025-04-04 09:00:49');
INSERT INTO admin_operation_log VALUES ('42', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-04 09:00:49', '2025-04-04 09:00:49');
INSERT INTO admin_operation_log VALUES ('43', '1', 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-04-04 09:00:53', '2025-04-04 09:00:53');
INSERT INTO admin_operation_log VALUES ('44', '1', 'admin/pages', 'GET', '127.0.0.1', '[]', '2025-04-04 09:00:57', '2025-04-04 09:00:57');
INSERT INTO admin_operation_log VALUES ('45', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-04 09:01:15', '2025-04-04 09:01:15');
INSERT INTO admin_operation_log VALUES ('46', '1', 'admin/pages', 'GET', '127.0.0.1', '[]', '2025-04-04 09:02:31', '2025-04-04 09:02:31');
INSERT INTO admin_operation_log VALUES ('47', '1', 'admin/pages', 'GET', '127.0.0.1', '[]', '2025-04-04 09:02:32', '2025-04-04 09:02:32');
INSERT INTO admin_operation_log VALUES ('48', '1', 'admin/pages', 'GET', '127.0.0.1', '[]', '2025-04-04 09:02:49', '2025-04-04 09:02:49');
INSERT INTO admin_operation_log VALUES ('49', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-04 09:02:54', '2025-04-04 09:02:54');
INSERT INTO admin_operation_log VALUES ('50', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-04 09:03:21', '2025-04-04 09:03:21');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO admin_permissions VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO admin_permissions VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO admin_permissions VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO admin_permissions VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO admin_permissions VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO admin_permissions VALUES ('6', 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2025-04-04 08:47:20', '2025-04-04 08:47:20');
INSERT INTO admin_permissions VALUES ('7', 'Media manager', 'ext.media-manager', '', '/media*', '2025-04-04 08:47:39', '2025-04-04 08:47:39');

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO admin_roles VALUES ('1', 'Administrator', 'administrator', '2025-04-04 08:46:19', '2025-04-04 08:46:19');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO admin_role_menu VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO admin_role_permissions VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO admin_role_users VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO admin_users VALUES ('1', 'admin', '$2y$12$wne7gD1g24NhJj97fmVWW.ztwjoZJgra3HlP46oUCjZLb74IDeV0e', 'Administrator', null, null, '2025-04-04 08:46:19', '2025-04-04 08:46:19');

-- ----------------------------
-- Table structure for `admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `cache`
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for `cache_locks`
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `jobs`
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `job_batches`
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO migrations VALUES ('1', '0001_01_01_000000_create_users_table', '1');
INSERT INTO migrations VALUES ('2', '0001_01_01_000001_create_cache_table', '1');
INSERT INTO migrations VALUES ('3', '0001_01_01_000002_create_jobs_table', '1');
INSERT INTO migrations VALUES ('4', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO migrations VALUES ('5', '2025_04_03_135511_create_category_table', '1');
INSERT INTO migrations VALUES ('6', '2025_04_03_140317_create_page_table', '1');

-- ----------------------------
-- Table structure for `page`
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `fulltext` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of page
-- ----------------------------

-- ----------------------------
-- Table structure for `password_reset_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO sessions VALUES ('9egZmWXfOLeYyMqrf3RigAxuk6DrJMfHNmg8p8Oq', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZEdJOTRydjVHQ3QwRHlablo1c3lHY2p6V0hram03MWRJMUxoVkFlUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', '1743757401');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
