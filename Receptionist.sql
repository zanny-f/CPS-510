--------------------------------------------------------
--  File created - Thursday-October-06-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RECEPTIONIST
--------------------------------------------------------

  CREATE TABLE "F4RAHIM"."RECEPTIONIST" 
   (	"RECEPTIONIST_ID" NUMBER, 
	"PASSWORD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
REM INSERTING into F4RAHIM.RECEPTIONIST
SET DEFINE OFF;
Insert into F4RAHIM.RECEPTIONIST (RECEPTIONIST_ID,PASSWORD) values (123456789,'Receptionist1');
Insert into F4RAHIM.RECEPTIONIST (RECEPTIONIST_ID,PASSWORD) values (987654321,'Receptionist2');
--------------------------------------------------------
--  Constraints for Table RECEPTIONIST
--------------------------------------------------------

  ALTER TABLE "F4RAHIM"."RECEPTIONIST" MODIFY ("RECEPTIONIST_ID" NOT NULL ENABLE);
 
  ALTER TABLE "F4RAHIM"."RECEPTIONIST" MODIFY ("PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table RECEPTIONIST
--------------------------------------------------------

  ALTER TABLE "F4RAHIM"."RECEPTIONIST" ADD CONSTRAINT "RECEPTIONIST_ID" FOREIGN KEY ("RECEPTIONIST_ID")
	  REFERENCES "F4RAHIM"."STAFF_PROFILE" ("STAFF_ID") ENABLE;
