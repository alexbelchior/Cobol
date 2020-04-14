      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date: 13/04/2020
      * Purpose: RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10 
      *          UTILIZAR O PERFORM - VARYING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB14.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       
       77 WRK-NUMERO    PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR  PIC 9(02) VALUE ZEROS.
       77 WRK-RESULTADO PIC 9(02) VALUE ZEROS.
       
       PROCEDURE DIVISION.
       
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           
           IF WRK-NUMERO > 0
               
               PERFORM 0200-PROCESSAR
               
           END-IF.
               
           PERFORM 0300-FINALIZAR.
           
           STOP RUN.
           
       0100-INICIALIZAR.
           DISPLAY 'DIGITE UM NUMERO PARA REALIZAR A TABUADA: '
           ACCEPT WRK-NUMERO.
           
       0200-PROCESSAR.
           
      *VARIE A WRK-CONTADOR COMEÇANDO COM 1 E SENDO INCREMENTADO POR 1
      *ATE QUE WRK-CONTADOR SEJA MAIOR QUE 10 
           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
                           UNTIL WRK-CONTADOR > 10
               COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR '= ' WRK-RESULTADO
               
           END-PERFORM.
            
       0300-FINALIZAR.   
            DISPLAY '-------------'.
            DISPLAY 'FIM DE PROCESSAMENTO'.
            
           
       END PROGRAM PROGCOB14.

