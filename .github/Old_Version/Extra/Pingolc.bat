::                               NOTEPAD++ > Kodlama > Karakter Takm > Trk‡e > OEM857
:: ==============================================================================================================================
::
::       þþþþþþþ   þþþþþþ   þþ    þþ þþþþ þþþþþþþþ  þþþþþþþ  þþþþþþþþ  þþþþþþþþ þþ    þþ þþ    þþ  þþþþþþ
::      þþ     þþ þþ    þþ  þþþ   þþ  þþ     þþ    þþ     þþ þþ     þþ þþ       þþþ   þþ þþ   þþ  þþ    þ
::      þþ     þþ þþ        þþþþ  þþ  þþ     þþ    þþ     þþ þþ     þþ þþ       þþþþ  þþ þþ  þþ   þþ
::      þþ     þþ þþ   þþþþ þþ þþ þþ  þþ     þþ    þþ     þþ þþþþþþþþ  þþþþþþ   þþ þþ þþ þþþþþ      þþþþþþ 
::      þþ     þþ þþ    þþ  þþ  þþþþ  þþ     þþ    þþ     þþ þþ   þþ   þþ       þþ  þþþþ þþ  þþ         þþ
::      þþ     þþ þþ    þþ  þþ   þþþ  þþ     þþ    þþ     þþ þþ    þþ  þþ       þþ   þþþ þþ   þþ  þþ    þþ
::       þþþþþþþ   þþþþþþ   þþ    þþ þþþþ    þþ     þþþþþþþ  þþ     þþ þþþþþþþþ þþ    þþ þþ    þþ  þþþþþþ 
::
::  Hazrlayan: Hseyin UZUNYAYLA / OgnitorenKs
::  -------------------------------------------
::  Toolbox' hazrlad§m sistemlerde temel programlar indirip, basit bir Ÿekilde sistem zerinde dzenleme yapmas i‡in hazrladm.
::  Srekli olarak gncellenecektir. Toolbox' indirmek i‡in aŸa§daki linkleri kullanabilirsiniz.
::
::  ˜stek ve ”nerileriniz olursa, iletiŸim;
::  --------------------------------------
::  >> Discord: OgnitorenKs#2737 
::  >>    Mail: ognitorenks@gmail.com
::
::                                                >>   WEB PAGE   <<
::                                         --------------------------------
::                                         >>  ognitorenks.blogspot.com  <<

:: ==============================================================================================================================
echo off
mode con cols=48 lines=21
title Ping ™l‡er / OgnitorenKs

setlocal
call :ColorEnd

cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Location=%Location:~0,-6%

:ping1
cls
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m             Hazr Ping ™l‡mleri           %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
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
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p pingolc=%R%[1;97m  %R%[42m Ping ™l‡ %R%[0m%R%[90m[Site/IP]%R%[92m :%R%[0m 
echo [%date% - %time%] ^| Ping™l‡ ^| "%pingolc%" adresinin pingi ”l‡ld. Ping="%ping%" >> %Location%\Logs
Call :pingolcum %pingolc%
echo                       %ping%  
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