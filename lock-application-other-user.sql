--SELECT * FROM dba_ddl_locks WHERE NAME = 'SIG02'
-- Query para verificar lock de tabela por usuario
SELECT A.*, B.USERNAME, B.MACHINE, B.STATUS
FROM gV$ACCESS A
INNER JOIN gV$SESSION B ON A.SID=B.SID
WHERE A.TYPE='TABLE'
AND A.OBJECT='SIG02'
AND B.MACHINE NOT LIKE 'grp-%'
AND b.USERNAME <> 'PDVWBA'
AND B.MACHINE NOT LIKE 'tslxasaws%'
-- Query para gerar kill da sessão baseado no filtro where.
SELECT 'alter system disconnect session ' || '''' || b.sid || ',' || b.serial# || '''' || ' immediate;'
FROM gV$ACCESS A
INNER JOIN gV$SESSION B ON A.SID=B.SID
WHERE A.TYPE='TABLE'
AND A.OBJECT='SIG02'
AND B.MACHINE LIKE 'TOKSTOK\DTI%'
and B.inst_id = 2