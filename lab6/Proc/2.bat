@echo off

:: file to copy, size 10MB
set FILE="C:\WINDOWS\system32\shell32.dll"

:: find hostname 
for /f "tokens=*" %%i in ('hostname') do set "HOSTNAME=%%i"

xcopy "%FILE%" \\%HOSTNAME%\temp

exit /b