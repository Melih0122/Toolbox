:: ==============================================================================================================================
::                               NOTEPAD++ > Encoding > Character Set > Turkish > OEM857
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
::  Created: Huseyin UZUNYAYLA / OgnitorenKs
::
::
::
:: 
::  Contact;
::  --------
:: 
::  >> Discord: OgnitorenKs#2737 
::  >>    Mail: ognitorenks@gmail.com
::
::                                                >>   WEB PAGE   <<
::                                         --------------------------------
::                                         >>  ognitorenks.blogspot.com  <<
::
:: ==============================================================================================================================
::  Projeye katk�da bulunanlar;
::  ---------------------------
::   Eray T�rkay
::  ----------------------
::     Sistem Hakk�nda - RAM soket yap�s�n�n eklenmesi.
::    	Sistem Hakk�nda - Sistem format tarihinin eklenmesi.
::  ----------------------
::   KaanBeyhan [Denizlili]
::  ----------------------
::     �ndirme i�lemlerinde ilerleme �ubu�unun eklenmesi.
::  ---------
::   Archley
::  ---------
:: 	   Wifi Crack �al��mas�n�n toolbox'a eklenmesi. 
::  ----------
::   maskem76
::  ----------
:: 	   Hyper-V b�l�m�ndeki hatan�n giderilmesi.
::  ----------
::   Legnica
::  ----------
:: 	   Windows Search �nbelli�inin temizlenmesiyle ilgili komutlar�n eklenmesi.
::
:: ==============================================================================================================================
:: Toolbox i�inde kullan�lan yaz�l�mlar;
:: ------------------------------------
:: >> Folder2ISO     > https://www.trustfm.net/software/utilities/Folder2Iso.php
::    Klas�r i�indeki verileri ISO �evirmeye yarayan k���k boyutlu bir yaz�l�m.

:: >> wget           > https://eternallybored.org/misc/wget/
::    Download i�lemlerinin yap�ld��� uygulamad�r. Komut istemiyle �al���r.

:: >> PowerRun       > https://www.sordum.org/9416/powerrun-v1-6-run-with-highest-privileges/
::    �st d�zey yetki ile i�lem yapma izni veren yaz�l�m. 

:: >> oscdimg        > https://api.256file.com/oscdimg.exe/tr-download-87465.html
::    ISO dosyas� olu�turmaya yarayan yaz�l��m.
::
:: ==============================================================================================================================
echo off
cls

setlocal
Call :ColorEnd
Call :ColorEnd2

:: ==============================================================================================================================
::  RENK HAR�TASI
::  -------------
:: ^%C%^[33m > Sar� renkli b�l�mler. Men� i�indeki sar� renkli b�l�mler
:: ^%C%^[36m > Mavi renkli b�l�mler. Men� i�indeki mavi renkli b�l�mler
:: ^%C%^[37m > Beyaz renkli b�l�mler. Men� i�indeki beyaz renkli b�l�mler
:: ^%C%^[90m > Gri renkli b�l�mler. Men� i�indeki gri renkli b�l�mler(�er�eveler dahil de�il)
:: ^%C%^[92m > De�i�ken rengi (Ye�il). Kullan�c�dan bir de�er girmesi istenilen b�l�mlere aittir.
:: ^%C%^[96m > �kinci de�i�ken rengi (A��k Mavi) | Men�ye yans�yan bilgi mesajlar�. Ana ekrana d��ecek olan ikinci de�i�ken b�l�mlerine aittir.
::
:: ^%R%^[41m > Hata mesajlar� dolgu rengi (k�rm�z�)
:: ^%R%^[32m > ��lem (ye�il) numara rengidir. Men� i�indeki i�lem numaralar�d�r.
:: ^%R%^[36m > Men�ye d�n renk ayar�d�r. Men�ye d�n b�l�mlerinin renk ayar�d�r.
:: ^%R%^[100m > Ba�l�k b�l�mlerinde arka plan� dolduran renktir.
:: ^%R%^[1;97m > Ba�l�kta dolgu b�l�m�n�n i�inde yer alan yaz� rengidir. 1; b�l�m� kal�n yazmas�n� sa�lar. 97m beyaz renk yazmas�n� sa�lar.
:: ^%R%^[90m > �er�eveleri ve | i�aretlerinin rengini de�i�ir.
:: 
:: ==============================================================================================================================

:AdminKontrol
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo 
echo 
echo 
echo 
echo  %R%[90m���������������������������������������������������������ͻ%R%[0m
echo  %R%[90m�                                                         �%R%[0m
echo  %R%[90m�%R%[1;97m%R%[41m             ! WARNING !           ! WARNING !           %R%[0m%R%[90m�%R%[0m
echo  %R%[90m�                                                         �%R%[0m
echo  %R%[90m�%R%[1;97m%R%[41m             Right-click, run as administrator           %R%[0m%R%[90m�%R%[0m
echo  %R%[90m�                                                         �%R%[0m
echo  %R%[90m���������������������������������������������������������ͼ%R%[0m
echo 
echo                 %R%[92mPress any key to turn it off%R%[0m  
pause > nul
exit
)
mode con cols=96 lines=37 
:: ==============================================================================================================================
::                                                  DOWNLOAD KONUM B�L�M�
::
::   Download Locationunu de�i�tirmek istiyorsan�z;
::   set download= e�ittirden sonra klas�r yolunu yaz�n.
::   Varsay�lan olarak Toolbox klas�r� i�ine y�kler.

Call :Logs
set download=%Location%\Download

:: ==============================================================================================================================
:: Toolbox i�in gerekli klas�rler olu�turuluyor.
mkdir "%Location%\Download" > NUL 2>&1
mkdir "%Location%\Edit\Appx" > NUL 2>&1
mkdir "%Location%\Edit\Desktop" > NUL 2>&1
mkdir "%Location%\Edit\Driver" > NUL 2>&1
mkdir "%Location%\Edit\ESDtoWIM" > NUL 2>&1
mkdir "%Location%\Edit\Logs" > NUL 2>&1
mkdir "%Location%\Edit\Mount" > NUL 2>&1
mkdir "%Location%\Edit\Update" > NUL 2>&1
:: ==============================================================================================================================
::
:: Wget.exe yaz�l�mlar� baz� antivir�s yaz�l�mlar� taraf�ndan vir�s olarak alg�lanmaktad�r. 
:: Bu tarz bir durumda wget.exe dosyas� silinirse indirme i�lemleri ger�ekle�tirilemez.
:: A�a��daki komut ile wget dosyas�n�n olup olmad���n� kontrol ediyorum. Hata vermesi durumunda Powershell komutuyle yeniden indiriyorum.
dir /b "%Location%\Files\wget.exe" > NUL 2>&1
	if %errorlevel%==1 (echo [%date% - %time%] ^| Wget indiriliyor ^| Wget.exe dosyas� bulunamad�. Yeniden indirildi. >> %Location%\Logs
						echo   %R%[1;97m%R%[41m                                    Wget.exe not found                                      %R%[0m
						echo   %R%[1;97m%R%[42m                                      Re-downloaded                                         %R%[0m
						Call :netkontrol
						powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.3/64/wget.exe -OutFile %Location%\Files\wget.exe }")

:: ==============================================================================================================================

set version=2.9

:: ==============================================================================================================================
:NetCheck
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 goto NoInternet

:AutoToolboxUpdate
FOR /F "delims=':' tokens=2" %%a in ('Find "AutoUpdate" %Location%\Update.ini') do set autoupdate=%%a
	if %autoupdate%==0 goto AutoUpdate
	if %autoupdate%==1 goto NoInternet
) else
	goto AutoUpdate
	
:AutoUpdate
mode con cols=80 lines=30
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo                    %R%[92m G�ncelle�tirmeler kontrol ediliyor...%R%[0m
echo 
echo               %R%[33m��  ���� �   � � ���  ��  ����  ��� �   �   � ����%R%[0m
echo              %R%[33m�  � �    ��  � �  �  �  � �  �  �   ��  �  �  �   %R%[0m
echo              %R%[33m�  � � �� � � � �  �  �  � � �   ��  � � � �   ����%R%[0m
echo              %R%[33m�  � �  � �  �� �  �  �  � �  �  �   �  ��  �     �%R%[0m
echo               %R%[33m��  ���� �   � �  �   ��  �   � ��� �   �   � ����%R%[0m 

:: Tarih bilgisi al�n�r
for /f "tokens=2" %%a in ('echo %date%') do set timeupdate=%%a
set tugun=%timeupdate:~0,-8%
set tuyil=%timeupdate:~6%
set tuay=%timeupdate:~3,-5%
set TimeUpdateDate=%tugun%.%tuay%.%tuyil%

:: Update.ini dosyas�na kaydedilen tarih ile g�ncel tarih verisi kar��la�t�r�l�r. Tarihler farkl� ise g�ncellemeler kontrol edilir.
For /f "tokens=2" %%b in ('findstr /i "TimeUpdate" %Location%\Update.ini') do set logstime=%%b
if %logstime% equ %TimeUpdateDate% (
  goto NoInternet
) else (
	goto AU2
)

:AU2
:: G�ncel tarih verisi Update.ini dosyas�n� i�lenir.
for /f "tokens=2" %%a in ('findstr /i "TimeUpdate" %Location%\Update.ini') do (
	powershell -Command "(Get-Content %Location%\Update.ini) | ForEach-Object { $_ -replace '%%a', '%TimeUpdateDate%' } | Set-Content '%Location%\Update.ini'"
)
:: Links.txt dosyas�n�n indirme linki al�n�r.
FOR /F "tokens=1" %%i in ('FIND "Links.txt" %Location%\Extra\Links.txt') do set link=%%i
:: Links.txt dosyas� indirilir.
%Location%\Files\wget --no-check-certificate "%link%" -O %Location%\Extra\Links.txt > NUL 2>&1
:: �ndirilen Links.txt dosyas�ndan version durumlar� kar��la�t�r�l�r. Farkl� ise Toolbox.Update.bat �al��t�r�l�r.
FOR /F "delims=':' tokens=2" %%b in ('Find "VersionCheck" %Location%\Extra\Links.txt') do set versioncheck=%%b
if %versioncheck% equ %version% (
  goto NoInternet
) else (
	Powershell -command "Start-Process '%Location%\Extra\Toolbox.Update.bat'
	exit
)

:NoInternet
:: ==============================================================================================================================

:: Wmic.exe'li eski komutlar
::wmic os get RegisteredUser, CSName, Caption, OSArchitecture, BuildNumber /value > %Logs%\OS.txt
::FOR /F "tokens=2 delims='='" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption=%%a 
::set caption=%caption:~10%
::FOR /F "tokens=2 delims='='" %%b in ('FIND "RegisteredUser" %Logs%\OS.txt') do set registereduser=%%b 
::FOR /F "tokens=2 delims='='" %%c in ('FIND "CSName" %Logs%\OS.txt') do set pcname=%%c 
::FOR /F "tokens=2 delims='='" %%d in ('FIND "OSArchitecture" %Logs%\OS.txt') do set osarch=%%d 
::set osarch=%osarch:~0,-5%
::FOR /F "tokens=3" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption2=%%a 
:::: FOR /F "tokens=2 delims='='" %%e in ('FIND "BuildNumber" %Logs%\OS.txt') do set buildnumber=%%e 

:: ==============================================================================================================================

:: Ana ekranda yer alan Kullan�c� ad�, i�letim sistemi gibi bilgiler al�n�r. 
Powershell -command "Get-CimInstance Win32_OperatingSystem | Select-Object Caption,InstallDate,OSArchitecture,RegisteredUser,CSName | FL" > %Logs%\OS.txt
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption=%%a
set caption=%caption:~11%
FOR /F "tokens=2 delims=':'" %%b in ('FIND "RegisteredUser" %Logs%\OS.txt') do set registereduser=%%b
FOR /F "tokens=2 delims=':'" %%c in ('FIND "CSName" %Logs%\OS.txt') do set pcname=%%c
FOR /F "tokens=3" %%d in ('FIND "OSArchitecture" %Logs%\OS.txt') do set osarch=%%d


FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version"') do set isderleme=%%f
set isderleme=%isderleme:~5%
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion"') do set ImageBuild=%%f
for /f "tokens=2 delims='('" %%f in ('powercfg -list ^| findstr /C:"*"') do set powerr=%%f
set powerr=%powerr:~0,-3%

:: Men� i�inde sisteme g�re ayarlama yap�yorum
FOR /F "tokens=5" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption2=%%a 
	if %caption2%==10 (set editmenu=Windows 10 Edit)
	if %caption2%==11 (set editmenu=Windows 11 Edit)
	
:: Y�nlendirme b�l�m�n� sisteme g�re ayarl�yorum.
echo %caption2% > NUL
	if %caption2%==10 (set editmenugo=Win10SettingsMenu) 
	if %caption2%==11 (set editmenugo=Win11SettingsMenu)
goto Winmenu

:Windows11
set editmenu=Windows 11 Edit
set editmenugo=Win11SettingsMenu
goto Winmenu

:Windows10
set editmenu=Windows 10 Edit
set editmenugo=Win10SettingsMenu
goto Winmenu

:Winmenu
:: ==============================================================================================================================
Find "OGNITORENKS TOOLBOX %version%" %Location%\Logs > NUL 2>&1
	if %errorlevel%==1 ((
					    echo.
						echo ---------------------------------------------------------------------------------------------------------------------------
						echo [%date% - %time%] OgnitorenKs Toolbox ba�lat�ld�.
						echo  ������������������������������������������������������������������������������������������ͻ
						echo  � OGNITORENKS TOOLBOX %version% ^| USER:%registereduser% ^| PC-Name:%pcname%
						echo  � OS: %caption% ^| x%osarch% ^| %ImageBuild% ^| %isderleme% ^| Power: %powerr%
						echo  ������������������������������������������������������������������������������������������ͼ
						echo ---------------------------------------------------------------------------------------------------------------------------
						) >> %Location%\Logs
						)

:: ==============================================================================================================================
:menu
cls
mode con cols=96 lines=37 
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %R%[90m������������������������������������������������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %version% %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m	
echo   %R%[90m�%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m Power:%R%[37m %powerr%%R%[0m	
echo   %R%[90m������������������������������������������������������������������������������������������͹%R%[0m
echo   %R%[90m�%R%[32m  1.%C%[37m All In One Runtimes  %R%[90m�%R%[32m  27.%C%[36m Kdenlive               %R%[90m�%R%[0m          %R%[92m BONUS%R%[0m               %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m  2.%C%[33m Discord              %R%[90m�%R%[32m  28.%C%[36m OpenShot               %R%[90m�%R%[32m 53.%C%[36m %editmenu%%C%[90m [M]         �%R%[0m
echo   %R%[90m�%R%[32m  3.%C%[33m Whatsapp             %R%[90m�%R%[32m  29.%C%[36m Shotcut                %R%[90m�%R%[32m 54.%C%[33m Service management%C%[90m [M]      �%R%[0m
echo   %R%[90m�%R%[32m  4.%C%[33m Signal               %R%[90m�%R%[32m  30.%C%[36m Krita                  %R%[90m�%R%[32m 55.%C%[33m Icon Fix                    %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m  5.%C%[33m Telegram             %R%[90m�%R%[32m  31.%C%[36m Gimp                   %R%[90m�%R%[32m 56.%C%[37m Windows Editor%C%[90m [M]          �%R%[0m
echo   %R%[90m�%R%[32m  6.%C%[33m Zoom                 %R%[90m�%R%[32m  32.%C%[36m OBS Studio             %R%[90m�%R%[32m 57.%C%[33m Update After Clener         %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m  7.%C%[36m EpicGames            %R%[90m�%R%[32m  33.%C%[36m ShareX                 %R%[90m�%R%[32m 58.%C%[33m Windows - Store Repair      %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m  8.%C%[36m Steam                %R%[90m�%R%[32m  34.%C%[36m Audacity               %R%[90m�%R%[32m 59.%C%[33m PC Cleaner                  %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m  9.%C%[36m GOG Galaxy           %R%[90m�%R%[32m  35.%C%[36m K-Lite Codec           %R%[90m�%R%[32m 60.%C%[36m Folder to ISO%C%[90m [APP]         �%R%[0m
echo   %R%[90m�%R%[32m 10.%C%[36m Uplay                %R%[90m�%R%[32m  36.%C%[36m VLC Media Player       %R%[90m�%R%[32m 61.%C%[36m Fat32 to NTFS               %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 11.%C%[36m Origin               %R%[90m�%R%[32m  37.%C%[36m Aimp                   %R%[90m�%R%[32m 62.%C%[33m Ping Meter%C%[90m [*]              �%R%[0m
echo   %R%[90m�%R%[32m 12.%C%[36m Cheat Engine         %R%[90m�%R%[32m  38.%C%[36m File Converter         %R%[90m�%R%[32m 63.%C%[33m License Management%C%[90m [M]      �%R%[0m
echo   %R%[90m�%R%[32m 13.%C%[36m Wemod                %R%[90m�%R%[32m  39.%C%[33m Free Download Manager  %R%[90m�%R%[32m 64.%C%[33m User Account Management%C%[90m [M] �%R%[0m
echo   %R%[90m�%R%[32m 14.%C%[33m Google Chrome        %R%[90m�%R%[32m  40.%C%[33m �nt Download Manager   %R%[90m�%R%[32m 65.%C%[33m System Info%C%[90m [*]             �%R%[0m
echo   %R%[90m�%R%[32m 15.%C%[33m Mozilla Firefox      %R%[90m�%R%[32m  41.%C%[33m ByClick Downloader     %R%[90m�%R%[32m 66.%C%[33m Wifi Crack                  %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 16.%C%[33m Brave                %R%[90m�%R%[32m  42.%C%[33m Qbittorrent            %R%[90m�%R%[32m 67.%C%[33m PC Shutdown Timer%C%[90m [M]       �%R%[0m
echo   %R%[90m�%R%[32m 17.%C%[33m Microsoft Edge       %R%[90m�%R%[32m  43.%C%[33m GlassWire              %R%[90m�%R%[0m                                 %R%[90m�%R%[0m 
echo   %R%[90m�%R%[32m 18.%C%[33m Opera GX             %R%[90m�%R%[32m  44.%C%[33m TeamViewer             %R%[90m�%R%[0m                                 %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 19.%C%[37m ISLC                 %R%[90m�%R%[32m  45.%C%[33m AnyDesk                %R%[90m�%R%[0m                                 %R%[90m�%R%[0m 
echo   %R%[90m�%R%[32m 20.%C%[37m MemReduct            %R%[90m�%R%[32m  46.%C%[33m Hamachi                %R%[90m�%R%[0m                                 %R%[90m�%R%[0m 
echo   %R%[90m�%R%[32m 21.%C%[36m Libre Office         %R%[90m�%R%[32m  47.%C%[33m Stremio                %R%[90m�%R%[0m                                 %R%[90m�%R%[0m 
echo   %R%[90m�%R%[32m 22.%C%[36m Adobe Reader         %R%[90m�%R%[32m  48.%C%[36m MSI Afterburner        %R%[90m�%R%[0m                                 %R%[90m�%R%[0m 
echo   %R%[90m�%R%[32m 23.%C%[36m PDF-XChange Edit�r   %R%[90m�%R%[32m  49.%C%[36m Hibit Uninstaller      %R%[90m�%R%[0m                                 %R%[90m�%R%[0m 
echo   %R%[90m�%R%[32m 24.%C%[36m Calibre              %R%[90m�%R%[32m  50.%C%[36m Wise Care 365          %R%[90m�%R%[0m                                 %R%[90m�%R%[0m 
echo   %R%[90m�%R%[32m 25.%C%[33m 7 - Zip              %R%[90m�%R%[32m  51.%C%[36m Unlocker               %R%[90m�%R%[32m 98.%C%[36m Toolbox Guide               %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 26.%C%[33m WinRAR               %R%[90m�%R%[32m  52.%C%[36m SSD Booster            %R%[90m�%R%[32m 99.%C%[36m Toolbox Update              %R%[90m�%R%[0m
echo   %R%[90m������������������������������������������������������������������������������������������͹%R%[0m
echo   %R%[90m�%R%[0m %R%[32m X.%R%[37m Clean and Close%R%[0m        [%R%[1;97m%R%[100mognitorenks.blogspot.com%R%[0m]   %R%[32m  Z.%C%[37m Expand List ^>^>^>%R%[0m             %R%[90m�%R%[0m
echo   %R%[90m������������������������������������������������������������������������������������������ͼ%R%[0m
set /p menu= %C%[92m  Choice : %C%[0m
	if %menu%==1 (Call :Downloadd1)
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
	if %menu%==51 (Call :Download51)
	if %menu%==52 (Call :Download52)
	if %menu%==z GOTO menu2
	if %menu%==Z GOTO menu2
	if %menu%==53 GOTO %editmenugo%
	if %menu%==54 GOTO servicesmanagement
	if %menu%==55 (Call :icofix)
	if %menu%==56 (Call :WindowsEditor)
	if %menu%==57 GOTO UpdateAfter
	if %menu%==58 (Call :WindowsRepair)
	if %menu%==59 (Call :PCTemizle)
	if %menu%==60 (Call :FoldertoISO)
	if %menu%==61 (Call :Fat32toNTFS)
	if %menu%==62 (Call :PingMeter)
	if %menu%==63 GOTO Slmgrvbs
	if %menu%==64 GOTO AdminMenu
	if %menu%==65 (Call :SistemHakkinda)
	if %menu%==66 (Call :wificrackarchley)
	if %menu%==67 goto shutdownpc
	if %menu%==98 (start https://github.com/OgnitorenKs/OgnitorenKs.Toolbox&goto menu)
	if %menu%==99 goto AutoUpdate
	if %menu%==Win11 goto Windows11
	if %menu%==win11 goto Windows11
	if %menu%==Win10 goto Windows10
	if %menu%==win10 goto Windows10
	if %menu%==Res goto NoInternet
	if %menu%==res goto NoInternet
	if %menu%==reset goto NoInternet
	if %menu%==Reset goto NoInternet
	if %menu%==x (Call :Logss "Kal�nt�lar�.Temizle" "Download klas�r� temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
	if %menu%==X (Call :Logss "Kal�nt�lar�.Temizle" "Download klas�r� temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
) else
	goto menu
	
:: ==============================================================================================================================

:menu2
cls
mode con cols=96 lines=37 
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %R%[90m������������������������������������������������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %version% %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m	
echo   %R%[90m�%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m Power:%R%[37m %powerr% %R%[0m	
echo   %R%[90m������������������������������������������������������������������������������������������͹%R%[0m
echo   %R%[90m�%R%[32m  1.%C%[37m All In One Runtimes  %R%[90m�%R%[32m  27.%C%[36m Kdenlive               %R%[90m�%R%[32m 53.%C%[36m OpenShell                   %R%[90m�%R%[0m 
echo   %R%[90m�%R%[32m  2.%C%[33m Discord              %R%[90m�%R%[32m  28.%C%[36m OpenShot               %R%[90m�%R%[32m 54.%C%[36m Everything                  %R%[90m�%R%[0m 
echo   %R%[90m�%R%[32m  3.%C%[33m Whatsapp             %R%[90m�%R%[32m  29.%C%[36m Shotcut                %R%[90m�%R%[32m 55.%C%[36m TaskbarX                    %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m  4.%C%[33m Signal               %R%[90m�%R%[32m  30.%C%[36m Krita                  %R%[90m�%R%[32m 56.%C%[36m Stellarium                  %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m  5.%C%[33m Telegram             %R%[90m�%R%[32m  31.%C%[36m Gimp                   %R%[90m�%R%[32m 57.%C%[36m Recuva                      %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m  6.%C%[33m Zoom                 %R%[90m�%R%[32m  32.%C%[36m OBS Studio             %R%[90m�%R%[32m 58.%C%[36m AOMEI Partiton Assistans    %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m  7.%C%[36m EpicGames            %R%[90m�%R%[32m  33.%C%[36m ShareX                 %R%[90m�%R%[32m 59.%C%[33m Python                      %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m  8.%C%[36m Steam                %R%[90m�%R%[32m  34.%C%[36m Audacity               %R%[90m�%R%[32m 60.%C%[33m Phycharm                    %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m  9.%C%[36m GOG Galaxy           %R%[90m�%R%[32m  35.%C%[36m K-Lite Codec           %R%[90m�%R%[32m 61.%C%[33m Notepad++                   %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 10.%C%[36m Uplay                %R%[90m�%R%[32m  36.%C%[36m VLC Media Player       %R%[90m�%R%[32m 62.%C%[33m Visual Studio Code          %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 11.%C%[36m Origin               %R%[90m�%R%[32m  37.%C%[36m Aimp                   %R%[90m�%R%[32m 63.%C%[33m Github                      %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 12.%C%[36m Cheat Engine         %R%[90m�%R%[32m  38.%C%[36m File Converter         %R%[90m�%R%[32m 64.%C%[33m Git                         %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 13.%C%[36m Wemod                %R%[90m�%R%[32m  39.%C%[33m Free Download Manager  %R%[90m�%R%[32m 65.%C%[33m Blender                     %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 14.%C%[33m Google Chrome        %R%[90m�%R%[32m  40.%C%[33m �nt Download Manager   %R%[90m�%R%[32m 66.%C%[36m Process Hacker 2            %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 15.%C%[33m Mozilla Firefox      %R%[90m�%R%[32m  41.%C%[33m ByClick Downloader     %R%[90m�%R%[32m 67.%C%[36m                             %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 16.%C%[33m Brave                %R%[90m�%R%[32m  42.%C%[33m Qbittorrent            %R%[90m�%R%[32m 68.%C%[36m                             %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 17.%C%[33m Microsoft Edge       %R%[90m�%R%[32m  43.%C%[33m GlassWire              %R%[90m�%R%[32m 69.%C%[36m                             %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 18.%C%[33m Opera GX             %R%[90m�%R%[32m  44.%C%[33m TeamViewer             %R%[90m�%R%[32m 70.%C%[36m                             %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 19.%C%[37m ISLC                 %R%[90m�%R%[32m  45.%C%[33m AnyDesk                %R%[90m�%R%[32m 71.%C%[36m                             %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 20.%C%[37m MemReduct            %R%[90m�%R%[32m  46.%C%[33m Hamachi                %R%[90m�%R%[32m 72.%C%[36m                             %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 21.%C%[36m Libre Office         %R%[90m�%R%[32m  47.%C%[33m Stremio                %R%[90m�%R%[32m 73.%C%[37m OSU!                        %R%[90m�%R%[0m 
echo   %R%[90m�%R%[32m 22.%C%[36m Adobe Reader         %R%[90m�%R%[32m  48.%C%[36m MSI Afterburner        %R%[90m�%R%[32m 74.%C%[37m World Of Tanks              %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 23.%C%[36m PDF-XChange Edit�r   %R%[90m�%R%[32m  49.%C%[36m Hibit Uninstaller      %R%[90m�%R%[32m 75.%C%[37m Genshin Impact              %R%[90m�%R%[0m
echo   %R%[90m�%R%[32m 24.%C%[36m Calibre              %R%[90m�%R%[32m  50.%C%[36m Wise Care 365          %R%[90m�%R%[32m 76.%C%[37m League Of Legends%C%[90m[TR]       �%R%[0m 
echo   %R%[90m�%R%[32m 25.%C%[33m 7 - Zip              %R%[90m�%R%[32m  51.%C%[36m Unlocker               %R%[90m�%R%[32m 77.%C%[37m League Of Legends%C%[90m[EUW]      �%R%[0m
echo   %R%[90m�%R%[32m 26.%C%[33m WinRAR               %R%[90m�%R%[32m  52.%C%[36m SSD Booster            %R%[90m�%R%[32m 78.%C%[37m Valorant                    %R%[90m�%R%[0m
echo   %R%[90m������������������������������������������������������������������������������������������͹%R%[0m
echo   %R%[90m�%R%[0m                             %R%[32m X.%R%[33m ^<^<^< Collapse List%R%[0m                                        %R%[90m�%R%[0m
echo   %R%[90m������������������������������������������������������������������������������������������ͼ%R%[0m
set /p $multi=%R%[96m  Multi Choice %R%[90mx,y%R%[0m :

echo %$multi% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto menu
echo %$multi% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto menu	
(
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] ^| MultiSelect ^| Se�ilenler : "%$multi%"
echo ---------------------------------------------------------------------------------------------------------------------------
) >> %Location%\Logs
cls
echo   %R%[90m������������������������������������������������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %version% %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m	
echo   %R%[90m�%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m Power:%R%[37m %powerr% %R%[0m
echo   %R%[90m������������������������������������������������������������������������������������������ͼ%R%[0m
echo    %C%[96m Choices: %$multi%%C%[0m
echo 
:MultiSelect
FOR %%a in (%$multi%) do (Call :Download%%a)
goto menu2

:: ==============================================================================================================================

:Downloadd1
cls
echo   %R%[90m������������������������������������������������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %version% %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m	
echo   %R%[90m�%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m Power:%R%[37m %powerr% %R%[0m
echo   %R%[90m������������������������������������������������������������������������������������������͹%R%[0m
:: A�a��daki FOR d�ng�s�yle link.bat dosyas� i�inden programlara ait linkleri al�yorum.
:: Link sistemini kat�l�ms�z program haz�rlama b�l�m�nde kulland���m i�in ortak bir sistem olarak haz�rlad�m.
:: Di�er download b�l�mleri de ayn� �ekilde �al��maktad�r.


::-----------------------
:: Eski s�r�mleri silme 

:: echo %R%[1;97m%R%[42m Eski s�r�mler kald�r�l�yor%R%[0m
:: DEL /F /Q /A "%Logs%\aiodel.txt" > NUL 2>&1

:: For /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -Class Win32_Product | Select-Object -Property IdentifyingNumber,Name"') do echo %%a >> %Logs%\aiodel.txt

:: 2005 / 2008 / 2010 kald�r
:: FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2005" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
:: FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2008" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
:: FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2010" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn

:: 2012-2013 kald�r
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\vcredist_x86.exe"') do "%%a" /uninstall /quiet /norestart
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\vcredist_x64.exe"') do "%%a" /uninstall /quiet /norestart

:: 2015-2022 kald�r
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\VC_redist.x64.exe"') do "%%a" /uninstall /quiet /norestart
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\VC_redist.x86.exe"') do "%%a" /uninstall /quiet /norestart

:: Desktop runtime kald�r
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\windowsdesktop-runtime-*-win-x64.exe"') do "%%a" /uninstall /quiet /norestart
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\windowsdesktop-runtime-*-win-x86.exe"') do "%%a" /uninstall /quiet /norestart

:: Java kald�r
:: For /f "tokens=1" %%a in ('Findstr /C:"Java" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn

:: OpenAL kald�r
:: "%ProgramFiles(x86)%\OpenAL\oalinst.exe" /U /SILENT

:: XNA Framework 4.0 kald�r
:: FOR /F "tokens=1" %%a in ('Findstr /C:"XNA Framework" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
::-----------------------
:Download1
echo    %R%[1;97m%R%[42m All in One Runtimes installing... %R%[0m
Dism /Online /Get-Capabilities /format:table > %Logs%\Capabilities.aio.txt 
findstr /i "NetFX3~~~~" %Logs%\Capabilities.aio.txt | findstr /i "installed" > NUL 2>&1
	if %errorlevel%==1 (Dism /Online /Enable-Feature /Featurename:NetFx3 /All /Quiet /NoRestart)

findstr /i "IIS-ASPNET45" %Logs%\Capabilities.aio.txt | findstr /i "Enabled" > NUL 2>&1
	if %errorlevel%==1 (Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All /Quiet /NoRestart)

findstr /i "DirectPlay" %Logs%\Capabilities.aio.txt | findstr /i "Enabled" > NUL 2>&1
	if %errorlevel%==1 (Dism /Online /Enable-Feature /FeatureName:DirectPlay /All /Quiet /NoRestart)

::-----------------------
:: Y�kleme b�l�m�
FOR /F "tokens=1" %%i in ('FIND "05x86.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 05x86.exe /Q
FOR /F "tokens=1" %%i in ('FIND "05x64.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 05x64.exe /Q

FOR /F "tokens=1" %%i in ('FIND "08x86.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 08x86.exe /q
FOR /F "tokens=1" %%i in ('FIND "08x64.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 08x64.exe /q

FOR /F "tokens=1" %%i in ('FIND "10x86.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 10x86.exe "/q /norestart"
FOR /F "tokens=1" %%i in ('FIND "10x64.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 10x64.exe "/q /norestart"

FOR /F "tokens=1" %%i in ('FIND "12x86.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 12x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "12x64.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 12x64.exe "/install /quiet /norestart"

FOR /F "tokens=1" %%i in ('FIND "13x86.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 13x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "13x64.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 13x64.exe "/install /quiet /norestart"

FOR /F "tokens=1" %%i in ('FIND "15x86.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 15x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "15x64.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 15x64.exe "/install /quiet /norestart" 

FOR /F "tokens=1" %%i in ('FIND "javax64" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" javax64.exe "INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable REMOVEOUTOFDATEJRES=1"

FOR /F "tokens=1" %%i in ('FIND "xnafx40" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" xnafx40.msi /qn

FOR /F "tokens=1" %%i in ('FIND "oal.zip" %Location%\Extra\Links.txt') do set link=%%i
Call :wget2 "%link%" oal.zip
Call :ZipExport oal.zip
"%download%\oal\oalinst.exe" /SILENT

FOR /F "tokens=1" %%i in ('FIND "Desktop5x64" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Desktop5x64.exe "/q /norestart"
FOR /F "tokens=1" %%i in ('FIND "Desktop5x86" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Desktop5x86.exe "/q /norestart"

FOR /F "tokens=1" %%i in ('FIND "DirectX" %Location%\Extra\Links.txt') do set link=%%i
Call :wget2 "%link%" DirectX.exe
%Location%\Download\DirectX.exe /Q /C /T:"%Location%\Download\DirectX\"
"%Location%\Download\DirectX\DXSETUP.exe" /silent
goto :eof

:Download2
FOR /F "tokens=1" %%i in ('FIND "Discord" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Discord.exe -s
goto :eof

:Download3
FOR /F "tokens=1" %%i in ('FIND "WhatsApp" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" WhatsApp.exe --silent 
goto :eof

:Download4
FOR /F "tokens=1" %%i in ('FIND "Signal" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Signal.exe /S
goto :eof

:Download5
FOR /F "tokens=1" %%i in ('FIND "Telegram" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Telegram.exe "/VERYSILENT /NORESTART"
goto :eof

:Download6
FOR /F "tokens=1" %%i in ('FIND "Zoom" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Zoom.msi /qn
goto :eof

:Download7
FOR /F "tokens=1" %%i in ('FIND "EpicGames" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" EpicGames.msi "/qn /norestart"
goto :eof

:Download8
FOR /F "tokens=1" %%i in ('FIND "Steam" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Steam.exe /S
goto :eof

:Download9
FOR /F "tokens=1" %%i in ('FIND "GOG.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" GOG.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download10
FOR /F "tokens=1" %%i in ('FIND "Uplay" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Uplay.exe /S
goto :eof

:Download11
FOR /F "tokens=1" %%i in ('FIND "Origin" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Origin.exe /SILENT
goto :eof

:Download12
FOR /F "tokens=1" %%i in ('FIND "CheatEngine" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" CheatEngine.exe /SILENT
goto :eof

:Download13
FOR /F "tokens=1" %%i in ('FIND "Wemod" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Wemod.exe --silent
goto :eof

:Download14
FOR /F "tokens=1" %%i in ('FIND "GoogleChrome" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" GoogleChrome.msi /qn
Call :sz "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" "update_url" "https://clients2.google.com/service/update2/crx" & :: UBlock Origin
Call :sz "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" "update_url" "https://clients2.google.com/service/update2/crx" & :: HTTPS Everywhere 
Call :sz "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" "update_url" "https://clients2.google.com/service/update2/crx" & :: Clear URL's
goto :eof 

:Download15
FOR /F "tokens=1" %%i in ('FIND "Firefox" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Firefox.exe /S
goto :eof

:Download16
FOR /F "tokens=1" %%i in ('FIND "Brave" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Brave.exe "--install --silent --system-level"
Call :sz "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" "update_url" "https://clients2.google.com/service/update2/crx" & :: UBlock Origin
Call :sz "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" "update_url" "https://clients2.google.com/service/update2/crx" & :: HTTPS Everywhere 
Call :sz "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" "update_url" "https://clients2.google.com/service/update2/crx" & :: Clear URL's
goto :eof 

:Download17
FOR /F "tokens=1" %%i in ('FIND "edge.msi" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" edge.msi /qn
Call :sz "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" "update_url" "https://clients2.google.com/service/update2/crx" & :: UBlock Origin 
Call :sz "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" "update_url" "https://clients2.google.com/service/update2/crx" & :: HTTPS Everywhere 
Call :sz "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" "update_url" "https://clients2.google.com/service/update2/crx" & :: Clear URL's
goto :eof

:Download18
FOR /F "tokens=1" %%i in ('FIND "OperaGX" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" OperaGX.exe "/silent /allusers=1 /launchopera=0 /setdefaultbrowser=0"
goto :eof

:Download19
FOR /F "tokens=1" %%i in ('FIND "ISLC.zip" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "%Location%\Files\ISLC.zip"
Powershell -command "Expand-Archive -Force '%Location%\Files\ISLC.zip' 'C:\'"
Powershell -command "New-Item -ItemType SymbolicLink -Path 'C:\Users\%username%\Desktop' -Name 'ISLC' -Value 'C:\ISLC\ISLC.exe'"
goto :eof

:Download20
FOR /F "tokens=1" %%i in ('FIND "MemReduct.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" MemReduct.exe /S
goto :eof

:Download21
FOR /F "tokens=1" %%i in ('FIND "LibreOffice.msi" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" LibreOffice.msi "/qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL"
goto :eof

:Download22
FOR /F "tokens=1" %%i in ('FIND "AdobeReader.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" "AdobeReader.exe" "/sPB /rs /msi"
goto :eof

:Download23
FOR /F "tokens=1" %%i in ('FIND "PdfXchange.msi" %Location%\Extra\Links.txt') do set link=%%i
::Call :wget "%link%" AdobeReader.exe "/sPB /rs /msi"
Call :wget "%link%" PdfXchange.msi "/quiet /norestart"
goto :eof

:Download24
FOR /F "tokens=1" %%i in ('FIND "Calibre" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Calibre.msi /qn
goto :eof

:Download25
FOR /F "tokens=1" %%i in ('FIND "7-Zip" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" 7-Zip.msi /qn
goto :eof

:Download26
FOR /F "tokens=1" %%i in ('FIND "Winrar" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Winrar.exe /S
goto :eof

:Download27
FOR /F "tokens=1" %%i in ('FIND "Kdenlive" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Kdenlive.exe /S
goto :eof

:Download28
FOR /F "tokens=1" %%i in ('FIND "Openshot" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Openshot.exe /VERYSILENT /NORESTART
goto :eof

:Download29
FOR /F "tokens=1" %%i in ('FIND "Shotcut.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Shotcut.exe /S
goto :eof

:Download30
FOR /F "tokens=1" %%i in ('FIND "Krita" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Krita.exe /S
goto :eof

:Download31
FOR /F "tokens=1" %%i in ('FIND "Gimp" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Gimp.exe "/VERYSILENT /NORESTART /MERGETASKS=desktopicon /ALLUSERS"
goto :eof

:Download32
FOR /F "tokens=1" %%i in ('FIND "OBS" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" OBS.exe /S
goto :eof

:Download33
FOR /F "tokens=1" %%i in ('FIND "ShareX" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" ShareX.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download34
FOR /F "tokens=1" %%i in ('FIND "Audacity" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Audacity.exe "/VERYSILENT /NORESTART"
goto :eof

:Download35
FOR /F "tokens=1" %%i in ('FIND "Klite" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Klite.exe /verysilent
goto :eof

:Download36
FOR /F "tokens=1" %%i in ('FIND "VLCMediaPlayer" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" VLCMediaPlayer.exe "/L=1055 /S"
goto :eof

:Download37
FOR /F "tokens=1" %%i in ('FIND "Aimp" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Aimp.exe "/AUTO /SILENT"
goto :eof

:Download38
FOR /F "tokens=1" %%i in ('FIND "FileConverter" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" FileConverter.msi /qn
goto :eof

:Download39
FOR /F "tokens=1" %%i in ('FIND "FreeDownloadManager" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" FreeDownloadManager.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download40
FOR /F "tokens=1" %%i in ('FIND "InternetDownloadManager" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" InternetDownloadManager.exe /skipdlgs
goto :eof

:Download41
FOR /F "tokens=1" %%i in ('FIND "ByClick" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" ByClick.exe /q
goto :eof

:Download42
FOR /F "tokens=1" %%i in ('FIND "Qbittorrent.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Qbittorrent.exe /S
goto :eof

:Download43
FOR /F "tokens=1" %%i in ('FIND "GlassWire" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" GlassWire.exe /S
goto :eof

:Download44
FOR /F "tokens=1" %%i in ('FIND "TeamViewer" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" TeamViewer.exe /S
goto :eof

:Download45
FOR /F "tokens=1" %%i in ('FIND "AnyDesk.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" AnyDesk.exe "--install %programfiles(x86)%\AnyDesk --start-with-win --create-shortcuts --create-desktop-icon --silent"
goto :eof

:Download46
FOR /F "tokens=1" %%i in ('FIND "Hamachi" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Hamachi.msi /q
goto :eof

:Download47
FOR /F "tokens=1" %%i in ('FIND "Stremio" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Stremio.exe /S
goto :eof

:Download48
FOR /F "tokens=1" %%i in ('FIND "MSIAfterburner" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" MSIAfterburner.exe /S
goto :eof

:Download49
FOR /F "tokens=1" %%i in ('FIND "HibitUninstaller" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" HibitUninstaller.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download50
FOR /F "tokens=1" %%i in ('FIND "WiseCare365.zip" %Location%\Extra\Links.txt') do set link=%%i
Call :wget2 "%link%" WiseCare365.zip
powershell -command "Expand-Archive -Force '%download%\WiseCare365.zip' '%download%'"
"%download%\WiseCare365.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%download%\WiseCare365.zip"
goto :eof

:Download51
FOR /F "tokens=1" %%i in ('FIND "Unlocker.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Unlocker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download52
FOR /F "tokens=1" %%i in ('FIND "SSDBooster" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\SSDBooster.exe"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\SSDBooster.exe'"
goto :eof

:Download53
FOR /F "tokens=1" %%i in ('FIND "OpenShell" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu"
goto :eof

:Download54
FOR /F "tokens=1" %%i in ('FIND "Everything" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Everything.exe /S
goto :eof

:Download55
FOR /F "tokens=1" %%i in ('FIND "TaskbarX" %Location%\Extra\Links.txt') do set link=%%i
Call :wget2 "%link%" TaskbarX.zip 
powershell -command "Expand-Archive -Force '%download%\TaskbarX.zip' 'C:\Users\%username%\Desktop\TaskbarX'"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX Configurator.exe'"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX.exe'"
goto :eof

:Download56
FOR /F "tokens=1" %%i in ('FIND "Stellarium.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Stellarium.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download57
FOR /F "tokens=1" %%i in ('FIND "Recuva.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Recuva.exe /S
goto :eof

:Download58
FOR /F "tokens=1" %%i in ('FIND "AOMEI.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" AOMEI.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download59
FOR /F "tokens=1" %%i in ('FIND "Python.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Python.exe "/quiet InstallAllUsers=1 PrependPath=1"
goto :eof

:Download60
FOR /F "tokens=1" %%i in ('FIND "PyCharm.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" PyCharm.exe /S
goto :eof

:Download61
FOR /F "tokens=1" %%i in ('FIND "Notepad" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Notepad.exe /S
goto :eof

:Download62
FOR /F "tokens=1" %%i in ('FIND "VisualStudioCode.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" VisualStudioCode.exe "/VERYSILENT /NORESTART /MERGETASKS=!runcode"
goto :eof

:Download63
FOR /F "tokens=1" %%i in ('FIND "Github.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Github.exe -s
goto :eof

:Download64
FOR /F "tokens=1" %%i in ('FIND "Git.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Git.exe "/VERYSILENT /NORESTART"
goto :eof

:Download65
FOR /F "tokens=1" %%i in ('FIND "Blender.msi" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Blender.msi "ALLUSERS=1 /qn"
goto :eof

:Download66
FOR /F "tokens=1" %%i in ('FIND "Processhacker.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Processhacker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download73
FOR /F "tokens=1" %%i in ('FIND "osu.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\osu.exe" 
goto :eof

:Download74
FOR /F "tokens=1" %%i in ('FIND "WorldOfTanks.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\WorldOfTanks.exe" 
goto :eof

:Download75
FOR /F "tokens=1" %%i in ('FIND "GenshinImpact.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\GenshinImpact.exe" 
goto :eof

:Download76
FOR /F "tokens=1" %%i in ('FIND "LeagueOfLegendsTR.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\LeagueOfLegendsTR.exe" 
goto :eof

:Download77
FOR /F "tokens=1" %%i in ('FIND "LeagueOfLegendsEUW.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\LeagueOfLegendsEUW.exe" 
goto :eof

:Download78
FOR /F "tokens=1" %%i in ('FIND "Valorant.exe" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\Valorant.exe" 
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:WindowsRepair
cls
mode con cols=64 lines=30
echo  %R%[90m������������������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m                   Windows / Store Repair                   %R%[0m%R%[90m�%R%[0m
echo  %R%[90m������������������������������������������������������������ͼ%R%[0m
Call :Logss "WindowsRepair" "Windows onarma se�ene�i kullan�ld�."

echo %R%[92m   Sfc /scannow command running...%R%[0m
sfc /scannow

echo %R%[92m   DISM /Online /Cleanup-Image /RestoreHealth command running...%R%[0m
DISM /Online /Cleanup-Image /RestoreHealth

echo %R%[92m   WinSxS Cleaning...%R%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup 

echo %R%[92m   SoftwareDistribution Cleaning...%R%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1

echo %R%[92m   Microsoft Store being repaired...%R%[0m
:: Market b�l�m�n�n�n sorunsuz �al��mas� i�in reg kay�tlar�n� d�zenler
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "RemoveWindowsStore" "0"

:: AppX Deployment Service (Da��t�m Hizmeti)
sc config AppXSvc start= demand > NUL 2>&1
net start AppXSvc > NUL 2>&1
:: Yetenek Eri�im Y�neticisi Hizmeti
sc config camsvc start= demand > NUL 2>&1
net start camsvc > NUL 2>&1
:: �ifreleme Hizmetleri
sc config cryptsvc start= auto > NUL 2>&1
net start cryptsvc > NUL 2>&1
:: Windows Update
sc config wuauserv start= demand > NUL 2>&1
net start wuauserv > NUL 2>&1
:: Depolama Hizmeti
sc config StorSvc start= demand > NUL 2>&1
net start StorSvc > NUL 2>&1
:: Arka Plan Ak�ll� Aktar�m Hizmeti
sc config bits start= auto > NUL 2>&1
net start bits > NUL 2>&1
:: Windows Mod�l Y�kleyici
sc config trustedinstaller start= demand > NUL 2>&1
net start trustedinstaller > NUL 2>&1
net start ClipSVC > NUL 2>&1

Call :delete2 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" "DODownloadMode" & :: Teslimat Optimizasyonu BITS hizmeti olarak ayarlan�yor...

echo %R%[92m   Checking DLL files...%R%[0m

FOR %%a in (softpub.dll wintrust.dll initpki.dll dssenh.dll rsaenh.dll gpkcsp.dll sccbase.dll slbcsp.dll mssip32.dll cryptdlg.dll
			msxml3.dll comcat.dll Msxml.dll Msxml2.dll mshtml.dll shdocvw.dll browseui.dll msjava.dll shdoc401.dll cdm.dll gpkcsp.dll
			sccbase.dll asctrls.ocx wintrust.dll initpki.dll softpub.dll oleaut32.dll Shell32.dll browseui.dll msrating.dll mlang.dll
			hlink.dll mshtmled.dll urlmon.dll plugin.ocx sendmail.dll scrobj.dll mmefxe.ocx corpol.dll jscript.dll imgutil.dll thumbvw.dll
			cryptext.dll rsabase.dll inseng.dll actxprxy.dll dispex.dll occache.dll iepeers.dll cdfview.dll webcheck.dll mobsync.dll pngfilt.dll
			licmgr10.dll icmfilter.dll hhctrl.ocx inetcfg.dll tdc.ocx MSR2C.DLL msident.dll msieftp.dll xmsconf.ocx ils.dll msoeacct.dll inetcomm.dll
			msdxm.ocx dxmasf.dll l3codecx.ax acelpdec.ax mpg4ds32.ax voxmsdec.ax danim.dll Daxctle.ocx lmrt.dll datime.dll dxtrans.dll dxtmsft.dll
			WEBPOST.DLL WPWIZDLL.DLL POSTWPP.DLL CRSWPP.DLL FTPWPP.DLL FPWPP.DLL WUAPI.DLL wups2.dll WUAUENG.DLL ATL.DLL WUCLTUI.DLL WUPS.DLL
			WUWEB.DLL wshom.ocx wshext.dll vbscript.dll scrrun.dll) do (regsvr32 %%a /s)
			
FOR %%a in (shdoc401.dll shdocvw.dll browseui.dll urlmon.dll iesetup.dll occache.dll) do (regsvr32 %%a /i /s)
regsvr32 mstinit.exe /setup
regsvr32 msnsspc.dll /SspcCreateSspiReg
regsvr32 msapsspc.dll /SspcCreateSspiReg /s

wsreset

echo %R%[92m Process completed%R%[0m
set /p value=%R%[92m For menu%R%[96m "X"%R%[92m, for restart%R%[96m "R"%R%[37m : %R%[0m
	if %value%==R (shutdown -r -f -t 0)
	if %value%==r (shutdown -r -f -t 0)
	if %value%==x goto menu
	if %value%==X goto menu
) else 
	goto menu
goto :eof


:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:PCTemizle
cls
mode con cols=64 lines=30
echo  %R%[90m������������������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m                        PC Cleaning                         %R%[0m%R%[90m�%R%[0m
echo  %R%[90m������������������������������������������������������������ͼ%R%[0m
Call :Logss "PCTemizle" "PC Temizle se�e�i �al��t�r�ld�."
:: echo %R%[92m   Eski tarihli dosya ge�mi�i temizleniyor...%R%[0m
:: FhManagew.exe -cleanup 360 -quiet > NUL 2>&1

echo %R%[92m   Clearing ico and thumbnail memory...%R%[0m
taskkill /f /IM explorer.exe > NUL 2>&1
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
Start explorer.exe > NUL 2>&1

echo %R%[92m   Clearing temp files...%R%[0m
DEL /F /Q /A %temp%\* > NUL 2>&1
RD /S /Q %temp%\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Temp\* > NUL 2>&1
RD /S /Q %localappdata%\Temp\* > NUL 2>&1
:: %PowerRun% DEL /F /Q /A %windir%\temp\* > NUL 2>&1

echo %R%[92m   Clearing SoftwareDistribution...%R%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1

echo %R%[92m   Clearing Prefetch...%R%[0m
DEL /F /Q /A %windir%\prefetch\* > NUL 2>&1

:: echo %R%[92m   Hata Raporu Dosyalar� temizleniyor...%R%[0m
:: DEL /F /Q /A %programdata%\Microsoft\Windows\WER\ReportQueue\* > NUL 2>&1

:: echo %R%[92m   Microsoft Edge �nbelle�i temizleniyor...%R%[0m
DEL /F /Q /A %localappdata%\Microsoft\Edge\User Data\Default\Service Worker\CacheStorage\* > NUL 2>&1

echo %R%[92m   Clearing GPU remnants..%R%[0m
RD /S /Q %systemdrive%\AMD > NUL 2>&1
RD /S /Q %systemdrive%\NVIDIA > NUL 2>&1
RD /S /Q %systemdrive%\INTEL > NUL 2>&1

echo %R%[92m   Clearing WinSxS...%R%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup

:: echo %R%[92m   Disk temizleme i�lemi yap�l�yor...%R%[0m
:: cleanmgr /verylowdisk /sagerun:5

echo %R%[92m   Process completed%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:Fat32toNTFS
mode con cols=63 lines=25
title Fat32 to NTFS / OgnitorenKs
echo   %R%[90m����������������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m                      Fat32 to NTFS                       %R%[0m%R%[90m�%R%[0m
echo   %R%[90m����������������������������������������������������������͹%R%[0m
	echo      %C%[32m Letter    Name%C%[0m
for /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property DeviceID,VolumeName"') do (
   echo       %%a)
   echo       %R%[32m X.%R%[36m Menu%R%[0m
echo   %R%[90m����������������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  Disk Letter :%C%[0m
	if %value%==X GOTO menu
	if %value%==x GOTO menu
Call :Logss "Fat32toNTFS" "%value% diski NTFS'ye d�n��t�r�ld�."
convert %value%: /fs:NTFS /v
goto :eof

:stop
:: ����������������������������������������������������������������������������������������������������������������������������������������������������������
:Slmgrvbs
cls
mode con cols=55 lines=16
title License Management \ OgnitorenKs
echo 
echo   %R%[90m�������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m         License Management / SLMGR.VBS          %R%[0m%R%[90m�%R%[0m
echo   %R%[90m�������������������������������������������������͹%R%[0m
echo   %R%[90m�%R%[0m  %R%[32m 1.%C%[33m License Enter %C%[90m[ipk]                        �%R%[0m
echo   %R%[90m�%R%[0m  %R%[32m 2.%C%[33m License status %C%[90m[dli]                       �%R%[0m
echo   %R%[90m�%R%[0m  %R%[32m 3.%C%[33m License status detailed %C%[90m[dlv]              �%R%[0m
echo   %R%[90m�%R%[0m  %R%[32m 4.%C%[33m License Term %C%[90m[xpr]                         �%R%[0m
echo   %R%[90m�%R%[0m  %R%[32m 5.%C%[33m License Delete %C%[90m[upk]                       �%R%[0m
echo   %R%[90m�%R%[0m  %R%[32m 6.%C%[33m License Reset %C%[90m[rearm]                      �%R%[0m
echo   %R%[90m�%R%[0m  %R%[32m X.%R%[36m Menu%R%[0m                                       %R%[90m�%R%[0m
echo   %R%[90m�������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  Choice : %C%[0m
	if %value%==1 (Call :slmgrlisans)
	if %value%==2 (Call :Logss "SLMGR.VBS" "Lisans Durumu, kontrol edildi."
				   slmgr /dli&goto Slmgrvbs)		   
	if %value%==3 (Call :Logss "SLMGR.VBS" "Lisans Durumu Detayl�, kontrol edildi."
				   slmgr /dlv&goto Slmgrvbs)
	if %value%==4 (Call :Logss "SLMGR.VBS" "Lisans S�resini ��ren, �al��t�r�ld�."
				   slmgr /xpr&goto Slmgrvbs)
	if %value%==5 (Call :Logss "SLMGR.VBS" "Lisans Sil, �al��t�r�ld�."
				   slmgr /upk&goto Slmgrvbs)
	if %value%==6 (Call :Logss "SLMGR.VBS" "Lisans S�re S�f�rla, �al��t�r�ld�."
				   slmgr /rearm&goto Slmgrvbs)
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto Slmgrvbs

:slmgrlisans
cls
echo   %R%[90m�������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m                 License Enter                   %R%[0m%R%[90m�%R%[0m
echo   %R%[90m�������������������������������������������������͹%R%[0m
set /p value= %R%[92m   License : %R%[0m
	if %value%==X (goto :eof)
	if %value%==x (goto :eof)
echo [%date% - %time%] ^| Slmgr.vbs ^| Slmgr Lisans(ipk), Windows lisansland� >> %Location%\Logs
slmgr /ipk %value%

goto :eof

:stop
:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:icofix
echo [%date% - %time%] ^| icofix ^| Simge sorunu giderildi. >> %Location%\Logs
echo   %R%[1;97m%R%[42m                                        ICON FIX                                            %R%[0m
ie4uinit.exe -show
ie4uinit.exe -ClearIconCache
taskkill /f /im explorer.exe > NUL 2>&1
taskkill /f /im RuntimeBroker.exe > NUL 2>&1
taskkill /f /im dllhost.exe > NUL 2>&1
taskkill /f /im taskmgr.exe > NUL 2>&1
DEL /F /Q /A "%localappdata%\IconCache.db" > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\IconCacheToDelete\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\NotifyIcon\* > NUL 2>&1
RD /S /Q "%localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\AppIconCache" > NUL 2>&1
mkdir "%localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\AppIconCache" > NUL 2>&1
DEL /F /Q /A %localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\TempState\* > NUL 2>&1
Call :delete2 "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" IconStreams
Call :delete2 "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" PastIconsStream
powershell -command "Start-Process 'C:\Windows\explorer.exe'"
powershell -command "Start-Process 'C:\Windows\System32\dllhost.exe'"
timeout /t 1 /nobreak > NUL
goto :eof

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������
:stop
:servicesmanagement
cls
mode con cols=55 lines=37
Call :PowerRun
title Service Management / OgnitorenKs
Dism /Online /Get-Features /format:table > %Logs%\servvalue.txt
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" > NUL 2>&1
	if %errorlevel%==1 (Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" HibernateEnabled 1)
reg query "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" /v "SearchOrderConfig" > NUL 2>&1
	if %errorlevel%==1 (Call :dword "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" 1)
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m                 Service Management                %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�              %R%[32m%R%[0m:%R%[36mEnable       %R%[100m %R%[0m:%R%[36mDisable             %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (BthAvctpSvc bthserv BluetoothUserService BTAGService) do (Call :serv.check "%%b")
echo  %R%[90m�%R%[0m   %R%[32m 1%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Bluetooth service%C%[0m                    %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "Spooler"
echo  %R%[90m�%R%[0m   %R%[32m 2%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Printer service%C%[0m                      %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (TapiSrv PhoneSvc) do (Call :serv.check "%%b")
echo  %R%[90m�%R%[0m   %R%[32m 3%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Phone service%C%[0m                        %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "DusmSvc"
echo  %R%[90m�%R%[0m   %R%[32m 4%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Data Usage service%C%[0m                   %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (iphlpsvc IpxlatCfgSvc) do (Call :serv.check "%%b")
echo  %R%[90m�%R%[0m   %R%[32m 5%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m IP Helper (IPv6)%C%[0m                     %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (icssvc SharedAccess ALG) do (Call :serv.check "%%b")
echo  %R%[90m�%R%[0m   %R%[32m 6%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Windows Mobile Hotspot%C%[0m               %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "RMSvc"
echo  %R%[90m�%R%[0m   %R%[32m 7%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Radio Management Service%C%[0m             %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (WSearch ConsentUxUserSvc DevicePickerUserSvc DevicesFlowUserSvc PNRPAutoReg PNRPsvc p2psvc p2pimsvc upnphost SSDPSRV TermService UmRdpService SessionEnv) do (Call :serv.check "%%b")
echo  %R%[90m�%R%[0m   %R%[32m 8%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Remote Desktop/Streaming/Network serv%C%[0m%R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "WSearch"
echo  %R%[90m�%R%[0m   %R%[32m 9%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Windows Search%C%[0m                       %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "wcncsvc"
echo  %R%[90m�%R%[0m  %R%[32m 10%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Windows Connect Now(WPS) service%C%[0m     %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (FrameServer WiaRpc StiSvc) do (Call :serv.check "%%b")
echo  %R%[90m�%R%[0m  %R%[32m 11%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Scanner and Camera services%C%[0m          %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "wisvc"
echo  %R%[90m�%R%[0m  %R%[32m 12%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Insider service%C%[0m                      %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "WbioSrvc"
echo  %R%[90m�%R%[0m  %R%[32m 13%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Biometric service%C%[0m                    %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m
FOR /F "tokens=5" %%i in ('FIND "Caption" %Logs%\OS.txt') do SET caption3=%%i
	if %caption3%==11 (Call :serv.check "PenService")
	if %caption3%==10 (Call :serv.check "TabletInputService")
echo  %R%[90m�%R%[0m  %R%[32m 14%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Pen and Touch service%C%[0m                %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (SDRSVC VSS swprv wbengine fhsvc) do (Call :serv.check "%%b")
echo  %R%[90m�%R%[0m  %R%[32m 15%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m System Restore service%C%[0m               %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "SysMain"
echo  %R%[90m�%R%[0m  %R%[32m 16%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Sysmain Fast Fetch%C%[0m                   %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
echo  %R%[90m�%R%[0m  %R%[32m 17%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Quick Launch (Hibernate)%C%[0m             %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (lfsvc NaturalAuthentication) do (Call :serv.check "%%b")
echo  %R%[90m�%R%[0m  %R%[32m 18%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Location Service%C%[0m                     %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&findstr /i "Hyper-V" %Logs%\servvalue.txt | findstr /i "Disabled" > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
echo  %R%[90m�%R%[0m  %R%[32m 19%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Hyper-V service%C%[0m                      %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (BcastDVRUserService XboxGipSvc XboxNetApiSvc XblAuthManager XblGameSave DoSvc) do (Call :serv.check "%%b")
echo  %R%[90m�%R%[0m  %R%[32m 20%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Xbox service%C%[0m                         %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "BDESVC"
echo  %R%[90m�%R%[0m  %R%[32m 21%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m BitLocker Drive Encryption Service%C%[0m   %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc) do (Call :serv.check "%%b")
echo  %R%[90m�%R%[0m  %R%[32m 22%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Mixed Reality service (VR)%C%[0m           %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&reg query "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" /v "SearchOrderConfig" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
echo  %R%[90m�%R%[0m  %R%[32m 23%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Driver Install/Update service%C%[0m        %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m&Powershell -command "Get-MMAgent | Select-Object MemoryCompression| FL" | findstr /i False > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
echo  %R%[90m�%R%[0m  %R%[32m 24%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Memory Compression service%C%[0m           %R%[90m�%R%[0m
::
set servalue=%R%[100m %R%[0m
reg query "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v  "ValueMax" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
echo  %R%[90m�%R%[0m  %R%[32m 25%C%[90m[%C%[36mE%C%[90m/%C%[36mD%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Core Parking (CPU Core Sleep Mode)%C%[0m   %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m        %R%[32m X.%R%[36m Menu%R%[0m                                   %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value= %C%[92m Choice : %C%[0m
	if %value%==1e (Call :serv.1.bluetooth start demand activating)
	if %value%==1E (Call :serv.1.bluetooth start demand activating)
	if %value%==1D (Call :serv.1.bluetooth stop disabled disabling)
	if %value%==1d (Call :serv.1.bluetooth stop disabled disabling)
	if %value%==2e (Call :serv.2.yazici start demand auto activating)
	if %value%==2E (Call :serv.2.yazici start demand auto activating)
	if %value%==2D (Call :serv.2.yazici stop disabled disabled disabling)
	if %value%==2d (Call :serv.2.yazici stop disabled disabled disabling)
	if %value%==3e (Call :serv.3.phone start demand demand activating)
	if %value%==3E (Call :serv.3.phone start demand demand activating)
	if %value%==3D (Call :serv.3.phone stop disabled demand disabling)
	if %value%==3d (Call :serv.3.phone stop disabled demand disabling)
	if %value%==4e (Call :serv.4.tarifeli start auto activating)
	if %value%==4E (Call :serv.4.tarifeli start auto activating)
	if %value%==4D (Call :serv.4.tarifeli stop disabled disabling)
	if %value%==4d (Call :serv.4.tarifeli stop disabled disabling)
	if %value%==5e (Call :serv.5.ipyardimci start demand auto activating)
	if %value%==5E (Call :serv.5.ipyardimci start demand auto activating)
	if %value%==5D (Call :serv.5.ipyardimci stop disabled disabled disabling)
	if %value%==5d (Call :serv.5.ipyardimci stop disabled disabled disabling)
	if %value%==6e (Call :serv.6.hotspot start demand activating)
	if %value%==6E (Call :serv.6.hotspot start demand activating)
	if %value%==6D (Call :serv.6.hotspot stop disabled disabling)
	if %value%==6d (Call :serv.6.hotspot stop disabled disabling)
	if %value%==7e (Call :serv.7.ucakmodu start demand activating)
	if %value%==7E (Call :serv.7.ucakmodu start demand activating)
	if %value%==7D (Call :serv.7.ucakmodu stop disabled disabling)
	if %value%==7d (Call :serv.7.ucakmodu stop disabled disabling)
	if %value%==8e (Call :serv.8.akis start demand auto activating)
	if %value%==8E (Call :serv.8.akis start demand auto activating)
	if %value%==8D (Call :serv.8.akis stop disabled disabled disabling)
	if %value%==8d (Call :serv.8.akis stop disabled disabled disabling)
	if %value%==9e (Call :serv.9.wsearch start auto activating)
	if %value%==9E (Call :serv.9.wsearch start auto activating)
	if %value%==9D (Call :serv.9.wsearch stop disabled disabling)
	if %value%==9d (Call :serv.9.wsearch stop disabled disabling)
	if %value%==10e (Call :serv.10.wps start demand activating)
	if %value%==10E (Call :serv.10.wps start demand activating)
	if %value%==10D (Call :serv.10.wps stop disabled disabling)
	if %value%==10d (Call :serv.10.wps stop disabled disabling)
	if %value%==11e (Call :serv.11.camera start demand activating)
	if %value%==11E (Call :serv.11.camera start demand activating)
	if %value%==11D (Call :serv.11.camera stop disabled disabling)
	if %value%==11d (Call :serv.11.camera stop disabled disabling)
	if %value%==12e (Call :serv.12.insider start demand activating)
	if %value%==12E (Call :serv.12.insider start demand activating)
	if %value%==12D (Call :serv.12.insider stop disabled disabling)
	if %value%==12d (Call :serv.12.insider stop disabled disabling)
	if %value%==13e (Call :serv.13.biyometrik start demand activating)
	if %value%==13E (Call :serv.13.biyometrik start demand activating)
	if %value%==13D (Call :serv.13.biyometrik stop disabled disabling)
	if %value%==13d (Call :serv.13.biyometrik stop disabled disabling)
	if %value%==14e (Call :serv.14.dokunmatik start demand activating)
	if %value%==14E (Call :serv.14.dokunmatik start demand activating)
	if %value%==14D (Call :serv.14.dokunmatik stop disabled disabling)
	if %value%==14d (Call :serv.14.dokunmatik stop disabled disabling)
	if %value%==15e (Call :serv.15.sistemgeriyukleme start demand ENABLE 0 activating)
	if %value%==15E (Call :serv.15.sistemgeriyukleme start demand ENABLE 0 activating)
	if %value%==15D (Call :serv.15.sistemgeriyukleme stop disabled DISABLE 1 disabling)
	if %value%==15d (Call :serv.15.sistemgeriyukleme stop disabled DISABLE 1 disabling)
	if %value%==16e (Call :serv.16.sysmain start auto activating)
	if %value%==16E (Call :serv.16.sysmain start auto activating)
	if %value%==16D (Call :serv.16.sysmain stop disabled disabling)
	if %value%==16d (Call :serv.16.sysmain stop disabled disabling)
	if %value%==17e (Call :serv.17.hibernate on 1 activating)
	if %value%==17E (Call :serv.17.hibernate on 1 activating)
	if %value%==17D (Call :serv.17.hibernate off 0 disabling)
	if %value%==17d (Call :serv.17.hibernate off 0 disabling)
	if %value%==18e (Call :serv.18.Location start demand Allow 1 "Call :delete2" "DisableLocation" activating)
	if %value%==18E (Call :serv.18.Location start demand Allow 1 "Call :delete2" "DisableLocation" activating)
	if %value%==18D (Call :serv.18.Location stop disabled Deny 0 "Call :dword" "DisableLocation 1" disabling)
	if %value%==18d (Call :serv.18.Location stop disabled Deny 0 "Call :dword" "DisableLocation 1" disabling)
	if %value%==19e (Call :serv.19.hyperv demand Enable For 1 on activating)
	if %value%==19E (Call :serv.19.hyperv demand Enable For 1 on activating)
	if %value%==19D (Call :serv.19.hyperv disabled Disable "::" 0 off disabling)
	if %value%==19d (Call :serv.19.hyperv disabled Disable "::" 0 off disabling)
	if %value%==20e (Call :serv.20.xbox start demand 1 0 "Call :delete2" activating)
	if %value%==20E (Call :serv.20.xbox start demand 1 0 "Call :delete2" activating)
	if %value%==20D (Call :serv.20.xbox stop disabled 0 2 "Call :dword" disabling)
	if %value%==20d (Call :serv.20.xbox stop disabled 0 2 "Call :dword" disabling)
	if %value%==21e (Call :serv.21.bitlocker start demand activating)
	if %value%==21E (Call :serv.21.bitlocker start demand activating)
	if %value%==21D (Call :serv.21.bitlocker stop disabled disabling)
	if %value%==21d (Call :serv.21.bitlocker stop disabled disabling)
	if %value%==22e (Call :serv.22.mixedreality demand activating)
	if %value%==22E (Call :serv.22.mixedreality demand activating)
	if %value%==22D (Call :serv.22.mixedreality disabled disabling)
	if %value%==22d (Call :serv.22.mixedreality disabled disabling)
	if %value%==23e (Call :serv.23.driverupdate 0 1 activating)
	if %value%==23E (Call :serv.23.driverupdate 0 1 activating)
	if %value%==23D (Call :serv.23.driverupdate 1 0 disabling)
	if %value%==23d (Call :serv.23.driverupdate 1 0 disabling)
	if %value%==24e (Call :serv.24.memorycompression Enable activating)
	if %value%==24E (Call :serv.24.memorycompression Enable activating)
	if %value%==24D (Call :serv.24.memorycompression Disable disabling)
	if %value%==24d (Call :serv.24.memorycompression Disable disabling)
	if %value%==25e (Call :serv.25.coreparking 100 "Call :delete" "Call :delete2" activating)
	if %value%==25E (Call :serv.25.coreparking 100 "Call :delete" "Call :delete2" activating)
	if %value%==25D (Call :serv.25.coreparking 0 "Call :dword" "Call :dword" disabling)
	if %value%==25d (Call :serv.25.coreparking 0 "Call :dword" "Call :dword" disabling)
	if %value%==x goto menu
	if %value%==X goto menu
) else 
	goto servicesmanagement
	
:serv.check
FOR %%a in (%~1) do (reg query "HKLM\SYSTEM\CurrentControlSet\Services\%%a" /v "Start" | Findstr /i 4 > NUL 2>&1)
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
goto :eof

:serv.1.bluetooth
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Bluetooth hizmeti %3. >> %Location%\Logs
echo   %C%[96mBluetooth service %3 ...%C%[0m
:: Bluetooth (AVCTP hizmeti) | Bluetooth destek hizmeti | Bluetooth kullan�c� deste�i hizmeti \ Ses a� ge�idi hizmeti
FOR %%a in (BthAvctpSvc bthserv BluetoothUserService BTAGService) do (
	sc config %%a start= %2 > NUL 2>&1
	sc %1 %%a > NUL 2>&1)
::-------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.2.yazici
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Yaz�c� hizmeti %4. >> %Location%\Logs
echo   %C%[96mPrinter service %4 ...%C%[0m
sc config Spooler start= %3 > NUL 2>&1
sc %1 Spooler > NUL 2>&1
:: Uzak Masa�st� Hizmetleri Kullan�c� Modu Ba�lant� Noktas� Yeniden Y�nlendiricisi
sc config UmRdpService start= %2 > NUL 2>&1
sc %1 UmRdpService > NUL 2>&1
DEL /F /Q /A %windir%\System32\spool\PRINTERS\* > NUL 2>&1
::----------------------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : auto     | %4 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled | %4 : kapat�l�yor
::----------------------------------------------------------------------
goto :eof

:serv.3.phone
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Telefon hizmeti %4. >> %Location%\Logs
echo   %C%[96mPhone service %4 ...%C%[0m 
:: Telefon | Telefon Hizmeti
FOR %%a in (TapiSrv PhoneSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	sc %1 %%a > NUL 2>&1)
:: Bluetooth (AVCTP hizmeti) | Bluetooth destek hizmeti | Bluetooth kullan�c� deste�i hizmeti \ Ses a� ge�idi hizmeti
FOR %%a in (BthAvctpSvc bthserv BluetoothUserService BTAGService) do (sc config %%a start= %3 > NUL 2>&1)
::-------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : demand  | %4 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : demand  | %4 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.4.tarifeli
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Tarifeli a�lar hizmeti %3. >> %Location%\Logs
echo   %C%[96mData Usage service %3 ...%C%[0m
:: Veri kullan�m�
::  Arkaplan verilierni ve a� kullan�m�n� s�n�rlar
sc config DusmSvc start= %2 > NUL 2>&1
sc %1 DusmSvc > NUL 2>&1
::-------------------------------------------------------
::    A� = %1 : start | %2 : auto     | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.5.ipyardimci
echo [%date% - %time%] ^| Hizmetleri Y�net ^| IP yard�mc� hizmeti %4. >> %Location%\Logs
echo   %C%[96mIP helper service %4 ...%C%[0m
:: IP Yard�mc�s� | IP �eviri Yap�land�rma Hizmeti
sc config iphlpsvc start= %3 > NUL 2>&1
sc %1 iphlpsvc > NUL 2>&1
sc config IpxlatCfgSvc start= %2 > NUL 2>&1
sc %1 IpxlatCfgSvc > NUL 2>&1
::----------------------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : auto     | %4 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled | %4 : kapat�l�yor
::----------------------------------------------------------------------
goto :eof

:serv.6.hotspot
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Mobil Etkin Nokta hizmeti %3. >> %Location%\Logs
echo   %C%[96mHotspot service %3 ...%C%[0m
:: Windows Mobil Etkin Nokta Hizmeti | Internet Ba�lant�s� Payla��m� (ICS) | Uygulama katman� a� ge�idi hizmeti
FOR %%a in (icssvc SharedAccess ALG) do (
	sc config %%a start= %2 > NUL 2>&1
	sc %1 %%a > NUL 2>&1)
::-------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.7.ucakmodu
:: Windows 11'de a� simgesinde sorun ya�anmamas� i�in hizmetin kapat�lmas� engellendi.
echo %value% | Findstr /i "d" > NUL 2>&1
	if %errorlevel%==0 (FOR /F "tokens=5" %%i in ('FIND "Caption" %Logs%\OS.txt') do SET caption3=%%i)
	if %errorlevel%==1 (set caption3=10)

echo %caption3% > NUL 2>&1
	if %caption3%==11 (echo   %C%[91Windows 11'de bu hizmet kapat�lamaz.%C%[0m
					   timeout /t 3 /nobreak > NUL
					   goto servicesmanagement)

echo [%date% - %time%] ^| Hizmetleri Y�net ^| Radyo ve U�ak Modu hizmeti %3. >> %Location%\Logs
echo   %C%[96mRadyo y�netim ve u�ak modu hizmeti %3 ...%C%[0m
::  Radyo y�netimi ve u�ak modu hizmeti
sc config RMSvc start= %2 > NUL 2>&1
sc %1 RMSvc > NUL 2>&1
::-------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.8.akis
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Ak�� deneyimi hizmeti %4. >> %Location%\Logs
echo   %C%[96mRemote Desktop, DevicesFlow, Network service %4 ...%C%[0m
:: ConsentUx kullan�c� hizmeti 
%PowerRun% sc config ConsentUxUserSvc start= %2
%PowerRun% net %1 ConsentUxUserSvc
:: Miracast, DLNA kullan�c� arabirimini
%PowerRun% sc config DevicePickerUserSvc start= %2
%PowerRun% net %1 DevicePickerUserSvc
:: Cihaz Ak���
%PowerRun% sc config DevicesFlowUserSvc start= %2
%PowerRun% net %1 DevicesFlowUserSvc
:: WMP a� payla��m hizmeti
%PowerRun% sc config WMPNetworkSvc start= %2
%PowerRun% net %1 WMPNetworkSvc
::PNRP Makine ad� yay�n hizmeti
%PowerRun% sc config PNRPAutoReg start= %2
%PowerRun% net %1 PNRPAutoReg
:: E� ad� ��z�mleme protokol�
%PowerRun% sc config PNRPsvc start= %2
%PowerRun% net %1 PNRPsvc
:: E� a� grupland�rma
%PowerRun% sc config p2psvc start= %2
%PowerRun% net %1 p2psvc
:: E�ler aras� a� olu�turma kimlik y�neticisi
%PowerRun% sc config p2pimsvc start= %2
%PowerRun% net %1 p2pimsvc
:: UPNP ayg�t ana makinesi
%PowerRun% sc config upnphost start= %2
%PowerRun% net %1 upnphost
:: Upnp Ayg�t ana bilgisyar� (A�daki cihazlar� bulur)
%PowerRun% sc config SSDPSRV start= %2
%PowerRun% net %1 SSDPSRV
:: Uzak masa�st� hizmetleri
%PowerRun% sc config TermService start= %2
%PowerRun% net %1 TermService
:: Uzak Masa�st� Hizmetleri Kullan�c� Modu Ba�lant� Noktas� Yeniden Y�nlendiricisi
%PowerRun% sc config UmRdpService start= %2
%PowerRun% net %1 UmRdpService
:: Uzak Masa�st� Yap�land�rmas�
%PowerRun% sc config SessionEnv start= %2
%PowerRun% net %1 SessionEnv
:: Windows Search
sc config WSearch start= %3 > NUL 2>&1
sc %1 WSearch > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Media Player\*.wmdb > NUL 2>&1
::-------------------------------------------------------
::    A� = %1 : start | %2 : demand    | %3 : auto     | %4 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled  | %3 : disabled | %4 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.9.wsearch
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Wsearch hizmeti %3. >> %Location%\Logs
echo   %C%[96mWindows Search hizmeti %3 ...%C%[0m
:: Windows Search
sc config WSearch start= %2 > NUL 2>&1
sc %1 WSearch > NUL 2>&1
::-------------------------------------------------------
::    A� = %1 : start | %2 : auto     | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.10.wps
echo [%date% - %time%] ^| Hizmetleri Y�net ^| WPS hizmeti %3. >> %Location%\Logs
echo   %C%[96mWPS service %3 ...%C%[0m
:: Windows �imdi Ba�lan - Yap�land�rma Dosyas� Kaydedici
::  WPS protokol�n�n uygulanmas�n� sa�lar.
sc config wcncsvc start= %2 > NUL 2>&1
sc %1 wcncsvc > NUL 2>&1
::-------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.11.camera
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Taray�c�s ve Kamera hizmeti %3. >> %Location%\Logs
echo   %C%[96mCamera and Scanner service %3 ...%C%[0m
:: Windows Kamera �er�eve sunucusu | Windows Kamera �er�eve Sunucusu | Resim alma olaylar� (Windows G�r�nt� Alma-WIA) | Windows Resim Alma (Windows G�r�nt� Alma (WIA))
FOR %%a in (FrameServer FrameServerMonitor WiaRpc StiSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	sc %1 %%a > NUL 2>&1)
::-------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.12.insider
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Insider hizmeti %3. >> %Location%\Logs
echo   %C%[96mWindows Insider service %3 ...%C%[0m
:: Windows Insider Hizmeti
sc config wisvc start= %2 > NUL 2>&1
sc %1 wisvc > NUL 2>&1
::-------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.13.biyometrik
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Biyometrik hizmeti %3. >> %Location%\Logs
echo   %C%[96mWindows Biometric service %3 ...%C%[0m
:: Windows Biyometrik Hizmeti
sc config WbioSrvc start= %2 > NUL 2>&1
sc %1 WbioSrvc > NUL 2>&1
::-------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.14.dokunmatik
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Dokunmatik Klavye ve Kalem hizmeti %3. >> %Location%\Logs
echo   %C%[96mPen and Touch service %3 ...%C%[0m
:: Kalem servisi
sc config PenService start= %2 > NUL 2>&1
sc %1 PenService > NUL 2>&1
::Dokunmatik Klavyeyi ve el yaz�s� paneli hizmeit
sc config TabletInputService start= %2 > NUL 2>&1
sc %1 TabletInputService > NUL 2>&1
::-------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.15.sistemgeriyukleme
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Sistem Geri y�kleme hizmeti %5. >> %Location%\Logs
echo   %C%[96mSystem Restore service %5 ...%C%[0m
:: Windows Yedekleme ve Geri Y�kleme hizmeti | Birim G�lge kopyas� | Microsoft Yaz�l�m� G�lge Kopya Sa�lay�c�s� | Blok D�zeyinde Yedekleme Altyap� Hizmeti | Dosya ge�mi�i hizmeti
FOR %%a in (SDRSVC VSS swprv wbengine fhsvc) do (
	sc config %%a start= %2 > NUL 2>&1
	sc %1 %%a > NUL 2>&1)
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /%3 > NUL 2>&1
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableSR" "%~4"
::-------------------------------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : ENABLE  | %~4 : 0 | %5 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %~4 : 1 | %5 : kapat�l�yor
::-------------------------------------------------------------------------------
goto :eof

:serv.16.sysmain
echo [%date% - %time%] ^| Hizmetleri Y�net ^| H�zl� Getir^(Sysmain^) hizmeti %3. >> %Location%\Logs
echo   %C%[96mSuper Fetch - Sysmain service %3 ...%C%[0m
sc config SysMain start= %2 > NUL 2>&1
sc %1 SysMain > NUL 2>&1
::-------------------------------------------------------
::    A� = %1 : start | %2 : auto   | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.17.hibernate
::H�zl� ba�lang��
echo [%date% - %time%] ^| Hizmetleri Y�net ^| H�zl� ba�lang��^(Hibernate^) hizmeti %3. >> %Location%\Logs
echo   %C%[96mHibernate service %3 ...%C%[0m
powercfg /hibernate %1
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" "%~2"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" "%~2"
::-------------------------------------------------------
::    A� = %1 : On  | %~2 : 1  | %3 : a��l�yor
:: Kapat = %1 : Off | %~2 : 0  | %3 : kapat�l�yor
::-------------------------------------------------------
goto :eof

:serv.18.Location
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Konum hizmeti %7. >> %Location%\Logs
echo   %C%[96mLocation service %7 ...%C%[0m
%~5 "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" %~6 > NUL 2>&1
Call :sz "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\Location" "Value" "%~3"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowLocation" "%~4" 
:: Natural Kimlik Do�rulama
sc config NaturalAuthentication start= %2 > NUL 2>&1
sc %1 NaturalAuthentication > NUL 2>&1
:: Co�rafi Konum Hizmeti
sc config lfsvc start= %2 > NUL 2>&1
sc %1 lfsvc > NUL 2>&1
::----------------------------------------------------------------------------------------------------------------------------------------------
::    A� = %1 : start  | %2 : demand    | %~3 : Allow |  %~4 : 1 | %5 : Call :delete2  | %~6 : "DisableLocation"     | %7 : a��l�yor
:: Kapat = %1 : stop   | %2 : disabled  | %~3 : Deny  |  %~4 : 0 | %5 : Call :dword    | %~6 : "DisableLocation 1"   | %7 : kapat�l�yor
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

::serv.19.mediaplayer
echo [%date% - %time%] ^| Hizmetleri Y�net ^| MediaPlayer hizmeti %4. >> %Location%\Logs
:: Windows Media Player
echo   %C%[96mWindows Media Player %4 ...%C%[0m
Dism /Online /%3-Feature /FeatureName:MediaPlayback /Quiet /NoRestart
Dism /online /%3-Feature /FeatureName:WindowsMediaPlayer /Quiet /NoRestart
:: Windows Media Player A� Payla��m Hizmeti
sc config WMPNetworkSvc start= %2 > NUL 2>&1
sc %1 WMPNetworkSvc > NUL 2>&1
::---------------------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : ENABLE  | %4 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %4 : kapat�l�yor
::---------------------------------------------------------------------
goto :eof

:serv.19.hyperv
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Hyper-V hizmeti %6. >> %Location%\Logs
echo   %C%[96mHyper-V service %6 ...%C%[0m
%~3 /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-All /Quiet /NoRestart
FOR %%a in (HvHost vmicvss vmicguestinterface vmicshutdown vmicvmsession vmicheartbeat vmicrdv vmickvpexchange vmictimesync vmms vmcompute) do (
	sc config %%a start= %1 > NUL 2>&1)
	
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" "Enabled" "%~4"
bcdedit /set hypervisorlaunchtype %5
::------------------------------------------
::    A� = %1 : demand    | %2 : Enable  | %~3 : For  | %~4: 1  | %5 : on   | %6 : a��l�yor   
:: Kapat = %1 : disabled  | %2 : Disable | %~3 : ::   | %~4: 0  | %5 : off  | %6 : kapat�l�yor
::------------------------------------------
goto :eof

:serv.20.xbox
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Xbox hizmeti %6. >> %Location%\Logs
echo   %C%[96mXbox service %6 ...%C%[0m
:: Oyun DVR ve Yay�n kullan�c� hizmeti | Xbox Accessory Management Service | Xbox Live A� Hizmeti | Xbox Live Kimlik Do�rulama Y�neticisi | Xbox Live Oyun Kaydetme | Teslimat optimizasyonu
FOR %%a in (BcastDVRUserService XboxGipSvc XboxNetApiSvc XblAuthManager XblGameSave) do (
	sc config %%a start= %2 > NUL 2>&1
	sc %1 %%a > NUL 2>&1)
%PowerRun% sc config DoSvc start= %2
%PowerRun% sc %1 DoSvc
Call :sz "HKCU\System\GameConfigStore" "GameDVR_Enabled" "%3"
Call :sz "HKCU\System\GameConfigStore" "GameDVR_FSEBehavior" "%4"
%~5 "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" "AllowGameDVR" "0"
%~5 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "DisabledHotkeys" "G"
Call :ExplorerReset
::----------------------------------------------------------------------------------------------------------------------------------------------
::    A� = %1 : start  | %2 : demand    | %3 : 1  |  %4 : 0  | %~5 : Call :delete2  | %7 : a��l�yor
:: Kapat = %1 : stop   | %2 : disabled  | %3 : 0  |  %4 : 2  | %~5 : Call :dword    | %7 : kapat�l�yor
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

:serv.21.bitlocker
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Bitlocker hizmeti %3. >> %Location%\Logs
echo   %C%[96mBitlocker service %3 ...%C%[0m
:: Bitlocker s�r�c� �ifreleme hizmeti
sc config BDESVC start= %2 > NUL 2>&1
sc %1 BDESVC > NUL 2>&1
::-------------------------------------------------------
::    A� = %1 : start | %2 : demand   | %3 : a��l�yor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapat�l�yor
::------------------------------------------------------
goto :eof

:serv.22.mixedreality
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Karma Ger�eklik hizmeti %2. >> %Location%\Logs
echo   %C%[96mMixed Reality service %2 ...%C%[0m
:: Uzlamsal veri hizmeti | Volumetrik ses olu�turucu hizmeti | Windows alg�lama benzetimi hizmeti | Windows Alg�lama Hizmeti | Windows Mixed Reality OpenXR Service
FOR %%a in (SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc) do (
	sc config %%a start= %1 > NUL 2>&1)
::------------------------------------------
::    A� = %1 : demand    | %2 : a��l�yor   
:: Kapat = %1 : disabled  | %2 : kapat�l�yor
::------------------------------------------
goto :eof

:serv.23.driverupdate
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Driver G�ncelle / Y�kle %3. >> %Location%\Logs
echo   %C%[96mDriver Install/Update service %3 ...%C%[0m
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Update" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update\ExcludeWUDriversInQualityUpdate" "value" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" "%~2"
gpupdate /force > NUL 2>&1
::-------------------------------------
::    A� = %~1 : 0  | %~2: 1  | %3 : a��l�yor   
:: Kapat = %~1 : 1  | %~2: 0  | %3 : kapat�l�yor
::-------------------------------------
goto :eof

:serv.24.memorycompression
echo [%date% - %time%] ^| Hizmetleri Y�net ^| Bellek s�k��t�rma %2. >> %Location%\Logs
echo   %C%[96mMemory Compression service %2 ...%C%[0m
powershell -command "%~1-MMAgent -mc"
::-------------------------------------
::    A� = %~1 : Enable   | %~2: a��l�yor   
:: Kapat = %~1 : Disable  | %~2: kapat�l�yor
::-------------------------------------
goto :eof

:serv.25.coreparking
echo [%date% - %time%] ^| Hizmetleri Y�net ^| ��lemci �ekirdek bekleme hizmeti %4. >> %Location%\Logs
echo   %C%[96mCore Parking %4 ...%C%[0m
Call :dword "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
Call :dword "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
%~2 "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
%~2 "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
%~3 "HKLM\SYSTEM\CurrentControlSet\Control\Power" "CoreParkingDisabled" "0"
::-------------------------------------
::    A� = %~1 : 100  |  %~2: Call :delete |  %~3: Call :delete2  | %4: a��l�yor
:: Kapat = %~1 : 0    |  %~2: Call :dword  |  %~3: Call :dword    | %4: kapat�l�yor
::-------------------------------------
goto :eof
:stop

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������
:wificrackarchley
:: Bu b�l�m "ARCHLEY" kullan�c�s� taraf�ndan eklenmi�tir. 
mode con cols=65 lines=45
title Wireless Password Cracker / (Archley)
echo [%date% - %time%] ^| WifiCrack ^| Wifi Crack b�l�m� a��ld�. >> %Location%\Logs
echo  %R%[90m�������������������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m                   Wireless Password Cracker                 %R%[0m%R%[90m�%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m                          (Archley)                          %R%[0m%R%[90m�%R%[0m
echo  %R%[90m�������������������������������������������������������������͹%R%[0m
FOR /F "tokens=5" %%a in ('netsh wlan show profil ^| find "All"') do (
	FOR /F "tokens=4" %%b in ('netsh wlan show profile "%%a" key^=clear ^| find "Content"') do (
		echo    %R%[36m%%a :%R%[33m %%b%R%[0m
		echo   
		)
	)
)
echo  %R%[90m�������������������������������������������������������������ͼ%R%[0m
echo %R%[32m  Press any key to return to the menu%R%[0m
pause > NUL
goto :eof

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������
:stop
:WinSahiplik
cls
mode con cols=55 lines=15
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m               Sa�-T�k Sahiplik Al                 %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Add%C%[0m                                         %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 2.%C%[33m Remove%C%[0m                                      %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value= %R%[92m  Choice : %R%[0m
	if %value%==1 (title Take Ownership adding... / OgnitorenKs
				   echo [%date% - %time%] ^| WinSahiplik ^| Sa�-t�k "Sahiplik Al" eklendi. >> %Location%\Logs
				   Call :vesz "HKCR\*\shell\runas" "Take Ownership" 
				   Call :sz "HKCR\*\shell\runas" "Icon" "imageres.dll,73" 
				   Call :sz "HKCR\*\shell\runas" "NoWorkingDirectory" "" 
				   Call :vesz "HKCR\*\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F" 
				   Call :sz "HKCR\*\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F" 
				   Call :vesz "HKCR\Directory\shell\runas" "Take Ownership" 
				   Call :sz "HKCR\Directory\shell\runas" "Icon" "imageres.dll,73" 
				   Call :sz "HKCR\Directory\shell\runas" "NoWorkingDirectory" "" 
				   Call :vesz "HKCR\Directory\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t" 
				   Call :sz "HKCR\Directory\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t" 
				   echo %R%[92m Process completed%R%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %value%==2 (title Take Ownership removed... / OgnitorenKs
				   echo [%date% - %time%] ^| WinSahiplik ^| Sa�-t�k "Sahiplik Al" kald�r�ld�. >> %Location%\Logs
				   Call :delete "HKCR\*\shell\runas"
				   Call :delete "HKCR\Directory\shell\runas"
				   echo %R%[92m Process completed%R%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %value%==x GOTO kontroll
	if %value%==X GOTO kontroll
) else
	goto WinSahiplik

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������
:stop
:WinCompactOS
cls
mode con cols=55 lines=15
echo 
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m           CompactOS (Windows Compression)         %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m CompactOS %C%[90m[Enable]                          �%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 2.%C%[33m CompactOS %C%[90m[Disable]                         �%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value= %C%[92m Choice :%C%[0m
	if %value%==1 (Call :CompactOn)
	if %value%==2 (Call :CompactOff)
	if %value%==x GOTO kontroll
	if %value%==X GOTO kontroll
) else
	GOTO WinCompactOS

:CompactOn
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS s�k��t�rma i�lemi uyguland�. >> %Location%\Logs
echo %C%[96m CompactOS activating...%C%[0m
Compact.exe /CompactOS:always
goto :eof

:CompactOff
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS s�k��t�rma i�lemi kapat�ld�. >> %Location%\Logs
echo %C%[96m CompactOS disabling...%C%[0m
Compact.exe /CompactOS:never
goto :eof
:stop

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:gpedit
Call :Logs
echo [%date% - %time%] ^| Gpedit ^| Gpedit.msc eklendi. >> %Location%\Logs
echo %C%[96m Gpedit.msc activating...%C%[0m
FOR /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
FOR /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
goto :eof

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:update2050
echo %C%[96m Windows updates are being delayed to 2050%C%[0m
echo [%date% - %time%] ^| update2050 ^| G�ncelle�tirmeler 2050 y�l�na ertelendi. >> %Location%\Logs
for /f "tokens=2" %%a in ('echo %date%') do set timeupdate=%%a
set tuyil=%timeupdate:~6%
set tuay=%timeupdate:~3,-5%
set tugun=%timeupdate:~0,-8%
for /f "tokens=1" %%a in ('echo %time%') do set tutime=%%a
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesStartTime" "%tuyil%-%tuay%-%tugun%T%tutime%Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesStartTime" "%tuyil%-%tuay%-%tugun%T%tutime%Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseUpdatesExpiryTime" "2050-12-29T%tutime%Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesEndTime" "2050-12-29T%tutime%Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesEndTime" "2050-12-29T%tutime%Z"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "NoAutoUpdate" "0" & :: Update Manuel
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "AUOptions" "2" & :: Update Manuel
timeout /t 1 /nobreak > NUL
goto kontroll

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������
::  W�NDOWS 11 B�L�M� 

:stop
:Win11SettingsMenu
cls
call :Location
call :PowerRun
mode con cols=55 lines=18
title Windows 11 �zelle�tir / OgnitorenKs
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m               Windows 11 Customize                %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Taskbar Size %C%[90m[Small/Big]%C%[0m                    %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 2.%C%[33m Taskbar Location %C%[90m[Bottom/Upper]%C%[0m             %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 3.%C%[33m Taskbar Icon Position %C%[90m[Left/Middle]%C%[0m         %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 4.%C%[33m Right-Click Menu %C%[90m[Old/New]%C%[0m                  %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 5.%C%[33m Right-Click Terminal %C%[90m[Add/Remove]%C%[0m           %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 6.%C%[33m Right-Click Take Ownership %C%[90m[Add/Removed]%C%[0m    %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 7.%C%[33m CompactOS (Compression) %C%[90m[Enable/Disable]%C%[0m    %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 8.%C%[33m Gpedit.msc (Local Group policy)%C%[90m[Add]%C%[0m        %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 9.%C%[33m Postpone Windows Updates to 2050%C%[0m            %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  Choice : %C%[0m
	if %value%==1 (Call :Win11MenuChange)
	if %value%==2 (Call :Win11MenuLocation)
	if %value%==3 (Call :Win11MenuOld)
	if %value%==4 (Call :Win11RightClick)
	if %value%==5 (Call :Win11RightMenuTerminal)
	if %value%==6 (Call :WinSahiplik)
	if %value%==7 (Call :WinCompactOS)
	if %value%==8 (Call :gpedit)
	if %value%==8 (Call :gpedit)
	if %value%==9 goto update2050
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto Win11SettingsMenu

	
:Win11MenuChange
cls
mode con cols=55 lines=15
title Taskbar Size Change / OgnitorenKs
echo 
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m               Taskbar Size Setting                %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 0.%C%[33m Small %C%[0m                                      %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Default %C%[0m                                    %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 2.%C%[33m Big %C%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value= %C%[92m Choice : %C%[0m
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuChange ^| Taskbar boyut ayar� "%value%" olarak ayarland�. >> %Location%\Logs	
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarSi" "%value%"
Call :ExplorerReset
echo %R%[92m Process completed%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11MenuLocation
cls
mode con cols=55 lines=15
title Taskbar Location / OgnitorenKs
echo 
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m              Taskbar Location Setting             %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Bottom%C%[0m                                      %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 3.%C%[33m Upper%C%[0m                                       %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                  %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value= %C%[92m Choice : %C%[0m
	if %value%==x goto win11settingsmenu
	if %value%==X goto win11settingsmenu

echo [%date% - %time%] ^| Win11MenuLocation ^| Taskbar Location ayar� "%value%" olarak ayarland�. >> %Location%\Logs
Call :binary "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3" "Settings" "30000000feffffff7af400000%value%0000003000000030000000000000000804000080070000380400006000000001000000"
Call :ExplorerReset
echo %R%[92m Process completed%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof


:Win11MenuOld
cls
mode con cols=55 lines=15
title Taskbar Icon Location / OgnitorenKs
echo 
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m           Taskbar Icon Location Setting           %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 0.%C%[33m Left%C%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Middle%C%[0m                                      %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value= %C%[92m Choice : %C%[0m
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuOld ^| Taskbar simge Locationu "%value%" olarak ayarland�. >> %Location%\Logs
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAl" "%value%"
Call :ExplorerReset
echo %R%[92m Process completed%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11RightClick
cls
mode con cols=55 lines=15
title Right-Click Menu / OgnitorenKs
echo 
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m              Right-Click Menu Setting             %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Old%C%[0m                                         %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 2.%C%[33m New%C%[0m                                         %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value= %C%[92m Choice : %C%[0m
	if %value%==1 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 sa�-t�k ayar� eski haline getirildi.. >> %Location%\Logs
				   Call :key "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"
				   Call :ExplorerReset)
	if %value%==2 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 sa�-t�k ayar� yeni haline getirildi.. >> %Location%\Logs
				   Call :delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f)
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu
goto Win11RightClick

:Win11RightMenuTerminal
cls
mode con cols=55 lines=15
title Right-Click Terminal / OgnitorenKs
echo 
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m           Right-Click Terminal Setting            %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Terminal%C%[90m [Removed]%C%[0m                          %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 2.%C%[33m Terminal%C%[90m [Add]%C%[0m                              %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value= %C%[92m Choice : %C%[0m
	if %value%==1 (echo [%date% - %time%] ^| Win11RightMenuTerminal ^| Windows 11 sa�-t�k b�l�m�nden terminal kald�r�ld�. >> %Location%\Logs
				   Call :sz "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" "{9F156763-7844-4DC4-B2B1-901F640F5155}" ""
				   Call :ExplorerReset)
	if %value%==2 (echo [%date% - %time%] ^| Win11RightMenuTerminal ^| Windows 11 sa�-t�k b�l�m�ne terminal eklendi. >> %Location%\Logs
				   Call :delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked")
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu
goto Win11RightMenuTerminal

:: ���������������������������������������������������������������������������������������������������������������������������������������������������������������

:stop
:Win10SettingsMenu
cls
mode con cols=55 lines=18
title Windows 10 Customize / OgnitorenKs
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m               Windows 10 Customize                %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Taskbar Notification area icons%C%[90m [Show/Hide]%C%[0m %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 2.%C%[33m Notification area%C%[90m [Show/Hide]%C%[0m               %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 3.%C%[33m Take Ownership%C%[90m [Add/Removed]%C%[0m                %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 4.%C%[33m Taskbar Weather%C%[90m [Show/Hide]%C%[0m                 %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 5.%C%[33m Microsoft Store%C%[90m [ReInstall/Remove]%C%[0m          %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 6.%C%[33m CompactOS (Compression)%C%[90m [Enable/Disable]%C%[0m    %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 7.%C%[33m Gpedit.msc (Local Group policy)%C%[90m [Add]%C%[0m       %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 8.%C%[33m Icon Change%C%[90m [Old/New]%C%[0m                       %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 9.%C%[33m Postpone Windows Updates to 2050%C%[0m            %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Main Menu%R%[0m                                   %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  Choice : %C%[0m
	if %value%==1 (Call :Win10EkranTepsi)
	if %value%==2 (Call :Win10Bildirim)
	if %value%==3 (Call :WinSahiplik)
	if %value%==4 (Call :Win10HavaDurumu)
	if %value%==5 (Call :Win10StoreDelIns)
	if %value%==6 (Call :WinCompactOS)
	if %value%==7 (Call :gpedit)
	if %value%==8 GOTO icochangemenu
	if %value%==9 goto update2050
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto Win10SettingsMenu
	
:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------
	
:Win10EkranTepsi
cls
mode con cols=55 lines=15
title Taskbar Notification area icons... / OgnitorenKs
echo 
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m         Taskbar Notification area icons           %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 0.%C%[33m Show all%C%[90m [Enable]%C%[0m                           %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Hide all%C%[90m [Disable]%C%[0m                          %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  Choice : %C%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10EkranTepsi ^| Windows 10 Saat yan� simgeri ayar� "%value%" olarak ayarland�. >> %Location%\Logs
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "EnableAutoTray" "%value%"
Call :ExplorerReset
echo %R%[92m Process completed%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:Win10Bildirim
cls
mode con cols=55 lines=15
title Notification Area / OgnitorenKs
echo 
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m             Notification Area Setting             %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 0.%C%[33m Enable%C%[0m                                      %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Disable%C%[0m                                     %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value= %C%[92m  Choice : %C%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10Bildirim ^| Windows 10 Bildirim alan� ayar� "%value%" olarak ayarland�. >> %Location%\Logs
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "%value%"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "%value%"
Call :ExplorerReset
echo %R%[92m Process completed%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:Win10HavaDurumu
cls
mode con cols=55 lines=15
title Taskbar Weather... / OgnitorenKs
echo 
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m           Taskbar Weather Setting                 %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 0.%C%[33m Hide%C%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Show%C%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value= %C%[92m  Choice : %C%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu
	
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" "EnableFeeds" "%value%"
Call :ExplorerReset
echo %R%[92m Process completed%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:Win10StoreDelIns
cls
mode con cols=55 lines=15
title Microsoft Store Management / OgnitorenKs
echo 
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m              Microsoft Store Management           %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Microsoft Store%C%[90m [Remove]%C%[0m                    %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 2.%C%[33m Microsoft Store%C%[90m [Re-Install]%C%[0m                %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  Choice : %C%[0m
	if %value%==1 (Call :Win10StoreDel)
	if %value%==2 (Call :Win10StoreIns)
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu
) else
	goto Win10.Store.Del.Ins

:Win10StoreDel
cls
mode con cols=109 lines=35
title Microsoft Store removing / OgnitorenKs

echo %R%[92m Microsoft Store and all connected apps will be removed%R%[0m
set /p value=%R%[92m For menu%R%[96m "X"%R%[92m to contine%R%[96m "Y"%R%[37m : %R%[0m
	if %value%==Y goto Win10StoreDelGo
	if %value%==y goto Win10StoreDelGo
	if %value%==x goto menu
	if %value%==X goto menu
) else 
	goto Win10StoreDel
	
:Win10StoreDelGo	
cls
echo [%date% - %time%] ^| Win10StoreDelIns ^| Windows 10 market uygulamalar� kald�r�ld�. >> %Location%\Logs
echo %R%[92m Microsoft Store removing...%R%[0m

powershell -command "Get-AppXPackage | Remove-AppxPackage"

echo %R%[92m Hizmetler durduruluyor...%R%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution" > NUL 2>&1
net start wuauserv > NUL 2>&1
:: AppX Da��t�m Hizmeti
%PowerRun% sc config AppXSvc start= disabled
%PowerRun% net stop AppXSvc
:: Yetenek eri�im y�netim istemcisi
%PowerRun% sc config camsvc start= disabled
%PowerRun% net stop camsvc
:: Depolama hizmeti
%PowerRun% sc config StorSvc start= disabled
%PowerRun% net stop StorSvc
:: �stemci Lisans Hizmeti
%PowerRun% sc config ClipSVC start= disabled
%PowerRun% net stop ClipSVC

echo %R%[92m Process completed%R%[0m
timeout /t 3 /nobreak
goto :eof

:Win10StoreIns
cls
mode con cols=109 lines=35
title Microsoft Store reinstalling... / OgnitorenKs
echo [%date% - %time%] ^| Win10StoreDelIns ^| Windows 10 Market uygulamas� yeniden y�klendi. >> %Location%\Logs
echo %R%[92m Microsoft Store installing...%R%[0m
powershell -command "Add-AppxPackage -DisableDevelopmentMode -Register $Env:%windir%\SystemApps\*\AppxManifest.xml"

Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "DisableSubscription" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "InactivityShutdownDelay" "0x0000012c"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ProcessBiosKey" "1
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" RefreshRequired" "1"
Call :expandsz "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ServiceDll" "%SystemRoot%\System32\ClipSVC.dll"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ServiceDllUnloadOnStop" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "RemoveWindowsStore" "0"
:: echo %R%[92m Hizmetler ba�lat�l�yor...%R%[0m
%PowerRun% sc config AppXSvc start= demand
%PowerRun% net start AppXSvc
%PowerRun% sc config camsvc start= demand
%PowerRun% net start camsvc
%PowerRun% sc config cryptsvc start= auto
%PowerRun% net start cryptsvc
%PowerRun% sc config wuauserv start= demand
%PowerRun% net start wuauserv
%PowerRun% sc config StorSvc start= demand
%PowerRun% net start StorSvc
%PowerRun% sc config bits start= auto
%PowerRun% net start bits
%PowerRun% sc config trustedinstaller start= demand
%PowerRun% net start trustedinstaller
%PowerRun% sc config ClipSVC start= demand
%PowerRun% net start ClipSVC
net stop wuauserv > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution" > NUL 2>&1
net start wuauserv > NUL 2>&1
:: DLL dosyalar� kontrol ediliyor...
FOR %%a in (softpub.dll wintrust.dll initpki.dll dssenh.dll rsaenh.dll gpkcsp.dll sccbase.dll slbcsp.dll mssip32.dll cryptdlg.dll
			msxml3.dll comcat.dll Msxml.dll Msxml2.dll mshtml.dll shdocvw.dll browseui.dll msjava.dll shdoc401.dll cdm.dll gpkcsp.dll
			sccbase.dll asctrls.ocx wintrust.dll initpki.dll softpub.dll oleaut32.dll Shell32.dll browseui.dll msrating.dll mlang.dll
			hlink.dll mshtmled.dll urlmon.dll plugin.ocx sendmail.dll scrobj.dll mmefxe.ocx corpol.dll jscript.dll imgutil.dll thumbvw.dll
			cryptext.dll rsabase.dll inseng.dll actxprxy.dll dispex.dll occache.dll iepeers.dll cdfview.dll webcheck.dll mobsync.dll pngfilt.dll
			licmgr10.dll icmfilter.dll hhctrl.ocx inetcfg.dll tdc.ocx MSR2C.DLL msident.dll msieftp.dll xmsconf.ocx ils.dll msoeacct.dll inetcomm.dll
			msdxm.ocx dxmasf.dll l3codecx.ax acelpdec.ax mpg4ds32.ax voxmsdec.ax danim.dll Daxctle.ocx lmrt.dll datime.dll dxtrans.dll dxtmsft.dll
			WEBPOST.DLL WPWIZDLL.DLL POSTWPP.DLL CRSWPP.DLL FTPWPP.DLL FPWPP.DLL WUAPI.DLL wups2.dll WUAUENG.DLL ATL.DLL WUCLTUI.DLL WUPS.DLL
			WUWEB.DLL wshom.ocx wshext.dll vbscript.dll scrrun.dll) do (regsvr32 %%a /s)
			
FOR %%a in (shdoc401.dll shdocvw.dll browseui.dll urlmon.dll iesetup.dll occache.dll) do (regsvr32 %%a /i /s)
regsvr32 mstinit.exe /setup
regsvr32 msnsspc.dll /SspcCreateSspiReg
regsvr32 msapsspc.dll /SspcCreateSspiReg /s

:: Store reset
wsreset
echo %R%[92m Process completed%R%[0m
timeout /t 3 /nobreak
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:stop
:icochangemenu
cls
mode con cols=55 lines=15
title Icon Management / OgnitorenKs
echo 
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m                  Icon Management                  %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Old ICO%C%[90m [Install]%C%[0m                           %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 2.%C%[33m New ICO%C%[90m [Install]%C%[0m                           %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Menu%R%[0m                                        %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  Choice : %C%[0m
	if %value%==1 (Call :icochange Oldico)
	if %value%==2 (Call :icochange Newico)
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu
) else
	goto icochange

:icochange
cls
echo [%date% - %time%] ^| icochangemenu ^| "%~1" simge dosyas� y�klendi. >> %Location%\Logs
Call :PowerRun

dir /b %Location%\Files\Oldico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :oldicodown)

dir /b %Location%\Files\Newico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :oldicodown)

title Icon Change / OgnitorenKs
echo %R%[1;97m%R%[42m %1 icon installing...%R%[0m

taskkill /f /im explorer.exe > NUL 2>&1
taskkill /f /im RuntimeBroker.exe > NUL 2>&1

timeout /t 1 /nobreak > NUL
takeown /f "%windir%\SystemResources\shell32.dll.mun" > NUL 2>&1
takeown /f "%windir%\SystemResources\zipfldr.dll.mun" > NUL 2>&1
takeown /f "%windir%\SystemResources\imageres.dll.mun" > NUL 2>&1
takeown /f "%windir%\SystemResources\imagesp1.dll.mun" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%windir%\SystemResources\imagesp1.dll.mun"
%PowerRun% DEL /F /Q /A "%windir%\SystemResources\imageres.dll.mun"
%PowerRun% DEL /F /Q /A "%windir%\SystemResources\zipfldr.dll.mun"
%PowerRun% DEL /F /Q /A "%windir%\SystemResources\shell32.dll.mun"
%PowerRun% Powershell -command "Expand-Archive -Force '%Location%\Files\%~1.zip' '%windir%'"
timeout /t 2 /nobreak > NUL

DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1

powershell -command "Start-Process 'C:\Windows\explorer.exe'"
goto Win10SettingsMenu

:oldicodown
echo %R%[96m Icon files downloading...%R%[0m
FOR /F "tokens=1" %%i in ('FIND "Oldico.zip" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "%Location%\Files\Oldico.zip"
FOR /F "tokens=1" %%i in ('FIND "Newico.zip" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "%Location%\Files\Newico.zip"
goto :eof


:: ���������������������������������������������������������������������������������������������������������������������������������������������������������������
:stop
:AdminMenu
cls
mode con cols=55 lines=17
title User Account Management \ OgnitorenKs
echo 
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m              User Account Management              %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 1.%C%[33m Administrator%C%[90m [Enable]%C%[0m                      %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 2.%C%[33m Administrator%C%[90m [Disable]%C%[0m                     %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 3.%C%[33m Add user to Admin group%C%[0m                     %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 4.%C%[33m User%C%[90m [Add]%C%[0m                                  %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 5.%C%[33m User%C%[90m [Delete]%C%[0m                               %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 6.%C%[33m Forgot password - Change%C%[0m                    %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m 7.%C%[33m Show Current Users%C%[0m                          %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m   %R%[32m X.%R%[36m Main Menu%R%[0m                                   %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m Choice : %C%[0m
	if %value%==1 GOTO Tweak1AdminAktif
	if %value%==2 GOTO Tweak2AdminPasif
	if %value%==3 GOTO Tweak3GrupAdmin
	if %value%==4 GOTO Tweak4NewUsers
	if %value%==5 GOTO Tweak5DelUsers
	if %value%==6 GOTO Tweak6UsersKey
	if %value%==7 (start cmd /k Powershell -command "Get-LocalUser"&goto AdminMenu)
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto AdminMenu

:Tweak1AdminAktif
cls
mode con cols=55 lines=20
title Administrator Enable \ OgnitorenKs
echo 
echo   %R%[90m�������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m            Administrator activating             %R%[0m%R%[90m�%R%[0m
echo   %R%[90m�������������������������������������������������ͼ%R%[0m
echo [%date% - %time%] ^| AdminMenu ^| Administrator aktifle�tirildi. >> %Location%\Logs
net user administrator /active:yes
net user administrator *
echo %R%[92m Process completed%R%[0m
timeout /t 1 /nobreak > NUL
goto AdminMenu

:Tweak2AdminPasif
cls
mode con cols=55 lines=20
title Administrator Disable \ OgnitorenKs
echo 
echo   %R%[90m�������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m            Administrator disabling              %R%[0m%R%[90m�%R%[0m
echo   %R%[90m�������������������������������������������������ͼ%R%[0m
echo [%date% - %time%] ^| AdminMenu ^| Administrator kapat�ld�. >> %Location%\Logs
net user Administrator /active:no
echo %R%[92m Process completed%R%[0m
timeout /t 1 /nobreak > NUL
goto AdminMenu

:Tweak3GrupAdmin
cls
mode con cols=55 lines=20
title Add user to Admin group \ OgnitorenKs
echo 
echo   %R%[90m�������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m             Add User to Admin Group             %R%[0m%R%[90m�%R%[0m
echo   %R%[90m�������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  User Name : %C%[0m  
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Admin grubuna %value% kullan�c�s� eklendi. >> %Location%\Logs
net localgroup Administrators %value% /add 
echo %R%[92m Process completed%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak4NewUsers
cls
mode con cols=55 lines=20
title New User Add \ OgnitorenKs
echo 
echo   %R%[90m�������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m                  New User Add                   %R%[0m%R%[90m�%R%[0m
echo   %R%[90m�������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  User Name : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Yeni kullan�c� "%value%" olu�turuldu. >> %Location%\Logs
net user %value% * /add

echo %R%[92m Process completed%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak5DelUsers
cls
mode con cols=55 lines=20
title User Delete \ OgnitorenKs
echo 
echo   %R%[90m�������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m                   User Delete                   %R%[0m%R%[90m�%R%[0m
echo   %R%[90m�������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  User Name : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Kullan�c� "%value%" silindi. >> %Location%\Logs
net user %value% /delete

echo %R%[92m Process completed%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak6UsersKey
cls
mode con cols=55 lines=20
title Forgot Password - Change \ OgnitorenKs
echo 
echo   %R%[90m�������������������������������������������������ͻ%R%[0m
echo   %R%[90m�%R%[1;97m%R%[100m              Forgot Password - Change           %R%[0m%R%[90m�%R%[0m
echo   %R%[90m�������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  User Name : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Kullan�c� "%value%" �ifre de�i�tirildi. >> %Location%\Logs
net user %value% *

echo %R%[92m Process completed%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:: ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
:shutdownpc
cls
mode con cols=55 lines=18
title ShutDown / OgnitorenKs
echo  %R%[90m���������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[1;97m%R%[100m            Automatic Computer Shutdown            %R%[0m%R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������͹%R%[0m
echo  %R%[90m�%R%[0m                 %R%[32m 0.%C%[33m 30%C%[90m [Minute]%C%[0m                   %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m                 %R%[32m 1.%C%[33m  1%C%[90m [Hour]%C%[0m                     %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m                 %R%[32m 2.%C%[33m  2%C%[90m [Hour]%C%[0m                     %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m                 %R%[32m 3.%C%[33m  3%C%[90m [Hour]%C%[0m                     %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m                 %R%[32m 4.%C%[33m  4%C%[90m [Hour]%C%[0m                     %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m                 %R%[32m 5.%C%[33m  5%C%[90m [Hour]%C%[0m                     %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m                 %R%[32m 6.%C%[33m  6%C%[90m [Hour]%C%[0m                     %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m                 %R%[32m 7.%C%[33m  7%C%[90m [Hour]%C%[0m                     %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m                 %R%[32m 8.%C%[33m  8%C%[90m [Hour]%C%[0m                     %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m                 %R%[32m 9.%R%[33m Cancel%R%[0m                        %R%[90m�%R%[0m
echo  %R%[90m�%R%[0m                 %R%[32m X.%R%[36m Menu%R%[0m                          %R%[90m�%R%[0m
echo  %R%[90m���������������������������������������������������ͼ%R%[0m
set /p value=%C%[92m  Choice : %C%[0m
	if %value%==0 (shutdown -s -f -t 1800)
	if %value%==1 (shutdown -s -f -t 3600)
	if %value%==2 (shutdown -s -f -t 7200)
	if %value%==3 (shutdown -s -f -t 10800)
	if %value%==4 (shutdown -s -f -t 14400)
	if %value%==5 (shutdown -s -f -t 18000)
	if %value%==6 (shutdown -s -f -t 21600)
	if %value%==7 (shutdown -s -f -t 25200)
	if %value%==8 (shutdown -s -f -t 28800)
	if %value%==9 (shutdown /a > NUL 2>&1
				   echo %R%[96m  Auto shutdown canceled%R%[0m
				   timeout /t 2 /nobreak > NUL)
	if %value%==x goto menu
	if %value%==X goto menu
) else
	goto shutdownpc
goto shutdownpc
:: ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
:stop
:UpdateAfter
cls
Call :PowerRun
echo [%date% - %time%] ^| UpdateAfter ^| G�ncelleme sonras� temizlik b�l�m� �al��t�r�ld�. >> %Location%\Logs

echo %R%[92m Cleaning up after update.%R%[0m
echo %R%[92m Defender remnants cleaning.%R%[0m
echo %R%[92m Services are organized...%R%[0m

%PowerRun% %Location%\Extra\Update.After.bat
timeout /t 7 /nobreak > NUL

echo %R%[92m Editing regedit records.%R%[0m
:: Defender
Call :dword "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" "DisableNotifications" "1"
Call :dword "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" "DisableEnhancedNotifications" "1"
Call :dword "HKCU\SOFTWARE\Microsoft\Windows Security Health\State" "AccountProtection_MicrosoftAccount_Disconnected" "0"
Call :dword "HKLM\SOFTWARE\Microsoft\Windows Defender" "DisableAntiSpyware" "1"
Call :dword "HKLM\SOFTWARE\Microsoft\Windows Defender" "DisableAntiVirus" "1"
Call :dword "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" "TamperProtection" "0"
Call :dword "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" "TamperProtectionSource" "2"
Call :dword "HKLM\SOFTWARE\Microsoft\Windows Defender\Signature Updates" "FirstAuGracePeriod" "0"
Call :dword "HKLM\SOFTWARE\Microsoft\Windows Defender\UX Configuration" "DisablePrivacyMode" "1"
Call :binary "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" "SecurityHealth" "030000000000000000000000"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\MRT" "DontOfferThroughWUAU" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\MRT" "DontReportInfectionInformation" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" "HideSystray" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" "DisableAntiSpyware" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" "PUAProtection" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" "RandomizeScheduleTaskTimes" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions" "DisableAutoExclusions" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\MpEngine" "MpEnablePus" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" "LocalSettingOverridePurgeItemsAfterDelay" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" "PurgeItemsAfterDelay" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableBehaviorMonitoring" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableIOAVProtection" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableOnAccessProtection" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRealtimeMonitoring" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRoutinelyTakingAction" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableScanOnRealtimeEnable" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" "Scan_ScheduleDay" "8"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" "Scan_ScheduleTime" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "AdditionalActionTimeOut" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "CriticalFailureTimeOut" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "DisableEnhancedNotifications" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "DisableGenericRePorts" 1
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "NonCriticalTimeOut" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "AvgCPULoadFactor" "10"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableArchiveScanning" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableCatchupFullScan" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableCatchupQuickScan" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableRemovableDriveScanning" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableRestorePoint" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableScanningMappedNetworkDrivesForFullScan" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableScanningNetworkFiles" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "PurgeItemsAfterDelay" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScanOnlyIfIdle" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScanParameters" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScheduleDay" 8
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScheduleTime" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "DisableUpdateOnStartupWithoutEngine" 1
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "ScheduleDay" 8
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "ScheduleTime" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "SignatureUpdateCatchupInterval" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SpyNet" "DisableBlockAtFirstSeen" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "LocalSettingOverrideSpynetReporting" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReporting" "0"
Call :multisz "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReportingLocation" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SubmitSamplesConsent" "2"
:: SmartScreen
::for "tokens=* USEBACKQ" %i in (`wmic.exe useraccount where "name="%username%"" get sid ^| findstr "S-"`) do set currentusername=%i
::set currentusername=%currentusername:~0,-3%
FOR /F "tokens=2" %%a in ('Powershell -command "Get-CimInstance -ClassName Win32_UserAccount | Select-Object -Property Name,SID" ^| Find "%username%"') do set currentusername=%%a
Call :dword "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" 0
Call :dword "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" 0
Call :dword "HKU\%currentusername%\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" 0
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" 0
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" 0
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" 0
Call :dword "HKLM\SOFTWARE\Microsoft\Windows Security Health\State" "AppAndBrowser_StoreAppsSmartScreenOff" 0
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "SmartScreenEnabled" /t REG_SZ /d "Off"
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "SmartScreenEnabled" /t REG_SZ /d "Off"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" "EnabledV9" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" "PreventOverride" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" "EnabledV9" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" "PreventOverride" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "EnableSmartScreen" "0"
Call :sz "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControl" "Anywhere"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControlEnabled" "0"
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "ContentEvaluation" 0
:: Update
Call :dword "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "IsExpedited" 0 & :: G�ncellemenin y�klenmesi gerekti�inde bilgisayar� m�mk�n olan en k�sa s�rede devre d��� b�rak
Call :dword "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "RestartNotificationsAllowed2" 0 & :: G�ncelleme sonras� yeniden ba�latma bildirimi devre d��� b�rak�l�yor...
Call :dword "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "ModelDownloadAllowed" 0 & :: Konu�ma modellerinin g�ncele�tirmeleri devre d��� b�rak�l�yor...
:: Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" "DODownloadMode" "100" & :: Teslimat Optimizasyonu BITS hizmeti olarak ayarlan�yor...
:: Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" 2 & :: Driverlar kurulu de�il ise kurulmas� i�in ayarlan�yor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "NoAutoUpdate" "0" & :: Update Manuel
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "AUOptions" "2" & :: Update Manuel
:: Cortana
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" "0"
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" "0" & :: Cortana - Oturum a�t���m cihazlar ge�mi�imi kullan
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" "0" & :: Cortana - Cihaz de�i�tirirken etkinlik �nerileri
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaConsent" "0"
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaceable" "1"
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaced" "1"
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "SearchboxTaskbarMode" "0"
Call :dword "HKU\.DEFAULT\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" "1"
Call :dword "HKU\.DEFAULT\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" "1"
Call :dword "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI" "EnableCortana" "0"
Call :dword "HKCU\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" "1"
Call :dword "HKCU\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" "1"
Call :dword "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" "0"
Call :dword "HKCU\SOFTWARE\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" "0"
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" "0"
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" "0"
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaConsent" "0"
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaceable" "1"
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaced" "1"
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "SearchboxTaskbarMode" "0"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\AboveLock" "AllowCortanaAboveLock" "0"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Experience" "AllowCortana" "0"
Call :dword "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "ModelDownloadAllowed" "0"
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" "AllowInputPersonalization" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCloudSearch" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortana" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortanaAboveLock" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchPrivacy" "3"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchSafeSearch" "3"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" "0"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" "1"
Call :dword "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" "AllowCortana" "0"
Call :dword "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" "AllowCortanaAboveLock" "0"
:: Taskbar
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowTaskViewButton" 0 & :: G�rev G�r�n�m� Simgesi Kald�r�l�yor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "MMTaskbarEnabled" 1 & :: G�rev �ubu�u ve b�t�n simgeleri t�m monit�rlerde g�ster
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "MMTaskbarMode" 0 & :: G�rev �ubu�u ve b�t�n simgeleri t�m monit�rlerde g�ster
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" "EnableTransparency" 0 & :: G�rev �ubu�u transparan �zelli�i devre d��� b�rak�l�yor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowCortanaButton" 0 & :: Cortana Butonu kald�r�l�yor...
:: Explorer
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "LaunchTo" 1 & :: Explorer "Bu Bilgisayar" olarak ayarlan�yor...
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" "EnthusiastMode" 1 & :: Dosya kopyalama ileti�im kutusuda daha fazla detay g�ster olarak ayarlan�yor...
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "HideFileExt" 0 & :: Dosya uzant�lar� aktifle�tiriliyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" "DisableAutoplay" 1 & :: Otomatik oynatma kapat�l�yor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoRecentDocsHistory" 0 & :: Son a��lan belgelerin ge�mi�i kapat�l�yor...
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "ClearRecentDocsOnExit" 1 & :: Windows'u kapat�rken yeni a��lan belgelerin ge�mi�ini temizle aktifle�tiriliyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowRecent" 0 & :: Son kullan�lan dosyalar�n h�zl� eri�imde g�r�nt�lenmesi engelleniyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowFrequent" 0 & :: H�zl� Eri�imden S�k Kullan�lan klas�rler kald�r�l�yor
:: Call :binary "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "Link" "00000000" & :: K�sayol yaz�s� kald�r�l�yor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoInternetOpenWith" 1 & :: Birlikte a� se�ene�inden internette ara se�ene�i kald�r�l�yor...
:: Search
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" 1 & :: Arama b�l�m� simge haline getiriliyor
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" 1 & :: Web aramas� kapat�l�yor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" 0 & :: Web'de arama yapmay�n veya Arama'da web sonu�lar�n� g�r�nt�lemeyin
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowIndexingEncryptedStoresOrItems" 0 & :: �ifrelenmi� dosyalar�n indekslenme izni kald�r�l�yor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" 0 & :: Arama ve Cortana'n�n Locationu kullanma izni kapat�l�yor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AlwaysUseAutoLangDetection" 0 & :: ��eri�i ve �zellikleri dizine eklerken her zaman otomatik dil alg�lamay� kullan�n kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaConsent" 0 & :: Cortana izni kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaInAmbientMode" 0 & :: Cortana Ortam modu kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "AllowSearchToUseLocation" 0 & :: Arama b�l�m�n�n Locationu kullanmas� engelleniyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" "SafeSearchMode" 0 & :: G�venli arama modu kapat�l�yor.
Call :dword "HKCU\Software\Policies\Microsoft\Windows\Explorer" "DisableSearchBoxSuggestions" 1 & :: Dosya Gezgini arama kutusundaki son arama giri�lerinin g�r�nt�lenmesini kapat�n
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" 1 & :: Web aramas� kapat�l�yor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" 0 & :: Tarifeli ba�lant�lar �zerinden aramada web'de arama yapmay�n veya web sonu�lar�n� g�r�nt�lemeyin
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCloudSearch" 0 & :: Bulut arama kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "AcceptedPrivacyPolicy" 0 & :: Gizlilik politikas� devre d��� b�rak�l�yor.
Call :dword "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "VoiceActivationDefaultOn" 0 & :: Sesle etkinle�tirme kapat�l�yor.
Call :dword "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "VoiceActivationEnableAboveLockscreen" 0 & :: Kilit Ekran�n�n �st�nde Sesle Etkinle�tirme kapat�l�yor.
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" "DisableVoice" 1 & :: Ses etkinle�tirme kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "BingSearchEnabled" 0 & :: Arama - Bing web sonu�lar�n� dahil et kapat�l�yor...
:: Optimizasyon
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" 0 & :: Hiberboot Devre D��� b�rak�l�yor
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" 0 & :: Haz�rda bekletme �zelli�i devre d��� b�rak�l�yor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" "ShowHibernateOption" 0 & :: Kapatma men�s� - Hibernate kapat�l�yor.
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" "ShippedWithReserves" 0 & :: Ayr�lm�� depolama alan� devre d��� b�rak�l�yor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" 0 & :: Prefetch devre d��� b�rak�l�yor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" 0 & :: Prefetch devre d��� b�rak�l�yor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" 0 & :: Startup Delay (Ba�lang�� Gecikmesi) devre d��� b�rak�l�yor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" 0 & :: Qos Limiti Devre D��� b�rak�l�yor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" "LongPathsEnabled" 1 & :: Windows 255 Karakter S�n�r� devre d��� b�rak�l�yor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" 0 & :: DiagTrack Devre D��� b�rak�l�yor...
:: Call :dword "HKCU\Software\Microsoft\Narrator\QuickStart" "SkipQuickStart" 1 & :: Narrator QuickStart kapat�l�yor.
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SoftLandingEnabled" 0 & :: Windows �nerileri devre d��� b�rak�l�yor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-310093Enabled" 0 & :: Windows kar��lama deneyimi kapat�l�yor...
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisablePCA" 1 & :: Program uyumluluk yard�mc�s� devre d��� b�rak�l�yor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "HwSchMode" 2 & :: Donan�m h�zland�rmal� GPU Planlamas� aktifle�tiriliyor...
:: Call :sz "HKCU\Control Panel\Mouse" "MouseSpeed" 0 & :: ��aret�i hassasiyeti devre d��� b�rak�l�yor...
Call :sz "HKCU\Control Panel\Desktop" "AutoEndTasks" 1 & :: Kapatma i�leminde uygulamalar a��k ise otomatik kapat ve bekleme s�resi azalt�l�yor
Call :sz "HKCU\Control Panel\Desktop" "HungAppTimeout" "1000" & :: Uygulamalar cevap vermedi�i zaman g�revi sonland�r se�ene�ine bas�lmadan �nceki bekleme s�resini k�salt�r.
Call :sz "HKCU\Control Panel\Desktop" "WaitToKillAppTime" "2000" & :: Bilgisayar kapat�l�rken ya da oturumdan ��k�l�rken kullan�c� uygulamalar�n�n kapat�lmas� i�in sistem bekleme s�resini k�salt�r.
Call :sz "HKCU\Control Panel\Desktop" "LowLevelHooksTimeout" "1000" & :: Cevap vermeyen hizmetlerin kapat�lmas�ndan �nceki sistem bekleme s�resini k�salt�r.
Call :sz "HKLM\SYSTEM\CurrentControlSet\Control" "WaitToKillServiceTimeout" "2000" & :: Bilgisayar�n kapat�lmas� s�ras�nda durdurulacak hizmetler uyar�s� geldi�inde, uygulamalar�n kapanmas� i�in beklenen s�reyi k�salt�r.
Call :sz "HKCU\Control Panel\Desktop" "MenuShowDelay" "8" & :: Men� g�sterimi bekleme s�resini azalt�r. B�ylelikle t�kland��� zaman men�ler daha h�zl� gelecek.
Call :sz "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoLowDiskSpaceChecks" 1 & :: D���k Depolama alan� uyar�s� devre d��� b�rak�l�yor...
Call :sz "HKCU\Control Panel\Mouse" "MouseHoverTime" 8 & :: Farenizle birlikte bir nesnenin �zerine geldi�inizde g�r�len a��klaman�n ��k�� s�resini k�salt�r
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "LinkResolveIgnoreLinkInfo" 1 & :: Bilgisayar�n�zda mevcut olmayan programlara ait k�sayollar�n ba�lant�s�n�n Windows taraf�ndan bo�a vakit harcanarak aranmas�n� �nler
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveSearch" 1 & :: K�sayol ba�lant� sorununu ��zmek i�in Windows'un diski aramas�n� �nler
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveTrack" 1 & :: K�sayol ba�lant� sorununu ��zmek i�in Windows'un NTFS dosya sisteminin izleme �zelli�ini kullanmas�n� engeller
:: Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours" "Enable" 1 & :: Odak Yard�m� aktifle�tiriliyor
:: Store
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "ContentDeliveryAllowed" 0 & :: 3.Parti Market uygulamalar�n�n yeniden y�klenmesi engelleyen b�l�m
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "FeatureManagementEnabled" 0 & :: 3.Parti Market uygulamalar�n�n yeniden y�klenmesi engelleyen b�l�m
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEverEnabled" 0 & :: 3.Parti Market uygulamalar�n�n yeniden y�klenmesi engelleyen b�l�m
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "OemPreInstalledAppsEnabled" 0 & :: �nceden y�klenmi� OEM uygulamalar devre d��� b�rak�l�yor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEnabled" 0 & :: �nceden y�klenmi� OEM uygulamalar (Minecraft, CandyCrush, Flipboard) kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SilentInstalledAppsEnabled" 0 & :: �nerilen uygulamalar� otomatik olarak y�kleyin kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-314559Enabled" 0 & :: �nerilen uygulamalar� otomatik olarak y�kleyin kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338387Enabled" 0 & :: �nerilen uygulamalar� otomatik olarak y�kleyin kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338388Enabled" 0 & :: �nerilen uygulamalar� otomatik olarak y�kleyin kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338389Enabled" 0 & :: �nerilen uygulamalar� otomatik olarak y�kleyin kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" 0 & :: �nerilen uygulamalar� otomatik olarak y�kleyin kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContentEnabled" 0 & :: �nerilen uygulamalar� otomatik olarak y�kleyin kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPane RecommendionsEnabled" 0 & :: �nerilen uygulamalar� otomatik olarak y�kleyin kapat�l�yor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "AutoDownload" 2 & :: Market otomatik g�ncelle�tirme kapat�r.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" 1 & :: Market otomatik g�ncelle�tirme kapat�r.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "Migrated" 4 & :: Uygulamalar�n arka planda �al��mas� engelleniyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "GlobalUserDisabled" 1 & :: Uygulamalar�n arka planda �al��mas� engelleniyor...
:: Gizlilik
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" 0 & :: Ayarlar uygulamas�n �nerilen i�eri�i g�stermesi kapat�l�yor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353694Enabled" 0 & :: Ayarlar uygulamas�n �nerilen i�eri�i g�stermesi kapat�l�yor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353696Enabled" 0 & :: Ayarlar uygulamas�n �nerilen i�eri�i g�stermesi kapat�l�yor...
Call :dword "HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache" "OsuRegistrationStatus" 0 & :: Ba�lanmak i�in Hotspot 2.0 �evrimi�i kaydolmay� kullan�n kapat�l�yor
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackProgs" 0 & :: Ba�lang�� ve arama sonu�lar�n� iyile�tirmek i�in Windows izleme uygulamas�n�n ba�lat�lmas�na izin verin kapat�l�yor
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPaneSuggestionsEnabled" 0 & :: Ba�lang��taki ara s�ra �neriler kapat�l�yor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" "ScoobeSystemSettingEnabled" 0 & :: Cihaz�m�n kurulumunu �evrimi�i olarak tamamlayabilece�im yollar �ner kapat�l�yor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableCloudOptimizedContent" 1 & :: Programlanabilir G�rev �ubu�u �zelli�i devre d��� b�rak�l�yor.
Call :dword "HKCU\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" "OptInOrOutPreference" 0 & :: Deneyim geli�tirme program�na izin ver(NVIDIA S�r�c�s�) kapat�l�yor...
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowExperimentation" 0 & :: Deneylere izin ver kapat�l�yor
Call :dword "HKCU\SOFTWARE\Microsoft\Input\TIPC" "Enabled" 0 & :: Gelecekte yazmay� iyile�tirmenize yard�mc� olmas� i�in nas�l yazd���m hakk�nda Microsoft'a bilgi g�nderme kapat�l�yor.
Call :dword "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" 0 & :: Geri Bildirim frekans� kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" 0 & :: Giri� verilerinizi Microsoft'a g�ndererek konu�ma, yazma ve m�rekkepleme giri�inizi ki�iselle�tirin kapat�l�yor
Call :dword "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts " 0 & :: Giri� verilerinizi Microsoft'a g�ndererek konu�ma, yazma ve m�rekkepleme giri�inizi ki�iselle�tirin kapat�l�yor
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowLocation" 0 & :: Konum Hizmetlerini kapat�l�yor...
Call :dword "HKCU\Control Panel\International\User Profile" "HttpAcceptLanguageOptOut" 1 & :: Kullan�c� dil listesine eri�erek web sitelerinin yerel olarak alakal� i�erik sa�lamas� engelleniyor.
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" "UserAuthPolicy" 0 & :: Kullan�c�n�n di�er cihazlardaki uygulamalar� a�mas� engelleniyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" "FPEnabled" 0 & :: Okumay� iyile�tirmek, taramay� h�zland�rmak i�in sayfa tahminini kullan�n. G�z Atma Verilerinin Microsoft'a G�nderilmesi engelleniyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" "Skype-UserConsentAccepted" 0 & :: Skype Ki�iler ba�lant�s� devre d��� b�rak�l�yor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" 1 & :: Sponsorlu uygulamalar�n otomatik kurulumu (T�ketici Deneyimi)
Call :dword "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" 1 & :: Sponsorlu uygulamalar�n otomatik kurulumu (T�ketici Deneyimi)
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" 0 & :: Tan�lama verilerinizi kullanarak Microsoft'un ilgili ipu�lar� ve �nerilerle daha �zel deneyimler sunmas�na izin verin.
Call :dword "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" 0 & :: Tan�lama verilerinizi kullanarak Microsoft'un ilgili ipu�lar� ve �nerilerle daha �zel deneyimler sunmas�na izin verin.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" 0 & :: Telemetry Devre D��� b�rak�l�yor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy" 1 & :: Uygulamalar�n uygulamalardaki deneyimler i�in kullan�c� reklam kimli�ini kullanmas� engelleniyor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" 0 & :: Windows ve Cortana'n�n sizi daha iyi anlamas�na izin vermek i�in ki�ileri toplama kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" 1 & :: Windows ve Cortana'n�n sizi daha iyi anlamas�na izin vermek i�in yaz�l� metin (m�rekkep) toplay�n kapat�l�yor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" 1 & :: Windows ve Cortana'n�n sizi daha iyi anlamas�na izin vermek i�in yaz�l� metni toplay�n.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "EnableActivityFeed" 0 & :: Windows'un bu bilgisayardan etkinliklerimi toplamas�na izin ver (Zaman �izelgesi)
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackDocs" 0 & :: Windows'un s��rama listelerini doldurmak i�in a��lan belgeleri izlemesi kapat�l�yor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" "AllowInputPersonalization" 0 & :: �evrimi�i konu�ma hizmetleri devre d��� b�rak�l�yor...
Call :dword "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" "WiFiSenseOpen" 0 & :: �nerilen a��k s�cak noktalara otomatik ba�lan kapat�l�yor.
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" "value" 0 :: �nerilen a��k s�cak noktalara otomatik ba�lan kapat�l�yor.
Call :dword "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" "PaidWifi" 0 & :: �cretli a� hizmetlerinin mevcut olup olmad���n� g�rmek i�in ge�ici olarak eri�im noktalar�na otomatik olarak ba�lanma kapat�l�yor.
Call :dword "HKCU\SOFTWARE\Microsoft\Input\Settings" "InsightsEnabled" 0 & :: ��g�r�sel yazma engelleniyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" "DisableFileSyncNGSC" 1 & :: OneDrive E�itlemesi devre d��� b�rak�l�yor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" "Start" 0 & :: AutoLogger devre d��� b�rak�l�yor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" 1 & :: Windows Hata Raporlama devre d��� b�rak�l�yor...
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" 0 & :: Wifi Hotspot Raporlama devre d��� b�rak�l�yor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" 0 & :: Windows Reklam Kimli�ini devre d��� b�rak�l�yor...
Call :dword "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" 0 & :: M��teri Deneyim Program� devre d��� b�rak�r�l�yor...
Call :delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" & ::Metadata izleme dosyalar� kald�r�l�yor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "PublishUserActivities" 0 & :: Windows'un bilgisayardaki etkinlikleri toplamas� engelleniyor...
Call :dword "HKLM\Software\Policies\Microsoft\Windows\System" "EnableActivityFeed" 0 & :: Windows'un bilgisayardaki etkinlikleri toplamas� engelleniyor...
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Start" "HideRecentJumplists" 1 & :: Atlama Listelerinde en son a��lan ��eler engelleniyor...
Call :dword "HKCU\Software\Policies\Microsoft\Windows\Explorer\NoBalloonFeatureAdvertisements" "NoBalloonFeatureAdvertisements" 1 & :: �zellik reklam balonu bildirimlerini kapat�l�yor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" "PreventHandwritingErrorReports" 1 & :: El yaz�s� hata raporlar�n�n payla��m�n� devre d��� b�rak 
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" "PreventHandwritingDataSharing" 1 & :: El yaz�s� verilerinin payla��m�n� devre d��� b�rak
:: Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableInventory" 1 & :: Envanter Toplay�c�y� Devre D��� B�rak
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "01" "0" & :: Depolama alg�s�
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "04" "0" & :: Depolama alg�s� - Uygulamalar�n kullanmad��� ge�ici dosyalar� sil
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "256" "0" & :: Geri d�n���m kutusu uzun s�re doluysa temizle
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "512" "0" & :: Depolama alg�s�
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "2048" "0" & :: �ndirilen klas�r�nde uzun s�re duran dosyalar� sil

bcdedit /deletevalue useplatformclock > NUL 2>&1
bcdedit /set {current} recoveryenabled no > NUL 2>&1
powercfg /h off > NUL 2>&1
bcdedit /set useplatformtick yes > NUL 2>&1
bcdedit /set disabledynamictick yes > NUL 2>&1

echo %R%[92m Adjustments are made in the task scheduler%R%[0m
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Maps\MapsToastTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /DISABLE  > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\DiskCleanup\SilentCleanup" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Time Zone\SynchronizeTimeZone" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\WaaSMedic\PerformRemediation" /DISABLE > NUL 2>&1
echo %R%[92m Process completed%R%[0m
timeout /t 2 /nobreak > NUL
goto menu

:: ������������������������������������������������������������������������������������������������������������������������������������������������������������������������

:PingMeter
Call :Location
echo [%date% - %time%] ^| UpdateAfter ^| Ping �l�er �al��t�r�ld�. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Extra\PingMeter.bat'"
goto :eof

:: ========================================================================================================

:SistemHakkinda
Call :Location
echo [%date% - %time%] ^| SistemHakkinda ^| Sistem hakk�nda b�l�m� �al��t�r�ld�. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Extra\System.Info.bat'"
goto :eof

:: ========================================================================================================

:FoldertoISO
Call :Location
echo [%date% - %time%] ^| FoldertoISO ^| Folder to ISO yaz�l�m� �al��t�r�ld�. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Files\Folder2Iso\Folder2Iso.exe'"
goto :eof

:: ========================================================================================================

:WindowsEditor
Call :Location
echo [%date% - %time%] ^| WindowsEditor ^| Windows D�zenleme b�l�m� �al��t�r�ld�. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Extra\Windows.Editor.bat'
goto :eof

:: ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

:PowerRun
Call :Location
dir /b "%Location%\Files\PowerRun.exe" > NUL 2>&1
	if %errorlevel%==1 (:: echo %R%[1;97m%R%[41m HATA! PowerRun.exe dosyas� bulunamad�. Yeniden indiriliyor... %R%[0m
						Call :Logss "PowerRun indiriliyor" "PowerRun.exe dosyas� bulunamad�. Yeniden indirildi."
						%Location%\Files\wget.exe --no-check-certificate "https://docs.google.com/uc?export=download&id=10UikjZGEvcnB9j6gDYmURZhmhruiKbfK" -O "%Location%\Download\PowerRun.zip" > NUL 2>&1
						powershell -command "Expand-Archive -Force '%Location%\Download\PowerRun.zip' '%Location%\Files'"
						timeout /t 1 /nobreak > NUL)
						
set PowerRun=%Location%\Files\PowerRun.exe /SW:0 %SystemRoot%\system32\cmd.exe /c
goto :EOF

:: ========================================================================================================

:Location
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
goto :EOF

:: ========================================================================================================

:Logs
Call :Location
set Logs=%Location%\Edit\Logs
goto :eof

:: ========================================================================================================

:ExplorerReset
taskkill /f /im explorer.exe > NUL 2>&1
powershell -command "Start-Process 'C:\Windows\explorer.exe'"
goto :EOF

:: ========================================================================================================

:kontroll
cls
FOR /F "tokens=5" %%i in ('FIND "Caption" %Logs%\OS.txt') do SET caption3=%%i
	if %caption3%==11 GOTO Win11SettingsMenu
	if %caption3%==10 GOTO Win10SettingsMenu
) else
	exit

:: ========================================================================================================

:Logss
echo [%date% - %time%] ^| %~1 ^| %~2 >> %Location%\Logs
goto :eof
:: --------------------------------------------------------------------------------------------
:: %~1: B�l�m ad� | %~2: Bilgi k�sm�
:: --------------------------------------------------------------------------------------------

:: ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
:: --------------------------------------------------------------------------------------------
:: �lerleme �ubu�u konusunda yard�mc� olan KaanBeyhan'a te�ekk�r ederim.
:: --------------------------------------------------------------------------------------------
:wget
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                   No Internet connection                                   %R%[0m
						echo [%date% - %time%] ^| wget ^| HATA! �nternet ba�lant�s� yok. "%~2" / "%~1" / "%download%" >> %Location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget ^| "%~2" indirildi. "%~1" / "%download%" >> %Location%\Logs
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%~1" -O %download%\%~2"
"%download%\%~2" %~3
goto :eof

:: ========================================================================================================
:: %~1= Link | %~2= �ndirme ismi  | %~3= Sessiz kurulum parametresi
:: ========================================================================================================

:: ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

:wget2
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                   No Internet connection                                   %R%[0m
						echo [%date% - %time%] ^| wget2 ^| HATA! �nternet ba�lant�s� yok. "%~2" / "%~1" / "%download%" >> %Location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget2 ^| "%~2" indirildi. "%~1" / "%download%" >> %Location%\Logs
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%~1" -O %download%\%~2
goto :eof

:: ========================================================================================================
:: %~1= Link | %~2= �ndirme ismi 
:: ========================================================================================================

:: ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

:wget3
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                   No Internet connection                                   %R%[0m
						echo [%date% - %time%] ^| wget3 ^| HATA! �nternet ba�lant�s� yok. "%~2" / "%~1" >> %Location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget3 ^| "%~2" indirildi. "%~1" >> %Location%\Logs
%Location%\Files\wget -c -q --no-check-certificate --show-progress "%~1" -O %~2
goto :eof

:: ========================================================================================================
:: %~1= Link | %~2= Masa�st� Locationu ve ismi
:: ========================================================================================================

:: ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

:ZipExport
echo [%date% - %time%] ^| ZipExport ^| "%~1" dosyas� "%download%\%~n1" ��kar�ld�.  >> %Location%\Logs
powershell -command "Expand-Archive -Force '%download%\%~1' '%download%\%~n1'" 
goto :eof

:: ========================================================================================================
:: %~1= Dosya yolu | %~n1= Dosya ismi
:: ========================================================================================================
 
 :: ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
 
:netkontrol
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                   No Internet connection                                   %R%[0m
						echo   %R%[1;97m%R%[41m             Wget.exe could not be downloaded, you will get error on downloads              %R%[0m
						Call :Logss "wgetyok" "HATA! �nternet ba�lant�s� olmad��� i�in wget.exe indirilemedi."
						timeout /t 5 /nobreak > NUL
						goto :eof)
goto :eof

:: ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

:key
reg add "%~1" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /f)
goto :eof

:dword
reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f)
goto :eof

:binary
reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f)
goto :eof

:sz
reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f)
goto :eof

:vesz
reg add "%~1" /ve /t REG_SZ /d "%~2" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /ve /t REG_SZ /d "%~2" /f)
goto :eof

:multisz
reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f)
goto :eof

:expandsz
reg add "%~1" /v "%~2" /t REG_EXPAND_SZ /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_EXPAND_SZ /d "%~3" /f)
goto :eof

:delete
reg delete "%~1" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg delete "%~1" /f)
goto :eof

:delete2
reg delete "%~1" /v "%~2" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg delete "%~1" /v "%~2" /f)
goto :eof

:: ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set R=%%b
  exit /B 0
)
exit /B 0

:ColorEnd2
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set C=%%b
  exit /B 0
)
exit /B 0

