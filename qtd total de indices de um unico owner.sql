--conta qtd total de indices de um unico owner
select count(*) index_name from sys.dba_indexes 
where tablespace_name not in ('SYSTEM','SYSAUX') and table_owner = 'GC';