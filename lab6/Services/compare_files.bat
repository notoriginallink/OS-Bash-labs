@echo off

:: compare files and create difference file
fc services.txt updated_services.txt > differences.txt

exit /b