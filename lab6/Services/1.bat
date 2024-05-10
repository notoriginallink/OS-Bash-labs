@echo off

sc query state= all > services.txt

exit /b