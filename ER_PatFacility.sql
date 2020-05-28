SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 16000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\er_patfacility.csv
set markup csv on
select 
    pk_patfacility,
    fk_per,
    fk_site,
    created_on,
    creator,
    last_modified_by,
    last_modified_date,
    pat_facilityID,
    patfacility_accessright,
    patfacility_default,
    patfacility_otherprovider,
    patfacility_provider,
    patfacility_regdate
 from eres.er_patfacility;
spool off;
exit;

    