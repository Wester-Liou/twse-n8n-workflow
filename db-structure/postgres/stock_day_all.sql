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

 Date: 20/01/2026 10:21:06
*/


-- ----------------------------
-- Table structure for stock_day_all
-- ----------------------------
DROP TABLE IF EXISTS "public"."stock_day_all";
CREATE TABLE "public"."stock_day_all" (
  "date" varchar(7) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "trade_volume" int8,
  "trade_value" int8,
  "opening_price" numeric(10,2),
  "highest_price" numeric(10,2),
  "lowest_price" numeric(10,2),
  "closing_price" numeric(10,2),
  "change" numeric(10,2),
  "transaction" int4
)
;

-- ----------------------------
-- Primary Key structure for table stock_day_all
-- ----------------------------
ALTER TABLE "public"."stock_day_all" ADD CONSTRAINT "stock_day_all_pkey" PRIMARY KEY ("code", "date");
