@echo off

:: calculate time to run a script
set /a "HOUR=%time:~0,2%"
set /a "MINUTE=%time:~3,2%"
set /a "MINUTE=%MINUTE%+1"

:: /tn - task name
:: /tr - executable file
:: /sc - period of scheduling
:: /st - time of start
schtasks /create /tn "copy_task" /tr "C:\Documents and Settings\Administrator\Desktop\OS-lab\lab6\Proc\2.bat" /sc once /st %HOUR%:%MINUTE%