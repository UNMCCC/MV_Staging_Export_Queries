SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 6000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\Pat_Demog_ORIEN.csv
set markup csv on
SELECT
    REPLACE(SUBSTR(ER_PATPROT.PATPROT_PATSTDID,10,11),'-') AS TCCID    -- Patient Study ID [TCCID]
    ,TO_CHAR(PERSON.PERSON_DOB,'DD-MON-YYYY') AS DOB    -- Patient Date of Birth [DOB]
    ,PERSON.PERSON_CODE AS MRN               -- Patient ID [MRN]
FROM  ERES.ER_PATPROT ER_PATPROT 
      INNER JOIN ERES.ER_PER ER_PER     ON ER_PATPROT.FK_PER = ER_PER.PK_PER
      INNER JOIN EPAT.PERSON PERSON     ON ER_PER.PER_CODE = PERSON.PERSON_CODE
WHERE
    ER_patprot.fk_study = 4168  -- this is the prim. key for the ORIEN study
    AND ER_PATPROT.PATPROT_ENROLDT >= TO_DATE('01-01-2016', 'DD-MM-YYYY') ;
spool off;
exit;