--Desenvolvimento
CREATE USER EPEDROSA
  IDENTIFIED BY "Stok011##"
  DEFAULT TABLESPACE TS_GC_DAD_SMALL
  TEMPORARY TABLESPACE TEMP1
  PROFILE PROF_DTI
  password expire
  ACCOUNT UNLOCK;
  -- 7 Roles for EPEDROSA 
  GRANT RL_CONS_SITE TO EPEDROSA;
  GRANT RL_CONS_PDVWBA TO EPEDROSA;
  GRANT RL_CONS_GC TO EPEDROSA;
  GRANT RL_CONS_MSAF TO EPEDROSA;
  GRANT RL_CONS_TRGT TO EPEDROSA;
  GRANT CONS_SITEFWEB TO EPEDROSA;
  GRANT RL_EXEC_GC TO EPEDROSA;
  GRANT RL_GC_DTI TO EPEDROSA;
  GRANT RL_EXEC_FUNC TO EPEDROSA;
  ALTER USER EPEDROSA DEFAULT ROLE ALL;
  -- 1 System Privilege for EPEDROSA 
  GRANT CREATE SESSION TO EPEDROSA;

--Homologação
CREATE USER EPEDROSA
  IDENTIFIED BY "Stok011##"
  DEFAULT TABLESPACE TS_GC_DAD_SMALL
  TEMPORARY TABLESPACE TEMP1
  PROFILE PROF_DTI
  password expire
  ACCOUNT UNLOCK;
  -- 7 Roles for EPEDROSA 
  GRANT RL_CONS_PDVWBA TO EPEDROSA;
  GRANT RL_CONS_GC TO EPEDROSA;
  GRANT RL_EXEC_FUNC TO EPEDROSA;
  GRANT RL_CONS_MSAF TO EPEDROSA;
  GRANT RL_CONS_TRGT TO EPEDROSA;
  GRANT CONS_SITEFWEB TO EPEDROSA;
  ALTER USER EPEDROSA DEFAULT ROLE ALL;
  -- 1 System Privilege for EPEDROSA 
  GRANT CREATE SESSION TO EPEDROSA;

--Produção (SOMENTE LEITURA)

CREATE USER EPEDROSA
  IDENTIFIED BY "Stok011##"
  DEFAULT TABLESPACE TS_GC_DAD_SMALL
  TEMPORARY TABLESPACE TEMP1
  PROFILE PROF_DTI
  password expire
  ACCOUNT UNLOCK;
  -- 7 Roles for EPEDROSA 
  GRANT RL_CONS_PDVWBA TO EPEDROSA;
  GRANT RL_CONS_GC TO EPEDROSA;
  GRANT RL_EXEC_FUNC TO EPEDROSA;
  GRANT RL_CONS_MSAF TO EPEDROSA;
  GRANT RL_CONS_TRGT TO EPEDROSA;
  GRANT CONS_SITEFWEB TO EPEDROSA;
  ALTER USER EPEDROSA DEFAULT ROLE ALL;
  -- 1 System Privilege for EPEDROSA 
  GRANT CREATE SESSION TO EPEDROSA;