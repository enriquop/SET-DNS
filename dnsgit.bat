@echo off
REM SET DNS AYESA
netsh interface ip show config
pause > nul
set /p Adaptador="Nombre de adapador: "
set /p DNS="IP de DNS: "
@REM netsh interface ipv4 set dns name=”Adaptador de Ethernet %Adaptador%” static address=10.254.28.16
netsh interface ipv4 add dnsserver "%Adaptador%" address=%DNS% index=1
echo Listo!
pause