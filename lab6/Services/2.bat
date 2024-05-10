@echo off

:: stop DNS-client
net stop "Dnscache"

:: wait 5 seconds
timeout /t 5 /nobreak

:: get updated list of services
sc query state= all > updated_services.txt

:: start batch file to compare files
call compare_files.bat

:: reboot service DNS-client
net start "DNS-client"

exit /b