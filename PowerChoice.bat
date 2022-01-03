echo off
cls
title OgnitorenKs G Seenekleri
mode con cols=55 lines=22

setlocal
call :setESC


:powerr
cls
for /f "tokens=2 delims='('" %%f in ('powercfg -list ^| findstr /C:"*"') do set deger=%%f
set deger=%deger:~0,-3%
echo 
echo 
echo 
echo 
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[97m%ESC%%ESC%[100m          G Seenekleri / OgnitorenKs          %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ               %ESC%[32m 1.%ESC%%ESC%[33m G tasarruf%ESC%[0m                  %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ               %ESC%[32m 2.%ESC%%ESC%[33m Dengeli%ESC%[0m                       %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ               %ESC%[32m 3.%ESC%%ESC%[33m Nihai%ESC%[0m                         %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo      %ESC%[32mSeili Deงer :%ESC%%ESC%[37m %deger%%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo %ESC%[92m  G Seeneงi : %ESC%[0m&choice /C:123 /N
	if %errorlevel%==1 GOTO powerlow
	if %errorlevel%==2 GOTO powerdenge
	if %errorlevel%==3 GOTO powerboost

:powerlow
for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"G"') do set deger=%%f
powercfg -setactive %deger% > NUL
goto powerr

:powerboost
for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"Nihai"') do set deger=%%f
powercfg -setactive %deger% > NUL
goto powerr

:powerdenge
for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"Dengeli"') do set deger=%%f
powercfg -setactive %deger% > NUL
goto powerr

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0



