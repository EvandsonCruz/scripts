--remove processamento paralelo indices
select 'ALTER INDEX ' || owner || '.' || index_name || ' NOPARALLEL;' from dba_indexes 
where tablespace_name not in ('SYSTEM','SYSAUX') and table_owner = 'GC' order by index_name;