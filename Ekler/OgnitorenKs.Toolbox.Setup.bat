
::       �������   ������   ��    �� ���� ��������  �������  ��������  �������� ��    �� ��    ��  ������
::      ��     �� ��    ��  ���   ��  ��     ��    ��     �� ��     �� ��       ���   �� ��   ��  ��    �
::      ��     �� ��        ����  ��  ��     ��    ��     �� ��     �� ��       ����  �� ��  ��   ��
::      ��     �� ��   ���� �� �� ��  ��     ��    ��     �� ��������  ������   �� �� �� �����      ������ 
::      ��     �� ��    ��  ��  ����  ��     ��    ��     �� ��   ��   ��       ��  ���� ��  ��         ��
::      ��     �� ��    ��  ��   ���  ��     ��    ��     �� ��    ��  ��       ��   ��� ��   ��  ��    ��
::       �������   ������   ��    �� ����    ��     �������  ��     �� �������� ��    �� ��    ��  ������ 
::
::  Haz�rlayan: H�seyin UZUNYAYLA / OgnitorenKs
::  Toolbox'� haz�rlad���m sistemlerde temel programlar� indirip, basit bir �ekilde sistem �zerinde d�zenleme yapmas� i�in haz�rlad�m.
::  S�rekli olarak g�ncellenecektir. Toolbox'� indirmek i�in a�a��daki linkleri kullanabilirsiniz.
::
::  �stek ve �nerileriniz olursa, ileti�im;
::   Discord: OgnitorenKs#2737 
::   Mail: ognitorenks@gmail.com
::   Site: ognitorenks.blogspot.com (Bu b�l�m �u an aktif de�il)

echo off
cls
mode con cols=80 lines=30
title OgnitorenKs Toolbox G�ncelleyici

setlocal
call :setESC

:: Konum bilgisi al�n�r.
cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum=%%a

:: �nternet ba�lant� durumu kontrol edilir.
:netkonroll
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (Call :netkontrol&goto exit)
	
:: wget.exe dosyas� kontrol edilir.	
dir /b C:\OgnitorenKs.Toolbox\Files\wget.exe > NUL 2>&1
	if %errorlevel%==1 (Call :wget)	

:: C diski i�inde OgnitorenKs.Toolbox klas�r� a��l�r	
mkdir C:\OgnitorenKs.Toolbox > NUL 2>&1
Call :bosluk
echo                       %ESC%[92m OgnitorenKs Toolbox Y�kleniyor...%ESC%[0m
echo             
echo               [������������                                    ]
Call :ogni
:: OgnitorenKs.Toolbox dosyalar� indirilir.
C:\OgnitorenKs.Toolbox\Files\wget --no-check-certificate "https://docs.google.com/uc?export=download&id=1RGyfwovjOn2f-J-pvLoqma1UZmI_TKBN" -O C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip > NUL 2>&1
cls
Call :bosluk
echo                       %ESC%[92m OgnitorenKs Toolbox Y�kleniyor...%ESC%[0m
echo             
echo               [������������������������                        ]
Call :ogni
:: �ndirilen OgnitorenKs.Toolbox.zip dosyas� C:\OgnitorenKs.Toolbox klas�r� i�erisine ��kar�l�r.
powershell -command "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip' 'C:\OgnitorenKs.Toolbox'"
:: K�sayollar masa�st�ne g�nderilir.
move /y "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.lnk" "C:\Users\%username%\Desktop"
move /y "C:\OgnitorenKs.Toolbox\PowerChoice.lnk" "C:\Users\%username%\Desktop"
cls
Call :bosluk
echo                       %ESC%[92m OgnitorenKs Toolbox Y�kleniyor...%ESC%[0m
echo             
echo               [������������������������������������            ]
Call :ogni
:: �ndirilen g�ncelle�tirme dosya art��� silinir.
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip" > NUL 2>&1
DEL /F /Q /A "C:\users\%username%\Desktop\OgnitorenKs.Toolbox.Setup.lnk" > NUL 2>&1
cls
Call :bosluk
echo        %ESC%[92m OgnitorenKs Toolbox y�kleme i�lemi ba�ar�yla tamamlanm��t�r.%ESC%[0m
echo 
echo               [������������������������������������������������]
Call :ogni
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Ekler\OgnitorenKs.Toolbox.Setup.bat" > NUL 2>&1
timeout /t 3 /nobreak > NUL
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
echo               %ESC%[33m��  ���� �   � � ���  ��  ����  ��� �   �   � ����%ESC%[0m
echo              %ESC%[33m�  � �    ��  � �  �  �  � �  �  �   ��  �  �  �   %ESC%[0m
echo              %ESC%[33m�  � � �� � � � �  �  �  � � �   ��  � � � �   ����%ESC%[0m
echo              %ESC%[33m�  � �  � �  �� �  �  �  � �  �  �   �  ��  �     �%ESC%[0m
echo               %ESC%[33m��  ���� �   � �  �   ��  �   � ��� �   �   � ����%ESC%[0m 
goto :eof
:netkontrol
Call :bosluk
echo                        %ESC%[91m INTERNET BAGLANTISI SA�LANAMADI%ESC%[0m
echo  
echo               [##################### HATA #####################]  
Call :ogni
timeout /t 7 /nobreak > NUL
goto :eof
:wget
Call :bosluk
echo                       %ESC%[92m Kurulum dosyalar� indiriliyor...%ESC%[0m
echo   
echo               [################################################]  
Call :ogni
mkdir C:\OgnitorenKs.Toolbox\Files > NUL 2>&1
powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.2/64/wget.exe -OutFile C:\OgnitorenKs.Toolbox\Files\wget.exe }"
timeout /t 1 /nobreak > NUL
cls
goto :eof


:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0

