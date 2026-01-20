/*
 Navicat Premium Data Transfer

 Source Server         : Twse
 Source Server Type    : PostgreSQL
 Source Server Version : 180001 (180001)
 Source Host           : 100.98.15.77:5432
 Source Catalog        : twse
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 180001 (180001)
 File Encoding         : 65001

 Date: 20/01/2026 10:20:55
*/


-- ----------------------------
-- Table structure for mi_index
-- ----------------------------
DROP TABLE IF EXISTS "public"."mi_index";
CREATE TABLE "public"."mi_index" (
  "date" varchar(7) COLLATE "pg_catalog"."default" NOT NULL,
  "index" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "closing_index" int8,
  "change" varchar(1) COLLATE "pg_catalog"."default",
  "point_change" numeric(10,2),
  "percentage_change" numeric(10,2),
  "special_handling_note" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table mi_index
-- ----------------------------
ALTER TABLE "public"."mi_index" ADD CONSTRAINT "mi_index_pkey" PRIMARY KEY ("index", "date");
