SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 20000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\er_StudyDiseaseSite.csv
set markup csv on
SELECT
    PK_STUDY,
    STUDY_DISEASE_SITE
FROM ERES.ER_Study;
spool off;
exit;

 