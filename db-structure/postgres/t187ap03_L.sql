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

 Date: 20/01/2026 10:21:20
*/


-- ----------------------------
-- Table structure for t187ap03_L
-- ----------------------------
DROP TABLE IF EXISTS "public"."t187ap03_L";
CREATE TABLE "public"."t187ap03_L" (
  "report_at" varchar(7) COLLATE "pg_catalog"."default" NOT NULL,
  "stock_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "company_name" varchar(255) COLLATE "pg_catalog"."default",
  "company_abbreviation" varchar(255) COLLATE "pg_catalog"."default",
  "country_of_incorporation" varchar(255) COLLATE "pg_catalog"."default",
  "industry_category" int4,
  "address" varchar(255) COLLATE "pg_catalog"."default",
  "unified_business_no" varchar(12) COLLATE "pg_catalog"."default",
  "chairman" varchar(36) COLLATE "pg_catalog"."default",
  "general_manager" varchar(36) COLLATE "pg_catalog"."default",
  "spokesperson" varchar(36) COLLATE "pg_catalog"."default",
  "spokesperson_title" varchar(36) COLLATE "pg_catalog"."default",
  "deputy_spokesperson" varchar(36) COLLATE "pg_catalog"."default",
  "telephone" varchar(20) COLLATE "pg_catalog"."default",
  "date_of_incorporation" varchar(8) COLLATE "pg_catalog"."default",
  "date_of_listing" varchar(8) COLLATE "pg_catalog"."default",
  "par_value_per_common_share" varchar(255) COLLATE "pg_catalog"."default",
  "paid_in_capital" int8,
  "private_placement_shares" int8,
  "preferred_shares" int8,
  "financial_statement_type" int2,
  "stock_transfer_agent" varchar(255) COLLATE "pg_catalog"."default",
  "transfer_agent_tel" varchar(20) COLLATE "pg_catalog"."default",
  "transfer_agent_address" varchar(255) COLLATE "pg_catalog"."default",
  "cpa_firm" varchar(255) COLLATE "pg_catalog"."default",
  "cpa_1" varchar(36) COLLATE "pg_catalog"."default",
  "cpa_2" varchar(36) COLLATE "pg_catalog"."default",
  "english_abbreviation" varchar(255) COLLATE "pg_catalog"."default",
  "english_mailing_address" varchar(255) COLLATE "pg_catalog"."default",
  "fax" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "website" varchar(255) COLLATE "pg_catalog"."default",
  "outstanding_common_shares" int8
)
;
COMMENT ON COLUMN "public"."t187ap03_L"."report_at" IS '出表日期';
COMMENT ON COLUMN "public"."t187ap03_L"."stock_code" IS '公司代號';
COMMENT ON COLUMN "public"."t187ap03_L"."company_name" IS '公司名稱';
COMMENT ON COLUMN "public"."t187ap03_L"."company_abbreviation" IS '公司簡稱';
COMMENT ON COLUMN "public"."t187ap03_L"."country_of_incorporation" IS '外國企業註冊地國';
COMMENT ON COLUMN "public"."t187ap03_L"."industry_category" IS '產業別';
COMMENT ON COLUMN "public"."t187ap03_L"."address" IS '住址';
COMMENT ON COLUMN "public"."t187ap03_L"."unified_business_no" IS '營利事業統一編號';
COMMENT ON COLUMN "public"."t187ap03_L"."chairman" IS '董事長';
COMMENT ON COLUMN "public"."t187ap03_L"."general_manager" IS '總經理';
COMMENT ON COLUMN "public"."t187ap03_L"."spokesperson" IS '發言人';
COMMENT ON COLUMN "public"."t187ap03_L"."spokesperson_title" IS '發言人職稱';
COMMENT ON COLUMN "public"."t187ap03_L"."deputy_spokesperson" IS '代理發言人';
COMMENT ON COLUMN "public"."t187ap03_L"."telephone" IS '總機電話';
COMMENT ON COLUMN "public"."t187ap03_L"."date_of_incorporation" IS '成立日期';
COMMENT ON COLUMN "public"."t187ap03_L"."date_of_listing" IS '上市日期';
COMMENT ON COLUMN "public"."t187ap03_L"."par_value_per_common_share" IS '普通每股面積額';
COMMENT ON COLUMN "public"."t187ap03_L"."paid_in_capital" IS '實收資本額';
COMMENT ON COLUMN "public"."t187ap03_L"."private_placement_shares" IS '私募股數';
COMMENT ON COLUMN "public"."t187ap03_L"."preferred_shares" IS '特別股';
COMMENT ON COLUMN "public"."t187ap03_L"."financial_statement_type" IS '編制財務報表類型';
COMMENT ON COLUMN "public"."t187ap03_L"."stock_transfer_agent" IS '股票過戶機構';
COMMENT ON COLUMN "public"."t187ap03_L"."transfer_agent_tel" IS '過戶電話';
COMMENT ON COLUMN "public"."t187ap03_L"."transfer_agent_address" IS '過戶地址';
COMMENT ON COLUMN "public"."t187ap03_L"."cpa_firm" IS '簽證會計事務所';
COMMENT ON COLUMN "public"."t187ap03_L"."cpa_1" IS '簽證會計師1';
COMMENT ON COLUMN "public"."t187ap03_L"."cpa_2" IS '簽證會計師2';
COMMENT ON COLUMN "public"."t187ap03_L"."english_abbreviation" IS '英文簡稱';
COMMENT ON COLUMN "public"."t187ap03_L"."english_mailing_address" IS '英文通訊地址';
COMMENT ON COLUMN "public"."t187ap03_L"."fax" IS '傳真機號碼';
COMMENT ON COLUMN "public"."t187ap03_L"."email" IS '電子郵件信箱';
COMMENT ON COLUMN "public"."t187ap03_L"."website" IS '網址';
COMMENT ON COLUMN "public"."t187ap03_L"."outstanding_common_shares" IS '已發行普通股數或TDR原股發行股數';

-- ----------------------------
-- Indexes structure for table t187ap03_L
-- ----------------------------
CREATE INDEX "t187ap03_L_unified_business_no_idx" ON "public"."t187ap03_L" USING btree (
  "unified_business_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t187ap03_L
-- ----------------------------
ALTER TABLE "public"."t187ap03_L" ADD CONSTRAINT "t187ap03_L_pkey" PRIMARY KEY ("stock_code");
