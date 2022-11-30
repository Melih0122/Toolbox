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
mode con cols=55 lines=22
chcp 65001 > NUL 2>&1
title OgnitorenKs Güç Seçenekleri

setlocal
call :ColorEnd

Dism /Online /Get-Intl | findstr "tr-TR" > NUL 2>&1
	if %errorlevel%==1 (echo %R%[91m Sistem dili Türkçe değil %R%[0m
						timeout /t 3 /nobreak > NUL
						exit)

powercfg -list ^| findstr /C:"Güç" > NUL 2>&1
	if %errorlevel%==1 (powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a > NUL 2>&1)
powercfg -list ^| findstr /C:"Dengeli" > NUL 2>&1
	if %errorlevel%==1 (powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e > NUL 2>&1)
powercfg -list ^| findstr /C:"Nihai" > NUL 2>&1
	if %errorlevel%==1 (powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 > NUL 2>&1)
	
:powerr
cls
for /f "tokens=2 delims=()" %%f in ('powercfg -list ^| findstr /C:"*"') do set deger=%%f
echo.
echo.
echo.
echo.
echo   %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m          Güç Seçenekleri / OgnitorenKs          %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo   %R%[90m│               %R%[32m 1.%R%[33m Güç tasarruf                  %R%[90m│%R%[0m
echo   %R%[90m│               %R%[32m 2.%R%[33m Dengeli                       %R%[90m│%R%[0m
echo   %R%[90m│               %R%[32m 3.%R%[33m Nihai                         %R%[90m│%R%[0m
echo   %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo     ► %R%[32mSeçili Güç:%R%[37m %deger%%R%[0m
echo   %R%[90m└─────────────────────────────────────────────────┘%R%[0m
echo %R%[92m  Güç Seçeneği : %R%[0m&choice /C:123 /N
	if %errorlevel%==1 GOTO powerlow
	if %errorlevel%==2 GOTO powerdenge
	if %errorlevel%==3 GOTO powerboost

:powerlow
for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"Güç"') do set deger=%%f
powercfg -setactive %deger% > NUL
goto powerr

:powerdenge
for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"Dengeli"') do set deger=%%f
powercfg -setactive %deger% > NUL
goto powerr

:powerboost
for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"Nihai"') do set deger=%%f
powercfg -setactive %deger% > NUL
goto powerr


:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set R=%%b
  exit /B 0
)
exit /B 0



