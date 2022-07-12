@ECHO OFF

:check_Permissions
    

    net session >nul 2>&1
    if %errorLevel% == 0 (
        goto menu
    ) else (
       cls
color 4
       echo echo Failure: Please run the file again with Admin
       timeout 2 >NUL
       goto check_Permissions
    )



:menu
cls
@echo off
color 3
:::  /$$$$$$$$                          /$$                                       /$$                          
::: | $$_____/                         | $$                                      | $$                          
::: | $$     /$$$$$$   /$$$$$$$       /$$$$$$   /$$  /$$  /$$  /$$$$$$   /$$$$$$ | $$   /$$  /$$$$$$   /$$$$$$ 
::: | $$$$$ /$$__  $$ /$$_____/      |_  $$_/  | $$ | $$ | $$ /$$__  $$ |____  $$| $$  /$$/ /$$__  $$ /$$__  $$
::: | $$__/| $$  \ $$|  $$$$$$         | $$    | $$ | $$ | $$| $$$$$$$$  /$$$$$$$| $$$$$$/ | $$$$$$$$| $$  \__/
::: | $$   | $$  | $$ \____  $$        | $$ /$$| $$ | $$ | $$| $$_____/ /$$__  $$| $$_  $$ | $$_____/| $$      
::: | $$   | $$$$$$$/ /$$$$$$$/        |  $$$$/|  $$$$$/$$$$/|  $$$$$$$|  $$$$$$$| $$ \  $$|  $$$$$$$| $$      
::: |__/   | $$____/ |_______/          \___/   \_____/\___/  \_______/ \_______/|__/  \__/ \_______/|__/      
:::        | $$                                                                                                
:::        | $$                                                                                                
:::        |__/                                                                                               
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A 

echo by RivioxGaming
echo choose option:
echo 1.WiFi Cleaner                2.PC Cleaner
echo 3.Cache Cleaner             4.Special thanks
set /p"opt=>
if %opt%==1 goto wifi_cleaner
if %opt%==2 goto pc_cleaner
if %opt%==3 goto cache_cleaner
if %opt%==4 goto thanks


:wifi_cleaner
@echo off
title IP and DNS Formatter
ipconfig /flushdns
ipconfig /registerdns
ipconfig /release
ipconfig /renew
netsh winsock reset
cls
goto menu

:pc_cleaner
@echo off
title PC Cleaner
color 0C
del /s /f /q %SYSTEMDRIVE%\windows\temp\*.*
rd /s /q %SYSTEMDRIVE%\windows\temp
md c:\windows\temp
del /s /f /q %SYSTEMDRIVE%\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
del /q /f /s %SYSTEMDRIVE%\Temp\*.*
del /q /f /s %WINDIR%\Prefetch\*.*
del /q /f /s %SYSTEMDRIVE%\*.log
del /q /f /s %SYSTEMDRIVE%\*.bak
del /q /f /s %SYSTEMDRIVE%\*.gid
echo Cleaned logs
echo Thanks for using Pc Cleaner
cls
goto menu

:cache_cleaner
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
cls
goto menu

:thanks
cls
echo Special thanks to:
echo -itz_cxrd for scripts (WiFi Cleaner, PC Cleaner and Cache Cleaner)
pause > nul
goto menu

pause