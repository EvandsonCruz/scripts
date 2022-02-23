column MODULE format a30
column OBJECT_NAME format a30
column OWNER format a30
SELECT s.inst_id,s.sid,s.serial#,s.module,t.start_scnw,t.start_scnb,t.start_time,s.username, o.object_name,o.owner FROM gv$transaction t, gv$session s, gv$locked_object l,dba_objects o
WHERE t.ses_addr = s.saddr AND t.xidusn = l.xidusn AND t.xidslot = l.xidslot AND t.xidsqn = l.xidsqn AND l.object_id = o.object_id and o.object_name='ITEM_PED_VENDA';