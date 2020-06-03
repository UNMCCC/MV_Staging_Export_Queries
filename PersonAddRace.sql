SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 6000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\PersonAddRace.csv
set markup csv on
SELECT 
  PK_PERSON,
  PERSON_ADD_RACE
FROM EPAT.PERSON;
spool off;
exit;