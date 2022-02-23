--consulta dinamica rebuild paralelo de indice
select 'ALTER INDEX ' || owner || '.' || index_name || ' REBUILD ONLINE PARALLEL 8 TABLESPACE TB_DESTINO;' from dba_indexes 
where tablespace_name not in ('SYSTEM','SYSAUX') and table_owner = 'GC' order by index_name;