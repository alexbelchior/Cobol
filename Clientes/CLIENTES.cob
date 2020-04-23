      ******************************************************************
      * Author:ALEXANDRE BELCHIOR MEDEIROS
      * Date: 22/04/2020
      * Purpose:SISTEMA DE GESTÃO DE CLIENTES
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO PIC X(1).
       77 WRK-TITULO PIC X(20).
       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-TITULO .
       
       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIOS'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 13 COLUMN 15 VALUE 'OPCAO....: '.
           05 LINE 13 COLUMN 25 USING WRK-OPCAO.
       PROCEDURE DIVISION.
            MOVE '- MENU -' TO WRK-TITULO.
            DISPLAY TELA.
            ACCEPT MENU.
      *                         16 É A LINHA E 10 A COLUNA      
      *      ACCEPT WRK-OPCAO AT 1610.
            STOP RUN.
       END PROGRAM CLIENTES.
