BEGIN
FOR I IN 1..2
    LOOP
    
    FOR C_DATA IN ( SELECT 'alter system kill session '''||SID||','||SERIAL#||',@'||inst_id||''' immediate' CMD
					FROM gv$session s
					WHERE 
					 round(last_call_et/60,0) > 200 and status='INACTIVE' and username like 'G0%' and program not like '%J%')
        LOOP
        
            BEGIN
            
                EXECUTE IMMEDIATE C_DATA.CMD;
            
            EXCEPTION WHEN OTHERS THEN
                CONTINUE;
            END;
        END LOOP C_DATA;

    END LOOP;
END;
/