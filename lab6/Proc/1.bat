@echo off

:: get hostname
for /f "tokens=*" %%i in ('hostname') do set "HOSTNAME=%%i"

:: define destination directory
set "DEST=%CD%\%HOSTNAME%\temp"

if exist "%DEST%" (
	rmdir /s "%DEST%"
	net share temp /delete
)

mkdir "%DEST%"

:: Create net
net share temp="%DEST%" /grant:Everyone,FULL /unlimited /remark:"test network" /cache:none

echo net temp created
pause
exit /b