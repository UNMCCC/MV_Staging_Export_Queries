SET PAGES 0
SET FEEDBACK OFF
set echo off
set linesize 6000
set pagesize 0
set sqlprompt ''
set trimspool on
SET TERMOUT OFF
set headsep off
spool D:\MiniVelos\Sources\er_StudyTeam.csv
set markup csv on
 SELECT
  PK_STUDYTEAM,
  FK_CODELST_TMROLE,
  FK_USER,
  FK_STUDY,
  CREATOR,
  LAST_MODIFIED_BY,
  LAST_MODIFIED_DATE,
  CREATED_ON,
  STUDY_TEAM_RIGHTS,
  STUDY_TEAM_USR_TYPE,
  STUDY_SITEFLAG,
  STUDYTEAM_STATUS
FROM ERES.ER_STUDYTEAM;
spool off;
exit;
