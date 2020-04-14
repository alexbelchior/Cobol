      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date: 13/04/2020
      * Purpose: COMANDO EVALUATE / WHEN
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1    PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2    PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA    PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           
       MAIN-PROCEDURE.
            
            DISPLAY "MEDIA: " WRK-MEDIA.
            
            EVALUATE WRK-MEDIA
               WHEN 6 THRU 10
                   DISPLAY "APROVADO"
               WHEN 2 THRU 5
                    DISPLAY "RECUPERACAO"
               WHEN OTHER
                    DISPLAY "REPROVADO"
            END-EVALUATE.
            
            STOP RUN.
       END PROGRAM PROGCOB08.

