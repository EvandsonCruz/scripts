select username, osuser, sql_id, status, machine from Gv$session where username = 'NINFO'
  and status = 'ACTIVE'

DECLARE
  v_sql_tune varchar2(4000);
BEGIN
 v_sql_tune:= DBMS_SQLTUNE.CREATE_TUNING_TASK(SQL_ID => '5mwkjcz2h08nk', SCOPE =>
 DBMS_SQLTUNE.SCOPE_COMPREHENSIVE, TIME_LIMIT => 300, TASK_NAME => 'TuningPIS02', DESCRIPTION => 'TuningPIS02');
END;
/                  

BEGIN    
  DBMS_SQLTUNE.EXECUTE_TUNING_TASK('TuningPIS02');
END;
/

SELECT DBMS_SQLTUNE.REPORT_TUNING_TASK('TuningPIS02') RECOMMENDATION FROM DUAL;


select * from DBA_SQL_PROFILES order by 5 desc

BEGIN
  DBMS_SQLTUNE.DROP_SQL_PROFILE(name => 'SYS_SQLPROF_016882a6e32c0001');
END;
/
