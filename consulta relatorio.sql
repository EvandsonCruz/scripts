select ts.name as Nome_da_tablespace, tf.name as Nome_do_arquivo, tf.status, sum(bytes)/1024/1024/1024 as Tamanho_em_GB from v$tempfile tf
inner join v$tablespace ts on tf.ts# = ts.TS#
group by tf.name, ts.name, status;

select tf.name as Nome_do_arquivo, tf.status, sum(bytes)/1024/1024/1024 as Tamanho_em_GB from v$tempfile tf
group by name, status;

where ts# = 120