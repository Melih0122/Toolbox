echo off
chcp 65001 > NUL
cls
mode con cols=80 lines=30
title OgnitorenKs Toolbox Updater

:: -------------------------------------------------------------
::Renklendirme komutu
setlocal
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set R=%%b)

:: -------------------------------------------------------------
:: Konum bilgisi
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a

:: -------------------------------------------------------------
:: C diski içinde OgnitorenKs Toolbox klasörü varsa mesaj iletir.
RD /S /Q "C:\OgnitorenKs.Toolbox" > NUL 2>&1
:: OgnitorenKs.Toolbox klasörünü oluşturur.	
MD "C:\OgnitorenKs.Toolbox" > NUL 2>&1

:: =============================================================
:: Güncelleme dosyası indirilir
cls&Call :Panel "[■■■■■■■■■■■■                                    ]" "%R%[92m   Installing OgnitorenKs Toolbox...%R%[0m"
Call :Powershell "& { iwr https://raw.githubusercontent.com/OgnitorenKs/Toolbox/main/.github/Toolbox.zip -OutFile C:\OgnitorenKs.Toolbox\Toolbox.zip }"

:: İndirilen güncelleme zip dosyası klasörü çıkarılır.
cls&Call :Panel "[■■■■■■■■■■■■■■■■■■■■■■■■                        ]" "%R%[92m   Installing OgnitorenKs Toolbox...%R%[0m"
Call :Powershell "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\Toolbox.zip' 'C:\OgnitorenKs.Toolbox'"

:: Güncelleme zip dosyası silinir.
cls&Call :Panel "[■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■            ]" "%R%[92m   Installing OgnitorenKs Toolbox...%R%[0m"
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Toolbox.zip" > NUL 2>&1

(
echo Set oWS = WScript.CreateObject^("WScript.Shell"^)
echo sLinkFile = "C:\Users\%username%\Desktop\OgnitorenKs.Toolbox.lnk"
echo Set oLink = oWS.CreateShortcut^(sLinkFile^)
echo oLink.TargetPath = "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.cmd"
echo oLink.WorkingDirectory = "C:\OgnitorenKs.Toolbox"
echo oLink.Description = "OgnitorenKs Toolbox"
echo oLink.IconLocation = "C:\OgnitorenKs.Toolbox\Bin\icon\Ogni.ico"
echo oLink.Save
) > %Temp%\OgnitorenKs.Shortcut.vbs
cscript "%Temp%\OgnitorenKs.Shortcut.vbs"
DEL /F /Q /A "%Temp%\OgnitorenKs.Shortcut.vbs" > NUL 2>&1

:: Settings.ini içine güncelleme tarihi yazılır.
cls&Call :Panel "[■■■■■■■■■■■■■■■■■■■■COMPLETE■■■■■■■■■■■■■■■■■■■■]" "%R%[92m   Installing OgnitorenKs Toolbox...%R%[0m"
for /f "tokens=2" %%a in ('echo %date%') do set Date=%%a
set Date=%Date:~0,-8%.%Date:~3,-5%.%Date:~6%
for /f "tokens=2" %%a in ('findstr /i "TimeUpdate" C:\OgnitorenKs.Toolbox\Bin\Settings.ini') do (
	Call :Powershell "(Get-Content C:\OgnitorenKs.Toolbox\Bin\Settings.ini) | ForEach-Object { $_ -replace '%%a', '%Date%' } | Set-Content 'C:\OgnitorenKs.Toolbox\Bin\Settings.ini'"
)
timeout /t 2 /nobreak > NUL
:: Güncel Toolbox açılır.
Call :Powershell "Start-Process 'C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.cmd'"
exit
:: =============================================================
:: ██████████████████████████████████████████████████████████████████████████████████████████████████
:: ██████████████████████████████████████████████████████████████████████████████████████████████████
:: ██████████████████████████████████████████████████████████████████████████████████████████████████
:Panel
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %~2
echo.            
echo               %~1
echo.
echo             %R%[33m████ ████ █   █ █ █████ ████ ████ ███ █   █ █  █ ████%R%[0m
echo             %R%[33m█  █ █    ██  █ █   █   █  █ █  █ █   ██  █ █ █  █   %R%[0m
echo             %R%[33m█  █ █ ██ █ █ █ █   █   █  █ ████ ██  █ █ █ ██   ████%R%[0m
echo             %R%[33m█  █ █  █ █  ██ █   █   █  █ █ █  █   █  ██ █ █     █%R%[0m
echo             %R%[33m████ ████ █   █ █   █   ████ █  █ ███ █   █ █  █ ████%R%[0m
goto :eof

:: -------------------------------------------------------------
:Powershell
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof
