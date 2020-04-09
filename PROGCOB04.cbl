      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date: 22/02/2020
      * Purpose: RECEBER NOME E SALARIO E IMPRIMIR FORMATADO
      * USO DA VIRGULA E MASCARA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.

       FILE SECTION.

       WORKING-STORAGE SECTION.
       77 WRK-NOME         PIC X(20) VALUE SPACES.
       77 WRK-SALARIO      PIC 9(06)V99 VALUE ZEROS.
       77 WRK-SALARIO-ED   PIC $ZZZ.ZZ9,99 VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WRK-NOME FROM CONSOLE.
            ACCEPT WRK-SALARIO FROM CONSOLE.

      ***********MOSTRA DADOS***********
            DISPLAY 'NOME: ' WRK-NOME.
            MOVE WRK-SALARIO TO WRK-SALARIO-ED.
            DISPLAY 'SALARIO: ' WRK-SALARIO-ED.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
