SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 6000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\er_StudySites.csv
set markup csv on
SELECT 
    PK_STUDYSITES, 
    FK_CODELST_STUDYSITETYPE, 
    FK_SITE, 
    FK_STUDY, 
    CREATED_ON, 
    CREATOR, 
    ENR_NOTIFYTO, 
    ENR_STAT_NOTIFYTO, 
    IS_REVIEWBASED_ENR, 
    LAST_MODIFIED_BY, 
    LAST_MODIFIED_ON, 
    STUDYSITE_ENRCOUNT, 
    STUDYSITE_LSAMPLESIZE
FROM ERES.ER_STUDYSITES;
spool off;
exit;