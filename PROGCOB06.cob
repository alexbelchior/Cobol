      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date:
      * Purpose: TRATAR SINAIS POSITIVO E NEGATIVO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1     PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2     PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL    PIC S9(04) VALUE ZEROS.

      *****O Z OMITE ZEROS A ESQUERDA.
       77 WRK-RESUL-ED PIC -ZZ9 VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.

            DISPLAY "NUMERO 1.." WRK-NUM1.
            DISPLAY "NUMERO 2.." WRK-NUM2.

      *************SUBTRACAO****************
            SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
            MOVE WRK-RESUL TO WRK-RESUL-ED.
            DISPLAY "RESULTADO DA SUBTRACAO: " WRK-RESUL.
            DISPLAY "RESULTADO FORMATADO: " WRK-RESUL-ED.

            STOP RUN.
       END PROGRAM PROGCOB06.
