SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 16000
set pagesize 0
set sqlprompt ''
set trimspool on
set termout off
set headsep off
spool D:\MiniVelos\Sources\er_CodeLst.csv
set markup csv on
SELECT
    PK_CodeLst,
    CodeLst_Type,
    CodeLst_SubTyp,
    CodeLst_Desc,
    Created_On,
    Creator,
    Last_Modified_By,
    Last_Modified_Date
FROM ERES.ER_CODELST;
spool off;
exit