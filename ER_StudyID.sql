SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 6000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\er_StudyID.csv
set markup csv on
SELECT
  PK_STUDYID,
  FK_CODELST_IDTYPE,
  FK_STUDY,
  to_char(CREATED_ON,'DD-MON-YYYY'),
  CREATOR,
  LAST_MODIFIED_BY ,
  to_char(LAST_MODIFIED_DATE,'DD-MON-YYYY'),
  STUDYID_ID
 FROM ERES.ER_StudyID;
spool off;
exit;
