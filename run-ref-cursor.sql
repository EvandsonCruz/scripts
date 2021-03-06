COMENTÁRIO REALIZADO NA LINHA 49 E ADICIONADA A LINHA 50 COM UM PACOTE QUE PERMITE EXIBIR O RESULTADO DE UM REF CURSOR EM UM BLOCO PL/SQL

DECLARE
  E_TX_GC VARCHAR2(4000);
  E_TX_TS VARCHAR2(4000);
  P_CD_FIL NUMBER;
  P_NR_PV NUMBER;
  P_DT_EMIS DATE;
  P_NR_CPFCNPJ NUMBER;
  P_ID_CANAL NUMBER;
  P_PAGE_NUMBER NUMBER;
  P_PAGE_SIZE NUMBER;
  R_CABEC_PV GC.PCK_GCWEB_PEDIDO_VENDA_2.REF_CUR_CABEC_PV;
  P_ID_PESSOA NUMBER;
BEGIN
  P_CD_FIL := NULL;
  P_NR_PV := NULL;
  P_DT_EMIS := NULL;
  P_NR_CPFCNPJ := NULL;
  P_ID_CANAL := NULL;
  P_PAGE_NUMBER := NULL;
  P_PAGE_SIZE := NULL;
  P_ID_PESSOA := NULL;

  GC.PCK_GCWEB_PEDIDO_VENDA_2.PVD_LER(
    E_TX_GC => E_TX_GC,
    E_TX_TS => E_TX_TS,
    P_CD_FIL => P_CD_FIL,
    P_NR_PV => P_NR_PV,
    P_DT_EMIS => P_DT_EMIS,
    P_NR_CPFCNPJ => P_NR_CPFCNPJ,
    P_ID_CANAL => P_ID_CANAL,
    P_PAGE_NUMBER => P_PAGE_NUMBER,
    P_PAGE_SIZE => P_PAGE_SIZE,
    R_CABEC_PV => R_CABEC_PV,
    P_ID_PESSOA => P_ID_PESSOA
  );
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('E_TX_GC = ' || E_TX_GC);
*/ 
  :E_TX_GC := E_TX_GC;
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('E_TX_TS = ' || E_TX_TS);
*/ 
  :E_TX_TS := E_TX_TS;
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('R_CABEC_PV = ' || R_CABEC_PV);
*/ 
  --:R_CABEC_PV := R_CABEC_PV; --<-- Cursor
  DBMS_SQL.RETURN_RESULT(R_CABEC_MEXP); 
--rollback; 
END;
