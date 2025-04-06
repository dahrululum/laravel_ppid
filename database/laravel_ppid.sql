/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : laravel_ppid

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2025-04-06 19:33:46
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO admin_menu VALUES ('1', '0', '1', 'Dashboard', 'icon-chart-bar', '/', null, null, '2025-04-04 09:00:09');
INSERT INTO admin_menu VALUES ('2', '0', '5', 'Admin', 'icon-server', '', null, null, '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('3', '2', '6', 'Users', 'icon-users', 'auth/users', null, null, '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('4', '2', '7', 'Roles', 'icon-user', 'auth/roles', null, null, '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('5', '2', '8', 'Permission', 'icon-ban', 'auth/permissions', null, null, '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('6', '2', '9', 'Menu', 'icon-bars', 'auth/menu', null, null, '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('7', '2', '10', 'Operation log', 'icon-history', 'auth/logs', null, null, '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('8', '0', '11', 'Helpers', 'icon-cogs', '', null, '2025-04-04 08:47:20', '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('9', '8', '12', 'Scaffold', 'icon-keyboard', 'helpers/scaffold', null, '2025-04-04 08:47:20', '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('10', '8', '13', 'Database terminal', 'icon-database', 'helpers/terminal/database', null, '2025-04-04 08:47:20', '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('11', '8', '14', 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', null, '2025-04-04 08:47:20', '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('12', '8', '15', 'Routes', 'icon-list-alt', 'helpers/routes', null, '2025-04-04 08:47:20', '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('13', '0', '16', 'Media manager', 'icon-file', 'media', null, '2025-04-04 08:47:39', '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('14', '0', '4', 'Pages', 'icon-book-open', 'http://127.0.0.1:8000/admin/pages', null, '2025-04-04 08:58:56', '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('15', '0', '3', 'Categories', 'icon-clipboard-list', 'http://127.0.0.1:8000/admin/categories', null, '2025-04-04 08:59:58', '2025-04-06 05:38:33');
INSERT INTO admin_menu VALUES ('16', '0', '2', 'Navbars', 'icon-file', 'navbars', null, '2025-04-06 05:36:02', '2025-04-06 05:38:33');

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
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of navbar
-- ----------------------------
INSERT INTO navbar VALUES ('1', '0', null, 'Profile PPID', 'profile-ppid', null, '#', null, '2025-04-06 06:13:37', '2025-04-06 07:41:40');
INSERT INTO navbar VALUES ('2', '0', null, 'Informasi Publik', null, null, '#', null, '2025-04-06 06:14:55', '2025-04-06 06:14:55');
INSERT INTO navbar VALUES ('3', '1', null, 'Pemerintah Provinsi Kepulauan Bangka Belitung', null, null, '#', null, '2025-04-06 06:16:03', '2025-04-06 06:16:03');
INSERT INTO navbar VALUES ('4', '0', null, 'Standar Layanan', 'standar-layanan', null, '#', null, '2025-04-06 07:44:16', '2025-04-06 07:44:16');

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
INSERT INTO sessions VALUES ('dno9AuKpjmasnDXKMD5KmHeaMNFYWFZp6Y0k8G3n', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieW5nVXVsTjExSUMzb2ZScHRFa3JFTXdSM0FLbEFlazB0eFNINGxNdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', '1743936887');
INSERT INTO sessions VALUES ('xbUWlGrdQHy1OdgDQO0e4lqSOa4r03cvlwwXPi2T', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUTNUQmdpa3dTRWhjcVVFaU9jWFJaWTlPTk5VVE5BdENCU0NIZkdmSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9uYXZiYXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', '1743925506');

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
