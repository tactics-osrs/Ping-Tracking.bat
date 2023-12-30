TITLE Ping Tracking
@echo off
set /p website="Enter the domain you want to ping (e.g., github.com): "
:loop
echo %time% >> pingresults.txt
ping %website% -n 1 >> pingresults.txt
echo Tracking ping again in:
timeout /t 5
goto loop
