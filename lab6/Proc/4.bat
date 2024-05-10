@echo off

set "PROC_NAME=3.bat"
set FILE="C:\WINDOWS\system32\shell32.dll"
for /f "tokens=*" %%i in ('hostname') do set "HOSTNAME=%%i"


:: tasklist with /FI filters by IMAGENAME (in that case) then 'find' tries to find proccess
:: if process is found, then %ERRORLEVEL% is set to 0 (because find not failed)

xcopy xcopy "%FILE%" \\%HOSTNAME%\temp
:: kill process by its IMAGENAME
taskkill /IM xcopy

:: shows difference between two files
fc %FILE% \\%HOSTNAME%\temp > diff1.txt

xcopy "%FILE%" \\%HOSTNAME%\temp

fc %FILE% \\%HOSTNAME%\temp > diff2.txt

pause
