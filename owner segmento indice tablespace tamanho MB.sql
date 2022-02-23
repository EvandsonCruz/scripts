--owner segmento indice tablespace tamanho MB
select owner, segment_name, segment_type, tablespace_name, sum(bytes)/1024/1024 as MB from 
dba_extents where owner = 'GC' and segment_type = 'INDEX'
group by owner, segment_name, segment_type, tablespace_name order by MB desc;