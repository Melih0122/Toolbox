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
::  Toolbox' hazrlad§m sistemlerde temel programlar indirip, basit bir Ÿekilde sistem zerinde dzenleme yapmas i‡in hazrladm.
::  Srekli olarak gncellenecektir. Toolbox' indirmek i‡in aŸa§daki linkleri kullanabilirsiniz.
::   https://www.technopat.net/sosyal/konu/ognitorenks-toolbox-kullanimi.1790250/
::
::  OgnitorenKs.Toolbox katlmsz kurulum dosyasn indirmek i‡in aŸa§daki "Toolbox.Update.bat" dosyasn indirip y”netici olarak ‡alŸtrn.
::   https://docs.google.com/uc?export=download&id=1JmrWYeNjVopcIP0n9iNkMUCEbQ2SIvpY
::
::  ˜stek ve ”nerileriniz olursa, iletiŸim;
::   Discord: OgnitorenKs#2737 
::   Mail: ognitorenks@gmail.com
::   Site: ognitorenks.blogspot.com (Bu b”lm Ÿu an aktif de§il)
::   Site: www.technopat.net\Sosyal (Yeni bir konu a‡p yada hazrlad§m konularda @OgnitorenKs yazarak etiketleyebilirsiniz) 
:: ==============================================================================================================================
echo off
mode con cols=48 lines=35
title Ping ™l‡er / OgnitorenKs

setlocal
call :setESC

cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum=%%a
set konum=%konum:~0,-6%

:ping1
cls
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
Call :pingolcum www.youtube.com
echo                  %ESC%[92mYoutube:%ESC%[0m %ping%
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
Call :pingolcum www.technopat.net
echo                 %ESC%[92mTechnopat:%ESC%[0m %ping%
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
Call :pingolcum www.twitter.com
echo                  %ESC%[92mTwitter:%ESC%[0m %ping%
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
Call :pingolcum www.instagram.com
echo                 %ESC%[92mInstagram:%ESC%[0m %ping%
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo                        %ESC%[91mDNS%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
Call :pingolcum 1.1.1.1
echo                 %ESC%[92mCloudflare:%ESC%[0m %ping%
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
Call :pingolcum 8.8.8.8
echo                   %ESC%[92mGoogle:%ESC%[0m %ping%
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p pingolc=%ESC%[92m  Ping ™l‡ : %ESC%[0m 
echo [%date% - %time%] ^| Ping™l‡ ^| "%pingolc%" adresinin pingi ”l‡ld. Ping="%ping%" >> %konum%\Logs
Call :pingolcum %pingolc%
echo                       %ping%  
pause > NUL
goto ping1



:pingolcum
for /f "tokens=9" %%a in ('ping -n 1 %~1') do SET ping=%%a
set ping=%ping:~0,-2% %ESC%[96mMS%ESC%[0m
GOTO:EOF

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0