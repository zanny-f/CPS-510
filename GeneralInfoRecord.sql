--------------------------------------------------------
--  File created - Thursday-October-06-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GENERAL_INFO_RECORD
--------------------------------------------------------

  CREATE TABLE "F4RAHIM"."GENERAL_INFO_RECORD" 
   (	"HEALTH_ID" NUMBER, 
	"BLOOD_TYPE" VARCHAR2(2 BYTE), 
	"WEIGHT" NUMBER(3,1), 
	"BLOOD_PRESSURE" NUMBER(3,0), 
	"TEMPERATURE" NUMBER(3,1), 
	"HEIGHT" NUMBER(3,0), 
	"ALLERGY" VARCHAR2(100 BYTE), 
	"ALLERGY_REACTION" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
REM INSERTING into F4RAHIM.GENERAL_INFO_RECORD
SET DEFINE OFF;
Insert into F4RAHIM.GENERAL_INFO_RECORD (HEALTH_ID,BLOOD_TYPE,WEIGHT,BLOOD_PRESSURE,TEMPERATURE,HEIGHT,ALLERGY,ALLERGY_REACTION) values (123456789,'O+',31,150,31,150,'Peanuts','Hives');
Insert into F4RAHIM.GENERAL_INFO_RECORD (HEALTH_ID,BLOOD_TYPE,WEIGHT,BLOOD_PRESSURE,TEMPERATURE,HEIGHT,ALLERGY,ALLERGY_REACTION) values (712261248,'A-',80,160,27,155,'Trees','Itch');
--------------------------------------------------------
--  DDL for Index GENERAL_INFO_RECORD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "F4RAHIM"."GENERAL_INFO_RECORD_PK" ON "F4RAHIM"."GENERAL_INFO_RECORD" ("HEALTH_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  Constraints for Table GENERAL_INFO_RECORD
--------------------------------------------------------

  ALTER TABLE "F4RAHIM"."GENERAL_INFO_RECORD" ADD CONSTRAINT "GENERAL_INFO_RECORD_PK" PRIMARY KEY ("HEALTH_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE"  ENABLE;
 
  ALTER TABLE "F4RAHIM"."GENERAL_INFO_RECORD" MODIFY ("HEALTH_ID" NOT NULL ENABLE);
 
  ALTER TABLE "F4RAHIM"."GENERAL_INFO_RECORD" MODIFY ("BLOOD_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "F4RAHIM"."GENERAL_INFO_RECORD" MODIFY ("WEIGHT" NOT NULL ENABLE);
 
  ALTER TABLE "F4RAHIM"."GENERAL_INFO_RECORD" MODIFY ("BLOOD_PRESSURE" NOT NULL ENABLE);
 
  ALTER TABLE "F4RAHIM"."GENERAL_INFO_RECORD" MODIFY ("TEMPERATURE" NOT NULL ENABLE);
 
  ALTER TABLE "F4RAHIM"."GENERAL_INFO_RECORD" MODIFY ("HEIGHT" NOT NULL ENABLE);
 
  ALTER TABLE "F4RAHIM"."GENERAL_INFO_RECORD" MODIFY ("ALLERGY" NOT NULL ENABLE);
 
  ALTER TABLE "F4RAHIM"."GENERAL_INFO_RECORD" MODIFY ("ALLERGY_REACTION" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table GENERAL_INFO_RECORD
--------------------------------------------------------

  ALTER TABLE "F4RAHIM"."GENERAL_INFO_RECORD" ADD FOREIGN KEY ("HEALTH_ID")
	  REFERENCES "F4RAHIM"."MEDICAL_RECORD" ("HEALTH_CARD_NUMBER") ENABLE;
