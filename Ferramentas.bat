@echo off
title MENU DE SUPORTE E REPARO
color 0A

:MENU
cls
echo ==============================================
echo         MENU DO SUPORTE TECNICO
echo                       V1.1
echo ==============================================
echo.

echo  1.  Verificar e Reparar Disco (CHKDSK)
echo  2.  Reparar Arquivos de Sistema (SFC)
echo  3.  Limpar Arquivos Temporarios
echo  4.  Verificar Erros de Memoria (Diagnostico)
echo  5.  Restaurar Sistema
echo  6.  Verificar Conectividade de Rede (Ping/Teste)
echo  7.  Gerenciar Processos (Task Manager)
echo  8.  Backup de Drivers
echo  9.  Verificar Atualizacoes do Windows
echo 10.  Informacoes do Sistema
echo 11.  Limpar Cache DNS
echo 12.  Reiniciar Servicos de Rede
echo 13.  Desfragmentar Disco
echo 14.  Gerenciar Usuarios Locais
echo 15.  Verificar Integridade de Arquivos (DISM)
echo 16.  Ativar/Desativar Firewall do Windows
echo 17.  Ver Logs de Eventos
echo 18.  Testar Velocidade de Disco
echo 19.  Criar Ponto de Restauracao
echo 20.  Executar Comando Personalizado (CMD)
echo 21.  Atualizar Todos os Programas (Winget Update)
echo 22.  Sair
echo 23.  Exibir Programas Instalados
echo 24.  Listar Servicos em Execucao
echo 25.  Testar Porta de Rede
echo 26.  Exibir Conexoes de Rede Ativas
echo 27.  Exibir Tarefas Agendadas
echo 28.  Limpar Lixeira
echo 29.  Ativar/Desativar Modo Economia de Energia
echo 30.  Gerar Relatorio de Energia
echo 31.  Ver Endereco IP Local
echo 32.  Exibir Drivers Carregados
echo 33.  Exibir Historico de Atualizacoes
echo 34.  Sincronizar Hora com Servidor
echo 35.  Verificacao Completa de Disco (CHKDSK /F /R)
echo ==============================================
set /p opcao=Escolha uma opcao (1-35): 

if "%opcao%"=="1" chkdsk
if "%opcao%"=="2" sfc /scannow
if "%opcao%"=="3" cleanmgr
if "%opcao%"=="4" mdsched
if "%opcao%"=="5" rstrui
if "%opcao%"=="6" ping 8.8.8.8 -n 5 & pause
if "%opcao%"=="7" taskmgr
if "%opcao%"=="8" echo Backup de drivers requer script adicional.
if "%opcao%"=="9" powershell -command "Get-WindowsUpdateLog"
if "%opcao%"=="10" systeminfo | more
if "%opcao%"=="11" ipconfig /flushdns
if "%opcao%"=="12" netsh winsock reset & netsh int ip reset
if "%opcao%"=="13" defrag C:
if "%opcao%"=="14" lusrmgr.msc
if "%opcao%"=="15" DISM /Online /Cleanup-Image /ScanHealth
if "%opcao%"=="16" netsh advfirewall set allprofiles state off
if "%opcao%"=="17" eventvwr
if "%opcao%"=="18" winsat disk
if "%opcao%"=="19" powershell -Command "Checkpoint-Computer -Description 'Ponto de Restauracao Manual'"
if "%opcao%"=="20" cmd
if "%opcao%"=="21" winget update --all
if "%opcao%"=="22" exit
if "%opcao%"=="23" wmic product get name,version | more
if "%opcao%"=="24" services.msc
if "%opcao%"=="25" powershell -Command "Test-NetConnection google.com -Port 443" & pause
if "%opcao%"=="26" netstat -ano | more
if "%opcao%"=="27" schtasks
if "%opcao%"=="28" powershell -Command "Clear-RecycleBin -Force" & echo Lixeira limpa!
if "%opcao%"=="29" powercfg /setactive SCHEME_MAX & echo Economia de energia desativada. & pause
if "%opcao%"=="30" powercfg /energy
if "%opcao%"=="31" ipconfig
if "%opcao%"=="32" driverquery | more
if "%opcao%"=="33" wmic qfe list | more
if "%opcao%"=="34" w32tm /resync
if "%opcao%"=="35" chkdsk C: /f /r

pause
goto MENU
