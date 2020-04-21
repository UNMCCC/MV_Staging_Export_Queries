SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 6000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\er_StudyStat.csv
set markup csv on
SELECT  
  PK_STUDYSTAT,
  FK_CODELST_REVBOARD,
  FK_CODELST_STUDYSTAT,
  FK_SITE,
  FK_STUDY,
  FK_USER_DOCBY,
  to_char(CREATED_ON,'DD-MON-YYYY'),
  CREATOR,
  CURRENT_STAT,
  LAST_MODIFIED_BY,
  to_char(LAST_MODIFIED_DATE,'DD-MON-YYYY'),
  OUTCOME,
  STATUS_TYPE,
  STUDYSTAT_ASSIGNEDTO,
  to_char(STUDYSTAT_DATE,'DD-MON-YYYY'),
  to_char(STUDYSTAT_ENDT,'DD-MON-YYYY'),
  to_char(STUDYSTAT_MEETDT,'DD-MON-YYYY'),
  STUDYSTAT_NOTE,
  to_char(STUDYSTAT_VALIDT,'DD-MON-YYYY')
FROM ERES.ER_STUDYSTAT;
spool off;
exit;
