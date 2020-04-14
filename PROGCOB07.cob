      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date: 13/04/2020
      * Purpose: RECEBER DUAS NOTAS, MEDIA E IMPRIMIR O STATUS
      *          UTILIZANDO COMANDOS IF/ELSE/ENDIF
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
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
           
            IF WRK-MEDIA >= 6
                DISPLAY "APROVADO"
            ELSE
                IF WRK-MEDIA >= 2
                    DISPLAY "RECUPERACAO"
                ELSE
                    DISPLAY "REPROVADO"
                END-IF
            END-IF.
                
            DISPLAY "MEDIA: " WRK-MEDIA.
            
            STOP RUN.
       END PROGRAM PROGCOB07.

