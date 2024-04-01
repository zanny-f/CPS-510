--------------------------------------------------------
--  File created - Thursday-October-06-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NURSE
--------------------------------------------------------

  CREATE TABLE "F4RAHIM"."NURSE" 
   (	"NURSE_ID" NUMBER, 
	"PASSWORD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
REM INSERTING into F4RAHIM.NURSE
SET DEFINE OFF;
Insert into F4RAHIM.NURSE (NURSE_ID,PASSWORD) values (123456789,'Nurse1');
Insert into F4RAHIM.NURSE (NURSE_ID,PASSWORD) values (987654321,'Nurse2');
--------------------------------------------------------
--  Constraints for Table NURSE
--------------------------------------------------------

  ALTER TABLE "F4RAHIM"."NURSE" MODIFY ("NURSE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "F4RAHIM"."NURSE" MODIFY ("PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table NURSE
--------------------------------------------------------

  ALTER TABLE "F4RAHIM"."NURSE" ADD CONSTRAINT "NURSE_FK1" FOREIGN KEY ("NURSE_ID")
	  REFERENCES "F4RAHIM"."STAFF_PROFILE" ("STAFF_ID") ENABLE;
