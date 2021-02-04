/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100416
 Source Host           : localhost:3306
 Source Schema         : itic

 Target Server Type    : MySQL
 Target Server Version : 100416
 File Encoding         : 65001

 Date: 19/11/2020 10:02:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for facturas
-- ----------------------------
DROP TABLE IF EXISTS `facturas`;
CREATE TABLE `facturas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` datetime(0) NOT NULL,
  `subtotal` decimal(10, 2) NOT NULL,
  `total` decimal(10, 2) NOT NULL,
  `moneda` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sello` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rfc_emisor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rfc_receptor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uuid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of facturas
-- ----------------------------
INSERT INTO `facturas` VALUES (2, '3.3', '2017-10-30 09:09:23', 2269400.00, 809.68, 'MXN', 'kqFJelLV1B99l8DunR98pn5k8uCwi94k+PhZJ2crw5Et2+qSkoROBlOWsoXrv93j5UUPBkxTmlStwTGBHSHWiQr1ewA4/fzseNIaWokVbIr8iFwrZETgZWp6Q+dErqLntDPISWYHmXfnvXi/Om7hCtklZC/msv3ZmmojcZEkjJb0Rk+sVDh+qm3sRbx40k1xKX1xtgLnX4/P/DwZlv+mj31YE4MEpy48xMjBA7dPNE4dF9UL3mTAQhwMV40MCrLpjTn95ov8mnL0ftaxuqzGXhqqNcDk1YF5OtBXuGFKwWAfY53bNxz1GeVY1+/8xZsmUmuukwA5uvIa7ghGt/4twA==', 'LAHH850905BZ4', 'HEPR930322977', '3XY8X226-7BFF-3D24-AC4C-4C4F9EBTF58A');

SET FOREIGN_KEY_CHECKS = 1;
