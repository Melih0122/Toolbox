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

:: =============================================================
:: Güncelleme dosyası indirilir
cls&Call :Panel "[■■■■■■■■■■■■                                    ]" "%R%[92m   Updating OgnitorenKs Toolbox...%R%[0m"
Call :Powershell "& { iwr https://raw.githubusercontent.com/OgnitorenKs/Toolbox/main/.github/Toolbox.zip -OutFile %Location%\Toolbox.zip }"

:: İndirilen güncelleme zip dosyası klasörü çıkarılır.
cls&Call :Panel "[■■■■■■■■■■■■■■■■■■■■■■■■                        ]" "%R%[92m   Updating OgnitorenKs Toolbox...%R%[0m"
Call :Powershell "Expand-Archive -Force '%Location%\Toolbox.zip' '%Location%'"

:: Güncelleme zip dosyası silinir.
cls&Call :Panel "[■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■            ]" "%R%[92m   Updating OgnitorenKs Toolbox...%R%[0m"
DEL /F /Q /A "%Location%\Toolbox.zip" > NUL 2>&1

(
echo Set oWS = WScript.CreateObject^("WScript.Shell"^)
echo sLinkFile = "C:\Users\%username%\Desktop\OgnitorenKs.Toolbox.lnk"
echo Set oLink = oWS.CreateShortcut^(sLinkFile^)
echo oLink.TargetPath = "%Location%\OgnitorenKs.Toolbox.cmd"
echo oLink.WorkingDirectory = "%Location%"
echo oLink.Description = "OgnitorenKs Toolbox"
echo oLink.IconLocation = "%Location%\Bin\icon\Ogni.ico"
echo oLink.Save
) > %Temp%\OgnitorenKs.Shortcut.vbs
cscript "%Temp%\OgnitorenKs.Shortcut.vbs"
DEL /F /Q /A "%Temp%\OgnitorenKs.Shortcut.vbs" > NUL 2>&1

:: Settings.ini içine güncelleme tarihi yazılır.
cls&Call :Panel "[■■■■■■■■■■■■■■■■■UPDATE_COMPLETE■■■■■■■■■■■■■■■■]" "%R%[92m   Updating OgnitorenKs Toolbox...%R%[0m"
for /f "tokens=2" %%a in ('echo %date%') do set Date=%%a
set Date=%Date:~0,-8%.%Date:~3,-5%.%Date:~6%
for /f "tokens=2" %%a in ('findstr /i "TimeUpdate" %Location%\Bin\Settings.ini') do (
	Call :Powershell "(Get-Content %Location%\Bin\Settings.ini) | ForEach-Object { $_ -replace '%%a', '%Date%' } | Set-Content '%Location%\Bin\Settings.ini'"
)
timeout /t 2 /nobreak > NUL
:: Güncel Toolbox açılır.
Call :Powershell "Start-Process '%Location%\OgnitorenKs.Toolbox.cmd'"
DEL /F /Q /A "%Location%\ToolboxUpdate.cmd"
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
