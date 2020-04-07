SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 6000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\er_Site.csv
set markup csv on
SELECT
    PK_SITE,
    FK_CodeLst_Type,
    Created_on,
    Creator,
    Last_Modified_By,
    Last_modified_date,
    Site_Hidden,
    Site_ID,
    Site_Name,
    Site_Parent
FROM ERES.ER_Site
WHERE Site_ID <> '1'; 
spool off;
exit;