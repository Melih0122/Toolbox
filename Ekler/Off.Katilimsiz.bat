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
::  Toolbox'� haz�rlad���m sistemlerde temel programlar� indirip, basit bir �ekilde sistem �zerinde d�zenleme yapmas� i�in haz�rlad�m.
::  S�rekli olarak g�ncellenecektir. Toolbox'� indirmek i�in a�a��daki linkleri kullanabilirsiniz.
::   https://www.technopat.net/sosyal/konu/ognitorenks-toolbox-kullanimi.1790250/
::
::  OgnitorenKs.Toolbox kat�l�ms�z kurulum dosyas�n� indirmek i�in a�a��daki "Toolbox.Update.bat" dosyas�n� indirip y�netici olarak �al��t�r�n.
::   https://docs.google.com/uc?export=download&id=1JmrWYeNjVopcIP0n9iNkMUCEbQ2SIvpY
::
::  �stek ve �nerileriniz olursa, ileti�im;
::   Discord: OgnitorenKs#2737 
::   Mail: ognitorenks@gmail.com
::   Site: ognitorenks.blogspot.com (Bu b�l�m �u an aktif de�il)
::   Site: www.technopat.net\Sosyal (Yeni bir konu a��p yada haz�rlad���m konularda @OgnitorenKs yazarak etiketleyebilirsiniz) 
:: ==============================================================================================================================
echo off
cls

setlocal
call :setESC

:: ==============================================================================================================================
::  RENK HAR�TASI
::  -------------
:: %ESC%[32m > Men� i�i ye�il numara rengi
:: %ESC%[33m > Men� i�i sar� renk
:: %ESC%[36m > Men� i�i mavi renk
:: %ESC%[37m > Men� i�i beyaz renk
:: %ESC%[90m > �er�eve gri rengi
:: %ESC%[93m > Men� i�i yedek al k�sm�. Parlak sar�
:: %ESC%[96m > �oklu se�im yaz� rengi
:: %ESC%[1;97m > Ba�l�k dolgu i�indeki yaz�n�n rengi
:: %ESC%[100m > Ba�l�k dolgu rengi
:: ==============================================================================================================================

mkdir "%Mount%\OgnitorenKs.Toolbox\Katilimsiz" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Ekler" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Download" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
Call :konum
Call :PowerRun

:onlinemenu
mode con cols=96 lines=34  
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X  
echo   %ESC%[90m������������������������������������������������������������������������������������������ͻ%ESC%[0m
echo   %ESC%[90m�%ESC%[1;97m%ESC%%ESC%[100m                                  OFFLINE KATILIMSIZ ARACI                                %ESC%[0m%ESC%[90m�%ESC%[0m
echo   %ESC%[90m������������������������������������������������������������������������������������������͹%ESC%[0m
echo   %ESC%[90m�%ESC%%ESC%[32m  1.%ESC%%ESC%[37m All In One Runtimes%ESC%[0m  %ESC%[90m�%ESC%[0m %ESC%[32m 27.%ESC%%ESC%[36m Kdenlive%ESC%[0m               %ESC%[90m�%ESC%[0m          %ESC%[92m BONUS%ESC%[0m               %ESC%[90m�%ESC%[0m  
echo   %ESC%[90m�%ESC%%ESC%[32m  2.%ESC%%ESC%[33m Discord%ESC%[0m              %ESC%[90m�%ESC%[0m %ESC%[32m 28.%ESC%%ESC%[36m Krita%ESC%[0m                  %ESC%[90m�%ESC%%ESC%[32m 53.%ESC%%ESC%[36m Kat�l�ms�z dosyas� olu�tur%ESC%[0m  %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m  3.%ESC%%ESC%[33m Whatsapp%ESC%[0m             %ESC%[90m�%ESC%[0m %ESC%[32m 29.%ESC%%ESC%[36m Gimp%ESC%[0m                   %ESC%[90m�%ESC%%ESC%[32m 54.%ESC%%ESC%[36m Kat�l�ms�z dosyas�n� tamamla%ESC%[0m%ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m  4.%ESC%%ESC%[33m Signal%ESC%[0m               %ESC%[90m�%ESC%[0m %ESC%[32m 30.%ESC%%ESC%[36m OBS Studio%ESC%[0m             %ESC%[90m�%ESC%%ESC%[32m 55.%ESC%%ESC%[33m OgnitorenKs Toolbox ekle%ESC%[0m    %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m  5.%ESC%%ESC%[33m Telegram%ESC%[0m             %ESC%[90m�%ESC%[0m %ESC%[32m 31.%ESC%%ESC%[36m ShareX%ESC%[0m                 %ESC%[90m�%ESC%%ESC%[32m 56.%ESC%%ESC%[33m Masa�st�ne Dosya ekle%ESC%[0m       %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m  6.%ESC%%ESC%[33m Microsoft Teams%ESC%[0m      %ESC%[90m�%ESC%[0m %ESC%[32m 32.%ESC%%ESC%[36m Audacity%ESC%[0m               %ESC%[90m�%ESC%%ESC%[32m 57.%ESC%%ESC%[33m Gorev Zamanlay�c� ayarlar�%ESC%[0m  %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m  7.%ESC%%ESC%[33m Zoom%ESC%[0m                 %ESC%[90m�%ESC%[0m %ESC%[32m 33.%ESC%%ESC%[36m K-Lite Codec%ESC%[0m           %ESC%[90m�%ESC%%ESC%[32m 58.%ESC%%ESC%[33m Nihai Performans ekle%ESC%[0m       %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m  8.%ESC%%ESC%[36m EpicGames%ESC%[0m            %ESC%[90m�%ESC%[0m %ESC%[32m 34.%ESC%%ESC%[36m VLC Media Player%ESC%[0m       %ESC%[90m�%ESC%%ESC%[32m 59.%ESC%%ESC%[33m Bcdedit Ayarlar�n� ekle%ESC%[0m     %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m  9.%ESC%%ESC%[36m Steam%ESC%[0m                %ESC%[90m�%ESC%[0m %ESC%[32m 35.%ESC%%ESC%[36m Aimp%ESC%[0m                   %ESC%[90m�%ESC%%ESC%[32m 60.%ESC%%ESC%[33m SVCHost Optimizasyon ekle%ESC%[0m   %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 10.%ESC%%ESC%[36m GOG Galaxy%ESC%[0m           %ESC%[90m�%ESC%[0m %ESC%[32m 36.%ESC%%ESC%[33m Free Download Manager%ESC%[0m  %ESC%[90m�%ESC%%ESC%[32m 61.%ESC%%ESC%[33m Micr.Teams kald�r ekle%ESC%[0m      %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 11.%ESC%%ESC%[36m Uplay%ESC%[0m                %ESC%[90m�%ESC%[0m %ESC%[32m 37.%ESC%%ESC%[33m ByClick Downloader%ESC%[0m     %ESC%[90m�%ESC%%ESC%[32m 62.%ESC%%ESC%[33m Simge �nbellek Temizle ekle%ESC%[0m %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 12.%ESC%%ESC%[36m Origin%ESC%[0m               %ESC%[90m�%ESC%[0m %ESC%[32m 38.%ESC%%ESC%[33m Utorrent%ESC%[0m               %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m  
echo   %ESC%[90m�%ESC%%ESC%[32m 13.%ESC%%ESC%[36m Cheat Engine%ESC%[0m         %ESC%[90m�%ESC%[0m %ESC%[32m 39.%ESC%%ESC%[33m GlassWire%ESC%[0m              %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m
echo   %ESC%[90m�%ESC%%ESC%[32m 14.%ESC%%ESC%[36m Wemod%ESC%[0m                %ESC%[90m�%ESC%[0m %ESC%[32m 40.%ESC%%ESC%[33m TeamViewer%ESC%[0m             %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m
echo   %ESC%[90m�%ESC%%ESC%[32m 15.%ESC%%ESC%[37m League Of Legends%ESC%[0m    %ESC%[90m�%ESC%[0m %ESC%[32m 41.%ESC%%ESC%[33m Hamachi%ESC%[0m                %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 16.%ESC%%ESC%[37m Blitz%ESC%[0m                %ESC%[90m�%ESC%[0m %ESC%[32m 42.%ESC%%ESC%[33m Stremio%ESC%[0m                %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m
echo   %ESC%[90m�%ESC%%ESC%[32m 17.%ESC%%ESC%[33m Google Chrome%ESC%[0m        %ESC%[90m�%ESC%[0m %ESC%[32m 43.%ESC%%ESC%[36m ISLC%ESC%[0m                   %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m  
echo   %ESC%[90m�%ESC%%ESC%[32m 18.%ESC%%ESC%[33m Mozilla Firefox%ESC%[0m      %ESC%[90m�%ESC%[0m %ESC%[32m 44.%ESC%%ESC%[36m MSI Afterburner%ESC%[0m        %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 19.%ESC%%ESC%[33m Brave%ESC%[0m                %ESC%[90m�%ESC%[0m %ESC%[32m 45.%ESC%%ESC%[36m Hibit Uninstaller%ESC%[0m      %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 20.%ESC%%ESC%[33m Microsoft Edge%ESC%[0m       %ESC%[90m�%ESC%[0m %ESC%[32m 46.%ESC%%ESC%[36m Unlocker%ESC%[0m               %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 21.%ESC%%ESC%[36m Libre Office%ESC%[0m         %ESC%[90m�%ESC%[0m %ESC%[32m 47.%ESC%%ESC%[36m OpenShell%ESC%[0m              %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 22.%ESC%%ESC%[36m PDF-XChange Edit�r%ESC%[0m   %ESC%[90m�%ESC%[0m %ESC%[32m 48.%ESC%%ESC%[36m SSD Booster%ESC%[0m            %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 23.%ESC%%ESC%[36m Notepad++%ESC%[0m            %ESC%[90m�%ESC%[0m %ESC%[32m 49.%ESC%%ESC%[36m Everything%ESC%[0m             %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 24.%ESC%%ESC%[36m Calibre%ESC%[0m              %ESC%[90m�%ESC%[0m %ESC%[32m 50.%ESC%%ESC%[36m TaskbarX%ESC%[0m               %ESC%[90m�%ESC%[0m                                 %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 25.%ESC%%ESC%[33m 7 - Zip%ESC%[0m              %ESC%[90m�%ESC%[0m %ESC%[32m 51.%ESC%%ESC%[37m �oklu Se�im%ESC%[0m            %ESC%[90m�%ESC%%ESC%[32m 98.%ESC%%ESC%[93m Kat�l�ms�z Yedekle%ESC%[0m          %ESC%[90m�%ESC%[0m 
echo   %ESC%[90m�%ESC%%ESC%[32m 26.%ESC%%ESC%[33m WinRAR%ESC%[0m               %ESC%[90m�%ESC%[0m %ESC%[32m 52.%ESC%%ESC%[33m %ESC%[0m                       %ESC%[90m�%ESC%%ESC%[32m 99.%ESC%%ESC%[93m Yedekten ekle%ESC%[0m               %ESC%[90m�%ESC%[0m
echo   %ESC%[90m������������������������������������������������������������������������������������������ͼ%ESC%[0m
set /p menu= %ESC%[92m  Yapmak istedi�iniz i�lem : %ESC%[0m
	if %menu%==1 (Call :Download1)
	if %menu%==2 (Call :Download2)
	if %menu%==3 (Call :Download3)
	if %menu%==4 (Call :Download4)
	if %menu%==5 (Call :Download5)
	if %menu%==6 (Call :Download6)
	if %menu%==7 (Call :Download7)
	if %menu%==8 (Call :Download8)
	if %menu%==9 (Call :Download9)
	if %menu%==10 (Call :Download10)
	if %menu%==11 (Call :Download11)
	if %menu%==12 (Call :Download12)
	if %menu%==13 (Call :Download13)
	if %menu%==14 (Call :Download14)
	if %menu%==15 (Call :Download15)
	if %menu%==16 (Call :Download16)
	if %menu%==17 (Call :Download17)
	if %menu%==18 (Call :Download18)
	if %menu%==19 (Call :Download19)
	if %menu%==20 (Call :Download20)
	if %menu%==21 (Call :Download21)
	if %menu%==22 (Call :Download22)
	if %menu%==23 (Call :Download23)
	if %menu%==24 (Call :Download24)
	if %menu%==25 (Call :Download25)
	if %menu%==26 (Call :Download26)
	if %menu%==27 (Call :Download27)
	if %menu%==28 (Call :Download28)
	if %menu%==29 (Call :Download29)
	if %menu%==30 (Call :Download30)
	if %menu%==31 (Call :Download31)
	if %menu%==32 (Call :Download32)
	if %menu%==33 (Call :Download33)
	if %menu%==34 (Call :Download34)
	if %menu%==35 (Call :Download35)
	if %menu%==36 (Call :Download36)
	if %menu%==37 (Call :Download37)
	if %menu%==38 (Call :Download38)
	if %menu%==39 (Call :Download39)
	if %menu%==40 (Call :Download40)
	if %menu%==41 (Call :Download41)
	if %menu%==42 (Call :Download42)
	if %menu%==43 (Call :Download43)
	if %menu%==44 (Call :Download44)
	if %menu%==45 (Call :Download45)
	if %menu%==46 (Call :Download46)
	if %menu%==47 (Call :Download47)
	if %menu%==48 (Call :Download48)
	if %menu%==49 (Call :Download49)
	if %menu%==50 (Call :Download50)
	if %menu%==51 (Call :MultiSelect2)
	if %menu%==52 goto onlinemenu
	if %menu%==53 (Call :OpenBAT)
	if %menu%==54 (Call :CloseBAT)
	if %menu%==55 (Call :OgnitorenKsToolbox)
	if %menu%==56 (Call :DesktopFiles)
	if %menu%==57 (Call :GorevZamanlayici)
	if %menu%==58 (Call :NihaiPerformans)
	if %menu%==59 (Call :Bcdedit)
	if %menu%==60 (Call :Svchost)
	if %menu%==61 (Call :MicrosoftTeams)
	if %menu%==62 (Call :icofix)
	if %menu%==98 (Call :KatilimsizYedekle)
	if %menu%==99 (Call :KatilimsizYukle)
else
	goto onlinemenu

:MultiSelect2
set /p $multi2= %ESC%[96m  Se�im aras�na virg�l koyun  : %ESC%[0m

echo %$multi2% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto onlinemenu
echo %$multi2% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto onlinemenu

(
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] ^| OffKat�l�ms�z ^| �okluSe�im - Se�ilenler:'%$multi2%
) >> %konum%\Logs
cls
echo   %ESC%[90m������������������������������������������������������������������������������������������ͻ%ESC%[0m
echo   %ESC%[90m�%ESC%[1;97m%ESC%%ESC%[100m                                  OFFLINE KATILIMSIZ ARACI                                %ESC%[0m%ESC%[90m�%ESC%[0m
echo   %ESC%[90m������������������������������������������������������������������������������������������͹%ESC%[0m
echo                                           %ESC%[92m �OKLU SE��M%ESC%[0m 
echo   %ESC%[90m������������������������������������������������������������������������������������������ͼ%ESC%[0m
echo    %ESC%[96m Se�ilen indirmeler: %$multi2%%ESC%[0m
:MultiSelect3
FOR %%a in (%$multi2%) do Call :Download%%a
echo --------------------------------------------------------------------------------------------------------------------------- >> %konum%\Logs
goto onlinemenu

:OpenBAT
(
echo.
echo :: ==============================================================================================================================
echo ::                                     Ognitorenks Toolbox ile hazirlanmistir.
echo ::
echo ::       #######   ######   ##    ## #### ########  #######  ########  ######## ##    ## ##    ##  ######
echo ::      ##     ## ##    ##  ###   ##  ##     ##    ##     ## ##     ## ##       ###   ## ##   ##  ##    #
echo ::      ##     ## ##        ####  ##  ##     ##    ##     ## ##     ## ##       ####  ## ##  ##   ##
echo ::      ##     ## ##   #### ## ## ##  ##     ##    ##     ## ########  ######   ## ## ## #####      ###### 
echo ::      ##     ## ##    ##  ##  ####  ##     ##    ##     ## ##   ##   ##       ##  #### ##  ##         ##
echo ::      ##     ## ##    ##  ##   ###  ##     ##    ##     ## ##    ##  ##       ##   ### ##   ##  ##    ##
echo ::       #######   ######   ##    ## ####    ##     #######  ##     ## ######## ##    ## ##    ##  ###### 
echo ::
echo :: ==============================================================================================================================
echo.
echo echo off
echo cls
echo title OgnitorenKs Toolbox ile hazirlanmistir
echo :: Yonetici yetkisi alinir
echo net session ^>NUL 2^>^&1^|^| powershell Start-Process '%%^0' -Verb RunAs^&^& exit /b^|^| exit /b
echo :: Bat mevcut konumundan calisir.
echo cd /d "%%~dp0"
echo for /f %%%%a in ^('"cd"'^) do set konum=%%%%a
echo set konum=%%konum:~0,-11%%
echo :: ===================================================================================
echo :: ===================================================================================
echo.
) > %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

(
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] ^| OffKat�l�ms�z ^| OpenBat - Kat�l�ms�z dosyas� giri� b�l�m� haz�rland�.
) >> %konum%\Logs
goto :eof

:CloseBAT
Find "Islemler tamamlandi" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
(
echo [%date% - %time%] ^| OffKat�l�ms�z ^| OpenBat - Kat�l�ms�z dosyas� son b�l�m� uyguland�. 
echo ---------------------------------------------------------------------------------------------------------------------------
) >> %konum%\Logs
Call :RegTopla
(
echo.
echo :: ===================================================================================
echo :: ===================================================================================
echo reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Katilimsiz" /f ^> NUL 2^>^&1
echo timeout /t 3 /nobreak ^> NUL 
echo DEL /F /Q /A %%konum%%\Download\* ^> NUL 2^>^&1
echo RD /S /Q %%konum%%\Download\* ^> NUL 2^>^&1
echo echo  Islemler tamamlandi.
echo echo  Komut ekrani kapatiliyor.
echo echo  Copler temizleniyor.
echo timeout /t 2 /nobreak ^> NUL
echo RD /S /Q "C:\OgnitorenKs.Toolbox\Katilimsiz" ^> NUL 2^>^&1
echo exit
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
Call :RegYukle
reg add "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Katilimsiz" /t REG_SZ /d "C:\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat" /f
Call :RegTopla
goto :eof

:Download1
Find "DirectX" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
	
:: ----------------------------------------------------------------------------------------------------------	
FOR /F "tokens=1" %%i in ('FIND "05x86.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\05x86.exe"
FOR /F "tokens=1" %%i in ('FIND "05x64.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\05x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2005 kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\05x86.exe" /Q
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\05x64.exe" /Q
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

:: ----------------------------------------------------------------------------------------------------------	

FOR /F "tokens=1" %%i in ('FIND "08x86.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\08x86.exe"
FOR /F "tokens=1" %%i in ('FIND "08x64.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\08x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2008 kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\08x86.exe" /q
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\08x64.exe" /q
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

:: ----------------------------------------------------------------------------------------------------------

FOR /F "tokens=1" %%i in ('FIND "10x86.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\10x86.exe"
FOR /F "tokens=1" %%i in ('FIND "10x64.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\10x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2010 kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\10x86.exe" /q /norestart
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\10x64.exe" /q /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

:: ----------------------------------------------------------------------------------------------------------

FOR /F "tokens=1" %%i in ('FIND "12x86.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\12x86.exe"
FOR /F "tokens=1" %%i in ('FIND "12x64.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\12x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2012 kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\12x86.exe" /install /quiet /norestart
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\12x64.exe" /install /quiet /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

:: ----------------------------------------------------------------------------------------------------------

FOR /F "tokens=1" %%i in ('FIND "13x86.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\13x86.exe"
FOR /F "tokens=1" %%i in ('FIND "13x64.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\13x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2013 kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\13x86.exe" /install /quiet /norestart
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\13x64.exe" /install /quiet /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

:: ----------------------------------------------------------------------------------------------------------

FOR /F "tokens=1" %%i in ('FIND "15x86" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\15x86.exe"
FOR /F "tokens=1" %%i in ('FIND "15x64" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\15x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2015-2022 kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\15x86.exe" /install /quiet /norestart
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\15x64.exe" /install /quiet /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

:: ----------------------------------------------------------------------------------------------------------

FOR /F "tokens=1" %%i in ('FIND "javax64" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\javax64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Java kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\javax64.exe" INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

FOR /F "tokens=1" %%i in ('FIND "xnafx40" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\xnafx40.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  XNA Framework 4.0 kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\xnafx40.msi" /qn
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

FOR /F "tokens=1" %%i in ('FIND "oal.zip" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\oal.zip"
powershell -command "Expand-Archive -Force '%Mount%\OgnitorenKs.Toolbox\Katilimsiz\oal.zip' '%Mount%\OgnitorenKs.Toolbox\Katilimsiz'"
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\oal.zip" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  OpenAL kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\oalinst.exe" /SILENT
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

FOR /F "tokens=1" %%i in ('FIND "Desktop5x64" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Desktop5x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Desktop Runtime 5 kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Desktop5x64.exe" /q /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

FOR /F "tokens=1" %%i in ('FIND "Desktop5x86" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Desktop5x86.exe"
(
echo.
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Desktop5x86.exe" /q /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

FOR /F "tokens=1" %%i in ('FIND "DirectX" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\DirectX.exe"
%Mount%\OgnitorenKs.Toolbox\Katilimsiz\DirectX.exe /Q /C /T:"%Mount%\OgnitorenKs.Toolbox\Katilimsiz\DirectX\"
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\DirectX.exe" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  DirectX kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\DirectX\DXSETUP.exe" /silent
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download2
Find "Discord" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Discord" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Discord.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Discord kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Discord.exe" -s
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download3
Find "WhatsApp" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "WhatsApp" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\WhatsApp.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  WhatsApp kuruluyor..
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\WhatsApp.exe" --silent
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download4
Find "Signal" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Signal" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Signal.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Signal kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Signal.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download5
Find "Telegram" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Telegram" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Telegram.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Telegram kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Telegram.exe" /VERYSILENT /NORESTART
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download6
Find "Teams" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Teams" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Teams.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Microsoft Teams kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Teams.exe" -s
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download7
Find "Zoom" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Zoom" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Zoom.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Zoom kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Zoom.msi" /qn
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download8
Find "EpicGames" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "EpicGames" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\EpicGames.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  EpicGames kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\EpicGames.msi" /qn /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download9
Find "Steam" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Steam" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Steam.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Steam kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Steam.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download10
Find "GOG" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "GOG.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\GOG.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  GOG kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\GOG.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download11
Find "Uplay" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Uplay" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Uplay.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Uplay kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Uplay.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download12
Find "Origin" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Origin" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Origin.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Origin kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Origin.exe" /SILENT
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download13
Find "CheatEngine" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "CheatEngine" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\CheatEngine.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  CheatEngine kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\CheatEngine.exe" /SILENT
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download14
Find "Wemod" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Wemod" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Wemod.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Wemod kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Wemod.exe" --silent
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download15
Find "League.Of.Legends" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "LeagueOfLegends.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\League.Of.Legends.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  League.Of.Legends kuruluyor...
echo copy /y "C:\OgnitorenKs.Toolbox\Katilimsiz\League.Of.Legends.exe" "C:\Users\%%username%%\Desktop"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download16
Find "Blitz" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Blitz" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Blitz.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Blitz kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Blitz.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download17
Find "Google Chrome" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Chrome" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Chrome.zip"
powershell -command "Expand-Archive -Force '%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Chrome.zip' '%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Chrome'" 
copy /y "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Chrome\Installers\GoogleChromeStandaloneEnterprise64.msi" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz" > NUL 2>&1
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Chrome.zip" > NUL 2>&1
RD /S /Q "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Chrome" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Google Chrome kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\GoogleChromeStandaloneEnterprise64.msi" /qn
echo :: UBlock Origin
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: HTTPS Everywhere
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: Clear URL's
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof 

:Download18
Find "Firefox" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Firefox" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Firefox.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Mozilla Firefox kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Firefox.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download19
Find "Brave" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Brave" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Brave.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Brave kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Brave.exe" --install --silent --system-level
echo :: UBlock Origin
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: HTTPS Everywhere
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: Clear URL's
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat  
goto :eof 

:Download20
Find "Edge" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "edge.msi" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Edge.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Edge kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Edge.msi" /qn
echo :: UBlock Origin
echo reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: HTTPS Everywhere
echo reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: Clear URL's
echo reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download21
Find "LibreOffice" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "LibreOffice" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\LibreOffice.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  LibreOffice kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\LibreOffice.msi" /qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download22
Find "PdfXchange.msi" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "PdfXchange.msi" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\PdfXchange.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  PDF-XChange kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\PdfXchange.msi" /quiet /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download23
Find "Notepad" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Notepad" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Notepad.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Notepad kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Notepad.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download24
Find "Calibre" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Calibre" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Calibre.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Calibre kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Calibre.msi" /qn
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download25
Find "7-Zip" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "7-Zip" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\7-Zip.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  7-Zip kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\7-Zip.msi" /qn
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download26
Find "Winrar" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Winrar" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Winrar.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Winrar kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Winrar.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download27
Find "Kdenlive" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Kdenlive" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Kdenlive.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Kdenlive kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Kdenlive.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download28
Find "Krita" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Krita" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Krita.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Krita kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Krita.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download29
Find "Gimp" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Gimp" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Gimp.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Gimp kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Gimp.exe" /VERYSILENT /NORESTART /MERGETASKS=desktopicon /ALLUSERS
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download30
Find "OBS" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "OBS" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\OBS.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  OBS Studio kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\OBS.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download31
Find "ShareX" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "ShareX" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\ShareX.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  ShareX kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\ShareX.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download32
Find "Audacity" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Audacity" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Audacity.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Audacity kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Audacity.exe" /VERYSILENT /NORESTART
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download33
Find "Klite" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Klite" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Klite.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  K-lite Codec kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Klite.exe" /verysilent
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download34
Find "VLCMediaPlayer" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "VLCMediaPlayer" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\VLCMediaPlayer.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  VLC Media Player kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\VLCMediaPlayer.exe" /L=1055 /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download35
Find "Aimp" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Aimp" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Aimp.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Aimp kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Aimp.exe" /AUTO /SILENT
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof


:Download36
Find "FreeDownloadManager" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "FreeDownloadManager" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\FreeDownloadManager.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Free Download Manager kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\FreeDownloadManager.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download37
Find "ByClick" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "ByClick" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\ByClick.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  ByClick Downloader kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\ByClick.exe" /q
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download38
Find "Utorrent" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Utorrent" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Utorrent.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Utorrent kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Utorrent.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download39
Find "GlassWire" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "GlassWire" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\GlassWire.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  GlassWire kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\GlassWire.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download40
Find "TeamViewer" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "TeamViewer" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\TeamViewer.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  TeamViewer kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\TeamViewer.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download41
Find "Hamachi" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Hamachi" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Hamachi.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Hamachi kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Hamachi.msi" /q
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download42
Find "Stremio" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Stremio" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Stremio.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Stremio kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Stremio.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download43
Find "ISLC" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffKat�l�ms�z ^| ISLC eklendi. >> %konum%\Logs
Powershell -command "Expand-Archive -Force '%konum%\Files\ISLC.zip' '%Mount%\OgnitorenKs.Toolbox'"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  ISLC kisayolu masaustune tasiniyor...
echo move "C:\OgnitorenKs.Toolbox\ISLC\ISLC.lnk" "C:\Users\%%username%%\Desktop"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof

:Download44
Find "MSI Afterburner" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "MSIAfterburner" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\MSIAfterburner.zip"
powershell -command "Expand-Archive -Force '%Mount%\OgnitorenKs.Toolbox\Katilimsiz\MSIAfterburner.zip' '%Mount%\OgnitorenKs.Toolbox\Katilimsiz\MSIAfterburner'" 
for /f %%a in ('"dir /b %Mount%\OgnitorenKs.Toolbox\Katilimsiz\MSIAfterburner\*.exe"') do set msi=%%a
for /f %%b in ('"dir /b %Mount%\OgnitorenKs.Toolbox\Katilimsiz\MSIAfterburner\*.exe"') do copy /y "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\MSIAfterburner\%%b" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz"
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\MSIAfterburner.zip"
RD /S /Q "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\MSIAfterburner"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  MSI Afterburner kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\%msi%" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download45
Find "Hibit Uninstaller" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Hibit" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Hibit.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Hibit Uninstaller kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Hibit.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download46
Find "Unlocker" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Unlocker" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Unlocker.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Unlocker kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Unlocker.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download47
Find "OpenShell" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "OpenShell" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\OpenShell.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  OpenShell kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\OpenShell.exe" /quiet /norestart ADDLOCAL=StartMenu
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download48
Find "SSDBooster" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "SSDBooster" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\SSDBooster.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  SSDBooster kuruluyor...
echo copy /y "C:\OgnitorenKs.Toolbox\Katilimsiz\SSDBooster.exe" "C:\users\%%username%%\Desktop"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download49
Find "Everything" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Everything" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Everything.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Everything kuruluyor...
echo "C:\OgnitorenKs.Toolbox\Katilimsiz\Everything.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Download50
Find "TaskbarX" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "TaskbarX" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\TaskbarX.zip"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  TaskbarX kuruluyor...
echo powershell -command "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\Katilimsiz\TaskbarX.zip' 'C:\Users\%%username%%\Desktop\TaskbarX'" 
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
goto :eof


::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:OgnitorenKsToolbox
Find "OgnitorenKs Toolbox kisayollari masaustune cikariliyor" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
Call :wget "https://docs.google.com/uc?export=download&id=1RGyfwovjOn2f-J-pvLoqma1UZmI_TKBN" "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Toolbox.zip"	
Powershell -command "Expand-Archive -Force '%Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Toolbox.zip' '%Mount%\OgnitorenKs.Toolbox'"
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Toolbox.zip" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> OgnitorenKs.Toolbox
echo echo  OgnitorenKs Toolbox kisayollari masaustune cikariliyor...
echo move /y "C:\OgnitorenKs.Toolbox\PowerChoice.lnk" "C:\Users\%%username%%\Desktop"
echo move /y "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.lnk" "C:\Users\%%username%%\Desktop"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:DesktopFiles
Find "Masaustu dosyalari yukleniyor" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffKat�l�ms�z ^| Masa�st�ne dosyalar eklendi. >> %konum%\Logs
Powershell -command "Compress-Archive -Path '%konum%\Edit\Desktop\*' -DestinationPath '%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Kisayol.zip'"
DEL /F /Q /A %konum%\Edit\Desktop\* > NUL 2>&1
RD /S /Q %konum%\Edit\Desktop\* > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> Masaustu dosyalari
echo echo  Masaustu dosyalari yukleniyor...
echo Powershell -command "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\Katilimsiz\Kisayol.zip' 'C:\Users\%%username%%\Desktop'"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:GorevZamanlayici
Find "Gorev Zamanlayicisindan" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffKat�l�ms�z ^| G�rev Zamanlay�c� ayarlar� eklendi. >> %konum%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> Gorev Zamanlayici ayarlari
echo echo  Gorev Zamanlayicisindan duzenlemeler yapiliyor...
echo schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Maps\MapsToastTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /DISABLE  ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /DISABLE  ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\DiskCleanup\SilentCleanup" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Time Zone\SynchronizeTimeZone" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\WaaSMedic\PerformRemediation" /DISABLE ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:NihaiPerformans
Find "Nihai Performans" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffKat�l�ms�z ^| Nihai Performans eklendi. >> %konum%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> Nihai Performans
echo echo  Nihai Performans ekleniyor ve varsayilan hale getiriliyor...
echo powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo echo. 
echo powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a
echo echo.
echo for /f "tokens=4" %%%%f in ^('powercfg -list ^^^| findstr /C:"Nihai"'^) do set nihaiekle=%%%%f
echo powercfg -setactive %%nihaiekle%% 
echo echo.
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:Bcdedit
Find "Bcdedit Duzenlemeleri" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffKat�l�ms�z ^| Bcdedit ayarlar� eklendi. >> %konum%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> Bcdedit Duzenlemeleri
echo echo  Stuttering sorunu icin duzenleme yapiliyor... ^(Bcdedit^)
echo bcdedit /deletevalue useplatformclock ^> NUL
echo bcdedit /set {current} recoveryenabled no ^> NUL
echo powercfg /h off ^> NUL
echo bcdedit /set useplatformtick yes ^> NUL
echo bcdedit /set disabledynamictick yes ^> NUL
echo sc delete DiagTrack ^> NUL
echo sc delete dmwappushservice ^> NUL
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof
exit

:Svchost
Find "SVCHost" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffKat�l�ms�z ^| Svchost ayarlar� eklendi. >> %konum%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> SVCHost Ram Optimizasyon
echo echo SVCHost Ram optimizasyonu yapiliyor...
echo FOR /F "tokens=4" %%%%g IN ^('systeminfo ^^^| FIND "Total"'^) DO set ramtotal=%%%%g
echo set ramtotal=%%ramtotal:~0,-4%%
echo set /a ramtotal=^(%%ramtotal%%*1024*1024^)
echo reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x%%ramtotal%% /f > NUL 2>&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:MicrosoftTeams
Find "Microsoft Teams" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffKat�l�ms�z ^| Microsoft Teams kald�rma komutlar� eklendi. >> %konum%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> MicrosoftTeams
echo echo Microsoft Teams kaldiriliyor...
echo Powershell -Command "Get-AppxPackage *Teams* | Remove-AppxPackage"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:icofix
Find "Simge onbellek temizleniyor..." %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OnKat�l�ms�z ^| Simge �nbellek temizle eklendi. >> %konum%\Logs
mkdir %Mount%\OgnitorenKs.Toolbox\Files > NUL 2>&1
copy /y "%konum%\Files\ReIconCache.exe" "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> icofix
echo echo Simge onbellek temizleniyor...
echo taskkill /f /im explorer.exe
echo DEL /F /Q /A "%%userprofile%%\AppData\Local\IconCache.db" ^> NUL 2^>^&1
echo DEL /F /Q /A %%userprofile%%\AppData\Local\Microsoft\Windows\Explorer\^*.^* ^> NUL 2^>^&1
echo del /f /s /q /a %%LocalAppData%%\Microsoft\Windows\Explorer\thumbcache_*.db ^> NUL 2^>^&1
echo "%%konum%%\Files\ReIconCache.exe"
echo powershell -command "Start-Process 'C:\Windows\explorer.exe'"
echo timeout /t 2 /nobreak ^> NUL
echo DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Files\ReIconCache.exe" ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat 
goto :eof

:KatilimsizYedekle
echo [%date% - %time%] ^| OnKat�l�ms�z ^| Kat�lms�z ayar yedeklendi. >> %konum%\Logs
Powershell -command "Compress-Archive -LiteralPath %Mount%\OgnitorenKs.Toolbox -DestinationPath C:\Users\%username%\Desktop\Yedek.Kat�l�ms�z.zip -Force"
goto :eof

:KatilimsizYukle
set /p Yedek=%ESC%[97m  %ESC%%ESC%[92m Yedek Zip Yolu : %ESC%[0m
echo [%date% - %time%] ^| OffKat�l�ms�z ^| "%Yedek%" yolundan kat�l�ms�z yedek imaja y�klendi. Mount="%Mount%" >> %konum%\Logs
powershell -command "Expand-Archive -Force '%Yedek%' '%Mount%'" 
Call :RegYukle
reg add "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Katilimsiz" /t REG_SZ /d "C:\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat" /f
Call :RegTopla
goto :eof


:: ����������������������������������������������������������������������������������������������������������������������������������

:wget
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                  �nternet ba�lant�s� yok.                                  %ESC%[0m
						echo [%date% - %time%] ^| OffKat�l�ms�zwget ^| HATA! �nternet ba�lant�s� bulunamad�. �sim:"%~2" Link:"%~1" >> %konum%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| OffKat�l�ms�zwget ^| "%~2" klas�r�ne %~n2 program� indirildi. Link:"%~1" >> %konum%\Logs
%konum%\Files\wget -c -q --no-check-certificate --show-progress %1 -O %~2
goto :eof

:konum
cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum=%%a
set konum=%konum:~0,-6%
goto :EOF

:PowerRun
set PowerRun=%konum%\Files\PowerRun.exe %SystemRoot%\system32\cmd.exe /c
goto :EOF

:RegYukle
reg load HKLM\OG_COMPONENTS "%Mount%\Windows\System32\config\COMPONENTS" >nul
reg load HKLM\OG_DEFAULT "%Mount%\Windows\System32\config\default" >nul
reg load HKLM\OG_NTUSER "%Mount%\Users\Default\ntuser.dat" >nul
reg load HKLM\OG_SOFTWARE "%Mount%\Windows\System32\config\SOFTWARE" >nul
reg load HKLM\OG_SYSTEM "%Mount%\Windows\System32\config\SYSTEM" >nul
goto :eof

:RegTopla
cls
for /f "tokens=* delims=" %%a in ('reg query "HKLM" ^| findstr "{"') do (
	reg unload "%%a" >nul 2>&1
)
reg delete "HKLM\OG_SYSTEM\CurrentControlSet" /f >nul 2>&1
reg unload HKLM\OG_COMPONENTS >nul 2>&1
reg unload HKLM\OG_DRIVERS >nul 2>&1
reg unload HKLM\OG_DEFAULT >nul 2>&1
reg unload HKLM\OG_NTUSER >nul 2>&1
reg unload HKLM\OG_SCHEMA >nul 2>&1
reg unload HKLM\OG_SOFTWARE >nul 2>&1
reg unload HKLM\OG_SYSTEM >nul 2>&1
goto :eof

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0