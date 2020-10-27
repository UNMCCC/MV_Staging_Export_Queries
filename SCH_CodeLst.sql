SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 16000
set pagesize 0
set sqlprompt ''
set trimspool on
set termout off
set headsep off
spool D:\MiniVelos\Sources\sch_codelst.csv
set markup csv on
SELECT
	PK_CODELST,
  CODELST_TYPE,
  CODELST_SUBTYP,
  CODELST_DESC,
  CODELST_HIDE,
  CODELST_SEQ,
  CODELST_MAINT,
  CREATOR,
  LAST_MODIFIED_BY,
  to_char(LAST_MODIFIED_DATE,'DD-MON-YYYY'),
  to_char(CREATED_ON,'DD-MON-YYYY'),
  FK_ACCOUNT,
  RID,
  IP_ADD,
  CODELST_CUSTOM_COL1,
  CODELST_STUDY_ROLE,
  CODELST_KIND
FROM ESCH.SCH_CODELST;
spool off;
exit