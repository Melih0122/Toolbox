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
cls
title OgnitorenKs G�� Se�enekleri
mode con cols=55 lines=22

setlocal
call :ColorEnd


:powerr
cls
for /f "tokens=2 delims='('" %%f in ('powercfg -list ^| findstr /C:"*"') do set deger=%%f
set deger=%deger:~0,-3%
echo 
echo 
echo 
echo 
echo 
echo   %R%[90m�������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%%R%[97m%R%%R%[100m          G�� Se�enekleri / OgnitorenKs          %R%[0m%R%[90m�%R%[0m
echo   %R%[90m�������������������������������������������������͹%R%[0m
echo   %R%[90m�               %R%[32m 1.%R%%R%[33m G�� tasarruf%R%[0m                  %R%[90m�%R%[0m
echo   %R%[90m�               %R%[32m 2.%R%%R%[33m Dengeli%R%[0m                       %R%[90m�%R%[0m
echo   %R%[90m�               %R%[32m 3.%R%%R%[33m Nihai%R%[0m                         %R%[90m�%R%[0m
echo   %R%[90m�������������������������������������������������͹%R%[0m
echo      %R%[32mSe�ili De�er :%R%%R%[37m %deger%%R%[0m
echo   %R%[90m�������������������������������������������������ͼ%R%[0m
echo %R%[92m  G�� Se�ene�i : %R%[0m&choice /C:123 /N
	if %errorlevel%==1 GOTO powerlow
	if %errorlevel%==2 GOTO powerdenge
	if %errorlevel%==3 GOTO powerboost

:powerlow
for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"G��"') do set deger=%%f
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

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set R=%%b
  exit /B 0
)
exit /B 0



