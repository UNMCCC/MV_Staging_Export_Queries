SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 16000
set pagesize 0
set sqlprompt ''
set trimspool on
set termout off
set headsep off
spool D:\MiniVelos\Sources\Sch_EventUsr.csv
set markup csv on
SELECT
  PK_EVENTUSR,
  EVENTUSR ,
  EVENTUSR_TYPE,
  FK_EVENT,
  RID,
  CREATOR,
  LAST_MODIFIED_BY,
  to_char(LAST_MODIFIED_DATE,'DD-MON-YYYY'),
  to_char(CREATED_ON,'DD-MON-YYYY'),
  IP_ADD,
  EVENTUSR_DURATION ,
  EVENTUSR_NOTES,
  PROPAGATE_FROM
FROM ESCH.SCH_EVENTUSR;
spool off;
exit