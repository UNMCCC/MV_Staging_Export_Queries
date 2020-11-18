SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 16000
set pagesize 0
set sqlprompt ''
set trimspool on
set termout off
set headsep off
spool D:\MiniVelos\Sources\sch_protstat.csv
set markup csv on
SELECT
  PK_PROTSTAT,
  FK_EVENT ,
  PROTSTAT,
  to_char(PROTSTAT_DT,'DD-MON-YYYY'),
  PROTSTAT_BY,
  PROTSTAT_NOTE,
  RID,
  CREATOR,
  LAST_MODIFIED_BY,
  to_char(LAST_MODIFIED_DATE,'DD-MON-YYYY'),
  to_char(CREATED_ON,'DD-MON-YYYY'),
  IP_ADD,
  FK_CODELST_CALSTAT
FROM ESCH.SCH_PROTSTAT;
spool off;
exit