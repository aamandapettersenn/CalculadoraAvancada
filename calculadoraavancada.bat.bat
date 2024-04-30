@echo off

:menu
cls
echo Bem-vindo à Calculadora Avançada!
echo.
echo Escolha a operação desejada:
echo 1. Soma
echo 2. Subtração
echo 3. Multiplicação
echo 4. Divisão
echo 5. Raiz Quadrada
echo 6. Seno
echo 7. Cosseno
echo 8. Tangente
echo 9. Sair
echo.

set /p opcao="Digite o número da operação desejada: "

if "%opcao%"=="1" goto soma
if "%opcao%"=="2" goto subtracao
if "%opcao%"=="3" goto multiplicacao
if "%opcao%"=="4" goto divisao
if "%opcao%"=="5" goto raiz_quadrada
if "%opcao%"=="6" goto seno
if "%opcao%"=="7" goto cosseno
if "%opcao%"=="8" goto tangente
if "%opcao%"=="9" goto fim

:soma
set /p num1="Digite o primeiro número: "
set /p num2="Digite o segundo número: "
set /a resultado=%num1% + %num2%
echo Resultado: %resultado%
pause
goto menu

:subtracao
set /p num1="Digite o primeiro número: "
set /p num2="Digite o segundo número: "
set /a resultado=%num1% - %num2%
echo Resultado: %resultado%
pause
goto menu

:multiplicacao
set /p num1="Digite o primeiro número: "
set /p num2="Digite o segundo número: "
set /a resultado=%num1% * %num2%
echo Resultado: %resultado%
pause
goto menu

:divisao
set /p num1="Digite o primeiro número: "
set /p num2="Digite o segundo número: "
if %num2%==0 (
    echo Erro: Divisão por zero!
) else (
    set /a resultado=%num1% / %num2%
    echo Resultado: %resultado%
)
pause
goto menu

:raiz_quadrada
set /p num1="Digite o número: "
for /f "tokens=*" %%i in ('powershell -Command "[Math]::Sqrt(%num1%)"') do set resultado=%%i
echo Resultado: %resultado%
pause
goto menu

:seno
set /p angulo="Digite o ângulo em graus: "
for /f "tokens=*" %%i in ('powershell -Command "[Math]::Sin([Math]::PI * %angulo% / 180)"') do set resultado=%%i
echo Resultado: %resultado%
pause
goto menu

:cosseno
set /p angulo="Digite o ângulo em graus: "
for /f "tokens=*" %%i in ('powershell -Command "[Math]::Cos([Math]::PI * %angulo% / 180)"') do set resultado=%%i
echo Resultado: %resultado%
pause
goto menu

:tangente
set /p angulo="Digite o ângulo em graus: "
for /f "tokens=*" %%i in ('powershell -Command "[Math]::Tan([Math]::PI * %angulo% / 180)"') do set resultado=%%i
echo Resultado: %resultado%
pause
goto menu

:fim
echo Obrigado por usar a Calculadora Avançada!
pause
exit