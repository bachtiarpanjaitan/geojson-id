/*
 Navicat Premium Data Transfer

 Source Server         : Sqlite Polygon
 Source Server Type    : SQLite
 Source Server Version : 3035005 (3.35.5)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3035005 (3.35.5)
 File Encoding         : 65001

 Date: 10/08/2023 23:54:50
*/

-- PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for adm3
-- ----------------------------
DROP TABLE IF EXISTS adm3;
CREATE TABLE adm3 (
    shape_leng DOUBLE NULL,
    shape_area DOUBLE NULL,
    name VARCHAR(50) NOT NULL,
    code VARCHAR(50) NOT NULL,
    adm0 VARCHAR(50) NULL,
    adm0_code VARCHAR(50) NULL,
    coordinates JSON NOT NULL,
    id INT NOT NULL,
    adm1 VARCHAR(50) NULL,
    adm1_code VARCHAR(50) NULL,
    adm2 VARCHAR(50) NULL,
    adm2_code VARCHAR(50) NULL,
    x DOUBLE NULL,
    y DOUBLE NULL,
    PRIMARY KEY (id)
);


-- PRAGMA foreign_keys = true;
