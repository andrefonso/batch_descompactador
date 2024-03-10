@echo off

set "pasta_origem=C:\Users\andre\Documents\zipados"
set "pasta_destino=C:\Users\andre\Documents\zipados"

rem Descompactar arquivos ZIP
for %%f in ("%pasta_origem%\*.zip") do (
    "C:\Program Files (x86)\WinRAR\WinRAR.exe" x "%%f" "%pasta_destino%"
    if exist "%%f" del "%%f"
)

rem Descompactar arquivos RAR
for %%f in ("%pasta_origem%\*.rar") do (
    "C:\Program Files (x86)\WinRAR\WinRAR.exe" x "%%f" "%pasta_destino%"
    if exist "%%f" del "%%f"
)
