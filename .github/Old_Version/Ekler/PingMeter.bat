echo off
cls
title Ping Menu / OgnitorenKs
mode con cols=49 lines=45


cd /d "%~dp0"

setlocal
call :setESC

:pingolc
cls
ECHO.
ECHO    %ESC%[36m.........OgnitorenKs / PòNG ôLÄER.........%ESC%[0m
ECHO.
ECHO    =========================================== && ECHO.   %ESC%[92mValve%ESC%[0m
CALL:Valve vie.valve.net
ECHO      %ESC%[36m Viyana:%ESC%[0m                          %ESC%[33m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[92mRiot Games%ESC%[0m
CALL:Riot 162.249.79.1
ECHO      %ESC%[36m TÅrkiye:%ESC%[0m                         %ESC%[33m%ms%%ESC%[0m 
CALL:Riot   104.160.143.124
ECHO      %ESC%[36m Avrupa:%ESC%[0m                          %ESC%[33m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[92mCS:GO%ESC%[0m
CALL:CSGO dm.wasp.gen.tr
ECHO      %ESC%[36m Wasp.gen.tr:%ESC%[0m                     %ESC%[33m%ms%%ESC%[0m  
CALL:CSGO   counter-strike.net
ECHO      %ESC%[36m CounterStrike.net:%ESC%[0m               %ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[92mFortnite%ESC%[0m
Call:Fortnite qosping-aws-eu-west-3.ol.epicgames.com
ECHO      %ESC%[36m Avrupa:%ESC%[0m                          %ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[92mPUBG%ESC%[0m
Call:PUBG 35.156.63.252
ECHO      %ESC%[36m Frankfurt:%ESC%[0m                       %ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[92mAmazon%ESC%[0m
CALL:Amazon 52.94.17.134
ECHO      %ESC%[36m AWS Frankfurt:%ESC%[0m                   %ESC%[33m%ms%%ESC%[0m 
CALL:Amazon 52.94.15.16
ECHO      %ESC%[36m AWS Londra:%ESC%[0m                      %ESC%[33m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[92mCloudFlare%ESC%[0m
Call:CloudFlare 1.1.1.1
ECHO      %ESC%[36m DNS:%ESC%[0m                             %ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[92mTwitch%ESC%[0m
Call:Twitch 199.232.138.167
ECHO      %ESC%[36m Twitch Avrupa:%ESC%[0m    		%ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[92mMinecraft%ESC%[0m
Call:Minecraft 172.65.230.98
ECHO      %ESC%[36m Hypixel:%ESC%[0m                         %ESC%[33m%ms%%ESC%[0m 
Call:Minecraft 51.91.200.191
ECHO      %ESC%[36m CubeCraft:%ESC%[0m                       %ESC%[33m%ms%%ESC%[0m
Call:Minecraft 107.6.153.141
ECHO      %ESC%[36m Mineplex(PE):%ESC%[0m                    %ESC%[33m%ms%%ESC%[0m
Call:Minecraft 172.67.198.40
ECHO      %ESC%[36m Herobrine.org:%ESC%[0m                   %ESC%[33m%ms%%ESC%[0m
ECHO    ===========================================
echo       %ESC%[92m 1.%ESC%%ESC%[36m Ping îláer%ESC%[0m 
echo       %ESC%[92m 0.%ESC%%ESC%[91m Äçkçü%ESC%[0m
ECHO    ===========================================
set /p pingolc=%ESC%[92m Yapmak istedißiniz iülem : %ESC%[0m
	if %pingolc%==1 GOTO pingmeter
	if %pingolc%==0 GOTO exit
else
	goto pingolc
	
cls
goto Start

:Valve
:Riot Games
:CSGO
:Fortnite
:PUBG
:Amazon
:CloudFlare
:Twitch
:Minecraft

SET ms=Hata
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms=%%i
GOTO:EOF

:pingmeter	
cls
title Ping Meter / OgnitorenKs
mode con cols=60 lines=23
set /p pingmeter=%ESC%[92m òp adresi ve site adç : %ESC%[0m 
for /f "tokens=9" %%A in ('ping %pingmeter%') do SET pingadres=%%A
echo         ============================================
echo          %ESC%[93m%pingmeter%%ESC%[0m             %ESC%[92mPing:%ESC% %ESC%[37m %pingadres% %ESC%[0m  
echo         ============================================

pause
goto pingolc

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0
