::                               NOTEPAD++ > Kodlama > Karakter Tak�m� > T�rk�e > OEM857
:: ==============================================================================================================================
::
::       �������   ������   ��    �� ���� ��������  �������  ��������  �������� ��    �� ��    ��  ������
::      ��     �� ��    ��  ���   ��  ��     ��    ��     �� ��     �� ��       ���   �� ��   ��  ��    �
::      ��     �� ��        ����  ��  ��     ��    ��     �� ��     �� ��       ����  �� ��  ��   ��
::      ��     �� ��   ���� �� �� ��  ��     ��    ��     �� ��������  ������   �� �� �� �����      ������ 
::      ��     �� ��    ��  ��  ����  ��     ��    ��     �� ��   ��   ��       ��  ���� ��  ��         ��
::      ��     �� ��    ��  ��   ���  ��     ��    ��     �� ��    ��  ��       ��   ��� ��   ��  ��    ��
::       �������   ������   ��    �� ����    ��     �������  ��     �� �������� ��    �� ��    ��  ������ 
::
::  Haz�rlayan: H�seyin UZUNYAYLA / OgnitorenKs
::  -------------------------------------------
::  Toolbox'� haz�rlad���m sistemlerde temel programlar� indirip, basit bir �ekilde sistem �zerinde d�zenleme yapmas� i�in haz�rlad�m.
::  S�rekli olarak g�ncellenecektir. Toolbox'� indirmek i�in a�a��daki linkleri kullanabilirsiniz.
::
::  �stek ve �nerileriniz olursa, ileti�im;
::  --------------------------------------
::  >> Discord: OgnitorenKs#2737 
::  >>    Mail: ognitorenks@gmail.com
::
::                                                >>   WEB PAGE   <<
::                                         --------------------------------
::                                         >>  ognitorenks.blogspot.com  <<

:: ==============================================================================================================================
echo off
mode con cols=48 lines=35
title Ping �l�er / OgnitorenKs

setlocal
call :ColorEnd

cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum=%%a
set konum=%konum:~0,-6%

:ping1
cls
echo  %R%[90m��������������������������������������������ͻ%R%[0m
Call :pingolcum www.youtube.com
echo                  %R%[92mYoutube:%R%[0m %ping%
echo  %R%[90m��������������������������������������������͹%R%[0m
Call :pingolcum www.technopat.net
echo                 %R%[92mTechnopat:%R%[0m %ping%
echo  %R%[90m��������������������������������������������͹%R%[0m
Call :pingolcum www.twitter.com
echo                  %R%[92mTwitter:%R%[0m %ping%
echo  %R%[90m��������������������������������������������͹%R%[0m
Call :pingolcum www.instagram.com
echo                 %R%[92mInstagram:%R%[0m %ping%
echo  %R%[90m��������������������������������������������͹%R%[0m
echo                        %R%[91mDNS%R%[0m
echo  %R%[90m��������������������������������������������͹%R%[0m
Call :pingolcum 1.1.1.1
echo                 %R%[92mCloudflare:%R%[0m %ping%
echo  %R%[90m��������������������������������������������͹%R%[0m
Call :pingolcum 8.8.8.8
echo                   %R%[92mGoogle:%R%[0m %ping%
echo  %R%[90m��������������������������������������������ͼ%R%[0m
set /p pingolc=%R%[92m  Ping �l� : %R%[0m 
echo [%date% - %time%] ^| Ping�l� ^| "%pingolc%" adresinin pingi �l��ld�. Ping="%ping%" >> %konum%\Logs
Call :pingolcum %pingolc%
echo                       %ping%  
pause > NUL
goto ping1



:pingolcum
for /f "tokens=9" %%a in ('ping -n 1 %~1') do SET ping=%%a
set ping=%ping:~0,-2% %R%[96mMS%R%[0m
GOTO:EOF

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set R=%%b
  exit /B 0
)
exit /B 0