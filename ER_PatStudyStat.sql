SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 6000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\er_PatStudyStat.csv
set markup csv on
SELECT
    PK_PatStudyStat,
    FK_CodeLst_Stat,
    FK_Per,
    FK_Study,
    to_char(Created_On,'DD-MON-YYYY')
    Creator,   
    Current_Stat,   
    Inform_Consent_Ver,
    Last_Modified_By, 
    to_char(Last_Modified_Date,'DD-MON-YYYY'),   
    to_char(PatStudyStat_Date,'DD-MON-YYYY'),
    to_char(PatStudyStat_Endt,'DD-MON-YYYY'),
    PatStudyStat_Note,
    PatStudyStat_Reason,
    Screen_Number,
    Screened_By,
    Screening_Outcome  
 FROM ERES.ER_PatStudyStat;
spool off;
exit;
