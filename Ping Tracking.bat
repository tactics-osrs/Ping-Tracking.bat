@echo off
setlocal enabledelayedexpansion
:input
set /p website="Enter the domain you want to ping (e.g., github.com): "
:loop
echo %time% >> pingresults.txt
ping %website% -n 1 | find "Reply from" >nul
if errorlevel 1 (
    echo No response from %website%, please check the domain and try again.
    goto input
) else (
    ping %website% -n 1 >> pingresults.txt
)
echo Tracking ping again in:
timeout /t 5
goto loop
