@echo off

:: another way is to wmic logicaldisk get caption,size,freespace > disk_info.txt

set "result=disk_info.txt"
set "script=diskpart_script.txt"
set "temp=temp.txt"

:: create script for diskpart
echo list volume > "%script%"
echo exit >> %script%

:: exexute script
diskpart /s %script% > %result%

:: remove first 5 lines
more +5 "%result%" > "%temp%"

:: remove last line
type %temp% | findstr /v "Leaving" > %result%

:: delete temp file for script
del %script%
del %temp%