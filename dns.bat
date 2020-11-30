@echo off
REM SET DNS
REM SOLO USO EN ORDENADORES CON IDIOMA ESPAÑOL!
netsh interface ip show config
pause > nul
set /p Adaptador="Nombre de adapador: "
set /p DNS="IP de DNS: "
netsh interface ipv4 add dnsserver "%Adaptador%" address=%DNS% index=1
echo Listo!
pause
EXIT
