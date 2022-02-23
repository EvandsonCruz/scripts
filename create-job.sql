BEGIN
  DBMS_SCHEDULER.CREATE_JOB (
   job_name           =>  'executa_procx',
   job_type           =>  'STORED_PROCEDURE',
   job_action         =>  'GC.NOMEPROC',
   start_date         =>  '21-NOV-21 05.00.00 AM Brasil/São Paulo',
   repeat_interval    =>  'FREQ=WEEKLY',
   auto_drop          =>   FALSE,
   job_class          =>  'batch_update_jobs',
   comments           =>  'Esse job executa a proc x que atualiza o objeto y');
END;
/