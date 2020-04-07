SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 6000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\Pat_PerID.csv
set markup csv on
SELECT
  PK_PERID,
  FK_CODELST_IDTYPE,
  FK_PER,
  CREATED_ON,
  CREATOR,
  LAST_MODIFIED_BY,
  LAST_MODIFIED_DATE,
  PERID_ID
FROM EPAT.PAT_PERID;
spool off;
exit;
