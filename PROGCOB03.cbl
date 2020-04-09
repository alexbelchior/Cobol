      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date: 22/02/2020
      * Purpose: RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR VARIAVEIS NIVEL 01 02 (ESTRUTURADA)
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
          02 WRK-ANO PIC 9(4) VALUE ZEROS.
          02 WRK-MES PIC 9(2) VALUE ZEROS.
          02 WRK-DIA PIC 9(2) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WRK-DATA FROM DATE YYYYMMDD.
            DISPLAY 'DATA.. ' WRK-DATA.
            DISPLAY 'DATA ' WRK-DIA ' DE ' WRK-MES ' DE ' WRK-ANO.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
