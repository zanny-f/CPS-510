--------------------------------------------------------
--  File created - Thursday-October-06-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DOCTOR
--------------------------------------------------------

  CREATE TABLE "F4RAHIM"."DOCTOR" 
   (	"DOC_ID" NUMBER, 
	"PASSWORD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
REM INSERTING into F4RAHIM.DOCTOR
SET DEFINE OFF;
Insert into F4RAHIM.DOCTOR (DOC_ID,PASSWORD) values (123456789,'TestDoc1');
Insert into F4RAHIM.DOCTOR (DOC_ID,PASSWORD) values (987654321,'TestDoc2');
--------------------------------------------------------
--  Constraints for Table DOCTOR
--------------------------------------------------------

  ALTER TABLE "F4RAHIM"."DOCTOR" MODIFY ("DOC_ID" NOT NULL ENABLE);
 
  ALTER TABLE "F4RAHIM"."DOCTOR" MODIFY ("PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DOCTOR
--------------------------------------------------------

  ALTER TABLE "F4RAHIM"."DOCTOR" ADD CONSTRAINT "DOCTOR_ID" FOREIGN KEY ("DOC_ID")
	  REFERENCES "F4RAHIM"."STAFF_PROFILE" ("STAFF_ID") ENABLE;
