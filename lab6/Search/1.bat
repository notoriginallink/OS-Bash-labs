@echo off

:: get list of drivers ans save to file 
:: /v to get more info, /fo for output format
driverquery /v /fo table > drivers.txt

exit /b