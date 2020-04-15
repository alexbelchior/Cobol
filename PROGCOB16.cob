      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date: 22/02/2020
      * Purpose: RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR VARIAVEL TIPO TABELA - OCCURS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB16.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES.
          03 WRK-MES PIC X(09) OCCURS 12 TIMES.
          
       01 DATASYS.
          02 ANO PIC 9(04) VALUE ZEROS.
          02 MES PIC 9(02) VALUE ZEROS.
          02 DIA PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.

            ACCEPT DATASYS FROM DATE YYYYMMDD.
      
      *EXECUTO O PERFORM PARA MONTAR OS ELEMENTOS QUE WRK-MES PODE
      *RECEBER 
            PERFORM 0400-MONTAMES.
            
            DISPLAY 'DATA.. ' DATASYS.
      
      *AQUI WRK-MES RECEBE O MES DO SISTEMA DATASYS 20200414 NESSE CASO
      *O MES VALE 04, COM ISSO ELE SABE QUE 04 CORRESPONDE A ABRIL
            DISPLAY 'DATA ' DIA ' DE ' WRK-MES(MES) ' DE ' ANO.
            
            STOP RUN.
            
       0400-MONTAMES.
           MOVE 'JANEIRO'   TO WRK-MES(01).
           MOVE 'FEVEREIRO' TO WRK-MES(02).
           MOVE 'MARCO'     TO WRK-MES(03).
           MOVE 'ABRIL'     TO WRK-MES(04).
           MOVE 'MAIO'      TO WRK-MES(05).
           MOVE 'JUNHO'     TO WRK-MES(06).
           MOVE 'JULHO'     TO WRK-MES(07).
           MOVE 'AGOSTO'    TO WRK-MES(08).
           MOVE 'SETEMBRO'  TO WRK-MES(09).
           MOVE 'OUTUBRO'   TO WRK-MES(10).
           MOVE 'NOVEMBRO'  TO WRK-MES(11).
           MOVE 'DEZEMBRO'  TO WRK-MES(12).
           
       END PROGRAM PROGCOB16.
