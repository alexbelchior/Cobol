      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date:
      * Purpose: OPERADORES ARITMETICOS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1     PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2     PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL    PIC 9(04) VALUE ZEROS.
       77 WRK-RESTO    PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.

            DISPLAY "NUMERO 1.." WRK-NUM1.
            DISPLAY "NUMERO 2.." WRK-NUM2.
      *************SOMA*********************
            ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
            DISPLAY "RESULTADO DA SOMA: " WRK-RESUL.

      *************SUBTRACAO****************
            SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
            DISPLAY "RESULTADO DA SUBTRACAO: " WRK-RESUL.

      *************DIVISAO******************
            DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
               REMAINDER WRK-RESTO.
            DISPLAY "RESULTADO DA DIVISAO: " WRK-RESUL.
            DISPLAY "RESTO DA DIVISAO: " WRK-RESTO.

      *************MULTIPLICACAO************
            MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
            DISPLAY "RESULTADO DA MULTIPLICACAO: " WRK-RESUL.
            STOP RUN.
       END PROGRAM PROGCOB05.
