      ******************************************************************
      * Author:ALEXANDRE BELCHIOR MEDEIROS
      * Date: 22/04/2020
      * Purpose:SISTEMA DE GESTÃO DE CLIENTES
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO        PIC X(1).
       77 WRK-OPCAO-RELATO PIC X(1).
       77 WRK-MODULO       PIC X(25).
       77 WRK-TECLA        PIC X(1).
       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 1.
               10 LINE 01 COLUMN 25 PIC X(20)
                   BACKGROUND-COLOR 1 FOREGROUND-COLOR 6 
                   FROM 'SISTEMA DE CLIENTES' .
               10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 2 FROM WRK-MODULO.
       
       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIOS'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 13 COLUMN 15 VALUE 'OPCAO....: '.
           05 LINE 13 COLUMN 25 USING WRK-OPCAO.
           
       01 MENU-RELATO.
           05 LINE 12 COLUMN 55 VALUE '1 - EM TELA'.
           05 LINE 13 COLUMN 55 VALUE '2 - EM DISCO'.
           05 LINE 14 COLUMN 55 VALUE 'OPCAO...:'.
           05 LINE 14 COLUMN 68 USING WRK-OPCAO-RELATO.
           
       PROCEDURE DIVISION.
       0000-PRINCIPAL SECTION.
            PERFORM 1000-INICIAR.
            PERFORM 2000-PROCESSAR.
            PERFORM 3000-FINALIZAR.
            STOP RUN.
       1000-INICIAR.
            DISPLAY TELA.
            ACCEPT MENU.
            
       2000-PROCESSAR.
            EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2 
                   CONTINUE
               WHEN 3 
                   CONTINUE
               WHEN 4 
                   CONTINUE
               WHEN 5 
                   ACCEPT MENU-RELATO
                   IF WRK-OPCAO-RELATO EQUAL 1
                       PERFORM 5000-RELATORIO-TELA
                   END-IF
                   IF WRK-OPCAO-RELATO EQUAL 2
                       PERFORM 5000-RELATORIO-DISCO
                   END-IF
               WHEN OTHER
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM OPCAO CORRETA'
                   END-IF
            END-EVALUATE.
                
                
                
                
       3000-FINALIZAR.
               CONTINUE.
                
                
                
                
                
                
       5000-INCLUIR. 
            MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
            DISPLAY TELA.
            ACCEPT WRK-TECLA AT 1620.
            DISPLAY 'AQUI'.
            
            
       5000-RELATORIO-TELA.
            CONTINUE.
                
       5000-RELATORIO-DISCO.
            CONTINUE.
            
      *                         16 É A LINHA E 10 A COLUNA      
      *      ACCEPT WRK-OPCAO AT 1610.
       END PROGRAM CLIENTES.
