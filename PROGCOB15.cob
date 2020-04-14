      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date: 13/04/2020
      * Purpose: RECEBER UM VALOR DE UMA VENDA E ACUMULA ESSE VALOR ATE
      *          ENTRAR UMA VENDA COM VALOR 0 UTILIZAR O PERFORM - UNTIL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 WRK-VENDAS    PIC 9(06)V99 VALUE ZEROS.
       77 WRK-QTD       PIC 9(03)    VALUE ZEROS.
       77 WRK-ACUM      PIC 9(08)V99 VALUE ZEROS.

       PROCEDURE DIVISION.

       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.

           IF WRK-VENDAS > 0

               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0

           END-IF.

           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.

           ACCEPT WRK-VENDAS.

       0200-PROCESSAR.

           ADD 1 TO WRK-QTD.
           ADD WRK-VENDAS TO WRK-ACUM.
           ACCEPT WRK-VENDAS.

       0300-FINALIZAR.
            DISPLAY '-------------'.
            DISPLAY 'VALOR TOTAL: ' WRK-ACUM.
            DISPLAY 'QUANTIDADE DE VENDAS: ' WRK-QTD.
            DISPLAY 'FIM DE PROCESSAMENTO'.


       END PROGRAM PROGCOB15.
