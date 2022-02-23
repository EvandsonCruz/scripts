--owner indice tablaspace e tipo
select owner, index_name,tablespace_name, index_type from dba_indexes 
where tablespace_name not in ('SYSTEM','SYSAUX') and table_owner = 'GC' order by index_name;