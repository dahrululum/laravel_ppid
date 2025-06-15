/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : laravel_ppid

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2025-06-15 12:21:46
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO admin_menu VALUES ('1', '0', '1', 'Dashboard', 'icon-chart-bar', '/', null, null, '2025-04-04 09:00:09');
INSERT INTO admin_menu VALUES ('2', '0', '9', 'Admin', 'icon-server', '', null, null, '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('3', '2', '10', 'Users', 'icon-users', 'auth/users', null, null, '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('4', '2', '11', 'Roles', 'icon-user', 'auth/roles', null, null, '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('5', '2', '12', 'Permission', 'icon-ban', 'auth/permissions', null, null, '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('6', '2', '13', 'Menu', 'icon-bars', 'auth/menu', null, null, '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('7', '2', '14', 'Operation log', 'icon-history', 'auth/logs', null, null, '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('8', '0', '15', 'Helpers', 'icon-cogs', '', null, '2025-04-04 08:47:20', '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('9', '8', '16', 'Scaffold', 'icon-keyboard', 'helpers/scaffold', null, '2025-04-04 08:47:20', '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('10', '8', '17', 'Database terminal', 'icon-database', 'helpers/terminal/database', null, '2025-04-04 08:47:20', '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('11', '8', '18', 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', null, '2025-04-04 08:47:20', '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('12', '8', '19', 'Routes', 'icon-list-alt', 'helpers/routes', null, '2025-04-04 08:47:20', '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('13', '0', '20', 'Media manager', 'icon-file', 'media', null, '2025-04-04 08:47:39', '2025-05-09 07:42:30');
INSERT INTO admin_menu VALUES ('14', '0', '5', 'Pages', 'icon-book-open', 'http://127.0.0.1:8000/admin/pages', null, '2025-04-04 08:58:56', '2025-04-07 07:59:56');
INSERT INTO admin_menu VALUES ('15', '0', '4', 'Categories', 'icon-clipboard-list', 'http://127.0.0.1:8000/admin/categories', null, '2025-04-04 08:59:58', '2025-04-07 07:59:56');
INSERT INTO admin_menu VALUES ('16', '0', '2', 'Navbars', 'icon-file', 'navbars', null, '2025-04-06 05:36:02', '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('18', '0', '3', 'Sliders', 'icon-images', 'sliders', null, '2025-04-07 07:59:20', '2025-04-07 08:01:12');
INSERT INTO admin_menu VALUES ('19', '0', '6', 'Partners', 'icon-file', 'partners', null, '2025-05-06 02:58:16', '2025-05-06 02:59:19');
INSERT INTO admin_menu VALUES ('20', '0', '7', 'Layanan Digital', 'icon-file', 'layanans', null, '2025-05-08 08:06:49', '2025-05-08 08:07:50');
INSERT INTO admin_menu VALUES ('21', '0', '8', 'News', 'icon-file', 'news', null, '2025-05-09 07:41:54', '2025-05-09 07:42:30');

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
) ENGINE=InnoDB AUTO_INCREMENT=685 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO admin_operation_log VALUES ('51', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-06 04:12:50', '2025-04-06 04:12:50');
INSERT INTO admin_operation_log VALUES ('52', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-06 05:33:14', '2025-04-06 05:33:14');
INSERT INTO admin_operation_log VALUES ('53', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-06 05:33:26', '2025-04-06 05:33:26');
INSERT INTO admin_operation_log VALUES ('54', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-04-06 05:34:03', '2025-04-06 05:34:03');
INSERT INTO admin_operation_log VALUES ('55', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"navbar\",\"model_name\":\"App\\\\Models\\\\Navbar\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\NavbarController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"parent_id\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"order\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"icon\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"uri\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"permission\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\"}', '2025-04-06 05:36:01', '2025-04-06 05:36:01');
INSERT INTO admin_operation_log VALUES ('56', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-04-06 05:36:03', '2025-04-06 05:36:03');
INSERT INTO admin_operation_log VALUES ('57', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"navbar\",\"model_name\":\"App\\\\Models\\\\Navbar\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\NavbarController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"parent_id\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"order\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"icon\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"uri\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"permission\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\"}', '2025-04-06 05:37:45', '2025-04-06 05:37:45');
INSERT INTO admin_operation_log VALUES ('58', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-04-06 05:37:46', '2025-04-06 05:37:46');
INSERT INTO admin_operation_log VALUES ('59', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-06 05:38:06', '2025-04-06 05:38:06');
INSERT INTO admin_operation_log VALUES ('60', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-06 05:38:07', '2025-04-06 05:38:07');
INSERT INTO admin_operation_log VALUES ('61', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-06 05:38:09', '2025-04-06 05:38:09');
INSERT INTO admin_operation_log VALUES ('62', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-06 05:38:17', '2025-04-06 05:38:17');
INSERT INTO admin_operation_log VALUES ('63', '1', 'admin/auth/menu/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\"}', '2025-04-06 05:38:23', '2025-04-06 05:38:23');
INSERT INTO admin_operation_log VALUES ('64', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-06 05:38:24', '2025-04-06 05:38:24');
INSERT INTO admin_operation_log VALUES ('65', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-06 05:38:26', '2025-04-06 05:38:26');
INSERT INTO admin_operation_log VALUES ('66', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"}]\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\"}', '2025-04-06 05:38:33', '2025-04-06 05:38:33');
INSERT INTO admin_operation_log VALUES ('67', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-06 05:38:33', '2025-04-06 05:38:33');
INSERT INTO admin_operation_log VALUES ('68', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"}]\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\"}', '2025-04-06 05:38:35', '2025-04-06 05:38:35');
INSERT INTO admin_operation_log VALUES ('69', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-06 05:38:35', '2025-04-06 05:38:35');
INSERT INTO admin_operation_log VALUES ('70', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-06 05:38:38', '2025-04-06 05:38:38');
INSERT INTO admin_operation_log VALUES ('71', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-06 05:39:33', '2025-04-06 05:39:33');
INSERT INTO admin_operation_log VALUES ('72', '1', 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-04-06 05:39:35', '2025-04-06 05:39:35');
INSERT INTO admin_operation_log VALUES ('73', '1', 'admin/pages', 'GET', '127.0.0.1', '[]', '2025-04-06 05:39:38', '2025-04-06 05:39:38');
INSERT INTO admin_operation_log VALUES ('74', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-04-06 05:39:44', '2025-04-06 05:39:44');
INSERT INTO admin_operation_log VALUES ('75', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-04-06 05:39:49', '2025-04-06 05:39:49');
INSERT INTO admin_operation_log VALUES ('76', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-06 05:39:52', '2025-04-06 05:39:52');
INSERT INTO admin_operation_log VALUES ('77', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 05:40:35', '2025-04-06 05:40:35');
INSERT INTO admin_operation_log VALUES ('78', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 05:40:50', '2025-04-06 05:40:50');
INSERT INTO admin_operation_log VALUES ('79', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 05:45:41', '2025-04-06 05:45:41');
INSERT INTO admin_operation_log VALUES ('80', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 05:46:34', '2025-04-06 05:46:34');
INSERT INTO admin_operation_log VALUES ('81', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 05:48:01', '2025-04-06 05:48:01');
INSERT INTO admin_operation_log VALUES ('82', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 05:49:16', '2025-04-06 05:49:16');
INSERT INTO admin_operation_log VALUES ('83', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 05:49:24', '2025-04-06 05:49:24');
INSERT INTO admin_operation_log VALUES ('84', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 05:49:31', '2025-04-06 05:49:31');
INSERT INTO admin_operation_log VALUES ('85', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 05:50:10', '2025-04-06 05:50:10');
INSERT INTO admin_operation_log VALUES ('86', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 05:50:18', '2025-04-06 05:50:18');
INSERT INTO admin_operation_log VALUES ('87', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 05:50:23', '2025-04-06 05:50:23');
INSERT INTO admin_operation_log VALUES ('88', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 05:50:35', '2025-04-06 05:50:35');
INSERT INTO admin_operation_log VALUES ('89', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Profil\",\"uri\":\"http:\\/\\/127.0.0.1:8000\\/pages\\/profil\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\"}', '2025-04-06 06:13:37', '2025-04-06 06:13:37');
INSERT INTO admin_operation_log VALUES ('90', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:13:37', '2025-04-06 06:13:37');
INSERT INTO admin_operation_log VALUES ('91', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:13:54', '2025-04-06 06:13:54');
INSERT INTO admin_operation_log VALUES ('92', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:13:57', '2025-04-06 06:13:57');
INSERT INTO admin_operation_log VALUES ('93', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:14:00', '2025-04-06 06:14:00');
INSERT INTO admin_operation_log VALUES ('94', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:14:12', '2025-04-06 06:14:12');
INSERT INTO admin_operation_log VALUES ('95', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 06:14:34', '2025-04-06 06:14:34');
INSERT INTO admin_operation_log VALUES ('96', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Informasi Publik\",\"uri\":\"#\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\"}', '2025-04-06 06:14:55', '2025-04-06 06:14:55');
INSERT INTO admin_operation_log VALUES ('97', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:14:56', '2025-04-06 06:14:56');
INSERT INTO admin_operation_log VALUES ('98', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 06:14:58', '2025-04-06 06:14:58');
INSERT INTO admin_operation_log VALUES ('99', '1', 'admin/navbars/1', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Profil\",\"uri\":\"#\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\",\"_method\":\"PUT\"}', '2025-04-06 06:15:02', '2025-04-06 06:15:02');
INSERT INTO admin_operation_log VALUES ('100', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:15:02', '2025-04-06 06:15:02');
INSERT INTO admin_operation_log VALUES ('101', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 06:15:45', '2025-04-06 06:15:45');
INSERT INTO admin_operation_log VALUES ('102', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"1\",\"search_terms\":null,\"name\":\"Pemerintah Provinsi Kepulauan Bangka Belitung\",\"uri\":\"#\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\"}', '2025-04-06 06:16:03', '2025-04-06 06:16:03');
INSERT INTO admin_operation_log VALUES ('103', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:16:04', '2025-04-06 06:16:04');
INSERT INTO admin_operation_log VALUES ('104', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:17:37', '2025-04-06 06:17:37');
INSERT INTO admin_operation_log VALUES ('105', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:17:43', '2025-04-06 06:17:43');
INSERT INTO admin_operation_log VALUES ('106', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:18:29', '2025-04-06 06:18:29');
INSERT INTO admin_operation_log VALUES ('107', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:18:54', '2025-04-06 06:18:54');
INSERT INTO admin_operation_log VALUES ('108', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:21:27', '2025-04-06 06:21:27');
INSERT INTO admin_operation_log VALUES ('109', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:22:48', '2025-04-06 06:22:48');
INSERT INTO admin_operation_log VALUES ('110', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-06 06:31:55', '2025-04-06 06:31:55');
INSERT INTO admin_operation_log VALUES ('111', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:40:00', '2025-04-06 06:40:00');
INSERT INTO admin_operation_log VALUES ('112', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:40:14', '2025-04-06 06:40:14');
INSERT INTO admin_operation_log VALUES ('113', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:40:42', '2025-04-06 06:40:42');
INSERT INTO admin_operation_log VALUES ('114', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:40:50', '2025-04-06 06:40:50');
INSERT INTO admin_operation_log VALUES ('115', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:41:56', '2025-04-06 06:41:56');
INSERT INTO admin_operation_log VALUES ('116', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:42:06', '2025-04-06 06:42:06');
INSERT INTO admin_operation_log VALUES ('117', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 06:42:08', '2025-04-06 06:42:08');
INSERT INTO admin_operation_log VALUES ('118', '1', 'admin/navbars/1', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Profil\",\"uri\":\"#\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\",\"_method\":\"PUT\"}', '2025-04-06 06:42:12', '2025-04-06 06:42:12');
INSERT INTO admin_operation_log VALUES ('119', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:42:12', '2025-04-06 06:42:12');
INSERT INTO admin_operation_log VALUES ('120', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:42:26', '2025-04-06 06:42:26');
INSERT INTO admin_operation_log VALUES ('121', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:42:32', '2025-04-06 06:42:32');
INSERT INTO admin_operation_log VALUES ('122', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:42:43', '2025-04-06 06:42:43');
INSERT INTO admin_operation_log VALUES ('123', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:43:00', '2025-04-06 06:43:00');
INSERT INTO admin_operation_log VALUES ('124', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:51:51', '2025-04-06 06:51:51');
INSERT INTO admin_operation_log VALUES ('125', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:52:07', '2025-04-06 06:52:07');
INSERT INTO admin_operation_log VALUES ('126', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:52:28', '2025-04-06 06:52:28');
INSERT INTO admin_operation_log VALUES ('127', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:54:08', '2025-04-06 06:54:08');
INSERT INTO admin_operation_log VALUES ('128', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:54:49', '2025-04-06 06:54:49');
INSERT INTO admin_operation_log VALUES ('129', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:54:59', '2025-04-06 06:54:59');
INSERT INTO admin_operation_log VALUES ('130', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:55:16', '2025-04-06 06:55:16');
INSERT INTO admin_operation_log VALUES ('131', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:55:48', '2025-04-06 06:55:48');
INSERT INTO admin_operation_log VALUES ('132', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 06:56:05', '2025-04-06 06:56:05');
INSERT INTO admin_operation_log VALUES ('133', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:00:08', '2025-04-06 07:00:08');
INSERT INTO admin_operation_log VALUES ('134', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:00:20', '2025-04-06 07:00:20');
INSERT INTO admin_operation_log VALUES ('135', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:01:22', '2025-04-06 07:01:22');
INSERT INTO admin_operation_log VALUES ('136', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:01:36', '2025-04-06 07:01:36');
INSERT INTO admin_operation_log VALUES ('137', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:02:00', '2025-04-06 07:02:00');
INSERT INTO admin_operation_log VALUES ('138', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:02:20', '2025-04-06 07:02:20');
INSERT INTO admin_operation_log VALUES ('139', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:02:33', '2025-04-06 07:02:33');
INSERT INTO admin_operation_log VALUES ('140', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:02:45', '2025-04-06 07:02:45');
INSERT INTO admin_operation_log VALUES ('141', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:03:02', '2025-04-06 07:03:02');
INSERT INTO admin_operation_log VALUES ('142', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:03:34', '2025-04-06 07:03:34');
INSERT INTO admin_operation_log VALUES ('143', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:28:05', '2025-04-06 07:28:05');
INSERT INTO admin_operation_log VALUES ('144', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:28:07', '2025-04-06 07:28:07');
INSERT INTO admin_operation_log VALUES ('145', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:28:40', '2025-04-06 07:28:40');
INSERT INTO admin_operation_log VALUES ('146', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:29:59', '2025-04-06 07:29:59');
INSERT INTO admin_operation_log VALUES ('147', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:30:34', '2025-04-06 07:30:34');
INSERT INTO admin_operation_log VALUES ('148', '1', 'admin/navbars/1', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Profile PPID\",\"slug\":\"profile-ppid\",\"uri\":\"#\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\",\"_method\":\"PUT\"}', '2025-04-06 07:30:51', '2025-04-06 07:30:51');
INSERT INTO admin_operation_log VALUES ('149', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:30:52', '2025-04-06 07:30:52');
INSERT INTO admin_operation_log VALUES ('150', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:31:07', '2025-04-06 07:31:07');
INSERT INTO admin_operation_log VALUES ('151', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:32:31', '2025-04-06 07:32:31');
INSERT INTO admin_operation_log VALUES ('152', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:32:37', '2025-04-06 07:32:37');
INSERT INTO admin_operation_log VALUES ('153', '1', 'admin/navbars/1', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Profil\",\"slug\":\"profile-ppid\",\"uri\":\"#\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\",\"_method\":\"PUT\"}', '2025-04-06 07:33:04', '2025-04-06 07:33:04');
INSERT INTO admin_operation_log VALUES ('154', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:33:04', '2025-04-06 07:33:04');
INSERT INTO admin_operation_log VALUES ('155', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:33:42', '2025-04-06 07:33:42');
INSERT INTO admin_operation_log VALUES ('156', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:33:56', '2025-04-06 07:33:56');
INSERT INTO admin_operation_log VALUES ('157', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:33:58', '2025-04-06 07:33:58');
INSERT INTO admin_operation_log VALUES ('158', '1', 'admin/navbars/1', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Profile PPID\",\"slug\":\"profile-ppid\",\"uri\":\"#\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\",\"_method\":\"PUT\"}', '2025-04-06 07:34:10', '2025-04-06 07:34:10');
INSERT INTO admin_operation_log VALUES ('159', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:34:10', '2025-04-06 07:34:10');
INSERT INTO admin_operation_log VALUES ('160', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:37:38', '2025-04-06 07:37:38');
INSERT INTO admin_operation_log VALUES ('161', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:37:39', '2025-04-06 07:37:39');
INSERT INTO admin_operation_log VALUES ('162', '1', 'admin/navbars/1', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Profile PPID\",\"slug\":\"profile-ppid\",\"uri\":\"#\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\",\"_method\":\"PUT\"}', '2025-04-06 07:37:43', '2025-04-06 07:37:43');
INSERT INTO admin_operation_log VALUES ('163', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:37:43', '2025-04-06 07:37:43');
INSERT INTO admin_operation_log VALUES ('164', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:32', '2025-04-06 07:39:32');
INSERT INTO admin_operation_log VALUES ('165', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:34', '2025-04-06 07:39:34');
INSERT INTO admin_operation_log VALUES ('166', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:35', '2025-04-06 07:39:35');
INSERT INTO admin_operation_log VALUES ('167', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:36', '2025-04-06 07:39:36');
INSERT INTO admin_operation_log VALUES ('168', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:36', '2025-04-06 07:39:36');
INSERT INTO admin_operation_log VALUES ('169', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:37', '2025-04-06 07:39:37');
INSERT INTO admin_operation_log VALUES ('170', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:37', '2025-04-06 07:39:37');
INSERT INTO admin_operation_log VALUES ('171', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:38', '2025-04-06 07:39:38');
INSERT INTO admin_operation_log VALUES ('172', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:38', '2025-04-06 07:39:38');
INSERT INTO admin_operation_log VALUES ('173', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:39', '2025-04-06 07:39:39');
INSERT INTO admin_operation_log VALUES ('174', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:39', '2025-04-06 07:39:39');
INSERT INTO admin_operation_log VALUES ('175', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:40', '2025-04-06 07:39:40');
INSERT INTO admin_operation_log VALUES ('176', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:40', '2025-04-06 07:39:40');
INSERT INTO admin_operation_log VALUES ('177', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:41', '2025-04-06 07:39:41');
INSERT INTO admin_operation_log VALUES ('178', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:41', '2025-04-06 07:39:41');
INSERT INTO admin_operation_log VALUES ('179', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:42', '2025-04-06 07:39:42');
INSERT INTO admin_operation_log VALUES ('180', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:42', '2025-04-06 07:39:42');
INSERT INTO admin_operation_log VALUES ('181', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:42', '2025-04-06 07:39:42');
INSERT INTO admin_operation_log VALUES ('182', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:43', '2025-04-06 07:39:43');
INSERT INTO admin_operation_log VALUES ('183', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:43', '2025-04-06 07:39:43');
INSERT INTO admin_operation_log VALUES ('184', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:44', '2025-04-06 07:39:44');
INSERT INTO admin_operation_log VALUES ('185', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:44', '2025-04-06 07:39:44');
INSERT INTO admin_operation_log VALUES ('186', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:39:52', '2025-04-06 07:39:52');
INSERT INTO admin_operation_log VALUES ('187', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:40:16', '2025-04-06 07:40:16');
INSERT INTO admin_operation_log VALUES ('188', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:41:29', '2025-04-06 07:41:29');
INSERT INTO admin_operation_log VALUES ('189', '1', 'admin/navbars/1', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Profile PPID\",\"slug\":\"profile-ppid\",\"uri\":\"#\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\",\"_method\":\"PUT\"}', '2025-04-06 07:41:40', '2025-04-06 07:41:40');
INSERT INTO admin_operation_log VALUES ('190', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:41:40', '2025-04-06 07:41:40');
INSERT INTO admin_operation_log VALUES ('191', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 07:42:39', '2025-04-06 07:42:39');
INSERT INTO admin_operation_log VALUES ('192', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-06 07:42:57', '2025-04-06 07:42:57');
INSERT INTO admin_operation_log VALUES ('193', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Standar Layanan\",\"slug\":\"standar-layanan\",\"uri\":\"#\",\"_token\":\"Q3TBgikwSEhcqUEiOcXRZY9ONNUTNAtCBSCHfGfI\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/navbars\\/1\\/edit\"}', '2025-04-06 07:44:15', '2025-04-06 07:44:15');
INSERT INTO admin_operation_log VALUES ('194', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:44:16', '2025-04-06 07:44:16');
INSERT INTO admin_operation_log VALUES ('195', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:44:19', '2025-04-06 07:44:19');
INSERT INTO admin_operation_log VALUES ('196', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:44:21', '2025-04-06 07:44:21');
INSERT INTO admin_operation_log VALUES ('197', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:44:59', '2025-04-06 07:44:59');
INSERT INTO admin_operation_log VALUES ('198', '1', 'admin/navbars/2/edit', 'GET', '127.0.0.1', '[]', '2025-04-06 07:45:01', '2025-04-06 07:45:01');
INSERT INTO admin_operation_log VALUES ('199', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 07:45:06', '2025-04-06 07:45:06');
INSERT INTO admin_operation_log VALUES ('200', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-06 10:54:38', '2025-04-06 10:54:38');
INSERT INTO admin_operation_log VALUES ('201', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-06 10:54:46', '2025-04-06 10:54:46');
INSERT INTO admin_operation_log VALUES ('202', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-07 04:45:59', '2025-04-07 04:45:59');
INSERT INTO admin_operation_log VALUES ('203', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 04:46:16', '2025-04-07 04:46:16');
INSERT INTO admin_operation_log VALUES ('204', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 04:47:53', '2025-04-07 04:47:53');
INSERT INTO admin_operation_log VALUES ('205', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 04:48:18', '2025-04-07 04:48:18');
INSERT INTO admin_operation_log VALUES ('206', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 04:52:39', '2025-04-07 04:52:39');
INSERT INTO admin_operation_log VALUES ('207', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 04:56:18', '2025-04-07 04:56:18');
INSERT INTO admin_operation_log VALUES ('208', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 04:56:44', '2025-04-07 04:56:44');
INSERT INTO admin_operation_log VALUES ('209', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 04:56:58', '2025-04-07 04:56:58');
INSERT INTO admin_operation_log VALUES ('210', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 04:57:17', '2025-04-07 04:57:17');
INSERT INTO admin_operation_log VALUES ('211', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 04:59:22', '2025-04-07 04:59:22');
INSERT INTO admin_operation_log VALUES ('212', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 04:59:36', '2025-04-07 04:59:36');
INSERT INTO admin_operation_log VALUES ('213', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 05:02:49', '2025-04-07 05:02:49');
INSERT INTO admin_operation_log VALUES ('214', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 05:38:14', '2025-04-07 05:38:14');
INSERT INTO admin_operation_log VALUES ('215', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 05:48:20', '2025-04-07 05:48:20');
INSERT INTO admin_operation_log VALUES ('216', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 05:48:26', '2025-04-07 05:48:26');
INSERT INTO admin_operation_log VALUES ('217', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 05:48:52', '2025-04-07 05:48:52');
INSERT INTO admin_operation_log VALUES ('218', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 05:49:06', '2025-04-07 05:49:06');
INSERT INTO admin_operation_log VALUES ('219', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 05:54:19', '2025-04-07 05:54:19');
INSERT INTO admin_operation_log VALUES ('220', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 05:55:03', '2025-04-07 05:55:03');
INSERT INTO admin_operation_log VALUES ('221', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 05:57:11', '2025-04-07 05:57:11');
INSERT INTO admin_operation_log VALUES ('222', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 05:57:48', '2025-04-07 05:57:48');
INSERT INTO admin_operation_log VALUES ('223', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 05:59:51', '2025-04-07 05:59:51');
INSERT INTO admin_operation_log VALUES ('224', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:00:17', '2025-04-07 06:00:17');
INSERT INTO admin_operation_log VALUES ('225', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:01:01', '2025-04-07 06:01:01');
INSERT INTO admin_operation_log VALUES ('226', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:02:18', '2025-04-07 06:02:18');
INSERT INTO admin_operation_log VALUES ('227', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:02:39', '2025-04-07 06:02:39');
INSERT INTO admin_operation_log VALUES ('228', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:03:37', '2025-04-07 06:03:37');
INSERT INTO admin_operation_log VALUES ('229', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:03:54', '2025-04-07 06:03:54');
INSERT INTO admin_operation_log VALUES ('230', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:04:04', '2025-04-07 06:04:04');
INSERT INTO admin_operation_log VALUES ('231', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:04:50', '2025-04-07 06:04:50');
INSERT INTO admin_operation_log VALUES ('232', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:04:59', '2025-04-07 06:04:59');
INSERT INTO admin_operation_log VALUES ('233', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:06:12', '2025-04-07 06:06:12');
INSERT INTO admin_operation_log VALUES ('234', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:06:26', '2025-04-07 06:06:26');
INSERT INTO admin_operation_log VALUES ('235', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:07:06', '2025-04-07 06:07:06');
INSERT INTO admin_operation_log VALUES ('236', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:20:44', '2025-04-07 06:20:44');
INSERT INTO admin_operation_log VALUES ('237', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:21:25', '2025-04-07 06:21:25');
INSERT INTO admin_operation_log VALUES ('238', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:21:43', '2025-04-07 06:21:43');
INSERT INTO admin_operation_log VALUES ('239', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 06:22:16', '2025-04-07 06:22:16');
INSERT INTO admin_operation_log VALUES ('240', '1', 'admin/pages', 'GET', '127.0.0.1', '[]', '2025-04-07 06:32:17', '2025-04-07 06:32:17');
INSERT INTO admin_operation_log VALUES ('241', '1', 'admin/pages/create', 'GET', '127.0.0.1', '[]', '2025-04-07 06:32:40', '2025-04-07 06:32:40');
INSERT INTO admin_operation_log VALUES ('242', '1', 'admin/pages/create', 'GET', '127.0.0.1', '[]', '2025-04-07 06:35:57', '2025-04-07 06:35:57');
INSERT INTO admin_operation_log VALUES ('243', '1', 'admin/pages/create', 'GET', '127.0.0.1', '[]', '2025-04-07 06:36:32', '2025-04-07 06:36:32');
INSERT INTO admin_operation_log VALUES ('244', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-07 07:09:40', '2025-04-07 07:09:40');
INSERT INTO admin_operation_log VALUES ('245', '1', 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 07:09:46', '2025-04-07 07:09:46');
INSERT INTO admin_operation_log VALUES ('246', '1', 'admin/pages', 'GET', '127.0.0.1', '[]', '2025-04-07 07:09:56', '2025-04-07 07:09:56');
INSERT INTO admin_operation_log VALUES ('247', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:11:27', '2025-04-07 07:11:27');
INSERT INTO admin_operation_log VALUES ('248', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 07:11:47', '2025-04-07 07:11:47');
INSERT INTO admin_operation_log VALUES ('249', '1', 'admin/navbars/1', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Profil PPID\",\"slug\":\"profil-ppid\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_method\":\"PUT\"}', '2025-04-07 07:11:57', '2025-04-07 07:11:57');
INSERT INTO admin_operation_log VALUES ('250', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:11:57', '2025-04-07 07:11:57');
INSERT INTO admin_operation_log VALUES ('251', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 07:12:29', '2025-04-07 07:12:29');
INSERT INTO admin_operation_log VALUES ('252', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:15:07', '2025-04-07 07:15:07');
INSERT INTO admin_operation_log VALUES ('253', '1', 'admin/navbars/1/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 07:15:09', '2025-04-07 07:15:09');
INSERT INTO admin_operation_log VALUES ('254', '1', 'admin/navbars/1', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Profil\",\"slug\":\"profil-ppid\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_method\":\"PUT\"}', '2025-04-07 07:15:16', '2025-04-07 07:15:16');
INSERT INTO admin_operation_log VALUES ('255', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:15:16', '2025-04-07 07:15:16');
INSERT INTO admin_operation_log VALUES ('256', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:15:27', '2025-04-07 07:15:27');
INSERT INTO admin_operation_log VALUES ('257', '1', 'admin/pages', 'GET', '127.0.0.1', '[]', '2025-04-07 07:17:17', '2025-04-07 07:17:17');
INSERT INTO admin_operation_log VALUES ('258', '1', 'admin/pages/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:17:19', '2025-04-07 07:17:19');
INSERT INTO admin_operation_log VALUES ('259', '1', 'admin/pages/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:17:24', '2025-04-07 07:17:24');
INSERT INTO admin_operation_log VALUES ('260', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:17:30', '2025-04-07 07:17:30');
INSERT INTO admin_operation_log VALUES ('261', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:17:32', '2025-04-07 07:17:32');
INSERT INTO admin_operation_log VALUES ('262', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:17:36', '2025-04-07 07:17:36');
INSERT INTO admin_operation_log VALUES ('263', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Laporan\",\"slug\":\"laporan\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:18:11', '2025-04-07 07:18:11');
INSERT INTO admin_operation_log VALUES ('264', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:18:11', '2025-04-07 07:18:11');
INSERT INTO admin_operation_log VALUES ('265', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:18:15', '2025-04-07 07:18:15');
INSERT INTO admin_operation_log VALUES ('266', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:18:41', '2025-04-07 07:18:41');
INSERT INTO admin_operation_log VALUES ('267', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Berita\",\"slug\":\"berita\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:18:55', '2025-04-07 07:18:55');
INSERT INTO admin_operation_log VALUES ('268', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:18:55', '2025-04-07 07:18:55');
INSERT INTO admin_operation_log VALUES ('269', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:18:58', '2025-04-07 07:18:58');
INSERT INTO admin_operation_log VALUES ('270', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:19:01', '2025-04-07 07:19:01');
INSERT INTO admin_operation_log VALUES ('271', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Gallery\",\"slug\":\"gallery\",\"uri\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:19:07', '2025-04-07 07:19:07');
INSERT INTO admin_operation_log VALUES ('272', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:19:08', '2025-04-07 07:19:08');
INSERT INTO admin_operation_log VALUES ('273', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:19:29', '2025-04-07 07:19:29');
INSERT INTO admin_operation_log VALUES ('274', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:19:36', '2025-04-07 07:19:36');
INSERT INTO admin_operation_log VALUES ('275', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Kontak Kami\",\"slug\":\"kontak-kami\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:19:47', '2025-04-07 07:19:47');
INSERT INTO admin_operation_log VALUES ('276', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:19:48', '2025-04-07 07:19:48');
INSERT INTO admin_operation_log VALUES ('277', '1', 'admin/navbars/7/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 07:19:56', '2025-04-07 07:19:56');
INSERT INTO admin_operation_log VALUES ('278', '1', 'admin/navbars/7', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Gallery\",\"slug\":\"gallery\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_method\":\"PUT\"}', '2025-04-07 07:19:59', '2025-04-07 07:19:59');
INSERT INTO admin_operation_log VALUES ('279', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:19:59', '2025-04-07 07:19:59');
INSERT INTO admin_operation_log VALUES ('280', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:21:18', '2025-04-07 07:21:18');
INSERT INTO admin_operation_log VALUES ('281', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:25:33', '2025-04-07 07:25:33');
INSERT INTO admin_operation_log VALUES ('282', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Tes\",\"slug\":\"tes\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:25:39', '2025-04-07 07:25:39');
INSERT INTO admin_operation_log VALUES ('283', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:25:40', '2025-04-07 07:25:40');
INSERT INTO admin_operation_log VALUES ('284', '1', 'admin/navbars/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:26:35', '2025-04-07 07:26:35');
INSERT INTO admin_operation_log VALUES ('285', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:26:35', '2025-04-07 07:26:35');
INSERT INTO admin_operation_log VALUES ('286', '1', 'admin/navbars/2/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 07:26:44', '2025-04-07 07:26:44');
INSERT INTO admin_operation_log VALUES ('287', '1', 'admin/navbars/2/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 07:26:52', '2025-04-07 07:26:52');
INSERT INTO admin_operation_log VALUES ('288', '1', 'admin/navbars/2', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Informasi Publik\",\"slug\":\"informasi-publik\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/navbars\"}', '2025-04-07 07:27:00', '2025-04-07 07:27:00');
INSERT INTO admin_operation_log VALUES ('289', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:27:01', '2025-04-07 07:27:01');
INSERT INTO admin_operation_log VALUES ('290', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:28:09', '2025-04-07 07:28:09');
INSERT INTO admin_operation_log VALUES ('291', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:28:12', '2025-04-07 07:28:12');
INSERT INTO admin_operation_log VALUES ('292', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"tes tung\",\"slug\":null,\"uri\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:28:18', '2025-04-07 07:28:18');
INSERT INTO admin_operation_log VALUES ('293', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:28:18', '2025-04-07 07:28:18');
INSERT INTO admin_operation_log VALUES ('294', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:30:25', '2025-04-07 07:30:25');
INSERT INTO admin_operation_log VALUES ('295', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:30:29', '2025-04-07 07:30:29');
INSERT INTO admin_operation_log VALUES ('296', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"dodol garut\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:30:36', '2025-04-07 07:30:36');
INSERT INTO admin_operation_log VALUES ('297', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:30:38', '2025-04-07 07:30:38');
INSERT INTO admin_operation_log VALUES ('298', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:31:19', '2025-04-07 07:31:19');
INSERT INTO admin_operation_log VALUES ('299', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"dodol garut\",\"slug\":\"dodol-garut\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/navbars\\/2\"}', '2025-04-07 07:31:33', '2025-04-07 07:31:33');
INSERT INTO admin_operation_log VALUES ('300', '1', 'admin/navbars/2', 'GET', '127.0.0.1', '[]', '2025-04-07 07:31:33', '2025-04-07 07:31:33');
INSERT INTO admin_operation_log VALUES ('301', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:31:45', '2025-04-07 07:31:45');
INSERT INTO admin_operation_log VALUES ('302', '1', 'admin/navbars/11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:32:16', '2025-04-07 07:32:16');
INSERT INTO admin_operation_log VALUES ('303', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:32:16', '2025-04-07 07:32:16');
INSERT INTO admin_operation_log VALUES ('304', '1', 'admin/navbars/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:32:21', '2025-04-07 07:32:21');
INSERT INTO admin_operation_log VALUES ('305', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:32:21', '2025-04-07 07:32:21');
INSERT INTO admin_operation_log VALUES ('306', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:32:24', '2025-04-07 07:32:24');
INSERT INTO admin_operation_log VALUES ('307', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Pupus Dewa 19\",\"slug\":null,\"uri\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:32:33', '2025-04-07 07:32:33');
INSERT INTO admin_operation_log VALUES ('308', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:32:33', '2025-04-07 07:32:33');
INSERT INTO admin_operation_log VALUES ('309', '1', 'admin/navbars/12', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:32:56', '2025-04-07 07:32:56');
INSERT INTO admin_operation_log VALUES ('310', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:32:56', '2025-04-07 07:32:56');
INSERT INTO admin_operation_log VALUES ('311', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:33:06', '2025-04-07 07:33:06');
INSERT INTO admin_operation_log VALUES ('312', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:33:17', '2025-04-07 07:33:17');
INSERT INTO admin_operation_log VALUES ('313', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"1\",\"search_terms\":null,\"name\":\"PPID Pemprov Kep. Babel\",\"slug\":\"ppid-pemprov-kep-babel\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/navbars\\/2\"}', '2025-04-07 07:33:47', '2025-04-07 07:33:47');
INSERT INTO admin_operation_log VALUES ('314', '1', 'admin/navbars/2', 'GET', '127.0.0.1', '[]', '2025-04-07 07:33:48', '2025-04-07 07:33:48');
INSERT INTO admin_operation_log VALUES ('315', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:33:50', '2025-04-07 07:33:50');
INSERT INTO admin_operation_log VALUES ('316', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:34:14', '2025-04-07 07:34:14');
INSERT INTO admin_operation_log VALUES ('317', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:34:34', '2025-04-07 07:34:34');
INSERT INTO admin_operation_log VALUES ('318', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"3\",\"search_terms\":null,\"name\":\"Visi dan Misi\",\"slug\":\"visi-dan-misi\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/navbars\\/2\"}', '2025-04-07 07:34:52', '2025-04-07 07:34:52');
INSERT INTO admin_operation_log VALUES ('319', '1', 'admin/navbars/2', 'GET', '127.0.0.1', '[]', '2025-04-07 07:34:53', '2025-04-07 07:34:53');
INSERT INTO admin_operation_log VALUES ('320', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:34:58', '2025-04-07 07:34:58');
INSERT INTO admin_operation_log VALUES ('321', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:35:46', '2025-04-07 07:35:46');
INSERT INTO admin_operation_log VALUES ('322', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:35:52', '2025-04-07 07:35:52');
INSERT INTO admin_operation_log VALUES ('323', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"3\",\"search_terms\":null,\"name\":\"Daftar Pejabat Struktural\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:36:09', '2025-04-07 07:36:09');
INSERT INTO admin_operation_log VALUES ('324', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:36:10', '2025-04-07 07:36:10');
INSERT INTO admin_operation_log VALUES ('325', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:36:12', '2025-04-07 07:36:12');
INSERT INTO admin_operation_log VALUES ('326', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"3\",\"search_terms\":null,\"name\":\"Organisasi Perangkat Daerah\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:36:35', '2025-04-07 07:36:35');
INSERT INTO admin_operation_log VALUES ('327', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:36:36', '2025-04-07 07:36:36');
INSERT INTO admin_operation_log VALUES ('328', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:36:38', '2025-04-07 07:36:38');
INSERT INTO admin_operation_log VALUES ('329', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"3\",\"search_terms\":null,\"name\":\"Profil Pimpinan Daerah\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:37:00', '2025-04-07 07:37:00');
INSERT INTO admin_operation_log VALUES ('330', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:37:00', '2025-04-07 07:37:00');
INSERT INTO admin_operation_log VALUES ('331', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:37:02', '2025-04-07 07:37:02');
INSERT INTO admin_operation_log VALUES ('332', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"3\",\"search_terms\":null,\"name\":\"Satuan dan Unit Kerja\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:37:15', '2025-04-07 07:37:15');
INSERT INTO admin_operation_log VALUES ('333', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:37:15', '2025-04-07 07:37:15');
INSERT INTO admin_operation_log VALUES ('334', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:37:17', '2025-04-07 07:37:17');
INSERT INTO admin_operation_log VALUES ('335', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"3\",\"search_terms\":null,\"name\":\"Struktur Organisasi\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:37:35', '2025-04-07 07:37:35');
INSERT INTO admin_operation_log VALUES ('336', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:37:35', '2025-04-07 07:37:35');
INSERT INTO admin_operation_log VALUES ('337', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:37:38', '2025-04-07 07:37:38');
INSERT INTO admin_operation_log VALUES ('338', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"3\",\"search_terms\":null,\"name\":\"Tugas dan Fungsi\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:38:00', '2025-04-07 07:38:00');
INSERT INTO admin_operation_log VALUES ('339', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:38:01', '2025-04-07 07:38:01');
INSERT INTO admin_operation_log VALUES ('340', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:38:02', '2025-04-07 07:38:02');
INSERT INTO admin_operation_log VALUES ('341', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"3\",\"search_terms\":null,\"name\":\"Agenda Kerja Pimpinan\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:38:16', '2025-04-07 07:38:16');
INSERT INTO admin_operation_log VALUES ('342', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:38:16', '2025-04-07 07:38:16');
INSERT INTO admin_operation_log VALUES ('343', '1', 'admin/navbars/4/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 07:38:37', '2025-04-07 07:38:37');
INSERT INTO admin_operation_log VALUES ('344', '1', 'admin/navbars/4', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"name\":\"Standar Layanan\",\"slug\":\"standar-layanan\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_method\":\"PUT\"}', '2025-04-07 07:38:43', '2025-04-07 07:38:43');
INSERT INTO admin_operation_log VALUES ('345', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:38:43', '2025-04-07 07:38:43');
INSERT INTO admin_operation_log VALUES ('346', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:38:49', '2025-04-07 07:38:49');
INSERT INTO admin_operation_log VALUES ('347', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"name\":\"Dasar Hukum PPID\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:39:09', '2025-04-07 07:39:09');
INSERT INTO admin_operation_log VALUES ('348', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:39:09', '2025-04-07 07:39:09');
INSERT INTO admin_operation_log VALUES ('349', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:39:11', '2025-04-07 07:39:11');
INSERT INTO admin_operation_log VALUES ('350', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"name\":\"Profil PPID\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:39:22', '2025-04-07 07:39:22');
INSERT INTO admin_operation_log VALUES ('351', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:39:23', '2025-04-07 07:39:23');
INSERT INTO admin_operation_log VALUES ('352', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:39:26', '2025-04-07 07:39:26');
INSERT INTO admin_operation_log VALUES ('353', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:39:53', '2025-04-07 07:39:53');
INSERT INTO admin_operation_log VALUES ('354', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"name\":\"Struktur Organisasi PPID\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:40:11', '2025-04-07 07:40:11');
INSERT INTO admin_operation_log VALUES ('355', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:40:11', '2025-04-07 07:40:11');
INSERT INTO admin_operation_log VALUES ('356', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:40:41', '2025-04-07 07:40:41');
INSERT INTO admin_operation_log VALUES ('357', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:40:51', '2025-04-07 07:40:51');
INSERT INTO admin_operation_log VALUES ('358', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"name\":\"Tugas dan Fungsi PPID\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:41:05', '2025-04-07 07:41:05');
INSERT INTO admin_operation_log VALUES ('359', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:41:06', '2025-04-07 07:41:06');
INSERT INTO admin_operation_log VALUES ('360', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:41:08', '2025-04-07 07:41:08');
INSERT INTO admin_operation_log VALUES ('361', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"search_terms\":null,\"name\":\"Visi dan Misi PPID\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:41:26', '2025-04-07 07:41:26');
INSERT INTO admin_operation_log VALUES ('362', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:41:27', '2025-04-07 07:41:27');
INSERT INTO admin_operation_log VALUES ('363', '1', 'admin/navbars', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2025-04-07 07:41:31', '2025-04-07 07:41:31');
INSERT INTO admin_operation_log VALUES ('364', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:41:36', '2025-04-07 07:41:36');
INSERT INTO admin_operation_log VALUES ('365', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"name\":\"Daftar Informasi Publik\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:41:51', '2025-04-07 07:41:51');
INSERT INTO admin_operation_log VALUES ('366', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:41:51', '2025-04-07 07:41:51');
INSERT INTO admin_operation_log VALUES ('367', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:41:53', '2025-04-07 07:41:53');
INSERT INTO admin_operation_log VALUES ('368', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"name\":\"Daftar Informasi Publik Online\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:42:13', '2025-04-07 07:42:13');
INSERT INTO admin_operation_log VALUES ('369', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:42:13', '2025-04-07 07:42:13');
INSERT INTO admin_operation_log VALUES ('370', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:42:15', '2025-04-07 07:42:15');
INSERT INTO admin_operation_log VALUES ('371', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"name\":\"Informasi Berkala\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:42:27', '2025-04-07 07:42:27');
INSERT INTO admin_operation_log VALUES ('372', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:42:28', '2025-04-07 07:42:28');
INSERT INTO admin_operation_log VALUES ('373', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:42:29', '2025-04-07 07:42:29');
INSERT INTO admin_operation_log VALUES ('374', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"name\":\"Informasi Serta Merta\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:42:42', '2025-04-07 07:42:42');
INSERT INTO admin_operation_log VALUES ('375', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:42:42', '2025-04-07 07:42:42');
INSERT INTO admin_operation_log VALUES ('376', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:42:45', '2025-04-07 07:42:45');
INSERT INTO admin_operation_log VALUES ('377', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:42:53', '2025-04-07 07:42:53');
INSERT INTO admin_operation_log VALUES ('378', '1', 'admin/navbars', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2025-04-07 07:42:55', '2025-04-07 07:42:55');
INSERT INTO admin_operation_log VALUES ('379', '1', 'admin/navbars', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2025-04-07 07:43:09', '2025-04-07 07:43:09');
INSERT INTO admin_operation_log VALUES ('380', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"name\":\"Informasi Setiat Saat\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:43:41', '2025-04-07 07:43:41');
INSERT INTO admin_operation_log VALUES ('381', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:43:42', '2025-04-07 07:43:42');
INSERT INTO admin_operation_log VALUES ('382', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:43:47', '2025-04-07 07:43:47');
INSERT INTO admin_operation_log VALUES ('383', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"4\",\"search_terms\":null,\"name\":\"Prosedur Pelayanan Informasi Publik\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:44:03', '2025-04-07 07:44:03');
INSERT INTO admin_operation_log VALUES ('384', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:44:04', '2025-04-07 07:44:04');
INSERT INTO admin_operation_log VALUES ('385', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:44:06', '2025-04-07 07:44:06');
INSERT INTO admin_operation_log VALUES ('386', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"4\",\"search_terms\":null,\"name\":\"Prosedur Pengajuan Keberatan dan Proses Penyelesaian Sengketa Informasi\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:44:26', '2025-04-07 07:44:26');
INSERT INTO admin_operation_log VALUES ('387', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:44:27', '2025-04-07 07:44:27');
INSERT INTO admin_operation_log VALUES ('388', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:44:33', '2025-04-07 07:44:33');
INSERT INTO admin_operation_log VALUES ('389', '1', 'admin/navbars', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2025-04-07 07:44:54', '2025-04-07 07:44:54');
INSERT INTO admin_operation_log VALUES ('390', '1', 'admin/navbars', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2025-04-07 07:45:00', '2025-04-07 07:45:00');
INSERT INTO admin_operation_log VALUES ('391', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"4\",\"search_terms\":null,\"name\":\"Prosedur Permohonan Penyelesaian Sengketa Informasi\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:45:32', '2025-04-07 07:45:32');
INSERT INTO admin_operation_log VALUES ('392', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:45:32', '2025-04-07 07:45:32');
INSERT INTO admin_operation_log VALUES ('393', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:45:34', '2025-04-07 07:45:34');
INSERT INTO admin_operation_log VALUES ('394', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"4\",\"search_terms\":null,\"name\":\"Prosedur Penangan Sengketa Informasi\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:45:52', '2025-04-07 07:45:52');
INSERT INTO admin_operation_log VALUES ('395', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:45:52', '2025-04-07 07:45:52');
INSERT INTO admin_operation_log VALUES ('396', '1', 'admin/navbars', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2025-04-07 07:45:59', '2025-04-07 07:45:59');
INSERT INTO admin_operation_log VALUES ('397', '1', 'admin/navbars/35/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 07:46:02', '2025-04-07 07:46:02');
INSERT INTO admin_operation_log VALUES ('398', '1', 'admin/navbars/35', 'PUT', '127.0.0.1', '{\"parent_id\":\"4\",\"search_terms\":null,\"name\":\"Prosedur Penanganan Sengketa Informasi\",\"slug\":\"prosedur-penangan-sengketa-informasi\",\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_method\":\"PUT\"}', '2025-04-07 07:46:09', '2025-04-07 07:46:09');
INSERT INTO admin_operation_log VALUES ('399', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:46:09', '2025-04-07 07:46:09');
INSERT INTO admin_operation_log VALUES ('400', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:46:25', '2025-04-07 07:46:25');
INSERT INTO admin_operation_log VALUES ('401', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"4\",\"search_terms\":null,\"name\":\"SOP PPID\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:46:38', '2025-04-07 07:46:38');
INSERT INTO admin_operation_log VALUES ('402', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:46:38', '2025-04-07 07:46:38');
INSERT INTO admin_operation_log VALUES ('403', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:46:40', '2025-04-07 07:46:40');
INSERT INTO admin_operation_log VALUES ('404', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"4\",\"search_terms\":null,\"name\":\"Maklumat Informasi\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:46:56', '2025-04-07 07:46:56');
INSERT INTO admin_operation_log VALUES ('405', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:46:57', '2025-04-07 07:46:57');
INSERT INTO admin_operation_log VALUES ('406', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:46:58', '2025-04-07 07:46:58');
INSERT INTO admin_operation_log VALUES ('407', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"4\",\"search_terms\":null,\"name\":\"Waktu dan Biaya Layanan Informasi\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:47:11', '2025-04-07 07:47:11');
INSERT INTO admin_operation_log VALUES ('408', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:47:11', '2025-04-07 07:47:11');
INSERT INTO admin_operation_log VALUES ('409', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:47:14', '2025-04-07 07:47:14');
INSERT INTO admin_operation_log VALUES ('410', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"4\",\"search_terms\":null,\"name\":\"Kanal Layanan Informasi\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:47:33', '2025-04-07 07:47:33');
INSERT INTO admin_operation_log VALUES ('411', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:47:34', '2025-04-07 07:47:34');
INSERT INTO admin_operation_log VALUES ('412', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:48:13', '2025-04-07 07:48:13');
INSERT INTO admin_operation_log VALUES ('413', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"5\",\"search_terms\":null,\"name\":\"Pemprov Kep. Babel\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:48:26', '2025-04-07 07:48:26');
INSERT INTO admin_operation_log VALUES ('414', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:48:26', '2025-04-07 07:48:26');
INSERT INTO admin_operation_log VALUES ('415', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:48:27', '2025-04-07 07:48:27');
INSERT INTO admin_operation_log VALUES ('416', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"5\",\"search_terms\":null,\"name\":\"PPID\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:48:36', '2025-04-07 07:48:36');
INSERT INTO admin_operation_log VALUES ('417', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:48:36', '2025-04-07 07:48:36');
INSERT INTO admin_operation_log VALUES ('418', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:48:48', '2025-04-07 07:48:48');
INSERT INTO admin_operation_log VALUES ('419', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"40\",\"search_terms\":null,\"name\":\"Laporan Keuangan Pemerintah Daerah (LKPD)\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:49:12', '2025-04-07 07:49:12');
INSERT INTO admin_operation_log VALUES ('420', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:49:12', '2025-04-07 07:49:12');
INSERT INTO admin_operation_log VALUES ('421', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:49:14', '2025-04-07 07:49:14');
INSERT INTO admin_operation_log VALUES ('422', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"40\",\"search_terms\":null,\"name\":\"Laporan Penyelenggaraan Pemerintah Daerah (LPPD)\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:49:39', '2025-04-07 07:49:39');
INSERT INTO admin_operation_log VALUES ('423', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:49:39', '2025-04-07 07:49:39');
INSERT INTO admin_operation_log VALUES ('424', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:49:41', '2025-04-07 07:49:41');
INSERT INTO admin_operation_log VALUES ('425', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"41\",\"search_terms\":null,\"name\":\"Statistik Layanan Informasi Publik\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:50:02', '2025-04-07 07:50:02');
INSERT INTO admin_operation_log VALUES ('426', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:50:02', '2025-04-07 07:50:02');
INSERT INTO admin_operation_log VALUES ('427', '1', 'admin/navbars/create', 'GET', '127.0.0.1', '[]', '2025-04-07 07:50:05', '2025-04-07 07:50:05');
INSERT INTO admin_operation_log VALUES ('428', '1', 'admin/navbars', 'POST', '127.0.0.1', '{\"parent_id\":\"41\",\"search_terms\":null,\"name\":\"Laporan PPID\",\"slug\":null,\"uri\":\"#\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:50:20', '2025-04-07 07:50:20');
INSERT INTO admin_operation_log VALUES ('429', '1', 'admin/navbars', 'GET', '127.0.0.1', '[]', '2025-04-07 07:50:20', '2025-04-07 07:50:20');
INSERT INTO admin_operation_log VALUES ('430', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-04-07 07:52:50', '2025-04-07 07:52:50');
INSERT INTO admin_operation_log VALUES ('431', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"slider\",\"model_name\":\"App\\\\Models\\\\Slider\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SliderController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"caption\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"foto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"char\",\"nullable\":\"on\",\"key\":null,\"default\":\"1\",\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:59:19', '2025-04-07 07:59:19');
INSERT INTO admin_operation_log VALUES ('432', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-04-07 07:59:20', '2025-04-07 07:59:20');
INSERT INTO admin_operation_log VALUES ('433', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-07 07:59:34', '2025-04-07 07:59:34');
INSERT INTO admin_operation_log VALUES ('434', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-04-07 07:59:36', '2025-04-07 07:59:36');
INSERT INTO admin_operation_log VALUES ('435', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-07 07:59:43', '2025-04-07 07:59:43');
INSERT INTO admin_operation_log VALUES ('436', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"}]\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 07:59:56', '2025-04-07 07:59:56');
INSERT INTO admin_operation_log VALUES ('437', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-07 07:59:56', '2025-04-07 07:59:56');
INSERT INTO admin_operation_log VALUES ('438', '1', 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 08:00:00', '2025-04-07 08:00:00');
INSERT INTO admin_operation_log VALUES ('439', '1', 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Sliders\",\"icon\":\"icon-images\",\"uri\":\"sliders\",\"roles\":[null],\"permission\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_method\":\"PUT\"}', '2025-04-07 08:01:12', '2025-04-07 08:01:12');
INSERT INTO admin_operation_log VALUES ('440', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-07 08:01:12', '2025-04-07 08:01:12');
INSERT INTO admin_operation_log VALUES ('441', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-04-07 08:01:16', '2025-04-07 08:01:16');
INSERT INTO admin_operation_log VALUES ('442', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:01:19', '2025-04-07 08:01:19');
INSERT INTO admin_operation_log VALUES ('443', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:01:21', '2025-04-07 08:01:21');
INSERT INTO admin_operation_log VALUES ('444', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:02:44', '2025-04-07 08:02:44');
INSERT INTO admin_operation_log VALUES ('445', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:02:55', '2025-04-07 08:02:55');
INSERT INTO admin_operation_log VALUES ('446', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:04:18', '2025-04-07 08:04:18');
INSERT INTO admin_operation_log VALUES ('447', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:04:33', '2025-04-07 08:04:33');
INSERT INTO admin_operation_log VALUES ('448', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:05:31', '2025-04-07 08:05:31');
INSERT INTO admin_operation_log VALUES ('449', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:05:58', '2025-04-07 08:05:58');
INSERT INTO admin_operation_log VALUES ('450', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:06:44', '2025-04-07 08:06:44');
INSERT INTO admin_operation_log VALUES ('451', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:08:34', '2025-04-07 08:08:34');
INSERT INTO admin_operation_log VALUES ('452', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:09:08', '2025-04-07 08:09:08');
INSERT INTO admin_operation_log VALUES ('453', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:09:34', '2025-04-07 08:09:34');
INSERT INTO admin_operation_log VALUES ('454', '1', 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"slide 1\",\"slug\":null,\"caption\":\"<p>Slide 1<\\/p>\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:09:55', '2025-04-07 08:09:55');
INSERT INTO admin_operation_log VALUES ('455', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:09:55', '2025-04-07 08:09:55');
INSERT INTO admin_operation_log VALUES ('456', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:10:29', '2025-04-07 08:10:29');
INSERT INTO admin_operation_log VALUES ('457', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:10:55', '2025-04-07 08:10:55');
INSERT INTO admin_operation_log VALUES ('458', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:11:41', '2025-04-07 08:11:41');
INSERT INTO admin_operation_log VALUES ('459', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:11:48', '2025-04-07 08:11:48');
INSERT INTO admin_operation_log VALUES ('460', '1', 'admin/pages', 'GET', '127.0.0.1', '[]', '2025-04-07 08:13:37', '2025-04-07 08:13:37');
INSERT INTO admin_operation_log VALUES ('461', '1', 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-04-07 08:13:42', '2025-04-07 08:13:42');
INSERT INTO admin_operation_log VALUES ('462', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:13:49', '2025-04-07 08:13:49');
INSERT INTO admin_operation_log VALUES ('463', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:29:47', '2025-04-07 08:29:47');
INSERT INTO admin_operation_log VALUES ('464', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:32:02', '2025-04-07 08:32:02');
INSERT INTO admin_operation_log VALUES ('465', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:32:55', '2025-04-07 08:32:55');
INSERT INTO admin_operation_log VALUES ('466', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:33:37', '2025-04-07 08:33:37');
INSERT INTO admin_operation_log VALUES ('467', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:33:46', '2025-04-07 08:33:46');
INSERT INTO admin_operation_log VALUES ('468', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:33:55', '2025-04-07 08:33:55');
INSERT INTO admin_operation_log VALUES ('469', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:34:19', '2025-04-07 08:34:19');
INSERT INTO admin_operation_log VALUES ('470', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:35:35', '2025-04-07 08:35:35');
INSERT INTO admin_operation_log VALUES ('471', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:36:57', '2025-04-07 08:36:57');
INSERT INTO admin_operation_log VALUES ('472', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:38:04', '2025-04-07 08:38:04');
INSERT INTO admin_operation_log VALUES ('473', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:39:41', '2025-04-07 08:39:41');
INSERT INTO admin_operation_log VALUES ('474', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:40:38', '2025-04-07 08:40:38');
INSERT INTO admin_operation_log VALUES ('475', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:41:31', '2025-04-07 08:41:31');
INSERT INTO admin_operation_log VALUES ('476', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:41:49', '2025-04-07 08:41:49');
INSERT INTO admin_operation_log VALUES ('477', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:43:28', '2025-04-07 08:43:28');
INSERT INTO admin_operation_log VALUES ('478', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:48:33', '2025-04-07 08:48:33');
INSERT INTO admin_operation_log VALUES ('479', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:48:51', '2025-04-07 08:48:51');
INSERT INTO admin_operation_log VALUES ('480', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:49:01', '2025-04-07 08:49:01');
INSERT INTO admin_operation_log VALUES ('481', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:49:07', '2025-04-07 08:49:07');
INSERT INTO admin_operation_log VALUES ('482', '1', 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"slide 2\",\"slug\":null,\"caption\":\"<p>slide 2<\\/p>\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:49:20', '2025-04-07 08:49:20');
INSERT INTO admin_operation_log VALUES ('483', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:49:21', '2025-04-07 08:49:21');
INSERT INTO admin_operation_log VALUES ('484', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:49:23', '2025-04-07 08:49:23');
INSERT INTO admin_operation_log VALUES ('485', '1', 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"slide 3\",\"slug\":null,\"caption\":\"<p>slide 3<\\/p>\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:49:35', '2025-04-07 08:49:35');
INSERT INTO admin_operation_log VALUES ('486', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:49:35', '2025-04-07 08:49:35');
INSERT INTO admin_operation_log VALUES ('487', '1', 'admin/sliders/2/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 08:53:00', '2025-04-07 08:53:00');
INSERT INTO admin_operation_log VALUES ('488', '1', 'admin/sliders/2', 'PUT', '127.0.0.1', '{\"title\":\"slide 2\",\"slug\":\"slide-2\",\"foto_file_del_\":\"images\\/PPID-Banner-WEB-2.jpg,\",\"caption\":\"<p>slide 2<\\/p>\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_method\":\"PUT\"}', '2025-04-07 08:53:09', '2025-04-07 08:53:09');
INSERT INTO admin_operation_log VALUES ('489', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:53:10', '2025-04-07 08:53:10');
INSERT INTO admin_operation_log VALUES ('490', '1', 'admin/sliders/2/edit', 'GET', '127.0.0.1', '[]', '2025-04-07 08:53:15', '2025-04-07 08:53:15');
INSERT INTO admin_operation_log VALUES ('491', '1', 'admin/sliders/2', 'PUT', '127.0.0.1', '{\"title\":\"slide 2\",\"slug\":\"slide-2\",\"caption\":\"<p>slide 2<\\/p>\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\",\"_method\":\"PUT\"}', '2025-04-07 08:53:22', '2025-04-07 08:53:22');
INSERT INTO admin_operation_log VALUES ('492', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:53:22', '2025-04-07 08:53:22');
INSERT INTO admin_operation_log VALUES ('493', '1', 'admin/sliders/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:53:38', '2025-04-07 08:53:38');
INSERT INTO admin_operation_log VALUES ('494', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:53:38', '2025-04-07 08:53:38');
INSERT INTO admin_operation_log VALUES ('495', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:53:41', '2025-04-07 08:53:41');
INSERT INTO admin_operation_log VALUES ('496', '1', 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"slide 3\",\"slug\":null,\"caption\":\"<p>slide 3<\\/p>\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:53:52', '2025-04-07 08:53:52');
INSERT INTO admin_operation_log VALUES ('497', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:53:52', '2025-04-07 08:53:52');
INSERT INTO admin_operation_log VALUES ('498', '1', 'admin/sliders/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:55:08', '2025-04-07 08:55:08');
INSERT INTO admin_operation_log VALUES ('499', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:55:09', '2025-04-07 08:55:09');
INSERT INTO admin_operation_log VALUES ('500', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:55:12', '2025-04-07 08:55:12');
INSERT INTO admin_operation_log VALUES ('501', '1', 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"slide 3\",\"slug\":null,\"caption\":\"<p>slide3<\\/p>\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:55:26', '2025-04-07 08:55:26');
INSERT INTO admin_operation_log VALUES ('502', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:55:26', '2025-04-07 08:55:26');
INSERT INTO admin_operation_log VALUES ('503', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:56:17', '2025-04-07 08:56:17');
INSERT INTO admin_operation_log VALUES ('504', '1', 'admin/sliders/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:56:20', '2025-04-07 08:56:20');
INSERT INTO admin_operation_log VALUES ('505', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:56:21', '2025-04-07 08:56:21');
INSERT INTO admin_operation_log VALUES ('506', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:56:56', '2025-04-07 08:56:56');
INSERT INTO admin_operation_log VALUES ('507', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:56:58', '2025-04-07 08:56:58');
INSERT INTO admin_operation_log VALUES ('508', '1', 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"Slide3\",\"slug\":null,\"caption\":\"<p>slide 3<\\/p>\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:57:09', '2025-04-07 08:57:09');
INSERT INTO admin_operation_log VALUES ('509', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:57:09', '2025-04-07 08:57:09');
INSERT INTO admin_operation_log VALUES ('510', '1', 'admin/sliders/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:57:26', '2025-04-07 08:57:26');
INSERT INTO admin_operation_log VALUES ('511', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:57:27', '2025-04-07 08:57:27');
INSERT INTO admin_operation_log VALUES ('512', '1', 'admin/sliders/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:57:30', '2025-04-07 08:57:30');
INSERT INTO admin_operation_log VALUES ('513', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:57:30', '2025-04-07 08:57:30');
INSERT INTO admin_operation_log VALUES ('514', '1', 'admin/sliders/6', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:57:34', '2025-04-07 08:57:34');
INSERT INTO admin_operation_log VALUES ('515', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:57:34', '2025-04-07 08:57:34');
INSERT INTO admin_operation_log VALUES ('516', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:57:41', '2025-04-07 08:57:41');
INSERT INTO admin_operation_log VALUES ('517', '1', 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"Slide1\",\"slug\":null,\"caption\":\"<p>slide1<\\/p>\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:57:56', '2025-04-07 08:57:56');
INSERT INTO admin_operation_log VALUES ('518', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:57:57', '2025-04-07 08:57:57');
INSERT INTO admin_operation_log VALUES ('519', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:57:59', '2025-04-07 08:57:59');
INSERT INTO admin_operation_log VALUES ('520', '1', 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"slide2\",\"slug\":null,\"caption\":\"<p>slide2<\\/p>\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:58:09', '2025-04-07 08:58:09');
INSERT INTO admin_operation_log VALUES ('521', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:58:10', '2025-04-07 08:58:10');
INSERT INTO admin_operation_log VALUES ('522', '1', 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2025-04-07 08:58:11', '2025-04-07 08:58:11');
INSERT INTO admin_operation_log VALUES ('523', '1', 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"slide3\",\"slug\":null,\"caption\":\"<p>slide3<\\/p>\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"cx9Mn47RWSIDJQrDGujfaW0iH8YzkA0G5fCVMkUd\"}', '2025-04-07 08:58:21', '2025-04-07 08:58:21');
INSERT INTO admin_operation_log VALUES ('524', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-04-07 08:58:21', '2025-04-07 08:58:21');
INSERT INTO admin_operation_log VALUES ('525', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-05-06 02:55:36', '2025-05-06 02:55:36');
INSERT INTO admin_operation_log VALUES ('526', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-05-06 02:55:41', '2025-05-06 02:55:41');
INSERT INTO admin_operation_log VALUES ('527', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-06 02:56:23', '2025-05-06 02:56:23');
INSERT INTO admin_operation_log VALUES ('528', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"partners\",\"model_name\":\"App\\\\Models\\\\Partner\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PartnerController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alias\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"logo\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"urlna\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"char\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"7DKly5WlKZbBEA034t209pWHD1GzO72RL4oNVvrG\"}', '2025-05-06 02:58:16', '2025-05-06 02:58:16');
INSERT INTO admin_operation_log VALUES ('529', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-06 02:58:17', '2025-05-06 02:58:17');
INSERT INTO admin_operation_log VALUES ('530', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-05-06 02:58:57', '2025-05-06 02:58:57');
INSERT INTO admin_operation_log VALUES ('531', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-05-06 02:58:59', '2025-05-06 02:58:59');
INSERT INTO admin_operation_log VALUES ('532', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-06 02:59:08', '2025-05-06 02:59:08');
INSERT INTO admin_operation_log VALUES ('533', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"19\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"}]\",\"_token\":\"7DKly5WlKZbBEA034t209pWHD1GzO72RL4oNVvrG\"}', '2025-05-06 02:59:19', '2025-05-06 02:59:19');
INSERT INTO admin_operation_log VALUES ('534', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-06 02:59:19', '2025-05-06 02:59:19');
INSERT INTO admin_operation_log VALUES ('535', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-05-06 02:59:24', '2025-05-06 02:59:24');
INSERT INTO admin_operation_log VALUES ('536', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-05-06 02:59:27', '2025-05-06 02:59:27');
INSERT INTO admin_operation_log VALUES ('537', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 02:59:29', '2025-05-06 02:59:29');
INSERT INTO admin_operation_log VALUES ('538', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 02:59:34', '2025-05-06 02:59:34');
INSERT INTO admin_operation_log VALUES ('539', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:02:26', '2025-05-06 03:02:26');
INSERT INTO admin_operation_log VALUES ('540', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:07:08', '2025-05-06 03:07:08');
INSERT INTO admin_operation_log VALUES ('541', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:07:28', '2025-05-06 03:07:28');
INSERT INTO admin_operation_log VALUES ('542', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:07:43', '2025-05-06 03:07:43');
INSERT INTO admin_operation_log VALUES ('543', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:08:33', '2025-05-06 03:08:33');
INSERT INTO admin_operation_log VALUES ('544', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:08:47', '2025-05-06 03:08:47');
INSERT INTO admin_operation_log VALUES ('545', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:09:04', '2025-05-06 03:09:04');
INSERT INTO admin_operation_log VALUES ('546', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:09:57', '2025-05-06 03:09:57');
INSERT INTO admin_operation_log VALUES ('547', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:10:03', '2025-05-06 03:10:03');
INSERT INTO admin_operation_log VALUES ('548', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:10:13', '2025-05-06 03:10:13');
INSERT INTO admin_operation_log VALUES ('549', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 03:10:17', '2025-05-06 03:10:17');
INSERT INTO admin_operation_log VALUES ('550', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:10:19', '2025-05-06 03:10:19');
INSERT INTO admin_operation_log VALUES ('551', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:12:44', '2025-05-06 03:12:44');
INSERT INTO admin_operation_log VALUES ('552', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:12:53', '2025-05-06 03:12:53');
INSERT INTO admin_operation_log VALUES ('553', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:12:59', '2025-05-06 03:12:59');
INSERT INTO admin_operation_log VALUES ('554', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:13:06', '2025-05-06 03:13:06');
INSERT INTO admin_operation_log VALUES ('555', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:13:11', '2025-05-06 03:13:11');
INSERT INTO admin_operation_log VALUES ('556', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:13:20', '2025-05-06 03:13:20');
INSERT INTO admin_operation_log VALUES ('557', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:13:44', '2025-05-06 03:13:44');
INSERT INTO admin_operation_log VALUES ('558', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:14:14', '2025-05-06 03:14:14');
INSERT INTO admin_operation_log VALUES ('559', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:14:41', '2025-05-06 03:14:41');
INSERT INTO admin_operation_log VALUES ('560', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:14:53', '2025-05-06 03:14:53');
INSERT INTO admin_operation_log VALUES ('561', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:15:15', '2025-05-06 03:15:15');
INSERT INTO admin_operation_log VALUES ('562', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:15:28', '2025-05-06 03:15:28');
INSERT INTO admin_operation_log VALUES ('563', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:15:33', '2025-05-06 03:15:33');
INSERT INTO admin_operation_log VALUES ('564', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:15:38', '2025-05-06 03:15:38');
INSERT INTO admin_operation_log VALUES ('565', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:15:47', '2025-05-06 03:15:47');
INSERT INTO admin_operation_log VALUES ('566', '1', 'admin/partners', 'POST', '127.0.0.1', '{\"nama\":\"ppid pangkalpinang\",\"urlna\":\"http:\\/\\/ppid.pangkalpinangkota.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"7DKly5WlKZbBEA034t209pWHD1GzO72RL4oNVvrG\"}', '2025-05-06 03:16:35', '2025-05-06 03:16:35');
INSERT INTO admin_operation_log VALUES ('567', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:16:36', '2025-05-06 03:16:36');
INSERT INTO admin_operation_log VALUES ('568', '1', 'admin/partners', 'POST', '127.0.0.1', '{\"nama\":\"ppid pangkalpinang\",\"urlna\":\"http:\\/\\/ppid.pangkalpinangkota.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"7DKly5WlKZbBEA034t209pWHD1GzO72RL4oNVvrG\"}', '2025-05-06 03:17:04', '2025-05-06 03:17:04');
INSERT INTO admin_operation_log VALUES ('569', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 03:17:04', '2025-05-06 03:17:04');
INSERT INTO admin_operation_log VALUES ('570', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-05-06 03:17:14', '2025-05-06 03:17:14');
INSERT INTO admin_operation_log VALUES ('571', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 03:17:42', '2025-05-06 03:17:42');
INSERT INTO admin_operation_log VALUES ('572', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 03:17:44', '2025-05-06 03:17:44');
INSERT INTO admin_operation_log VALUES ('573', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 03:17:59', '2025-05-06 03:17:59');
INSERT INTO admin_operation_log VALUES ('574', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:18:08', '2025-05-06 03:18:08');
INSERT INTO admin_operation_log VALUES ('575', '1', 'admin/partners', 'POST', '127.0.0.1', '{\"nama\":\"ppid belitung\",\"urlna\":\"https:\\/\\/ppid.belitung.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"7DKly5WlKZbBEA034t209pWHD1GzO72RL4oNVvrG\"}', '2025-05-06 03:18:30', '2025-05-06 03:18:30');
INSERT INTO admin_operation_log VALUES ('576', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 03:18:31', '2025-05-06 03:18:31');
INSERT INTO admin_operation_log VALUES ('577', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:18:33', '2025-05-06 03:18:33');
INSERT INTO admin_operation_log VALUES ('578', '1', 'admin/partners', 'POST', '127.0.0.1', '{\"nama\":\"ppid bangka\",\"urlna\":\"http:\\/\\/ppid.bangka.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"7DKly5WlKZbBEA034t209pWHD1GzO72RL4oNVvrG\"}', '2025-05-06 03:19:08', '2025-05-06 03:19:08');
INSERT INTO admin_operation_log VALUES ('579', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 03:19:09', '2025-05-06 03:19:09');
INSERT INTO admin_operation_log VALUES ('580', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:19:11', '2025-05-06 03:19:11');
INSERT INTO admin_operation_log VALUES ('581', '1', 'admin/partners', 'POST', '127.0.0.1', '{\"nama\":\"ppid bangka tengah\",\"urlna\":\"https:\\/\\/bangkatengahkab.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"7DKly5WlKZbBEA034t209pWHD1GzO72RL4oNVvrG\"}', '2025-05-06 03:19:42', '2025-05-06 03:19:42');
INSERT INTO admin_operation_log VALUES ('582', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 03:19:43', '2025-05-06 03:19:43');
INSERT INTO admin_operation_log VALUES ('583', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:19:46', '2025-05-06 03:19:46');
INSERT INTO admin_operation_log VALUES ('584', '1', 'admin/partners', 'POST', '127.0.0.1', '{\"nama\":\"ppid Bangka barat\",\"urlna\":\"http:\\/\\/ppid.bangkabaratkab.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"7DKly5WlKZbBEA034t209pWHD1GzO72RL4oNVvrG\"}', '2025-05-06 03:20:09', '2025-05-06 03:20:09');
INSERT INTO admin_operation_log VALUES ('585', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 03:20:09', '2025-05-06 03:20:09');
INSERT INTO admin_operation_log VALUES ('586', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:20:14', '2025-05-06 03:20:14');
INSERT INTO admin_operation_log VALUES ('587', '1', 'admin/partners', 'POST', '127.0.0.1', '{\"nama\":\"ppid bangka selatan\",\"urlna\":\"http:\\/\\/ppid.bangkaselatankab.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"7DKly5WlKZbBEA034t209pWHD1GzO72RL4oNVvrG\"}', '2025-05-06 03:20:44', '2025-05-06 03:20:44');
INSERT INTO admin_operation_log VALUES ('588', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 03:20:44', '2025-05-06 03:20:44');
INSERT INTO admin_operation_log VALUES ('589', '1', 'admin/partners/create', 'GET', '127.0.0.1', '[]', '2025-05-06 03:20:53', '2025-05-06 03:20:53');
INSERT INTO admin_operation_log VALUES ('590', '1', 'admin/partners', 'POST', '127.0.0.1', '{\"nama\":\"Ppid Belitung Timur\",\"urlna\":\"https:\\/\\/ppid.beltim.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"7DKly5WlKZbBEA034t209pWHD1GzO72RL4oNVvrG\"}', '2025-05-06 03:21:19', '2025-05-06 03:21:19');
INSERT INTO admin_operation_log VALUES ('591', '1', 'admin/partners', 'GET', '127.0.0.1', '[]', '2025-05-06 03:21:20', '2025-05-06 03:21:20');
INSERT INTO admin_operation_log VALUES ('592', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-05-08 08:04:18', '2025-05-08 08:04:18');
INSERT INTO admin_operation_log VALUES ('593', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-08 08:04:24', '2025-05-08 08:04:24');
INSERT INTO admin_operation_log VALUES ('594', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"layanan\",\"model_name\":\"App\\\\Models\\\\Layanan\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\LayananController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"foto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"urlna\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"char\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"VkZV4MZAOXIwnk9fOF60j9IjWPUjH7EoTPzyVqkh\"}', '2025-05-08 08:06:48', '2025-05-08 08:06:48');
INSERT INTO admin_operation_log VALUES ('595', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-08 08:06:49', '2025-05-08 08:06:49');
INSERT INTO admin_operation_log VALUES ('596', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-05-08 08:07:04', '2025-05-08 08:07:04');
INSERT INTO admin_operation_log VALUES ('597', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-05-08 08:07:07', '2025-05-08 08:07:07');
INSERT INTO admin_operation_log VALUES ('598', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-08 08:07:14', '2025-05-08 08:07:14');
INSERT INTO admin_operation_log VALUES ('599', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"19\\\"},{\\\"id\\\":\\\"20\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"}]\",\"_token\":\"VkZV4MZAOXIwnk9fOF60j9IjWPUjH7EoTPzyVqkh\"}', '2025-05-08 08:07:32', '2025-05-08 08:07:32');
INSERT INTO admin_operation_log VALUES ('600', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-08 08:07:33', '2025-05-08 08:07:33');
INSERT INTO admin_operation_log VALUES ('601', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-08 08:07:36', '2025-05-08 08:07:36');
INSERT INTO admin_operation_log VALUES ('602', '1', 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '[]', '2025-05-08 08:07:42', '2025-05-08 08:07:42');
INSERT INTO admin_operation_log VALUES ('603', '1', 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Layanan Digital\",\"icon\":\"icon-file\",\"uri\":\"layanans\",\"roles\":[null],\"permission\":null,\"_token\":\"VkZV4MZAOXIwnk9fOF60j9IjWPUjH7EoTPzyVqkh\",\"_method\":\"PUT\"}', '2025-05-08 08:07:49', '2025-05-08 08:07:49');
INSERT INTO admin_operation_log VALUES ('604', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-08 08:07:50', '2025-05-08 08:07:50');
INSERT INTO admin_operation_log VALUES ('605', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-08 08:07:52', '2025-05-08 08:07:52');
INSERT INTO admin_operation_log VALUES ('606', '1', 'admin/layanans', 'GET', '127.0.0.1', '[]', '2025-05-08 08:07:55', '2025-05-08 08:07:55');
INSERT INTO admin_operation_log VALUES ('607', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:09:31', '2025-05-08 08:09:31');
INSERT INTO admin_operation_log VALUES ('608', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:09:52', '2025-05-08 08:09:52');
INSERT INTO admin_operation_log VALUES ('609', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:10:01', '2025-05-08 08:10:01');
INSERT INTO admin_operation_log VALUES ('610', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:10:14', '2025-05-08 08:10:14');
INSERT INTO admin_operation_log VALUES ('611', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:11:21', '2025-05-08 08:11:21');
INSERT INTO admin_operation_log VALUES ('612', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:11:29', '2025-05-08 08:11:29');
INSERT INTO admin_operation_log VALUES ('613', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:11:39', '2025-05-08 08:11:39');
INSERT INTO admin_operation_log VALUES ('614', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:12:21', '2025-05-08 08:12:21');
INSERT INTO admin_operation_log VALUES ('615', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:12:32', '2025-05-08 08:12:32');
INSERT INTO admin_operation_log VALUES ('616', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:12:39', '2025-05-08 08:12:39');
INSERT INTO admin_operation_log VALUES ('617', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:12:55', '2025-05-08 08:12:55');
INSERT INTO admin_operation_log VALUES ('618', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:13:10', '2025-05-08 08:13:10');
INSERT INTO admin_operation_log VALUES ('619', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:13:46', '2025-05-08 08:13:46');
INSERT INTO admin_operation_log VALUES ('620', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:14:05', '2025-05-08 08:14:05');
INSERT INTO admin_operation_log VALUES ('621', '1', 'admin/layanans', 'POST', '127.0.0.1', '{\"title\":\"Pejabat Pengelola Informasi Dokumen\",\"description\":\"<p>-<\\/p>\",\"urlna\":\"http:\\/\\/ppid.babelprov.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"VkZV4MZAOXIwnk9fOF60j9IjWPUjH7EoTPzyVqkh\"}', '2025-05-08 08:16:23', '2025-05-08 08:16:23');
INSERT INTO admin_operation_log VALUES ('622', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:16:25', '2025-05-08 08:16:25');
INSERT INTO admin_operation_log VALUES ('623', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:16:43', '2025-05-08 08:16:43');
INSERT INTO admin_operation_log VALUES ('624', '1', 'admin/layanans', 'GET', '127.0.0.1', '[]', '2025-05-08 08:16:46', '2025-05-08 08:16:46');
INSERT INTO admin_operation_log VALUES ('625', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:16:48', '2025-05-08 08:16:48');
INSERT INTO admin_operation_log VALUES ('626', '1', 'admin/layanans', 'POST', '127.0.0.1', '{\"title\":\"Pejabat Pengelola Informasi Dokumen\",\"description\":\"<p>-<\\/p>\",\"urlna\":\"http:\\/\\/ppid.babelprov.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"VkZV4MZAOXIwnk9fOF60j9IjWPUjH7EoTPzyVqkh\"}', '2025-05-08 08:17:35', '2025-05-08 08:17:35');
INSERT INTO admin_operation_log VALUES ('627', '1', 'admin/layanans', 'GET', '127.0.0.1', '[]', '2025-05-08 08:17:36', '2025-05-08 08:17:36');
INSERT INTO admin_operation_log VALUES ('628', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:17:38', '2025-05-08 08:17:38');
INSERT INTO admin_operation_log VALUES ('629', '1', 'admin/layanans', 'POST', '127.0.0.1', '{\"title\":\"Satu Data Provinsi Kep. Bangka Belitung\",\"description\":\"<p>-<\\/p>\",\"urlna\":\"https:\\/\\/sdi.babelprov.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"VkZV4MZAOXIwnk9fOF60j9IjWPUjH7EoTPzyVqkh\"}', '2025-05-08 08:18:24', '2025-05-08 08:18:24');
INSERT INTO admin_operation_log VALUES ('630', '1', 'admin/layanans', 'GET', '127.0.0.1', '[]', '2025-05-08 08:18:24', '2025-05-08 08:18:24');
INSERT INTO admin_operation_log VALUES ('631', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:18:27', '2025-05-08 08:18:27');
INSERT INTO admin_operation_log VALUES ('632', '1', 'admin/layanans', 'POST', '127.0.0.1', '{\"title\":\"Sistem Pemerintahan Berbasis Elektronik\",\"description\":\"<p>-<\\/p>\",\"urlna\":\"https:\\/\\/spbe.babelprov.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"VkZV4MZAOXIwnk9fOF60j9IjWPUjH7EoTPzyVqkh\"}', '2025-05-08 08:18:59', '2025-05-08 08:18:59');
INSERT INTO admin_operation_log VALUES ('633', '1', 'admin/layanans', 'GET', '127.0.0.1', '[]', '2025-05-08 08:19:00', '2025-05-08 08:19:00');
INSERT INTO admin_operation_log VALUES ('634', '1', 'admin/layanans/create', 'GET', '127.0.0.1', '[]', '2025-05-08 08:19:02', '2025-05-08 08:19:02');
INSERT INTO admin_operation_log VALUES ('635', '1', 'admin/layanans', 'POST', '127.0.0.1', '{\"title\":\"Website Resmi Pemprov Babel\",\"description\":\"<p>-<\\/p>\",\"urlna\":\"https:\\/\\/babelprov.go.id\\/\",\"status\":\"1\",\"search_terms\":null,\"_token\":\"VkZV4MZAOXIwnk9fOF60j9IjWPUjH7EoTPzyVqkh\"}', '2025-05-08 08:19:28', '2025-05-08 08:19:28');
INSERT INTO admin_operation_log VALUES ('636', '1', 'admin/layanans', 'GET', '127.0.0.1', '[]', '2025-05-08 08:19:29', '2025-05-08 08:19:29');
INSERT INTO admin_operation_log VALUES ('637', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-05-09 07:36:45', '2025-05-09 07:36:45');
INSERT INTO admin_operation_log VALUES ('638', '1', 'admin/media', 'GET', '127.0.0.1', '[]', '2025-05-09 07:36:55', '2025-05-09 07:36:55');
INSERT INTO admin_operation_log VALUES ('639', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/partner\",\"fn\":\"selectFile\"}', '2025-05-09 07:37:09', '2025-05-09 07:37:09');
INSERT INTO admin_operation_log VALUES ('640', '1', 'admin/media', 'GET', '127.0.0.1', '[]', '2025-05-09 07:37:13', '2025-05-09 07:37:13');
INSERT INTO admin_operation_log VALUES ('641', '1', 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-05-09 07:37:25', '2025-05-09 07:37:25');
INSERT INTO admin_operation_log VALUES ('642', '1', 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2025-05-09 07:37:29', '2025-05-09 07:37:29');
INSERT INTO admin_operation_log VALUES ('643', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-09 07:37:44', '2025-05-09 07:37:44');
INSERT INTO admin_operation_log VALUES ('644', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"news\",\"model_name\":\"App\\\\Models\\\\News\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\NewsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"8\":{\"name\":\"tags\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"introtext\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"fulltext\",\"type\":\"longText\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"foto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"publish_date\",\"type\":\"date\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"publish_status\",\"type\":\"char\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"7\":{\"name\":\"publish_by\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"qAi1JXEUiThgLE7WTMD8wxpe1fWk6iiPZlbWJm5w\"}', '2025-05-09 07:41:53', '2025-05-09 07:41:53');
INSERT INTO admin_operation_log VALUES ('645', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-09 07:41:54', '2025-05-09 07:41:54');
INSERT INTO admin_operation_log VALUES ('646', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-05-09 07:42:15', '2025-05-09 07:42:15');
INSERT INTO admin_operation_log VALUES ('647', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-05-09 07:42:17', '2025-05-09 07:42:17');
INSERT INTO admin_operation_log VALUES ('648', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-09 07:42:22', '2025-05-09 07:42:22');
INSERT INTO admin_operation_log VALUES ('649', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"19\\\"},{\\\"id\\\":\\\"20\\\"},{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"}]\",\"_token\":\"qAi1JXEUiThgLE7WTMD8wxpe1fWk6iiPZlbWJm5w\"}', '2025-05-09 07:42:30', '2025-05-09 07:42:30');
INSERT INTO admin_operation_log VALUES ('650', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-09 07:42:30', '2025-05-09 07:42:30');
INSERT INTO admin_operation_log VALUES ('651', '1', 'admin/media', 'GET', '127.0.0.1', '[]', '2025-05-09 07:42:34', '2025-05-09 07:42:34');
INSERT INTO admin_operation_log VALUES ('652', '1', 'admin/news', 'GET', '127.0.0.1', '[]', '2025-05-09 07:42:38', '2025-05-09 07:42:38');
INSERT INTO admin_operation_log VALUES ('653', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 07:43:44', '2025-05-09 07:43:44');
INSERT INTO admin_operation_log VALUES ('654', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 07:47:56', '2025-05-09 07:47:56');
INSERT INTO admin_operation_log VALUES ('655', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 07:48:38', '2025-05-09 07:48:38');
INSERT INTO admin_operation_log VALUES ('656', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 07:50:00', '2025-05-09 07:50:00');
INSERT INTO admin_operation_log VALUES ('657', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 07:51:21', '2025-05-09 07:51:21');
INSERT INTO admin_operation_log VALUES ('658', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 07:51:30', '2025-05-09 07:51:30');
INSERT INTO admin_operation_log VALUES ('659', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 07:54:23', '2025-05-09 07:54:23');
INSERT INTO admin_operation_log VALUES ('660', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 08:07:10', '2025-05-09 08:07:10');
INSERT INTO admin_operation_log VALUES ('661', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 08:09:14', '2025-05-09 08:09:14');
INSERT INTO admin_operation_log VALUES ('662', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 08:12:44', '2025-05-09 08:12:44');
INSERT INTO admin_operation_log VALUES ('663', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 08:13:49', '2025-05-09 08:13:49');
INSERT INTO admin_operation_log VALUES ('664', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 09:25:17', '2025-05-09 09:25:17');
INSERT INTO admin_operation_log VALUES ('665', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 09:25:54', '2025-05-09 09:25:54');
INSERT INTO admin_operation_log VALUES ('666', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 09:31:33', '2025-05-09 09:31:33');
INSERT INTO admin_operation_log VALUES ('667', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 09:31:44', '2025-05-09 09:31:44');
INSERT INTO admin_operation_log VALUES ('668', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 09:31:50', '2025-05-09 09:31:50');
INSERT INTO admin_operation_log VALUES ('669', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 09:32:15', '2025-05-09 09:32:15');
INSERT INTO admin_operation_log VALUES ('670', '1', 'admin/news', 'POST', '127.0.0.1', '{\"title\":\"test berita 1\",\"tags\":[\"tes,berita\"],\"search_terms\":null,\"introtext\":\"<p>tes tes tes<\\/p>\",\"fulltext\":\"<p>tes tes tes<\\/p>\",\"publish_date\":\"2025-05-09\",\"publish_status\":\"1\",\"publish_by\":\"kelakluk\",\"_token\":\"qAi1JXEUiThgLE7WTMD8wxpe1fWk6iiPZlbWJm5w\"}', '2025-05-09 09:33:10', '2025-05-09 09:33:10');
INSERT INTO admin_operation_log VALUES ('671', '1', 'admin/news', 'GET', '127.0.0.1', '[]', '2025-05-09 09:33:10', '2025-05-09 09:33:10');
INSERT INTO admin_operation_log VALUES ('672', '1', 'admin/news/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-09 09:42:14', '2025-05-09 09:42:14');
INSERT INTO admin_operation_log VALUES ('673', '1', 'admin/news/1', 'PUT', '127.0.0.1', '{\"title\":\"test berita 1 dodol\",\"slug\":null,\"tags\":[\"tes,berita\"],\"search_terms\":null,\"introtext\":\"<p>tes tes tes<\\/p>\",\"fulltext\":\"<p>tes tes tes<\\/p>\",\"publish_date\":\"2025-05-09\",\"publish_status\":\"1\",\"publish_by\":\"kelakluk\",\"_token\":\"qAi1JXEUiThgLE7WTMD8wxpe1fWk6iiPZlbWJm5w\",\"_method\":\"PUT\"}', '2025-05-09 09:42:21', '2025-05-09 09:42:21');
INSERT INTO admin_operation_log VALUES ('674', '1', 'admin/news', 'GET', '127.0.0.1', '[]', '2025-05-09 09:42:22', '2025-05-09 09:42:22');
INSERT INTO admin_operation_log VALUES ('675', '1', 'admin/news/create', 'GET', '127.0.0.1', '[]', '2025-05-09 09:44:10', '2025-05-09 09:44:10');
INSERT INTO admin_operation_log VALUES ('676', '1', 'admin/news', 'POST', '127.0.0.1', '{\"title\":\"tes berita 2\",\"slug\":null,\"tags\":[\"2,tes,berita\"],\"search_terms\":null,\"introtext\":\"<p>asd asdasd<\\/p>\",\"fulltext\":\"<p>asd asd<\\/p>\",\"publish_date\":\"2025-05-09\",\"publish_status\":\"1\",\"publish_by\":\"dada\",\"_token\":\"qAi1JXEUiThgLE7WTMD8wxpe1fWk6iiPZlbWJm5w\"}', '2025-05-09 09:44:34', '2025-05-09 09:44:34');
INSERT INTO admin_operation_log VALUES ('677', '1', 'admin/news', 'GET', '127.0.0.1', '[]', '2025-05-09 09:44:34', '2025-05-09 09:44:34');
INSERT INTO admin_operation_log VALUES ('678', '1', 'admin/news/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-09 09:46:54', '2025-05-09 09:46:54');
INSERT INTO admin_operation_log VALUES ('679', '1', 'admin/news/2', 'PUT', '127.0.0.1', '{\"title\":\"tes berita 2222\",\"slug\":\"681dce8283cfc-tes-berita-2\",\"tags\":[\"2,tes,berita\"],\"search_terms\":null,\"introtext\":\"<p>asd asdasd<\\/p>\",\"fulltext\":\"<p>asd asd<\\/p>\",\"publish_date\":\"2025-05-09\",\"publish_status\":\"1\",\"publish_by\":\"dada\",\"_token\":\"qAi1JXEUiThgLE7WTMD8wxpe1fWk6iiPZlbWJm5w\",\"_method\":\"PUT\"}', '2025-05-09 09:47:00', '2025-05-09 09:47:00');
INSERT INTO admin_operation_log VALUES ('680', '1', 'admin/news', 'GET', '127.0.0.1', '[]', '2025-05-09 09:47:00', '2025-05-09 09:47:00');
INSERT INTO admin_operation_log VALUES ('681', '1', 'admin', 'GET', '127.0.0.1', '[]', '2025-06-03 04:00:20', '2025-06-03 04:00:20');
INSERT INTO admin_operation_log VALUES ('682', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-03 04:00:34', '2025-06-03 04:00:34');
INSERT INTO admin_operation_log VALUES ('683', '1', 'admin/sliders', 'GET', '127.0.0.1', '[]', '2025-06-03 04:00:41', '2025-06-03 04:00:41');
INSERT INTO admin_operation_log VALUES ('684', '1', 'admin/pages', 'GET', '127.0.0.1', '[]', '2025-06-03 04:00:50', '2025-06-03 04:00:50');

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
-- Table structure for `layanan`
-- ----------------------------
DROP TABLE IF EXISTS `layanan`;
CREATE TABLE `layanan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `urlna` varchar(255) DEFAULT NULL,
  `status` char(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of layanan
-- ----------------------------
INSERT INTO layanan VALUES ('1', 'Pejabat Pengelola Informasi Dokumen', null, '<p>-</p>', 'layanan//09fdfe583d3998017cb900a6d66c5c09.png', 'http://ppid.babelprov.go.id/', '1', '2025-05-08 08:17:36', '2025-05-08 08:17:36');
INSERT INTO layanan VALUES ('2', 'Satu Data Provinsi Kep. Bangka Belitung', null, '<p>-</p>', 'layanan//ca5f1198a1efc4b1daed5cd93098f43b.png', 'https://sdi.babelprov.go.id/', '1', '2025-05-08 08:18:24', '2025-05-08 08:18:24');
INSERT INTO layanan VALUES ('3', 'Sistem Pemerintahan Berbasis Elektronik', null, '<p>-</p>', 'layanan//aa478f8f800ce21dbb1873effd25929c.png', 'https://spbe.babelprov.go.id/', '1', '2025-05-08 08:18:59', '2025-05-08 08:18:59');
INSERT INTO layanan VALUES ('4', 'Website Resmi Pemprov Babel', null, '<p>-</p>', 'layanan//7e2242b367dc6fbb29282ec8d6378481.png', 'https://babelprov.go.id/', '1', '2025-05-08 08:19:28', '2025-05-08 08:19:28');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO migrations VALUES ('1', '0001_01_01_000000_create_users_table', '1');
INSERT INTO migrations VALUES ('2', '0001_01_01_000001_create_cache_table', '1');
INSERT INTO migrations VALUES ('3', '0001_01_01_000002_create_jobs_table', '1');
INSERT INTO migrations VALUES ('4', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO migrations VALUES ('5', '2025_04_03_135511_create_category_table', '1');
INSERT INTO migrations VALUES ('6', '2025_04_03_140317_create_page_table', '1');
INSERT INTO migrations VALUES ('7', '2025_04_06_053601_create_navbar_table', '2');
INSERT INTO migrations VALUES ('8', '2025_04_06_053745_create_navbar_table', '3');
INSERT INTO migrations VALUES ('9', '2025_04_07_075919_create_slider_table', '4');
INSERT INTO migrations VALUES ('10', '2025_05_06_025816_create_partners_table', '5');
INSERT INTO migrations VALUES ('11', '2025_05_08_080648_create_layanan_table', '6');
INSERT INTO migrations VALUES ('12', '2025_05_09_074153_create_news_table', '7');

-- ----------------------------
-- Table structure for `navbar`
-- ----------------------------
DROP TABLE IF EXISTS `navbar`;
CREATE TABLE `navbar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of navbar
-- ----------------------------
INSERT INTO navbar VALUES ('1', null, null, 'Profil', 'profil-ppid', null, '#', null, '2025-04-06 06:13:37', '2025-04-07 07:15:16');
INSERT INTO navbar VALUES ('2', null, null, 'Informasi Publik', 'informasi-publik', null, '#', null, '2025-04-06 06:14:55', '2025-04-07 07:27:00');
INSERT INTO navbar VALUES ('3', '1', null, 'Pemerintah Provinsi Kepulauan Bangka Belitung', null, null, '#', null, '2025-04-06 06:16:03', '2025-04-06 06:16:03');
INSERT INTO navbar VALUES ('4', null, null, 'Standar Layanan', 'standar-layanan', null, '#', null, '2025-04-06 07:44:16', '2025-04-07 07:38:43');
INSERT INTO navbar VALUES ('5', null, null, 'Laporan', 'laporan', null, '#', null, '2025-04-07 07:18:11', '2025-04-07 07:18:11');
INSERT INTO navbar VALUES ('6', null, null, 'Berita', 'berita', null, '#', null, '2025-04-07 07:18:55', '2025-04-07 07:18:55');
INSERT INTO navbar VALUES ('7', null, null, 'Gallery', 'gallery', null, '#', null, '2025-04-07 07:19:07', '2025-04-07 07:19:59');
INSERT INTO navbar VALUES ('8', null, null, 'Kontak Kami', 'kontak-kami', null, '#', null, '2025-04-07 07:19:47', '2025-04-07 07:19:47');
INSERT INTO navbar VALUES ('13', '1', null, 'PPID Pemprov Kep. Babel', 'ppid-pemprov-kep-babel', null, '#', null, '2025-04-07 07:33:47', '2025-04-07 07:33:47');
INSERT INTO navbar VALUES ('14', '3', null, 'Visi dan Misi', 'visi-dan-misi', null, '#', null, '2025-04-07 07:34:52', '2025-04-07 07:34:52');
INSERT INTO navbar VALUES ('15', '3', null, 'Daftar Pejabat Struktural', 'daftar-pejabat-struktural', null, '#', null, '2025-04-07 07:36:10', '2025-04-07 07:36:10');
INSERT INTO navbar VALUES ('16', '3', null, 'Organisasi Perangkat Daerah', 'organisasi-perangkat-daerah', null, '#', null, '2025-04-07 07:36:35', '2025-04-07 07:36:35');
INSERT INTO navbar VALUES ('17', '3', null, 'Profil Pimpinan Daerah', 'profil-pimpinan-daerah', null, '#', null, '2025-04-07 07:37:00', '2025-04-07 07:37:00');
INSERT INTO navbar VALUES ('18', '3', null, 'Satuan dan Unit Kerja', 'satuan-dan-unit-kerja', null, '#', null, '2025-04-07 07:37:15', '2025-04-07 07:37:15');
INSERT INTO navbar VALUES ('19', '3', null, 'Struktur Organisasi', 'struktur-organisasi', null, '#', null, '2025-04-07 07:37:35', '2025-04-07 07:37:35');
INSERT INTO navbar VALUES ('20', '3', null, 'Tugas dan Fungsi', 'tugas-dan-fungsi', null, '#', null, '2025-04-07 07:38:00', '2025-04-07 07:38:00');
INSERT INTO navbar VALUES ('21', '3', null, 'Agenda Kerja Pimpinan', 'agenda-kerja-pimpinan', null, '#', null, '2025-04-07 07:38:16', '2025-04-07 07:38:16');
INSERT INTO navbar VALUES ('22', '13', null, 'Dasar Hukum PPID', 'dasar-hukum-ppid', null, '#', null, '2025-04-07 07:39:09', '2025-04-07 07:39:09');
INSERT INTO navbar VALUES ('23', '13', null, 'Profil PPID', 'profil-ppid', null, '#', null, '2025-04-07 07:39:22', '2025-04-07 07:39:22');
INSERT INTO navbar VALUES ('24', '13', null, 'Struktur Organisasi PPID', 'struktur-organisasi-ppid', null, '#', null, '2025-04-07 07:40:11', '2025-04-07 07:40:11');
INSERT INTO navbar VALUES ('25', '13', null, 'Tugas dan Fungsi PPID', 'tugas-dan-fungsi-ppid', null, '#', null, '2025-04-07 07:41:05', '2025-04-07 07:41:05');
INSERT INTO navbar VALUES ('26', '13', null, 'Visi dan Misi PPID', 'visi-dan-misi-ppid', null, '#', null, '2025-04-07 07:41:26', '2025-04-07 07:41:26');
INSERT INTO navbar VALUES ('27', '2', null, 'Daftar Informasi Publik', 'daftar-informasi-publik', null, '#', null, '2025-04-07 07:41:51', '2025-04-07 07:41:51');
INSERT INTO navbar VALUES ('28', '2', null, 'Daftar Informasi Publik Online', 'daftar-informasi-publik-online', null, '#', null, '2025-04-07 07:42:13', '2025-04-07 07:42:13');
INSERT INTO navbar VALUES ('29', '2', null, 'Informasi Berkala', 'informasi-berkala', null, '#', null, '2025-04-07 07:42:27', '2025-04-07 07:42:27');
INSERT INTO navbar VALUES ('30', '2', null, 'Informasi Serta Merta', 'informasi-serta-merta', null, '#', null, '2025-04-07 07:42:42', '2025-04-07 07:42:42');
INSERT INTO navbar VALUES ('31', '2', null, 'Informasi Setiat Saat', 'informasi-setiat-saat', null, '#', null, '2025-04-07 07:43:41', '2025-04-07 07:43:41');
INSERT INTO navbar VALUES ('32', '4', null, 'Prosedur Pelayanan Informasi Publik', 'prosedur-pelayanan-informasi-publik', null, '#', null, '2025-04-07 07:44:03', '2025-04-07 07:44:03');
INSERT INTO navbar VALUES ('33', '4', null, 'Prosedur Pengajuan Keberatan dan Proses Penyelesaian Sengketa Informasi', 'prosedur-pengajuan-keberatan-dan-proses-penyelesaian-sengketa-informasi', null, '#', null, '2025-04-07 07:44:27', '2025-04-07 07:44:27');
INSERT INTO navbar VALUES ('34', '4', null, 'Prosedur Permohonan Penyelesaian Sengketa Informasi', 'prosedur-permohonan-penyelesaian-sengketa-informasi', null, '#', null, '2025-04-07 07:45:32', '2025-04-07 07:45:32');
INSERT INTO navbar VALUES ('35', '4', null, 'Prosedur Penanganan Sengketa Informasi', 'prosedur-penanganan-sengketa-informasi', null, '#', null, '2025-04-07 07:45:52', '2025-04-07 07:46:09');
INSERT INTO navbar VALUES ('36', '4', null, 'SOP PPID', 'sop-ppid', null, '#', null, '2025-04-07 07:46:38', '2025-04-07 07:46:38');
INSERT INTO navbar VALUES ('37', '4', null, 'Maklumat Informasi', 'maklumat-informasi', null, '#', null, '2025-04-07 07:46:56', '2025-04-07 07:46:56');
INSERT INTO navbar VALUES ('38', '4', null, 'Waktu dan Biaya Layanan Informasi', 'waktu-dan-biaya-layanan-informasi', null, '#', null, '2025-04-07 07:47:11', '2025-04-07 07:47:11');
INSERT INTO navbar VALUES ('39', '4', null, 'Kanal Layanan Informasi', 'kanal-layanan-informasi', null, '#', null, '2025-04-07 07:47:33', '2025-04-07 07:47:33');
INSERT INTO navbar VALUES ('40', '5', null, 'Pemprov Kep. Babel', 'pemprov-kep-babel', null, '#', null, '2025-04-07 07:48:26', '2025-04-07 07:48:26');
INSERT INTO navbar VALUES ('41', '5', null, 'PPID', 'ppid', null, '#', null, '2025-04-07 07:48:36', '2025-04-07 07:48:36');
INSERT INTO navbar VALUES ('42', '40', null, 'Laporan Keuangan Pemerintah Daerah (LKPD)', 'laporan-keuangan-pemerintah-daerah-lkpd', null, '#', null, '2025-04-07 07:49:12', '2025-04-07 07:49:12');
INSERT INTO navbar VALUES ('43', '40', null, 'Laporan Penyelenggaraan Pemerintah Daerah (LPPD)', 'laporan-penyelenggaraan-pemerintah-daerah-lppd', null, '#', null, '2025-04-07 07:49:39', '2025-04-07 07:49:39');
INSERT INTO navbar VALUES ('44', '41', null, 'Statistik Layanan Informasi Publik', 'statistik-layanan-informasi-publik', null, '#', null, '2025-04-07 07:50:02', '2025-04-07 07:50:02');
INSERT INTO navbar VALUES ('45', '41', null, 'Laporan PPID', 'laporan-ppid', null, '#', null, '2025-04-07 07:50:20', '2025-04-07 07:50:20');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `introtext` text DEFAULT NULL,
  `fulltext` longtext DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `publish_status` char(255) DEFAULT NULL,
  `publish_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO news VALUES ('1', 'test berita 1 dodol', 'test-berita-1-dodol', '1,tes,berita,artikel', '<p>tes tes tes</p>', '<p>tes tes tes</p>', 'news//427a50c7c8c83880afd0ce493622f893.png', '2025-05-09', '1', 'kelakluk', '2025-05-09 09:33:10', '2025-05-09 09:42:21');
INSERT INTO news VALUES ('2', 'tes berita 2222', '1831635800828691-tes-berita-2222', '2,tes,berita', '<p>asd asdasd</p>', '<p>asd asd</p>', 'news//cb0e26f3f470c38cc22b0c944974e97f.JPG', '2025-05-09', '1', 'dada', '2025-05-09 09:44:34', '2025-05-09 09:47:00');

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
-- Table structure for `partners`
-- ----------------------------
DROP TABLE IF EXISTS `partners`;
CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `urlna` varchar(255) DEFAULT NULL,
  `status` char(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of partners
-- ----------------------------
INSERT INTO partners VALUES ('1', 'ppid pangkalpinang', null, 'partner//5599a8d5e165b5563daf444df24426e6.png', 'http://ppid.pangkalpinangkota.go.id/', '1', '2025-05-06 03:17:04', '2025-05-06 03:17:04');
INSERT INTO partners VALUES ('2', 'ppid belitung', null, 'partner//f69c89d390f64684b193aebfbff1ee29.png', 'https://ppid.belitung.go.id/', '1', '2025-05-06 03:18:30', '2025-05-06 03:18:30');
INSERT INTO partners VALUES ('3', 'ppid bangka', null, 'partner//fbd8e4e71b8c8a89add3bd6b3c70ad6d.png', 'http://ppid.bangka.go.id/', '1', '2025-05-06 03:19:08', '2025-05-06 03:19:08');
INSERT INTO partners VALUES ('4', 'ppid bangka tengah', null, 'partner//4cfe7d71ebadb663f8f470524f7e6455.png', 'https://bangkatengahkab.go.id/', '1', '2025-05-06 03:19:42', '2025-05-06 03:19:42');
INSERT INTO partners VALUES ('5', 'ppid Bangka barat', null, 'partner//07bb3d9e43f69e2991b4be0baf819c30.png', 'http://ppid.bangkabaratkab.go.id/', '1', '2025-05-06 03:20:09', '2025-05-06 03:20:09');
INSERT INTO partners VALUES ('6', 'ppid bangka selatan', null, 'partner//10a4488b7730535b5c6cd8521b3f953f.png', 'http://ppid.bangkaselatankab.go.id/', '1', '2025-05-06 03:20:44', '2025-05-06 03:20:44');
INSERT INTO partners VALUES ('7', 'Ppid Belitung Timur', null, 'partner//a3e60c1db60280c61a3371d20ceba7c5.png', 'https://ppid.beltim.go.id/', '1', '2025-05-06 03:21:19', '2025-05-06 03:21:19');

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
INSERT INTO sessions VALUES ('hKUf6AksJFW9ZqcxiAxBqok1jyDVSUtqkevFcerA', null, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0JaQnhIdWNqQ0lUNXA2SU16Y2ZRTENXNWZJMHJtR1I3d2JVeGRVayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1747144984');
INSERT INTO sessions VALUES ('ItoYgjaj6uDgB8JwLN4JDx0FP2HUHfEdk7mKyc4K', null, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjg3b1V0a2ZOc2g1RVE1SmlNeXBlQ3RLeHlNZUZrd2lId3ZGQ0xraCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', '1749815258');
INSERT INTO sessions VALUES ('setI2Y7aZbuxlgwJV24wgqavEifEnfJMpqu4ljKw', null, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicW5BaDF3bnBJQXFrRkRSb08xY1VaV2VJWHAwdGRiMkE5cElNUElIbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1747483116');
INSERT INTO sessions VALUES ('XeFtbkNeGSQUaiQuZ90SjHau0Gokmi9CqsrJCjRB', null, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSEpSZktTVWV6TENaRVpxcHJtM203TFdLOHYydUkwaFcya1NxZFAzRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', '1748924706');

-- ----------------------------
-- Table structure for `slider`
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `caption` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status` char(255) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO slider VALUES ('7', 'Slide1', 'slide1', '<p>slide1</p>', 'slider//1444d54f0422c43a07d2a88540fe32a4.jpg', '1', '2025-04-07 08:57:57', '2025-04-07 08:57:57');
INSERT INTO slider VALUES ('8', 'slide2', 'slide2', '<p>slide2</p>', 'slider//0ebf7eaeaaa5d0587f5641b87aea4118.jpg', '1', '2025-04-07 08:58:09', '2025-04-07 08:58:09');
INSERT INTO slider VALUES ('9', 'slide3', 'slide3', '<p>slide3</p>', 'slider//0910d058d3862805df08912db9d5048c.jpeg', '1', '2025-04-07 08:58:21', '2025-04-07 08:58:21');

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
