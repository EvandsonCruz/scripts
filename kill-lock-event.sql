SELECT 'alter system kill session '''||SID||','||SERIAL#||',@'||inst_id||''' immediate;'
                    FROM gv$session
                   -- where event = 'enq: TX - row lock contention';                    
                    WHERE sid=9087 and inst_id = 1; --sql_id ou sid