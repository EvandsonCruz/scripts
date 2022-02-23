BEGIN
FOR C_DATA IN (
		 SELECT 'alter system kill session '''||SID||','||SERIAL#||',@'||inst_id||''' immediate' CMD
					FROM gv$session s                    
					WHERE round(last_call_et/60) > 220 and status='INACTIVE' and program like '%API%' and username like 'G0%' and inst_id in (select instance_number from v$instance))
            LOOP
            
            FOR  I IN 1..2
                LOOP
            BEGIN
                EXECUTE IMMEDIATE C_DATA.CMD;
            EXCEPTION WHEN OTHERS THEN
                CONTINUE;
            END;
            END LOOP;
            END LOOP;
                    
     END;
     /