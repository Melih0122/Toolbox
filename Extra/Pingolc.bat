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
chcp 65001 > NUL 2>&1
mode con cols=48 lines=21
title Ping Ölçer / OgnitorenKs

setlocal
call :ColorEnd

cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Location=%Location:~0,-6%

:ping1
cls
echo  %R%[90m┌────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m             Hazır Ping Ölçümleri           %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├────────────────────────────────────────────┤%R%[0m
Call :pingolcum www.youtube.com
echo                 %R%[92m Youtube:%R%[0m %ping%
Call :pingolcum www.facebook.com
echo                %R%[92m Facebook:%R%[0m %ping%
Call :pingolcum www.twitter.com
echo                 %R%[92m Twitter:%R%[0m %ping%
Call :pingolcum www.instagram.com
echo                %R%[92m Instagram:%R%[0m %ping%
Call :pingolcum www.reddit.com
echo                  %R%[92m Reddit:%R%[0m %ping%
Call :pingolcum www.twitch.tv
echo                  %R%[92m Twitch:%R%[0m %ping%
echo                        %R%[91mDNS%R%[0m
Call :pingolcdns 1.1.1.1 1.0.0.1
echo              %R%[92m Cloudflare:%R%[0m %pingdns1%-%pingdns2%
Call :pingolcdns 8.8.8.8 8.8.4.4
echo                %R%[92m Google:%R%[0m %pingdns1%-%pingdns2%
Call :pingolcdns 9.9.9.9 149.112.112.112
echo                 %R%[92m Quad9:%R%[0m %pingdns1%-%pingdns2%
Call :pingolcdns 208.67.222.222 208.67.220.220
echo               %R%[92m OpenDns:%R%[0m %pingdns1%-%pingdns2%
echo  %R%[90m└────────────────────────────────────────────┘%R%[0m
set /p pingolc=%R%[1;97m  %R%[42m Ping Ölç %R%[0m%R%[90m[Site/IP]%R%[92m :%R%[0m 
Call :pingolcum %pingolc%
echo                     ►  %ping%  ◄
pause > NUL
goto ping1



:pingolcum
for /f "tokens=9" %%a in ('ping -n 1 %~1') do SET ping=%%a
set ping=%ping:~0,-2% %R%[96mMS%R%[0m
GOTO:EOF

:pingolcdns
for /f "tokens=9" %%a in ('ping -n 1 %~1') do SET ping=%%a
set pingdns1=%ping:~0,-2%

for /f "tokens=9" %%a in ('ping -n 1 %~2') do SET ping=%%a
set pingdns2=%ping:~0,-2% %R%[96mMS%R%[0m
GOTO:EOF


:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set R=%%b
  exit /B 0
)
exit /B 0