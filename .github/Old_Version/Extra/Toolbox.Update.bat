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
mode con cols=80 lines=30
title OgnitorenKs Toolbox G�ncelleyici

setlocal
call :ColorEnd

cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a

ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (Call :netkontrol&exit)
	
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.bat" > NUL 2>&1
RD /S /Q "C:\OgnitorenKs.Toolbox\Download" > NUL 2>&1
RD /S /Q "C:\OgnitorenKs.Toolbox\Edit" > NUL 2>&1
RD /S /Q "C:\OgnitorenKs.Toolbox\Files" > NUL 2>&1
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Extra\Links.txt" > NUL 2>&1
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Extra\Links.bat" > NUL 2>&1
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Extra\Sistem.Hakkinda.bat" > NUL 2>&1
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Extra\Pingolc.bat" > NUL 2>&1
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Extra\Off.Katilimsiz.bat" > NUL 2>&1
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Extra\On.Katilimsiz.bat" > NUL 2>&1
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Extra\Windows.Editor.bat" > NUL 2>&1
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Extra\PowerChoice.bat" > NUL 2>&1
	
dir /b C:\OgnitorenKs.Toolbox\Files\wget.exe > NUL 2>&1
	if %errorlevel%==1 (Call :wget)	

mkdir C:\OgnitorenKs.Toolbox > NUL 2>&1
Call :bosluk
echo                     %R%[92m OgnitorenKs Toolbox G�ncelleniyor...%R%[0m
echo             
echo               [������������                                    ]
Call :ogni
C:\OgnitorenKs.Toolbox\Files\wget --no-check-certificate "https://docs.google.com/uc?export=download&id=1g8mbmzrFcXSZT7r5Oiwdqfs9wGNS2xWl" -O C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip > NUL 2>&1
cls
Call :bosluk
echo                     %R%[92m OgnitorenKs Toolbox G�ncelleniyor...%R%[0m
echo             
echo               [������������������������                        ]
Call :ogni
powershell -command "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip' 'C:\OgnitorenKs.Toolbox'"
move /y "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.lnk" "C:\Users\%username%\Desktop" > NUL 2>&1
move /y "C:\OgnitorenKs.Toolbox\PowerChoice.lnk" "C:\Users\%username%\Desktop" > NUL 2>&1
cls
Call :bosluk
echo                     %R%[92m OgnitorenKs Toolbox G�ncelleniyor...%R%[0m
echo             
echo               [������������������������������������            ]
Call :ogni
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip" > NUL 2>&1
cls
Call :bosluk
echo       %R%[92m OgnitorenKs Toolbox g�ncelleme i�lemi ba�ar�yla tamamlanm��t�r.%R%[0m
echo 
echo               [������������������������������������������������]
Call :ogni
timeout /t 4 /nobreak > NUL
exit

:bosluk
echo 
echo 
echo 
echo 
echo 
echo 
echo 
goto :eof
:ogni
echo 
echo               %R%[33m��  ���� �   � � ���  ��  ����  ��� �   �   � ����%R%[0m
echo              %R%[33m�  � �    ��  � �  �  �  � �  �  �   ��  �  �  �   %R%[0m
echo              %R%[33m�  � � �� � � � �  �  �  � � �   ��  � � � �   ����%R%[0m
echo              %R%[33m�  � �  � �  �� �  �  �  � �  �  �   �  ��  �     �%R%[0m
echo               %R%[33m��  ���� �   � �  �   ��  �   � ��� �   �   � ����%R%[0m 
goto :eof
:netkontrol
Call :bosluk
echo                        %R%[91m INTERNET BAGLANTISI SA�LANAMADI%R%[0m
echo  
echo               [##################### HATA #####################]  
Call :ogni
timeout /t 7 /nobreak > NUL
goto :eof
:wget
Call :bosluk
echo                  %R%[92m Wget dosyas� bulunamad� yeniden indiriliyor%R%[0m
echo  
echo               [##################### HATA #####################]  
Call :ogni
mkdir C:\OgnitorenKs.Toolbox\Files > NUL
powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.3/64/wget.exe -OutFile C:\OgnitorenKs.Toolbox\Files\wget.exe }"
timeout /t 1 /nobreak > NUL
cls
goto :eof

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set R=%%b
  exit /B 0
)
exit /B 0