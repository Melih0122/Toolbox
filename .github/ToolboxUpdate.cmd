:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
::
::       ██████   ██████   ██    ██ ████ ████████  ██████  ████████  ████████ ██    ██ ██    ██  ██████
::      ██    ██ ██    ██  ███   ██  ██     ██    ██    ██ ██     ██ ██       ███   ██ ██   ██  ██    █
::      ██    ██ ██        ████  ██  ██     ██    ██    ██ ██     ██ ██       ████  ██ ██  ██   ██
::      ██    ██ ██   ████ ██ ██ ██  ██     ██    ██    ██ ████████  ██████   ██ ██ ██ █████      ██████ 
::      ██    ██ ██    ██  ██  ████  ██     ██    ██    ██ ██   ██   ██       ██  ████ ██  ██         ██
::      ██    ██ ██    ██  ██   ███  ██     ██    ██    ██ ██    ██  ██       ██   ███ ██   ██  ██    ██
::       ██████   ██████   ██    ██ ████    ██     ██████  ██     ██ ████████ ██    ██ ██    ██  ██████ 
::
::                    ████████ ███████ ███████ ██      ██████  ███████  ██    ██
::                       ██    ██   ██ ██   ██ ██      ██   ██ ██   ██   ██  ██  
::                       ██    ██   ██ ██   ██ ██      ██████  ██   ██     ██   
::                       ██    ██   ██ ██   ██ ██      ██   ██ ██   ██   ██  ██
::                       ██    ███████ ███████ ███████ ██████  ███████  ██    ██
::
::  Hazırlayan: Hüseyin UZUNYAYLA / OgnitorenKs
::
::  İletişim - Contact;
::  --------------------------------------
::  • Discord: OgnitorenKs#2737 
::  •    Mail: ognitorenks@gmail.com
::  •    Site: https://ognitorenks.blogspot.com/
::
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
echo off
cls
chcp 65001 > NUL
mode con cols=80 lines=30
title OgnitorenKs Toolbox Güncelleyici

setlocal
call :ColorEnd

cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a

Call :bosluk
echo                     %R%[92m OgnitorenKs Toolbox Güncelleniyor...%R%[0m
echo.            
echo               [■■■■■■■■■■■■                                    ]
Call :ogni
C:\OgnitorenKs.Toolbox\Files\wget --no-check-certificate "https://docs.google.com/uc?export=download&id=1g8mbmzrFcXSZT7r5Oiwdqfs9wGNS2xWl" -O C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip > NUL 2>&1
cls
Call :bosluk
echo                     %R%[92m OgnitorenKs Toolbox Güncelleniyor...%R%[0m
echo.            
echo               [■■■■■■■■■■■■■■■■■■■■■■■■                        ]
Call :ogni
chcp 437 > NUL 2>&1
powershell -command "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip' 'C:\OgnitorenKs.Toolbox'"
chcp 65001 > NUL 2>&1
Call :Powershell "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\Files\lnk.zip' 'C:\Users\%username%\Desktop'"
cls
Call :bosluk
echo                     %R%[92m OgnitorenKs Toolbox Güncelleniyor...%R%[0m
echo.            
echo               [■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■            ]
Call :ogni
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip" > NUL 2>&1
DEL /F /Q /A "C:\Users\%username%\Desktop\PowerChoice.lnk" > NUL 2>&1
cls
Call :bosluk
echo       %R%[92m OgnitorenKs Toolbox güncelleme işlemi başarıyla tamamlanmıştır.%R%[0m
echo.
echo               [■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■]
Call :ogni
for /f "tokens=2" %%a in ('echo %date%') do set Date=%%a
set Date=%Date:~0,-8%.%Date:~3,-5%.%Date:~6%
for /f "tokens=2" %%a in ('findstr /i "TimeUpdate" C:\OgnitorenKs.Toolbox\Settings.ini') do (
	Call :Powershell "(Get-Content C:\OgnitorenKs.Toolbox\Settings.ini) | ForEach-Object { $_ -replace '%%a', '%Date%' } | Set-Content 'C:\OgnitorenKs.Toolbox\Settings.ini'"
)
timeout /t 3 /nobreak > NUL
"C:\OgnitorenKs.Toolbox\Files\NSudo.exe" -U:E -P:E cmd /c C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.bat
DEL /F /Q /A "%temp%\Toolbox.Update.bat" > NUL 2>&1
exit

:bosluk
echo.
echo.
echo.
echo.
echo.
echo.
echo.
goto :eof

:ogni
echo.
echo             %R%[33m████ ████ █   █ █ █████ ████ ████ ███ █   █ █  █ ████%R%[0m
echo             %R%[33m█  █ █    ██  █ █   █   █  █ █  █ █   ██  █ █ █  █   %R%[0m
echo             %R%[33m█  █ █ ██ █ █ █ █   █   █  █ ████ ██  █ █ █ ██   ████%R%[0m
echo             %R%[33m█  █ █  █ █  ██ █   █   █  █ █ █  █   █  ██ █ █     █%R%[0m
echo             %R%[33m████ ████ █   █ █   █   ████ █  █ ███ █   █ █  █ ████%R%[0m
goto :eof

:netkontrol
Call :bosluk
echo                        %R%[91m INTERNET BAGLANTISI SAĞLANAMADI%R%[0m
echo. 
echo               [##################### HATA #####################]  
Call :ogni
timeout /t 7 /nobreak > NUL
goto :eof

:wget
Call :bosluk
echo                  %R%[92m Wget dosyası bulunamadı yeniden indiriliyor%R%[0m
echo. 
echo               [##################### HATA #####################]  
Call :ogni
mkdir C:\OgnitorenKs.Toolbox\Files > NUL
chcp 437 > NUL 2>&1
powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.3/64/wget.exe -OutFile C:\OgnitorenKs.Toolbox\Files\wget.exe }"
chcp 65001 > NUL 2>&1
timeout /t 1 /nobreak > NUL
cls
goto :eof

:Powershell
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set R=%%b
  exit /B 0
)
exit /B 0