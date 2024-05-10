@echo off

set "last_file=merged_file.txt"

rem Удаление всех файлов, кроме merged_file.txt
for %%f in (*) do (
    if "%%f" neq "%last_file%" (
        del "%%f"
    )
)

exit /b