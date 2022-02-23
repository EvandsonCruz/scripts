CREATE OR REPLACE TRIGGER SYS.TGR_ENABLE_TRACE
after
logon
on database
begin
	IF (UPPER(SYS_CONTEXT('USERENV','HOST')) = 'SAPPIPRDAPP1') OR  (UPPER(SYS_CONTEXT('USERENV','HOST')) = 'SAPPIPRDAPP2') THEN
		EXECUTE IMMEDIATE 'alter session set TIMED_STATISTICS=TRUE';
		EXECUTE IMMEDIATE 'alter session set STATISTICS_LEVEL=ALL';
		EXECUTE IMMEDIATE 'alter session set max_dump_file_size=UNLIMITED';
		EXECUTE IMMEDIATE 'alter session set tracefile_identifier=''TRACE_GCWEB''';
		EXECUTE IMMEDIATE 'ALTER SESSION SET EVENTS ''10046 TRACE NAME CONTEXT FOREVER, LEVEL 12''';
	END IF;
END;
/