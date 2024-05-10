@echo off

systeminfo | find "OS Version" | findstr /B "OS" > os_version.txt