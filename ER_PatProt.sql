SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 16000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\er_PatProt.csv
set markup csv on
SELECT
    PK_Patprot,
    FK_CodeLstLoc, 
    FK_CODELST_PTST_DTH_STDREL,    
    FK_Per,
    FK_Site_Enrolling,  
    FK_Study,
    FK_User,
    FK_UserAssTo,
    to_char(Created_On,'DD-MON-YYYY'),    
    Creator,
    to_char(Date_Of_Death,'DD-MON-YYYY'),
    Death_Std_Rltd_Other,     
    Inform_Consent_Ver,
    Last_Modified_By,    
    to_char(Last_Modified_Date,'DD-MON-YYYY'),    
    PatProt_ConSign,
    to_char(PatProt_ConSignDt,'DD-MON-YYYY'),    
    to_char(PatProt_DiscDt,'DD-MON-YYYY'),
    to_char(PatProt_EnrolDt,'DD-MON-YYYY'),  
    PatProt_Notes,  
    PatProt_Othr_Dis_Code, 
    PatProt_PatStdId,     
    PatProt_Physician,
    PatProt_Reason,       
    PatProt_Start,       
    PatProt_Stat,       
    PatProt_TreatingOrg
FROM ERES.ER_PATPROT;
spool off;
exit;

    