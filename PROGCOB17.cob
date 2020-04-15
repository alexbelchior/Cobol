      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date: 22/02/2020
      * Purpose: RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR VARIAVEL TIPO TABELA - REDEFINES
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB17.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES-EXTENSO.
          02 FILLER PIC X(03) VALUE 'JAN'.
          02 FILLER PIC X(03) VALUE 'FEV'.
          02 FILLER PIC X(03) VALUE 'MAR'.
          02 FILLER PIC X(03) VALUE 'ABR'.
          02 FILLER PIC X(03) VALUE 'MAI'.
          02 FILLER PIC X(03) VALUE 'JUN'.
          02 FILLER PIC X(03) VALUE 'JUL'.
          02 FILLER PIC X(03) VALUE 'AGO'.
          02 FILLER PIC X(03) VALUE 'SET'.
          02 FILLER PIC X(03) VALUE 'OUT'.
          02 FILLER PIC X(03) VALUE 'NOV'.
          02 FILLER PIC X(03) VALUE 'DEZ'.
       
       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
          02 WRK-MES PIC X(3) OCCURS 12 TIMES.
          
       01 DATASYS.
          02 ANO PIC 9(04) VALUE ZEROS.
          02 MES PIC 9(02) VALUE ZEROS.
          02 DIA PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.

            ACCEPT DATASYS FROM DATE YYYYMMDD.
            
            DISPLAY 'DATA.. ' DATASYS.
      
            DISPLAY 'DATA ' DIA ' DE ' WRK-MES(MES) ' DE ' ANO.
            
            STOP RUN.
                       
       END PROGRAM PROGCOB17.
