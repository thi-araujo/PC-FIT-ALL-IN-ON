@echo off

cls

rem Vers�o do script: 0.1.2r
rem Data da cria��o: 18/09/2022
rem Data da revis�o: 04/10/2022


rem PS: Este script foi baseado no antigo script que havia criado para atualiza��o dos desktop.

rem --> Altera a pagina do cmd para 1252 deste modo posso trabalhar com acentos e caracteres especiais
chcp 1252 >nul 2>&1

rem --> Verifica se o cmd esta sendo executado como Administrador
net file >nul 2>&1

rem --> Verifica se o script esta sendo executado como Administrador
if '%errorlevel%' == '0' (
    goto begin
) else (
    echo.
    echo N�o � poss�vel executar este script corretamente se voc� n�o possuir privil�gios de Administrador
    timeout /t 3 >nul 2>&1
    cls
    echo.
    echo O script ser� encerrado, execute ele novamente como Administrador para prosseguir.
    timeout /t 3 >nul 2>&1
    goto eof
    )