SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 6000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\er_User.csv
set markup csv on
SELECT 
    PK_USER,
    FK_CODELST_JOBTYPE, 
    FK_CODELST_SPL, 
    FK_SITEID, 
    to_char(CREATED_ON,'DD-MON-YYYY'), 
    CREATOR, 
    LAST_MODIFIED_BY, 
    to_char(LAST_MODIFIED_DATE,'DD-MON-YYYY'), 
    USR_FIRSTNAME,
    USR_LASTNAME, 
    USR_MIDNAME, 
    USR_SITEFLAG, 
    USR_STAT,
    USR_TYPE
FROM ERES.ER_USER;
spool off;
exit;