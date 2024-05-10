@echo off

set "COPY=1-info"

rem create TEST directory
rmdir /S /Q TEST
mkdir TEST

:: copy all direcories and subdirectories, including empty ones
xcopy /S /E %COPY% TEST

:: chande directory
cd TEST

:: check
echo "Current directory: %CD%"

pause >nul
exit /b
