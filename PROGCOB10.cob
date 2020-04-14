      ******************************************************************
      * Author: ALEXANDRE BELCHIOR MEDEIROS
      * Date: 13/04/2020
      * Purpose: RECEBER USUARIO E NIVEL
      *          UTILIZAR VARIAVEL NIVEL 88 - LOGICA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB10.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       
       77 WRK-USUARIO  PIC X(20)       VALUE SPACES.
       
      * ADM É FILHO DE NIVEL E SERÁ VERDADEIRO SE RECEBER O VALOR 01  
       77 WRK-NIVEL    PIC 9(02)       VALUE ZEROS.
         88 ADM    VALUE 01.
         88 USER   VALUE 02.
       PROCEDURE DIVISION.
            DISPLAY 'USUARIO.. '
            ACCEPT WRK-USUARIO.
            DISPLAY 'NIVEL.. '
            ACCEPT WRK-NIVEL.
           
       MAIN-PROCEDURE.
           
      *ESSE IF VERIFICA SE ADM É VERDADEIRO (CASO TENHA RECEBIDO 01)     
            IF ADM
                DISPLAY 'NIVEL - ADMINISTRADOR'
            ELSE
                IF USER
                    DISPLAY 'NIVEL - USUARIO'
                ELSE
                    DISPLAY 'USUARIO NAO AUTORIZADO'
                END-IF
            END-IF.
                     
           
                
            STOP RUN.
       END PROGRAM PROGCOB10.

