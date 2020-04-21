SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 20000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\er_Study.csv
set markup csv on
SELECT
    PK_STUDY,
    FK_AUTHOR,
    FK_CODELST_BLIND,
    FK_CODELST_PHASE,
    FK_CODELST_PURPOSE,
    FK_CODELST_RESTYPE,
    FK_CODELST_SCOPE,
    FK_CODELST_SPONSOR,
    FK_CODELST_TAREA,
    FK_CODELST_TYPE,
    to_char(CREATED_ON,'DD-MON-YYYY'),
    CREATOR,
    LAST_MODIFIED_BY,
    to_Char(LAST_MODIFIED_DATE,'DD-MON-YYYY'),
    NCI_TRIAL_IDENTIFIER,
    NCT_NUMBER,
    STUDY_ACTUALDT,
    STUDY_ASSOC,
    STUDY_CONTACT,
    STUDY_COORDINATOR,
    STUDY_CREATION_TYPE,
    STUDY_DISEASE_SITE,
    STUDY_DIVISION,
    STUDY_DUR,
    STUDY_DURUNIT,
    to_char(STUDY_END_DATE,'DD-MON-YYYY'),
    to_char(STUDY_ESTBEGINDT,'DD-MON-YYYY'),
    STUDY_INVIND_FLAG,
    STUDY_INVIND_NUMBER,
    STUDY_MAJ_AUTH,
    STUDY_NSAMPLSIZE,
    STUDY_NUMBER,
    STUDY_OTHERPRINV,
    STUDY_PARENTID,   
    STUDY_PRINV,
    STUDY_PRODNAME,
    STUDY_SAMPLSIZE,
    STUDY_SPONSOR,
    STUDY_SPONSORID,
    STUDY_TITLE
FROM ERES.ER_Study;
spool off;
exit;

 