--------------------------------------------------------
--  File created - Thursday-October-06-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SURGERY_RECORD
--------------------------------------------------------

  CREATE TABLE "F4RAHIM"."SURGERY_RECORD" 
   (	"HEALTH_ID" NUMBER(*,0), 
	"SURGERY" VARCHAR2(500 BYTE), 
	"SURGEON_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
REM INSERTING into F4RAHIM.SURGERY_RECORD
SET DEFINE OFF;
Insert into F4RAHIM.SURGERY_RECORD (HEALTH_ID,SURGERY,SURGEON_ID) values (123456789,'Leg Surgery',123456789);
Insert into F4RAHIM.SURGERY_RECORD (HEALTH_ID,SURGERY,SURGEON_ID) values (712261248,'Hand Surgery',987654321);
--------------------------------------------------------
--  Constraints for Table SURGERY_RECORD
--------------------------------------------------------

  ALTER TABLE "F4RAHIM"."SURGERY_RECORD" MODIFY ("HEALTH_ID" NOT NULL ENABLE);
 
  ALTER TABLE "F4RAHIM"."SURGERY_RECORD" MODIFY ("SURGEON_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table SURGERY_RECORD
--------------------------------------------------------

  ALTER TABLE "F4RAHIM"."SURGERY_RECORD" ADD FOREIGN KEY ("HEALTH_ID")
	  REFERENCES "F4RAHIM"."MEDICAL_RECORD" ("HEALTH_CARD_NUMBER") ENABLE;
