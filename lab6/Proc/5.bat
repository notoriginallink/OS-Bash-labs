@echo off

set "PROC_NAME=3.bat"
set FILE="C:\WINDOWS\system32\shell32.dll"
for /f "tokens=*" %%i in ('hostname') do set "HOSTNAME=%%i"

start /B 2.bat
:: kill process by its IMAGENAME
taskkill /IM /F xcopy.exe
echo "KILLED"

:: shows difference between two files
fc %FILE% %HOSTNAME%\temp\shell32.dll > diff1.txt
echo "FC1"

xcopy /Z /-Y "%FILE%" \\%HOSTNAME%\temp
echo "COPY"

fc %FILE% %HOSTNAME%\temp\shell32.dll > diff2.txt
echo "FC2"