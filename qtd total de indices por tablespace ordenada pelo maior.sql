--qtd total de indices por tablespace ordenada pelo maior
select count(*), tablespace_name from dba_indexes 
where tablespace_name not in ('SYSTEM','SYSAUX') and table_owner = 'GC' group by tablespace_name order by 1 desc;