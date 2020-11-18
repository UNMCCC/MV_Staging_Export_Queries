SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 16000
set pagesize 0
set sqlprompt ''
set trimspool on
set termout off
set headsep off
spool D:\MiniVelos\Sources\Sch_EventStat.csv
set markup csv on
SELECT
  PK_EVENTSTAT, 
  to_char(EVENTSTAT_DT,'DD-MON-YYYY'),
  EVENTSTAT_NOTES,
  FK_EVENT,
  RID,
  CREATOR,
  LAST_MODIFIED_BY, 
  to_char(LAST_MODIFIED_DATE,'DD-MON-YYYY'), 
  to_char(CREATED_ON,'DD-MON-YYYY'),
  IP_ADD,
  EVENTSTAT,
  to_char(EVENTSTAT_ENDDT ,'DD-MON-YYYY')    
FROM ESCH.SCH_EVENTSTAT;
spool off;
exit