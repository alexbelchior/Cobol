      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date: 13/04/2020
      * Purpose: RECEBER LARGURA E COMPRIMENTO E CALCULAR A AREA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB11.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       
       77 WRK-LARGURA      PIC 9(03)V99       VALUE ZEROS. 
       77 WRK-COMPRIMENTO  PIC 9(03)V99       VALUE ZEROS.
       77 WRK-AREA         PIC 9(03)V99       VALUE ZEROS.
       PROCEDURE DIVISION.
            DISPLAY 'LARGURA.. '
            ACCEPT WRK-LARGURA.
            DISPLAY 'COMPRIMENTO.. '
            ACCEPT WRK-COMPRIMENTO.
           

       MAIN-PROCEDURE.
            IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
                COMPUTE WRK-AREA = WRK-LARGURA * WRK-COMPRIMENTO
                DISPLAY 'AREA: ' WRK-AREA
            ELSE
                DISPLAY 'FALTA INFORMAR ALGO'
            END-IF.
                
            

                     
           
                
            STOP RUN.
       END PROGRAM PROGCOB11.

