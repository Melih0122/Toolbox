::                               NOTEPAD++ > Kodlama > Karakter Takm > Trk‡e > OEM857
:: ==============================================================================================================================
::
::       şşşşşşş   şşşşşş   şş    şş şşşş şşşşşşşş  şşşşşşş  şşşşşşşş  şşşşşşşş şş    şş şş    şş  şşşşşş
::      şş     şş şş    şş  şşş   şş  şş     şş    şş     şş şş     şş şş       şşş   şş şş   şş  şş    ş
::      şş     şş şş        şşşş  şş  şş     şş    şş     şş şş     şş şş       şşşş  şş şş  şş   şş
::      şş     şş şş   şşşş şş şş şş  şş     şş    şş     şş şşşşşşşş  şşşşşş   şş şş şş şşşşş      şşşşşş 
::      şş     şş şş    şş  şş  şşşş  şş     şş    şş     şş şş   şş   şş       şş  şşşş şş  şş         şş
::      şş     şş şş    şş  şş   şşş  şş     şş    şş     şş şş    şş  şş       şş   şşş şş   şş  şş    şş
::       şşşşşşş   şşşşşş   şş    şş şşşş    şş     şşşşşşş  şş     şş şşşşşşşş şş    şş şş    şş  şşşşşş 
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
::  Projeye katkda bulunanlar;
::  ---------------------------
::   Eray Trkay
::  ----------------------
::     Sistem Hakknda - RAM soket yapsnn eklenmesi.
::    	Sistem Hakknda - Sistem format tarihinin eklenmesi.
::  ----------------------
::   KaanBeyhan [DOGGEST]
::  ----------------------
::     ˜ndirme iŸlemlerinde ilerleme ‡ubu§unun eklenmesi.
::     Oyun ve GPU optimizasyon b”lmnn eklenmesi. 
::  ---------
::   Archley
::  ---------
:: 	   Wifi Crack ‡alŸmasnn toolbox'a eklenmesi. 
::
:: ==============================================================================================================================
echo off
cls

setlocal
Call :ColorEnd
Call :ColorEnd2

:: ==============================================================================================================================
::  RENK HAR˜TASI
::  -------------
:: ^%C%^[33m > Sar renkli b”lmler. Men i‡indeki sar renkli b”lmler
:: ^%C%^[36m > Mavi renkli b”lmler. Men i‡indeki mavi renkli b”lmler
:: ^%C%^[37m > Beyaz renkli b”lmler. Men i‡indeki beyaz renkli b”lmler
:: ^%C%^[90m > Gri renkli b”lmler. Men i‡indeki gri renkli b”lmler(€er‡eveler dahil de§il)
:: ^%C%^[92m > De§iŸken rengi (YeŸil). Kullancdan bir de§er girmesi istenilen b”lmlere aittir.
:: ^%C%^[96m > ˜kinci de§iŸken rengi (A‡k Mavi) | Menye yansyan bilgi mesajlar. Ana ekrana dŸecek olan ikinci de§iŸken b”lmlerine aittir.
::
:: ^%R%^[41m > Hata mesajlar dolgu rengi (krmz)
:: ^%R%^[32m > ˜Ÿlem (yeŸil) numara rengidir. Men i‡indeki iŸlem numaralardr.
:: ^%R%^[36m > Menye d”n renk ayardr. Menye d”n b”lmlerinin renk ayardr.
:: ^%R%^[100m > BaŸlk b”lmlerinde arka plan dolduran renktir.
:: ^%R%^[1;97m > BaŸlkta dolgu b”lmnn i‡inde yer alan yaz rengidir. 1; b”lm kaln yazmasn sa§lar. 97m beyaz renk yazmasn sa§lar.
:: ^%R%^[90m > €er‡eveleri ve | iŸaretlerinin rengini de§iŸir.
:: 
:: ==============================================================================================================================

:AdminKontrol
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo 
echo 
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº                                                         º%R%[0m
echo  %R%[90mº%R%[1;97m%R%[41m               ! UYARI !           ! UYARI !             %R%[0m%R%[90mº%R%[0m
echo  %R%[90mº                                                         º%R%[0m
echo  %R%[90mº%R%[1;97m%R%[41m           Sa§-Tk Y”netici olarak ‡alŸtrnz          %R%[0m%R%[90mº%R%[0m
echo  %R%[90mº                                                         º%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo 
echo             %R%[92mKapatmak i‡in herhangi bir tuŸa basnz.%R%[0m 
pause > nul
exit
)
mode con cols=96 lines=37 
:: ==============================================================================================================================
::                                                  DOWNLOAD KONUM B™LšMš
::
::   Download Locationunu de§iŸtirmek istiyorsanz;
::   set download= eŸittirden sonra klas”r yolunu yazn.
::   Varsaylan olarak Toolbox klas”r i‡ine ykler.

call :Logs
set download=%Location%\Download

:: ==============================================================================================================================
:: Toolbox i‡in gerekli klas”rler oluŸturuluyor.
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
:: Wget.exe yazlmlar baz antivirs yazlmlar tarafndan virs olarak alglanmaktadr. 
:: Bu tarz bir durumda wget.exe dosyas silinirse indirme iŸlemleri ger‡ekleŸtirilemez.
:: AŸa§daki komut ile wget dosyasnn olup olmad§n kontrol ediyorum. Hata vermesi durumunda Powershell komutuyle yeniden indiriyorum.
dir /b "%Location%\Files\wget.exe" > NUL 2>&1
	if %errorlevel%==1 (echo [%date% - %time%] ^| Wget indiriliyor ^| Wget.exe dosyas bulunamad. Yeniden indirildi. >> %Location%\Logs
						echo   %R%[1;97m%R%[41m                                Wget.exe dosyas bulunamad                                 %R%[0m
						echo   %R%[1;97m%R%[42m                                    Yeniden indiriliyor                                     %R%[0m
						Call :netkontrol
						powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.2/64/wget.exe -OutFile %Location%\Files\wget.exe }")

:: ==============================================================================================================================

:: Wmic.exe Windows 11 yeni srmlerinde silindi§i i‡in PowerShell zerinden bilgi alnacak. Buras eski komutlardr.
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

:: Ana ekranda yer alan Kullanc ad, iŸletim sistemi gibi bilgiler alnr. 
Powershell -command "Get-CimInstance Win32_OperatingSystem | Select-Object Caption,InstallDate,OSArchitecture,RegisteredUser,CSName | FL" > %Logs%\OS.txt
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption=%%a
set caption=%caption:~11%
FOR /F "tokens=2 delims=':'" %%b in ('FIND "RegisteredUser" %Logs%\OS.txt') do set registereduser=%%b
FOR /F "tokens=2 delims=':'" %%c in ('FIND "CSName" %Logs%\OS.txt') do set pcname=%%c
FOR /F "tokens=3" %%d in ('FIND "OSArchitecture" %Logs%\OS.txt') do set osarch=%%d


FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version"') do set isderleme=%%f
set isderleme=%isderleme:~5%
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion"') do set ImageBuild=%%f
for /f "tokens=2 delims='('" %%f in ('powercfg -list ^| findstr /C:"*"') do set gucc=%%f
set gucc=%gucc:~0,-3%


:: Men i‡inde sisteme g”re ayarlama yapyorum
FOR /F "tokens=5" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption2=%%a 
	if %caption2%==10 (set editmenu=Windows 10 Edit)
	if %caption2%==11 (set editmenu=Windows 11 Edit)
	
:: Y”nlendirme b”lmn sisteme g”re ayarlyorum.
echo %caption2% > NUL
	if %caption2%==10 (set editmenugo=Win10SettingsMenu) 
	if %caption2%==11 (set editmenugo=Win11SettingsMenu)

set version=2.5

::set editmenu=Windows 11 Edit
::set editmenugo=Win11SettingsMenu

:: ==============================================================================================================================
Find "OGNITORENKS TOOLBOX %version%" %Location%\Logs > NUL 2>&1
	if %errorlevel%==1 ((
					    echo.
						echo ---------------------------------------------------------------------------------------------------------------------------
						echo [%date% - %time%] OgnitorenKs Toolbox baŸlatld.
						echo  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
						echo  º OGNITORENKS TOOLBOX %version% ^| USER:%registereduser% ^| PC-Name:%pcname%
						echo  º OS: %caption% ^| x%osarch% ^| %ImageBuild% ^| %isderleme% ^| G‡: %gucc%
						echo  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
						echo ---------------------------------------------------------------------------------------------------------------------------
						) >> %Location%\Logs
						)

:: ==============================================================================================================================

:menu
cls
mode con cols=96 lines=37 
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %version% %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m	
echo   %R%[90mº%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m G‡:%R%[37m %gucc% %R%[0m	
echo   %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo   %R%[90mº%R%[32m  1.%C%[37m All In One Runtimes%C%[0m  %R%[90mº%R%[0m %R%[32m 27.%C%[36m Kdenlive%C%[0m               %R%[90mº%R%[0m          %R%[92m BONUS%R%[0m               %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  2.%C%[33m Discord%C%[0m              %R%[90mº%R%[0m %R%[32m 28.%C%[36m OpenShot%C%[0m               %R%[90mº%R%[32m 53.%C%[36m %editmenu%%R%[0m             %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  3.%C%[33m Whatsapp%C%[0m             %R%[90mº%R%[0m %R%[32m 29.%C%[36m Shotcut%C%[0m                %R%[90mº%R%[32m 54.%C%[33m Hizmetleri Y”net%C%[0m            %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  4.%C%[33m Signal%C%[0m               %R%[90mº%R%[0m %R%[32m 30.%C%[36m Krita%C%[0m                  %R%[90mº%R%[32m 55.%C%[33m ICO Fix%C%[0m                     %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  5.%C%[33m Telegram%C%[0m             %R%[90mº%R%[0m %R%[32m 31.%C%[36m Gimp%C%[0m                   %R%[90mº%R%[32m 56.%C%[37m Windows Edit”r%C%[0m              %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  6.%C%[33m Microsoft Teams%C%[0m      %R%[90mº%R%[0m %R%[32m 32.%C%[36m OBS Studio%C%[0m             %R%[90mº%R%[32m 57.%C%[33m Gncelleme Sonras Temizlik%C%[0m %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  7.%C%[33m Zoom%C%[0m                 %R%[90mº%R%[0m %R%[32m 33.%C%[36m ShareX%C%[0m                 %R%[90mº%R%[32m 58.%C%[33m Sistem / Market Onar%C%[0m        %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  8.%C%[36m EpicGames%C%[0m            %R%[90mº%R%[0m %R%[32m 34.%C%[36m Audacity%C%[0m               %R%[90mº%R%[32m 59.%C%[33m PC Temizle%C%[0m                  %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  9.%C%[36m Steam%C%[0m                %R%[90mº%R%[0m %R%[32m 35.%C%[36m K-Lite Codec%C%[0m           %R%[90mº%R%[32m 60.%C%[36m Appx Y”netici%C%[0m               %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 10.%C%[36m GOG Galaxy%C%[0m           %R%[90mº%R%[0m %R%[32m 36.%C%[36m VLC Media Player%C%[0m       %R%[90mº%R%[32m 61.%C%[36m Folder to ISO%C%[0m               %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 11.%C%[36m Uplay%C%[0m                %R%[90mº%R%[0m %R%[32m 37.%C%[36m Aimp%C%[0m                   %R%[90mº%R%[32m 62.%C%[33m Fat32 to NTFS%C%[0m               %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 12.%C%[36m Origin%C%[0m               %R%[90mº%R%[0m %R%[32m 38.%C%[36m Any Video Converter%C%[0m    %R%[90mº%R%[32m 63.%C%[33m Ping ™l‡er%C%[0m                  %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 13.%C%[36m Cheat Engine%C%[0m         %R%[90mº%R%[0m %R%[32m 39.%C%[33m Free Download Manager%C%[0m  %R%[90mº%R%[32m 64.%C%[33m Lisans Y”netimi%C%[0m             %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 14.%C%[36m Wemod%C%[0m                %R%[90mº%R%[0m %R%[32m 40.%C%[33m ˜nt Download Manager%C%[0m   %R%[90mº%R%[32m 65.%C%[33m Kullanc Hesap Y”netimi%C%[0m     %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 15.%C%[33m Google Chrome%C%[0m        %R%[90mº%R%[0m %R%[32m 41.%C%[33m ByClick Downloader%C%[0m     %R%[90mº%R%[32m 66.%C%[33m Sistem Hakknda%C%[0m             %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 16.%C%[33m Mozilla Firefox%C%[0m      %R%[90mº%R%[0m %R%[32m 42.%C%[33m QbitTorrent%C%[0m            %R%[90mº%R%[32m 67.%C%[33m Wifi Crack%C%[0m                  %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 17.%C%[33m Brave%C%[0m                %R%[90mº%R%[0m %R%[32m 43.%C%[33m GlassWire%C%[0m              %R%[90mº%R%[32m 68.%C%[33m Zaman Ayarl PC Kapat%C%[0m       %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 18.%C%[33m Microsoft Edge%C%[0m       %R%[90mº%R%[0m %R%[32m 44.%C%[33m TeamViewer%C%[0m             %R%[90mº%R%[0m                                 %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 19.%C%[37m ISLC%C%[0m                 %R%[90mº%R%[0m %R%[32m 45.%C%[33m Hamachi%C%[0m                %R%[90mº%R%[0m                                 %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 20.%C%[37m MemReduct%C%[0m            %R%[90mº%R%[0m %R%[32m 46.%C%[33m Stremio%C%[0m                %R%[90mº%R%[0m                                 %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 21.%C%[36m Libre Office%C%[0m         %R%[90mº%R%[0m %R%[32m 47.%C%[36m MSI Afterburner%C%[0m        %R%[90mº%R%[0m                                 %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 22.%C%[36m Adobe Reader%C%[0m         %R%[90mº%R%[0m %R%[32m 48.%C%[36m Hibit Uninstaller%C%[0m      %R%[90mº%R%[0m                                 %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 23.%C%[36m PDF-XChange Edit”r%C%[0m   %R%[90mº%R%[0m %R%[32m 49.%C%[36m Wise Care 365%C%[0m          %R%[90mº%R%[0m                                 %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 24.%C%[36m Calibre%C%[0m              %R%[90mº%R%[0m %R%[32m 50.%C%[36m Unlocker%C%[0m               %R%[90mº%R%[32m 97.%C%[36m Toolbox Rehber%C%[0m              %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 25.%C%[33m 7 - Zip%C%[0m              %R%[90mº%R%[0m %R%[32m 51.%C%[36m SSD Booster%C%[0m            %R%[90mº%R%[32m 98.%C%[36m Toolbox Gncelle%C%[0m            %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 26.%C%[33m WinRAR%C%[0m               %R%[90mº%R%[0m %R%[32m 52.%C%[36m OpenShell%C%[0m              %R%[90mº%R%[32m 99.%C%[36m Toolbox Link Gncelle%C%[0m       %R%[90mº%R%[0m
echo   %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo   %R%[90mº%R%[0m %R%[32m X.%R%[37m Temizle ve Kapat%R%[0m       [%R%[1;97m%R%[100mognitorenks.blogspot.com%R%[0m]   %R%[32m  Z.%C%[37m Listeyi GeniŸlet ^>^>^>%R%[0m        %R%[90mº%R%[0m
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p menu= %C%[92m  ˜Ÿlem : %C%[0m
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
	if %menu%==60 (Call :AppxManager)
	if %menu%==61 (Call :FoldertoISO)
	if %menu%==62 (Call :Fat32toNTFS)
	if %menu%==63 (Call :PingMeter)
	if %menu%==64 GOTO Slmgrvbs
	if %menu%==65 GOTO AdminMenu
	if %menu%==66 (Call :SistemHakkinda)
	if %menu%==67 (Call :wificrackarchley)
	if %menu%==68 goto shutdownpc
	if %menu%==97 (start https://github.com/OgnitorenKs/OgnitorenKs.Toolbox&goto menu)
	if %menu%==98 (Call :Logss "Toolbox.Update" "Toolbox gncelleme arac ‡alŸtrld."
				   Powershell -command "Start-Process '%Location%\Extra\Toolbox.Update.bat'"&exit)
	if %menu%==99 (Call :Logss "Toolbox.Link.Update" "Toolbox linkler gncellendi."
				   %Location%\Files\wget -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=1BNmQ1JSes4hiFu3mPR4mJP10FNX68NxV" -O "%Download%\Links.zip"
				   DEL /F /Q /A "%Location%\Extra\Links.bat" > NUL 2>&1
				   Powershell -command "Expand-Archive -Force '%Download%\Links.zip' '%Location%\Extra'"
				   echo   %R%[1;97m%R%[42m                                    Linkler gncellendi                                     %R%[0m
				   timeout /t 2 /nobreak > NUL
				   goto menu)
	if %menu%==x (Call :Logss "Kalntlar.Temizle" "Download klas”r temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
	if %menu%==X (Call :Logss "Kalntlar.Temizle" "Download klas”r temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
) else
	goto menu
	
:: ==============================================================================================================================

:menu2
cls
mode con cols=96 lines=37 
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %version% %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m	
echo   %R%[90mº%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m G‡:%R%[37m %gucc% %R%[0m	
echo   %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo   %R%[90mº%R%[32m  1.%C%[37m All In One Runtimes%C%[0m  %R%[90mº%R%[0m %R%[32m 27.%C%[36m Kdenlive%C%[0m               %R%[90mº%R%[32m 53.%C%[36m Everything%C%[0m                  %R%[90mº%R%[0m  
echo   %R%[90mº%R%[32m  2.%C%[33m Discord%C%[0m              %R%[90mº%R%[0m %R%[32m 28.%C%[36m OpenShot%C%[0m               %R%[90mº%R%[32m 54.%C%[36m TaskbarX%C%[0m                    %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m  3.%C%[33m Whatsapp%C%[0m             %R%[90mº%R%[0m %R%[32m 29.%C%[36m Shotcut%C%[0m                %R%[90mº%R%[32m 55.%C%[36m Stellarium%C%[0m                  %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m  4.%C%[33m Signal%C%[0m               %R%[90mº%R%[0m %R%[32m 30.%C%[36m Krita%C%[0m                  %R%[90mº%R%[32m 56.%C%[36m Recuva%C%[0m                      %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m  5.%C%[33m Telegram%C%[0m             %R%[90mº%R%[0m %R%[32m 31.%C%[36m Gimp%C%[0m                   %R%[90mº%R%[32m 57.%C%[36m AOMEI Partiton Assistans%C%[0m    %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m  6.%C%[33m Microsoft Teams%C%[0m      %R%[90mº%R%[0m %R%[32m 32.%C%[36m OBS Studio%C%[0m             %R%[90mº%R%[32m 58.%C%[33m Python%C%[0m                      %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m  7.%C%[33m Zoom%C%[0m                 %R%[90mº%R%[0m %R%[32m 33.%C%[36m ShareX%C%[0m                 %R%[90mº%R%[32m 59.%C%[33m Phycharm%C%[0m                    %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m  8.%C%[36m EpicGames%C%[0m            %R%[90mº%R%[0m %R%[32m 34.%C%[36m Audacity%C%[0m               %R%[90mº%R%[32m 60.%C%[33m Notepad++%C%[0m                   %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m  9.%C%[36m Steam%C%[0m                %R%[90mº%R%[0m %R%[32m 35.%C%[36m K-Lite Codec%C%[0m           %R%[90mº%R%[32m 61.%C%[33m Visual Studio Code%C%[0m          %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 10.%C%[36m GOG Galaxy%C%[0m           %R%[90mº%R%[0m %R%[32m 36.%C%[36m VLC Media Player%C%[0m       %R%[90mº%R%[32m 62.%C%[33m Github%C%[0m                      %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 11.%C%[36m Uplay%C%[0m                %R%[90mº%R%[0m %R%[32m 37.%C%[36m Aimp%C%[0m                   %R%[90mº%R%[32m 63.%C%[33m Git%C%[0m                         %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 12.%C%[36m Origin%C%[0m               %R%[90mº%R%[0m %R%[32m 38.%C%[36m Any Video Converter%C%[0m    %R%[90mº%R%[32m 64.%C%[33m Blender%C%[0m                     %R%[90mº%R%[0m  
echo   %R%[90mº%R%[32m 13.%C%[36m Cheat Engine%C%[0m         %R%[90mº%R%[0m %R%[32m 39.%C%[33m Free Download Manager%C%[0m  %R%[90mº%R%[32m 65.%C%[36m Process Hacker 2%C%[0m            %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 14.%C%[36m Wemod%C%[0m                %R%[90mº%R%[0m %R%[32m 40.%C%[33m ˜nt Download Manager%C%[0m   %R%[90mº%R%[32m 66.%C%[36m %C%[0m                            %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 15.%C%[33m Google Chrome%C%[0m        %R%[90mº%R%[0m %R%[32m 41.%C%[33m ByClick Downloader%C%[0m     %R%[90mº%R%[32m 67.%C%[36m %C%[0m                            %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 16.%C%[33m Mozilla Firefox%C%[0m      %R%[90mº%R%[0m %R%[32m 42.%C%[33m Utorrent%C%[0m               %R%[90mº%R%[32m 68.%C%[36m %C%[0m                            %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 17.%C%[33m Brave%C%[0m                %R%[90mº%R%[0m %R%[32m 43.%C%[33m GlassWire%C%[0m              %R%[90mº%R%[32m 69.%C%[36m %C%[0m                            %R%[90mº%R%[0m  
echo   %R%[90mº%R%[32m 18.%C%[33m Microsoft Edge%C%[0m       %R%[90mº%R%[0m %R%[32m 44.%C%[33m TeamViewer%C%[0m             %R%[90mº%R%[32m 70.%C%[36m %C%[0m                            %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 19.%C%[37m ISLC%C%[0m                 %R%[90mº%R%[0m %R%[32m 45.%C%[33m Hamachi%C%[0m                %R%[90mº%R%[32m 71.%C%[36m %C%[0m                            %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 20.%C%[37m MemReduct%C%[0m            %R%[90mº%R%[0m %R%[32m 46.%C%[33m Stremio%C%[0m                %R%[90mº%R%[32m 72.%C%[37m OSU! %C%[0m                       %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 21.%C%[36m Libre Office%C%[0m         %R%[90mº%R%[0m %R%[32m 47.%C%[36m MSI Afterburner%C%[0m        %R%[90mº%R%[32m 73.%C%[37m World Of Tanks %C%[0m             %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 22.%C%[36m Adobe Reader%C%[0m         %R%[90mº%R%[0m %R%[32m 48.%C%[36m Hibit Uninstaller%C%[0m      %R%[90mº%R%[32m 74.%C%[37m Genshin Impact%C%[0m              %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 23.%C%[36m PDF-XChange Edit”r%C%[0m   %R%[90mº%R%[0m %R%[32m 49.%C%[36m Wise Care 365%C%[0m          %R%[90mº%R%[32m 75.%C%[37m League Of Legends%C%[90m[TR]%C%[0m       %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 24.%C%[36m Calibre%C%[0m              %R%[90mº%R%[0m %R%[32m 50.%C%[36m Unlocker%C%[0m               %R%[90mº%R%[32m 76.%C%[37m League Of Legends%C%[90m[EUW]%C%[0m      %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 25.%C%[33m 7 - Zip%C%[0m              %R%[90mº%R%[0m %R%[32m 51.%C%[36m SSD Booster%C%[0m            %R%[90mº%R%[32m 77.%C%[37m Blitz%C%[0m                       %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 26.%C%[33m WinRAR%C%[0m               %R%[90mº%R%[0m %R%[32m 52.%C%[36m OpenShell%C%[0m              %R%[90mº%R%[32m 78.%C%[37m Valorant%C%[0m                    %R%[90mº%R%[0m
echo   %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo   %R%[90mº%R%[0m                             %R%[32m X.%R%[33m ^<^<^< Listeyi Daralt%R%[0m                                       %R%[90mº%R%[0m
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p $multi=%R%[96m  €oklu Se‡im %R%[90mx,y%R%[0m :

echo %$multi% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto menu
echo %$multi% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto menu	
(
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] ^| MultiSelect ^| Se‡ilenler:"%$multi%"
) >> %Location%\Logs
cls
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m	
echo   %R%[90mº%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m G‡:%R%[37m %gucc% %R%[0m
echo   %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo                                         %R%[92m €OKLU ˜ND˜RME%R%[0m 
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo    %C%[96m Se‡ilenler: %$multi%%C%[0m
:MultiSelect
FOR %%a in (%$multi%) do (Call :Download%%a)
echo --------------------------------------------------------------------------------------------------------------------------- >> %Location%\Logs
goto menu2

:: ==============================================================================================================================

:Download1
cls
:: AŸa§daki FOR d”ngsyle link.bat dosyas i‡inden programlara ait linkleri alyorum.
:: Link sistemini katlmsz program hazrlama b”lmnde kulland§m i‡in ortak bir sistem olarak hazrladm.
:: Di§er download b”lmleri de ayn Ÿekilde ‡alŸmaktadr.


::-----------------------
:: Kaldrma b”lm

echo %R%[1;97m%R%[42m Eski srmler kaldrlyor%R%[0m
DEL /F /Q /A "%Logs%\aiodel.txt" > NUL 2>&1

For /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -Class Win32_Product | Select-Object -Property IdentifyingNumber,Name"') do echo %%a >> %Logs%\aiodel.txt

:: 2005 / 2008 / 2010 kaldr
FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2005" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2008" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2010" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn

:: 2012-2013 kaldr
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\vcredist_x86.exe"') do "%%a" /uninstall /quiet /norestart
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\vcredist_x64.exe"') do "%%a" /uninstall /quiet /norestart

:: 2015-2022 kaldr
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\VC_redist.x64.exe"') do "%%a" /uninstall /quiet /norestart
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\VC_redist.x86.exe"') do "%%a" /uninstall /quiet /norestart

:: Desktop runtime kaldr
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\windowsdesktop-runtime-*-win-x64.exe"') do "%%a" /uninstall /quiet /norestart
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\windowsdesktop-runtime-*-win-x86.exe"') do "%%a" /uninstall /quiet /norestart

:: Java kaldr
For /f "tokens=1" %%a in ('Findstr /C:"Java" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn

:: OpenAL kaldr
"%ProgramFiles(x86)%\OpenAL\oalinst.exe" /U /SILENT

:: XNA Framework 4.0 kaldr
FOR /F "tokens=1" %%a in ('Findstr /C:"XNA Framework" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
::-----------------------
:: Microsoft Servis b”lm
echo %R%[1;97m%R%[42m Net Framework3.5/4.8/Direct Play aktifleŸtiriliyor%R%[0m
Dism /Online /Enable-Feature /Featurename:NetFx3 /all /limitaccess /Quiet /NoRestart
Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All /Quiet /NoRestart
Dism /Online /Enable-Feature /FeatureName:DirectPlay /All /Quiet /NoRestart
::-----------------------
:: Ykleme b”lm
FOR /F "tokens=1" %%i in ('FIND "05x86.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 05x86.exe /Q
FOR /F "tokens=1" %%i in ('FIND "05x64.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 05x64.exe /Q

FOR /F "tokens=1" %%i in ('FIND "08x86.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 08x86.exe /q
FOR /F "tokens=1" %%i in ('FIND "08x64.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 08x64.exe /q

FOR /F "tokens=1" %%i in ('FIND "10x86.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 10x86.exe "/q /norestart"
FOR /F "tokens=1" %%i in ('FIND "10x64.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 10x64.exe "/q /norestart"

FOR /F "tokens=1" %%i in ('FIND "12x86.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 12x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "12x64.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 12x64.exe "/install /quiet /norestart"

FOR /F "tokens=1" %%i in ('FIND "13x86.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 13x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "13x64.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 13x64.exe "/install /quiet /norestart"

FOR /F "tokens=1" %%i in ('FIND "15x86.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 15x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "15x64.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 15x64.exe "/install /quiet /norestart" 

FOR /F "tokens=1" %%i in ('FIND "javax64" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" javax64.exe "INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable REMOVEOUTOFDATEJRES=1"

FOR /F "tokens=1" %%i in ('FIND "xnafx40" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" xnafx40.msi /qn

FOR /F "tokens=1" %%i in ('FIND "oal.zip" %Location%\Extra\Links.bat') do set link=%%i
Call :wget2 "%link%" oal.zip
Call :ZipExport oal.zip
"%download%\oal\oalinst.exe" /SILENT

FOR /F "tokens=1" %%i in ('FIND "Desktop5x64" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Desktop5x64.exe "/q /norestart"
FOR /F "tokens=1" %%i in ('FIND "Desktop5x86" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Desktop5x86.exe "/q /norestart"

FOR /F "tokens=1" %%i in ('FIND "DirectX" %Location%\Extra\Links.bat') do set link=%%i
Call :wget2 "%link%" DirectX.exe
%Location%\Download\DirectX.exe /Q /C /T:"%Location%\Download\DirectX\"
"%Location%\Download\DirectX\DXSETUP.exe" /silent
goto :eof

:Download2
FOR /F "tokens=1" %%i in ('FIND "Discord" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Discord.exe -s
goto :eof

:Download3
FOR /F "tokens=1" %%i in ('FIND "WhatsApp" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" WhatsApp.exe --silent 
goto :eof

:Download4
FOR /F "tokens=1" %%i in ('FIND "Signal" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Signal.exe /S
goto :eof

:Download5
FOR /F "tokens=1" %%i in ('FIND "Telegram" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Telegram.exe "/VERYSILENT /NORESTART"
goto :eof

:Download6
FOR /F "tokens=1" %%i in ('FIND "Teams" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Teams.exe -s
goto :eof

:Download7
FOR /F "tokens=1" %%i in ('FIND "Zoom" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Zoom.msi /qn
goto :eof

:Download8
FOR /F "tokens=1" %%i in ('FIND "EpicGames" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" EpicGames.msi "/qn /norestart"
goto :eof

:Download9
FOR /F "tokens=1" %%i in ('FIND "Steam" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Steam.exe /S
goto :eof

:Download10
FOR /F "tokens=1" %%i in ('FIND "GOG.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" GOG.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download11
FOR /F "tokens=1" %%i in ('FIND "Uplay" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Uplay.exe /S
goto :eof

:Download12
FOR /F "tokens=1" %%i in ('FIND "Origin" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Origin.exe /SILENT
goto :eof

:Download13
FOR /F "tokens=1" %%i in ('FIND "CheatEngine" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" CheatEngine.exe /SILENT
goto :eof

:Download14
FOR /F "tokens=1" %%i in ('FIND "Wemod" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Wemod.exe --silent
goto :eof

:Download15
FOR /F "tokens=1" %%i in ('FIND "Chrome" %Location%\Extra\Links.bat') do set link=%%i
Call :wget2 "%link%" Chrome.zip /qn
Call :ZipExport Chrome.zip
"%download%\Chrome\Installers\GoogleChromeStandaloneEnterprise64.msi" /qn
reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" "update_url" "https://clients2.google.com/service/update2/crx" & :: UBlock Origin
reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" "update_url" "https://clients2.google.com/service/update2/crx" & :: HTTPS Everywhere 
reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" "update_url" "https://clients2.google.com/service/update2/crx" & :: Clear URL's
goto :eof 

:Download16
FOR /F "tokens=1" %%i in ('FIND "Firefox" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Firefox.exe /S
goto :eof

:Download17
FOR /F "tokens=1" %%i in ('FIND "Brave" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Brave.exe "--install --silent --system-level"
reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" "update_url" "https://clients2.google.com/service/update2/crx" & :: UBlock Origin
reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" "update_url" "https://clients2.google.com/service/update2/crx" & :: HTTPS Everywhere 
reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" "update_url" "https://clients2.google.com/service/update2/crx" & :: Clear URL's
goto :eof 

:Download18
FOR /F "tokens=1" %%i in ('FIND "edge.msi" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" edge.msi /qn
Call :sz "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" "update_url" "https://clients2.google.com/service/update2/crx" & :: UBlock Origin 
Call :sz "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" "update_url" "https://clients2.google.com/service/update2/crx" & :: HTTPS Everywhere 
Call :sz "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" "update_url" "https://clients2.google.com/service/update2/crx" & :: Clear URL's
goto :eof

:Download19
Powershell -command "Expand-Archive -Force '%Location%\Files\ISLC.zip' 'C:\'"
Powershell -command "New-Item -ItemType SymbolicLink -Path 'C:\Users\%username%\Desktop' -Name 'ISLC' -Value 'C:\ISLC\Intelligent standby list cleaner ISLC.exe'"
goto :eof

:Download20
FOR /F "tokens=1" %%i in ('FIND "MemReduct.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" MemReduct.exe /S
goto :eof

:Download21
FOR /F "tokens=1" %%i in ('FIND "LibreOffice.msi" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" LibreOffice.msi "/qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL"
goto :eof

:Download22
FOR /F "tokens=1" %%i in ('FIND "AdobeReader.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "AdobeReader.exe" "/sPB /rs /msi"
goto :eof

:Download23
FOR /F "tokens=1" %%i in ('FIND "PdfXchange.msi" %Location%\Extra\Links.bat') do set link=%%i
::Call :wget "%link%" AdobeReader.exe "/sPB /rs /msi"
Call :wget "%link%" PdfXchange.msi "/quiet /norestart"
goto :eof

:Download24
FOR /F "tokens=1" %%i in ('FIND "Calibre" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Calibre.msi /qn
goto :eof

:Download25
FOR /F "tokens=1" %%i in ('FIND "7-Zip" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 7-Zip.msi /qn
goto :eof

:Download26
FOR /F "tokens=1" %%i in ('FIND "Winrar" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Winrar.exe /S
goto :eof

:Download27
FOR /F "tokens=1" %%i in ('FIND "Kdenlive" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Kdenlive.exe /S
goto :eof

:Download28
FOR /F "tokens=1" %%i in ('FIND "Openshot.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Openshot.exe /VERYSILENT /NORESTART
goto :eof

:Download29
FOR /F "tokens=1" %%i in ('FIND "Shotcut.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Shotcut.exe /S
goto :eof

:Download30
FOR /F "tokens=1" %%i in ('FIND "Krita" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Krita.exe /S
goto :eof

:Download31
FOR /F "tokens=1" %%i in ('FIND "Gimp" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Gimp.exe "/VERYSILENT /NORESTART /MERGETASKS=desktopicon /ALLUSERS"
goto :eof

:Download32
FOR /F "tokens=1" %%i in ('FIND "OBS" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" OBS.exe /S
goto :eof

:Download33
FOR /F "tokens=1" %%i in ('FIND "ShareX" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" ShareX.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download34
FOR /F "tokens=1" %%i in ('FIND "Audacity" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Audacity.exe "/VERYSILENT /NORESTART"
goto :eof

:Download35
FOR /F "tokens=1" %%i in ('FIND "Klite" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Klite.exe /verysilent
goto :eof

:Download36
FOR /F "tokens=1" %%i in ('FIND "VLCMediaPlayer" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" VLCMediaPlayer.exe "/L=1055 /S"
goto :eof

:Download37
FOR /F "tokens=1" %%i in ('FIND "Aimp" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Aimp.exe "/AUTO /SILENT"
goto :eof

:Download38
FOR /F "tokens=1" %%i in ('FIND "AnyVideoConverter" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" AnyVideoConverter.exe /S
Powershell -command "New-Item -ItemType SymbolicLink -Path 'C:\Users\OgnitorenKs\Desktop' -Name 'Any Video Converter' -Value 'C:\Program Files (x86)\Anvsoft\Any Video Converter\AVCFree.exe'"
goto :eof

:Download39
FOR /F "tokens=1" %%i in ('FIND "FreeDownloadManager" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" FreeDownloadManager.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download40
FOR /F "tokens=1" %%i in ('FIND "idm.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" idm.exe /skipdlgs
goto :eof

:Download41
FOR /F "tokens=1" %%i in ('FIND "ByClick" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" ByClick.exe /q
goto :eof

:Download42
FOR /F "tokens=1" %%i in ('FIND "qbittorrent.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" qbittorrent.exe /S
goto :eof

:Download43
FOR /F "tokens=1" %%i in ('FIND "GlassWire" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" GlassWire.exe /S
goto :eof

:Download44
FOR /F "tokens=1" %%i in ('FIND "TeamViewer" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" TeamViewer.exe /S
goto :eof

:Download45
FOR /F "tokens=1" %%i in ('FIND "Hamachi" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Hamachi.msi /q
goto :eof

:Download46
FOR /F "tokens=1" %%i in ('FIND "Stremio" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Stremio.exe /S
goto :eof

:Download47
FOR /F "tokens=1" %%i in ('FIND "MSIAfterburner" %Location%\Extra\Links.bat') do set link=%%i
Call :wget2 "%link%" MSIAfterburner.zip /S
Call :ZipExport MSIAfterburner.zip 
for /f %%i in ('"dir /b %download%\MSIAfterburner\*.exe"') do "%download%\MSIAfterburner\%%i" /S
goto :eof

:Download48
FOR /F "tokens=1" %%i in ('FIND "Hibit" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Hibit.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download49
FOR /F "tokens=1" %%i in ('FIND "WiseCare365.zip" %Location%\Extra\Links.bat') do set link=%%i
Call :wget2 "%link%" WiseCare365.zip
powershell -command "Expand-Archive -Force '%download%\WiseCare365.zip' '%download%'"
"%download%\WiseCare365.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%download%\WiseCare365.zip"
goto :eof

:Download50
FOR /F "tokens=1" %%i in ('FIND "Unlocker.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Unlocker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download51
FOR /F "tokens=1" %%i in ('FIND "SSDBooster" %Location%\Extra\Links.bat') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\SSDBooster.exe"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\SSDBooster.exe'"
goto :eof

:Download52
FOR /F "tokens=1" %%i in ('FIND "OpenShell" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu"
goto :eof

:Download53
FOR /F "tokens=1" %%i in ('FIND "Everything" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Everything.exe /S
goto :eof

:Download54
FOR /F "tokens=1" %%i in ('FIND "TaskbarX" %Location%\Extra\Links.bat') do set link=%%i
Call :wget2 "%link%" TaskbarX.zip 
powershell -command "Expand-Archive -Force '%download%\TaskbarX.zip' 'C:\Users\%username%\Desktop\TaskbarX'"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX Configurator.exe'"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX.exe'"
goto :eof

:Download55
FOR /F "tokens=1" %%i in ('FIND "Stellarium.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Stellarium.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download56
FOR /F "tokens=1" %%i in ('FIND "Recuva.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Recuva.exe /S
goto :eof

:Download57
FOR /F "tokens=1" %%i in ('FIND "AOMEI.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" AOMEI.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download58
FOR /F "tokens=1" %%i in ('FIND "Python.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Python.exe "/quiet InstallAllUsers=1 PrependPath=1"
goto :eof

:Download59
FOR /F "tokens=1" %%i in ('FIND "PyCharm.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" PyCharm.exe "/S /CONFIG=%download%\silent.config /D=C:\PyCharm
goto :eof

:Download60
FOR /F "tokens=1" %%i in ('FIND "Notepad" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Notepad.exe /S
goto :eof

:Download61
FOR /F "tokens=1" %%i in ('FIND "VisualStudioCode.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" VisualStudioCode.exe "/VERYSILENT /NORESTART /MERGETASKS=!runcode"
goto :eof

:Download62
FOR /F "tokens=1" %%i in ('FIND "Github.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Github.exe -s
goto :eof

:Download63
FOR /F "tokens=1" %%i in ('FIND "Git.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Git.exe "/VERYSILENT /NORESTART"
goto :eof

:Download64
FOR /F "tokens=1" %%i in ('FIND "Blender.msi" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Blender.msi "ALLUSERS=1 /qn"
goto :eof

:Download65
FOR /F "tokens=1" %%i in ('FIND "Processhacker.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Processhacker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download72
FOR /F "tokens=1" %%i in ('FIND "osu.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\osu.exe" 
goto :eof

:Download73
FOR /F "tokens=1" %%i in ('FIND "WorldOfTanks.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\WorldOfTanks.exe" 
goto :eof

:Download74
FOR /F "tokens=1" %%i in ('FIND "GenshinImpact.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\GenshinImpact.exe" 
goto :eof

:Download75
FOR /F "tokens=1" %%i in ('FIND "LeagueOfLegendsTR.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\LeagueOfLegendsTR.exe" 
goto :eof

:Download76
FOR /F "tokens=1" %%i in ('FIND "LeagueOfLegendsEUW.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\LeagueOfLegendsEUW.exe" 
goto :eof

:Download77
FOR /F "tokens=1" %%i in ('FIND "Blitz" %Location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Blitz.exe /S
goto :eof

:Download78
FOR /F "tokens=1" %%i in ('FIND "Valorant.exe" %Location%\Extra\Links.bat') do set link=%%i
Call :wget3 "%link%" "C:\users\%username%\Desktop\Valorant.exe" 
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:WindowsRepair
cls
mode con cols=80 lines=30

Call :Logss "WindowsRepair" "Windows onarma se‡ene§i kullanld."

echo %R%[92m   Sfc /scannow komutu ‡alŸyor...%R%[0m
sfc /scannow
echo %R%[92m   DISM /Online /Cleanup-Image /RestoreHealth komutu ‡alŸtrlyor...%R%[0m
DISM /Online /Cleanup-Image /RestoreHealth
echo %R%[92m   WinSxS Temizleniyor...%R%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup 
echo %R%[92m   SoftwareDistribution temizleniyor...%R%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1
echo %R%[92m   Market Regedit kaytlar dzenleniyor...%R%[0m
:: Market b”lmnnn sorunsuz ‡alŸmas i‡in reg kaytlarn dzenler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /f /v "RemoveWindowsStore" /t REG_DWORD /d 0 > NUL 2>&1
:: Market i‡in gerekli hizmetleri baŸlatr.
echo %R%[92m   Market uygulamas i‡in servisler ‡alŸtrlyor...%R%[0m
:: AppX Deployment Service (Da§tm Hizmeti)
sc config AppXSvc start= demand > NUL 2>&1
net start AppXSvc > NUL 2>&1
:: Yetenek EriŸim Y”neticisi Hizmeti
sc config camsvc start= demand > NUL 2>&1
net start camsvc > NUL 2>&1
:: ifreleme Hizmetleri
sc config cryptsvc start= auto > NUL 2>&1
net start cryptsvc > NUL 2>&1
:: Windows Update
sc config wuauserv start= demand > NUL 2>&1
net start wuauserv > NUL 2>&1
:: Depolama Hizmeti
sc config StorSvc start= demand > NUL 2>&1
net start StorSvc > NUL 2>&1
:: Arka Plan Akll Aktarm Hizmeti
sc config bits start= auto > NUL 2>&1
net start bits > NUL 2>&1
:: Windows Modl Ykleyici
sc config trustedinstaller start= demand > NUL 2>&1
net start trustedinstaller > NUL 2>&1
net start ClipSVC > NUL 2>&1
echo %R%[92m   DLL dosyalar kontrol ediliyor...%R%[0m
regsvr32 softpub.dll /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 dssenh.dll /s&regsvr32 rsaenh.dll /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 slbcsp.dll /s&regsvr32 mssip32.dll /s&regsvr32 cryptdlg.dll /s&regsvr32 msxml3.dll /s&regsvr32 comcat.dll /s&Regsvr32 Msxml.dll /s&Regsvr32 Msxml2.dll /s&regsvr32 mshtml.dll /s&regsvr32 shdocvw.dll /s&regsvr32 browseui.dll /s&regsvr32 msjava.dll /s&regsvr32 shdoc401.dll /s&regsvr32 cdm.dll /s&regsvr32 shdoc401.dll /i /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 asctrls.ocx /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 softpub.dll /s&regsvr32 oleaut32.dll /s&regsvr32 shdocvw.dll /I /s&regsvr32 Shell32.dll /s&regsvr32 browseui.dll /s&regsvr32 browseui.dll /I /s&regsvr32 msrating.dll /s&regsvr32 mlang.dll /s&regsvr32 hlink.dll /s&regsvr32 mshtmled.dll /s&regsvr32 urlmon.dll /s&regsvr32 urlmon.dll /i /s&regsvr32 plugin.ocx /s&regsvr32 sendmail.dll /s&regsvr32 scrobj.dll /s&regsvr32 mmefxe.ocx /s&regsvr32 corpol.dll /s&regsvr32 jscript.dll /s&regsvr32 imgutil.dll /s&regsvr32 thumbvw.dll /s&regsvr32 cryptext.dll /s&regsvr32 rsabase.dll /s&regsvr32 inseng.dll /s&regsvr32 iesetup.dll /i /s&regsvr32 actxprxy.dll /s&regsvr32 dispex.dll /s&regsvr32 occache.dll /s&regsvr32 occache.dll /i /s&regsvr32 iepeers.dll /s&regsvr32 cdfview.dll /s&regsvr32 webcheck.dll /s&regsvr32 mobsync.dll /s&regsvr32 pngfilt.dll /s&regsvr32 licmgr10.dll /s
regsvr32 icmfilter.dll /s&regsvr32 hhctrl.ocx /s&regsvr32 inetcfg.dll /s&regsvr32 tdc.ocx /s&regsvr32 MSR2C.DLL /s&regsvr32 msident.dll /s&regsvr32 msieftp.dll /s&regsvr32 xmsconf.ocx /s&regsvr32 ils.dll /s&regsvr32 msoeacct.dll /s&regsvr32 inetcomm.dll /s&regsvr32 msdxm.ocx /s&regsvr32 dxmasf.dll /s&regsvr32 l3codecx.ax /s&regsvr32 acelpdec.ax /s&regsvr32 mpg4ds32.ax /s&regsvr32 voxmsdec.ax /s&regsvr32 danim.dll /s&regsvr32 Daxctle.ocx /s&regsvr32 lmrt.dll /s&regsvr32 datime.dll /s&regsvr32 dxtrans.dll /s&regsvr32 dxtmsft.dll /s&regsvr32 WEBPOST.DLL /s&regsvr32 WPWIZDLL.DLL /s&regsvr32 POSTWPP.DLL /s&regsvr32 CRSWPP.DLL /s&regsvr32 FTPWPP.DLL /s&regsvr32 FPWPP.DLL /s&regsvr32 WUAPI.DLL /s&regsvr32 wups2.dll /S&regsvr32 WUAUENG.DLL /s&regsvr32 ATL.DLL /s&regsvr32 WUCLTUI.DLL /s&regsvr32 WUPS.DLL /s&regsvr32 WUWEB.DLL /s&regsvr32 wshom.ocx /s&regsvr32 wshext.dll /s&regsvr32 vbscript.dll /s&regsvr32 scrrun.dll mstinit.exe /setup /s&regsvr32 msnsspc.dll /SspcCreateSspiReg /s&regsvr32 msapsspc.dll /SspcCreateSspiReg /s
wsreset
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof


:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş

:PCTemizle
cls
Call :Logss "PCTemizle" "PC Temizle se‡e§i ‡alŸtrld."
echo %R%[92m   Eski tarihli dosya ge‡miŸi temizleniyor...%R%[0m
FhManagew.exe -cleanup 360 -quiet > NUL 2>&1

echo %R%[92m   ico ve k‡k resim belle§i temizleniyor...%R%[0m
taskkill /f /IM explorer.exe > NUL 2>&1
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
Start explorer.exe > NUL 2>&1

echo %R%[92m   Temp dosyas temizleniyor...%R%[0m
DEL /F /Q /A %temp%\OgnitorenKs.Toolbax\* > NUL 2>&1
RD /S /Q %temp%\* > NUL 2>&1

echo %R%[92m   SoftwareDistribution temizleniyor...%R%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1

echo %R%[92m   Prefetch temizleniyor...%R%[0m
DEL /F /Q /A %windir%\prefetch\* > NUL 2>&1

echo %R%[92m   Windows tarafndan oluŸturulan ‡”p dosyalar temizleniyor...%R%[0m
DEL /F /Q /A %windir%\temp\* > NUL 2>&1

::echo %R%[92m   Adobe Reader kalntlar temizleniyor...%R%[0m
::DEL /F /Q /A %localappdata%\Adobe\Acrobat\DC\Cache\* > NUL 2>&1
::DEL /F /Q /A %localappdata%\Adobe\Acrobat\DC\*.lst > NUL 2>&1

echo %R%[92m   Microsoft Edge ”nbelle§i temizleniyor...%R%[0m
DEL /F /Q /A %programfiles(x86)%\Microsoft\Edge\User Data\Default\Cache\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Edge\User Data\Default\Service Worker\CacheStorage\* > NUL 2>&1

echo %R%[92m   Ekran Kart Driver kalntlar temizleniyor...%R%[0m
RD /S /Q %systemdrive%\AMD > NUL 2>&1
RD /S /Q %systemdrive%\NVIDIA > NUL 2>&1

echo %R%[92m   Sistem Log Dosyalar siliniyor...%R%[0m
DEL /F /Q /A %windir%\System32\LogFiles\* > NUL 2>&1

echo %R%[92m   Yaz tipi ”nbelli§i siliniyor...%R%[0m
DEL /F /Q /A %windir%\System32\FNTCACHE.DAT > NUL 2>&1

echo %R%[92m   Windows Sistem ™nbelli§i temizleniyor...%R%[0m
DEL /F /Q /A %windir%\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\* > NUL 2>&1

echo %R%[92m   Windows Ykleyici ™nbelli§i temizleniyor...%R%[0m
DEL /F /Q /A %windir%\Installer\$PatchCache$\Managed\* > NUL 2>&1

echo %R%[92m   Uygulamalar tarafndan oluŸturulan kalntlar temizleniyor...%R%[0m
DEL /F /Q /A %localappdata%\Temp\* > NUL 2>&1

echo %R%[92m   Hata Raporu Dosyalar temizleniyor...%R%[0m
DEL /F /Q /A %programdata%\Microsoft\Windows\WER\ReportQueue\* > NUL 2>&1

echo %R%[92m   WinSxS temizleniyor...%R%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup

echo %R%[92m   Disk temizleme iŸlemi yaplyor...%R%[0m
cleanmgr /verylowdisk /sagerun:5

echo %R%[92m   ˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş

:Fat32toNTFS
mode con cols=63 lines=25
title Fat32 to NTFS d”nŸtrme / OgnitorenKs
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m                      Fat32 to NTFS                       %R%[0m%R%[90mº%R%[0m
echo   %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
	echo       %C%[32mHarf      ˜sim%C%[0m
for /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property DeviceID,VolumeName"') do (
   echo       %%a)
   echo       %R%[32m X.%R%[36m Men%R%[0m
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[32m  D”nŸtrlecek Disk harfi:%C%[0m
	if %value%==X GOTO menu
	if %value%==x GOTO menu
Call :Logss "Fat32toNTFS" "%value% diski NTFS'ye d”nŸtrld."
convert %value%: /fs:NTFS /v
goto :eof

:stop
:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş
:Slmgrvbs
cls
mode con cols=55 lines=16
title Lisans Y”netimi \ OgnitorenKs
echo 
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m          Lisans Y”netimi / SLMGR.VBS            %R%[0m%R%[90mº%R%[0m
echo   %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo   %R%[90mº%R%[0m  %R%[32m 1.%C%[33m Lisans Gir %C%[90m[ipk]%C%[0m                           %R%[90mº%R%[0m
echo   %R%[90mº%R%[0m  %R%[32m 2.%C%[33m Lisans Durumu %C%[90m[dli]%C%[0m                        %R%[90mº%R%[0m
echo   %R%[90mº%R%[0m  %R%[32m 3.%C%[33m Lisans Durumu Detayl %C%[90m[dlv]%C%[0m                %R%[90mº%R%[0m
echo   %R%[90mº%R%[0m  %R%[32m 4.%C%[33m Lisans Sresini ™§ren %C%[90m[xpr]%C%[0m                %R%[90mº%R%[0m
echo   %R%[90mº%R%[0m  %R%[32m 5.%C%[33m Lisans Sil %C%[90m[upk]%C%[0m                           %R%[90mº%R%[0m
echo   %R%[90mº%R%[0m  %R%[32m 6.%C%[33m Lisans Sre Sfrla %C%[90m[rearm]%C%[0m                %R%[90mº%R%[0m
echo   %R%[90mº%R%[0m  %R%[32m X.%R%[36m Ana Men%R%[0m                                   %R%[90mº%R%[0m
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m  Yapmak istedi§iniz iŸlem : %C%[0m
	if %value%==1 (Call :slmgrlisans)
	if %value%==2 (Call :Logss "SLMGR.VBS" "Lisans Durumu, kontrol edildi."
				   slmgr /dli&goto Slmgrvbs)		   
	if %value%==3 (Call :Logss "SLMGR.VBS" "Lisans Durumu Detayl, kontrol edildi."
				   slmgr /dlv&goto Slmgrvbs)
	if %value%==4 (Call :Logss "SLMGR.VBS" "Lisans Sresini ™§ren, ‡alŸtrld."
				   slmgr /xpr&goto Slmgrvbs)
	if %value%==5 (Call :Logss "SLMGR.VBS" "Lisans Sil, ‡alŸtrld."
				   slmgr /upk&goto Slmgrvbs)
	if %value%==6 (Call :Logss "SLMGR.VBS" "Lisans Sre Sfrla, ‡alŸtrld."
				   slmgr /rearm&goto Slmgrvbs)
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto Slmgrvbs

:slmgrlisans
cls
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m            Manuel Lisanslama Hizmeti            %R%[0m%R%[90mº%R%[0m
echo   %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
set /p value= %R%[92m   Lisans : %R%[0m
	if %value%==X (goto :eof)
	if %value%==x (goto :eof)
echo [%date% - %time%] ^| Slmgr.vbs ^| Slmgr Lisans(ipk), Windows lisansland >> %Location%\Logs
slmgr /ipk %value%

echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof
:stop
:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş

:icofix
cls
Call :Location
echo [%date% - %time%] ^| icofix ^| Simge sorunu giderildi. >> %Location%\Logs
echo %R%[92m Simge sorunu dzeltiliyor...%R%[0m
ie4uinit.exe -show
taskkill /f /im explorer.exe
DEL /F /Q /A "%localappdata%\IconCache.db" > NUL 2>&1
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
del /f /s /q /a %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
"%Location%\Files\ReIconCache.exe"
powershell -command "Start-Process 'C:\Windows\explorer.exe'"
goto menu

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş
:stop
:servicesmanagement
cls
mode con cols=55 lines=35
Call :PowerRun
title Kapatlan Servisler Y”netimi / OgnitorenKs
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                  Servis Y”netimi                  %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Bluetooth hizmeti%C%[0m                      %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 2%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Yazc hizmeti%C%[0m                         %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 3%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Bask hizmeti%C%[0m                          %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 4%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Telefon hizmeti%C%[0m                        %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 5%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Tarifeli a§lar hizmeti%C%[0m                 %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 6%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m IP yardmcs (IPv6)%C%[0m                   %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 7%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Mobil Etkin Nokta (Hotspot)%C%[0m            %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 8%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Radyo ve U‡ak modu hizmeti%C%[0m             %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 9%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Uzak Masast/AkŸ/A§ hizmetleri%C%[0m       %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 10%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Windows imdi Ba§lan(WPS) hizmeti%C%[0m      %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 11%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Tarayc ve Kamera hizmetleri%C%[0m          %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 12%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Insider hizmeti%C%[0m                        %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 13%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Biyometrik hizmeti%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 14%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Kalem ve Dokunmatik hizmeti%C%[0m            %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 15%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Sistem Geri ykleme hizmeti%C%[0m            %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 16%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Sysmain (Hzl Getir)%C%[0m                  %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 17%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Hzl BaŸlat (Hibernate)%C%[0m               %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 18%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Konum hizmeti%C%[0m                          %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 19%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Windows Media Player%C%[0m                   %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 20%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Hyper-V hizmeti%C%[0m                        %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 21%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Xbox hizmeti%C%[0m                           %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 22%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Bitlocker Src Ÿifreleme hizmeti%C%[0m     %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 23%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Karma Ger‡eklik hizmeti (VR)%C%[0m           %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 24%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Driver Ykle/Gncelle (Update)%C%[0m         %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 25%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Bellek SkŸtrma hizmeti%C%[0m              %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 26%C%[90m[%C%[36mA%C%[90m/%C%[36mK%C%[90m]%R%[32m.%C%[33m Core Parking%C%[0m                           %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m  %R%[32m 27%R%[32m.%C%[33m GPU Optimizasyonu%C%[0m                           %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m        %R%[32m X.%R%[36m Men%R%[0m                                   %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value= %C%[92m ˜Ÿlem : %C%[0m
	if %value%==1a (Call :serv.1.bluetooth start demand a‡lyor)
	if %value%==1A (Call :serv.1.bluetooth start demand a‡lyor)
	if %value%==1K (Call :serv.1.bluetooth stop disabled kapatlyor)
	if %value%==1k (Call :serv.1.bluetooth stop disabled kapatlyor)
	if %value%==2a (Call :serv.2.yazici start demand auto a‡lyor)
	if %value%==2A (Call :serv.2.yazici start demand auto a‡lyor)
	if %value%==2K (Call :serv.2.yazici stop disabled disabled kapatlyor)
	if %value%==2k (Call :serv.2.yazici stop disabled disabled kapatlyor)
	if %value%==3a (Call :serv.3.baski start demand a‡lyor)
	if %value%==3A (Call :serv.3.baski start demand a‡lyor)
	if %value%==3K (Call :serv.3.baski stop disabled kapatlyor)
	if %value%==3k (Call :serv.3.baski stop disabled kapatlyor)
	if %value%==4a (Call :serv.4.phone start demand a‡lyor)
	if %value%==4A (Call :serv.4.phone start demand a‡lyor)
	if %value%==4K (Call :serv.4.phone stop disabled kapatlyor)
	if %value%==4k (Call :serv.4.phone stop disabled kapatlyor)
	if %value%==5a (Call :serv.5.tarifeli start auto a‡lyor)
	if %value%==5A (Call :serv.5.tarifeli start auto a‡lyor)
	if %value%==5K (Call :serv.5.tarifeli stop disabled kapatlyor)
	if %value%==5k (Call :serv.5.tarifeli stop disabled kapatlyor)
	if %value%==6a (Call :serv.6.ipyardimci start demand auto a‡lyor)
	if %value%==6A (Call :serv.6.ipyardimci start demand auto a‡lyor)
	if %value%==6K (Call :serv.6.ipyardimci stop disabled disabled kapatlyor)
	if %value%==6k (Call :serv.6.ipyardimci stop disabled disabled kapatlyor)
	if %value%==7a (Call :serv.7.hotspot start demand a‡lyor)
	if %value%==7A (Call :serv.7.hotspot start demand a‡lyor)
	if %value%==7K (Call :serv.7.hotspot stop disabled kapatlyor)
	if %value%==7k (Call :serv.7.hotspot stop disabled kapatlyor)
	if %value%==8a (Call :serv.8.ucakmodu start demand a‡lyor)
	if %value%==8A (Call :serv.8.ucakmodu start demand a‡lyor)
	if %value%==8K (Call :serv.8.ucakmodu stop disabled kapatlyor)
	if %value%==8k (Call :serv.8.ucakmodu stop disabled kapatlyor)
	if %value%==9a (Call :serv.9.akis start demand a‡lyor)
	if %value%==9A (Call :serv.9.akis start demand a‡lyor)
	if %value%==9K (Call :serv.9.akis stop disabled kapatlyor)
	if %value%==9k (Call :serv.9.akis stop disabled kapatlyor)
	if %value%==10a (Call :serv.10.wps start demand a‡lyor)
	if %value%==10A (Call :serv.10.wps start demand a‡lyor)
	if %value%==10K (Call :serv.10.wps stop disabled kapatlyor)
	if %value%==10k (Call :serv.10.wps stop disabled kapatlyor)
	if %value%==11a (Call :serv.11.camera start demand a‡lyor)
	if %value%==11A (Call :serv.11.camera start demand a‡lyor)
	if %value%==11K (Call :serv.11.camera stop disabled kapatlyor)
	if %value%==11k (Call :serv.11.camera stop disabled kapatlyor)
	if %value%==12a (Call :serv.12.insider start demand a‡lyor)
	if %value%==12A (Call :serv.12.insider start demand a‡lyor)
	if %value%==12K (Call :serv.12.insider stop disabled kapatlyor)
	if %value%==12k (Call :serv.12.insider stop disabled kapatlyor)
	if %value%==13a (Call :serv.13.biyometrik start demand a‡lyor)
	if %value%==13A (Call :serv.13.biyometrik start demand a‡lyor)
	if %value%==13K (Call :serv.13.biyometrik stop disabled kapatlyor)
	if %value%==13k (Call :serv.13.biyometrik stop disabled kapatlyor)
	if %value%==14a (Call :serv.14.dokunmatik start demand a‡lyor)
	if %value%==14A (Call :serv.14.dokunmatik start demand a‡lyor)
	if %value%==14K (Call :serv.14.dokunmatik stop disabled kapatlyor)
	if %value%==14k (Call :serv.14.dokunmatik stop disabled kapatlyor)
	if %value%==15a (Call :serv.15.sistemgeriyukleme start demand ENABLE 0 a‡lyor)
	if %value%==15A (Call :serv.15.sistemgeriyukleme start demand ENABLE 0 a‡lyor)
	if %value%==15K (Call :serv.15.sistemgeriyukleme stop disabled DISABLE 1 kapatlyor)
	if %value%==15k (Call :serv.15.sistemgeriyukleme stop disabled DISABLE 1 kapatlyor)
	if %value%==16a (Call :serv.16.sysmain start auto a‡lyor)
	if %value%==16A (Call :serv.16.sysmain start auto a‡lyor)
	if %value%==16K (Call :serv.16.sysmain stop disabled kapatlyor)
	if %value%==16k (Call :serv.16.sysmain stop disabled kapatlyor)
	if %value%==17a (Call :serv.17.hibernate on 1 a‡lyor)
	if %value%==17A (Call :serv.17.hibernate on 1 a‡lyor)
	if %value%==17K (Call :serv.17.hibernate off 0 kapatlyor)
	if %value%==17k (Call :serv.17.hibernate off 0 kapatlyor)
	if %value%==18a (Call :serv.18.Location start demand Allow 1 delete "/v "DisableLocation" /f" a‡lyor)
	if %value%==18A (Call :serv.18.Location start demand Allow 1 delete "/v "DisableLocation" /f" a‡lyor)
	if %value%==18K (Call :serv.18.Location stop disabled Deny 0 add "/v "DisableLocation" /t REG_DWORD /d 1 /f" kaptlyor)
	if %value%==18k (Call :serv.18.Location stop disabled Deny 0 add "/v "DisableLocation" /t REG_DWORD /d 1 /f" kaptlyor)
	if %value%==19a (Call :serv.19.mediaplayer start demand ENABLE a‡lyor)
	if %value%==19A (Call :serv.19.mediaplayer start demand ENABLE a‡lyor)
	if %value%==19K (Call :serv.19.mediaplayer stop disabled DISABLE kapatlyor)
	if %value%==19k (Call :serv.19.mediaplayer stop disabled DISABLE kapatlyor)
	if %value%==20a (Call :serv.20.hyperv demand Enable For a‡lyor)
	if %value%==20A (Call :serv.20.hyperv demand Enable For a‡lyor)
	if %value%==20K (Call :serv.20.hyperv disabled Disable "::" kapatlyor)
	if %value%==20k (Call :serv.20.hyperv disabled Disable "::" kapatlyor)
	if %value%==21a (Call :serv.21.xbox start demand 1 0 delete "/v "AllowGameDVR" /f" a‡lyor)
	if %value%==21A (Call :serv.21.xbox start demand 1 0 delete "/v "AllowGameDVR" /f" a‡lyor)
	if %value%==21K (Call :serv.21.xbox stop disabled 0 2 add "/v "AllowGameDVR" /t REG_DWORD /d 0 /f" kapatlyor)
	if %value%==21k (Call :serv.21.xbox stop disabled 0 2 add "/v "AllowGameDVR" /t REG_DWORD /d 0 /f" kapatlyor)
	if %value%==22a (Call :serv.22.bitlocker start demand a‡lyor)
	if %value%==22A (Call :serv.22.bitlocker start demand a‡lyor)
	if %value%==22K (Call :serv.22.bitlocker stop disabled kapatlyor)
	if %value%==22k (Call :serv.22.bitlocker stop disabled kapatlyor)
	if %value%==23a (Call :serv.23.mixedreality demand a‡lyor)
	if %value%==23A (Call :serv.23.mixedreality demand a‡lyor)
	if %value%==23K (Call :serv.23.mixedreality disabled kapatlyor)
	if %value%==23k (Call :serv.23.mixedreality disabled kapatlyor)
	if %value%==24a (Call :serv.24.driverupdate 0 1 a‡lyor)
	if %value%==24A (Call :serv.24.driverupdate 0 1 a‡lyor)
	if %value%==24K (Call :serv.24.driverupdate 1 0 kapatlyor)
	if %value%==24k (Call :serv.24.driverupdate 1 0 kapatlyor)
	if %value%==25a (Call :serv.25.memorycompression Enable A‡lyor)
	if %value%==25A (Call :serv.25.memorycompression Enable A‡lyor)
	if %value%==25K (Call :serv.25.memorycompression Disable Kapatlyor)
	if %value%==25k (Call :serv.25.memorycompression Disable Kapatlyor)
	if %value%==26a (Call :serv.26.coreparking 100 "Call :delete" "Call :delete2" a‡lyor)
	if %value%==26A (Call :serv.26.coreparking 100 "Call :delete" "Call :delete2" a‡lyor)
	if %value%==26K (Call :serv.26.coreparking 0 "Call :dword" "Call :dword" kapatlyor)
	if %value%==26k (Call :serv.26.coreparking 0 "Call :dword" "Call :dword" kapatlyor)
	if %value%==27 (Call :serv.27.gpuoptimization)
	if %value%==x goto menu
	if %value%==X goto menu
) else 
	goto servicesmanagement

:serv.1.bluetooth
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Bluetooth hizmeti %3. >> %Location%\Logs
echo   %C%[96mBluetooth hizmeti %3 ...%C%[0m
:: Bluetooth (AVCTP hizmeti) 
::  Ses, video denetim aktarm protokoldr.
%PowerRun% sc config "BthAvctpSvc" start= %2
%PowerRun% net %1 BthAvctpSvc
:: Bluetooth destek hizmeti
::  Bluetooth cihazlarn bulunmas ve iliŸkilendirmesini sa§lar.
%PowerRun% sc config "bthserv" start= %2
%PowerRun% net %1 bthserv
:: Bluetooth kullanc deste§i hizmeti
::  Kullanc oturumuyla Bluetooth ”zelliklerinin tam ‡alŸmasn sa§lar.
%PowerRun% sc config "BluetoothUserService" start= %2
%PowerRun% net %1 BluetoothUserService
:: Ses a§ ge‡idi hizmeti
::  Eller boŸta profilinin ses a§ ge‡idini destekler.
%PowerRun% sc config "BTAGService" start= %2
%PowerRun% net %1 BTAGService
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.2.yazici
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Yazc hizmeti %4. >> %Location%\Logs
echo   %C%[96mYazc hizmetleri %4 ...%C%[0m
%PowerRun% sc config "Spooler" start= %3
%PowerRun% net %1 Spooler
DEL /F /Q /A %windir%\System32\spool\PRINTERS\*
:: Uzak Masast Hizmetleri Kullanc Modu Ba§lant Noktas Yeniden Y”nlendiricisi
%PowerRun% sc config UmRdpService start= %2
%PowerRun% net %1 UmRdpService
::----------------------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : auto     | %4 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled | %4 : kapatlyor
::----------------------------------------------------------------------
goto :eof

:serv.3.baski
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Yazc hizmeti %3. >> %Location%\Logs
echo   %C%[96mBask hizmetleri %3 ...%C%[0m 
::PrintWorkFlow (iŸ akŸ hizmeti)
%PowerRun% sc config McpManagementService start= %2
%PowerRun% net %1 McpManagementService
%PowerRun% sc config PrintWorkflowUserSvc start= %2
%PowerRun% net %1 PrintWorkflowUserSvc
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.4.phone
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Telefon hizmeti %3. >> %Location%\Logs
echo   %C%[96mTelefon hizmeti %3 ...%C%[0m 
:: Telefon
%PowerRun% sc config TapiSrv start= %2
%PowerRun% net %1 TapiSrv
:: Telefon Hizmeti
%PowerRun% sc config PhoneSvc start= %2
%PowerRun% net %1 PhoneSvc
:: Bluetooth (AVCTP hizmeti) 
::  Ses, video denetim aktarm protokoldr.
%PowerRun% sc config "BthAvctpSvc" start= %2
%PowerRun% net %1 BthAvctpSvc
:: Bluetooth destek hizmeti
::  Bluetooth cihazlarn bulunmas ve iliŸkilendirmesini sa§lar.
%PowerRun% sc config "bthserv" start= %2
%PowerRun% net %1 bthserv
:: Bluetooth kullanc deste§i hizmeti
::  Kullanc oturumuyla Bluetooth ”zelliklerinin tam ‡alŸmasn sa§lar.
%PowerRun% sc config "BluetoothUserService" start= %2
%PowerRun% net %1 BluetoothUserService
:: Ses a§ ge‡idi hizmeti
::  Eller boŸta profilinin ses a§ ge‡idini destekler.
%PowerRun% sc config "BTAGService" start= %2
%PowerRun% net %1 BTAGService
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.5.tarifeli
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Tarifeli a§lar hizmeti %3. >> %Location%\Logs
echo   %C%[96mTarifeli a§lar hizmeti %3 ...%C%[0m
:: Veri kullanm
::  Arkaplan verilierni ve a§ kullanmn snrlar
%PowerRun% sc config DusmSvc start= %2
%PowerRun% net %1 DusmSvc
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : auto     | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.6.ipyardmci
echo [%date% - %time%] ^| Hizmetleri Y”net ^| IP yardmc hizmeti %4. >> %Location%\Logs
echo   %C%[96mIP yardmcs hizmeti %4 ...%C%[0m
::  IPv6 ge‡iŸ teknolojileri ve IP-HTTPS kullanarak tnel ba§lants sa§lar.
%PowerRun% sc config iphlpsvc start= %3
%PowerRun% net %1 iphlpsvc
:: IP €eviri yaplandrma hizmeti (v4'den v6'ya tam tersi y”nde ‡eviriyi yaplandrr)
%PowerRun% sc config IpxlatCfgSvc start= %2
%PowerRun% net %1 IpxlatCfgSvc
::----------------------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : auto     | %4 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled | %4 : kapatlyor
::----------------------------------------------------------------------
goto :eof

:serv.7.hotspot
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Mobil Etkin Nokta hizmeti %3. >> %Location%\Logs
echo   %C%[96mMobil etkin nokta hizmeti %3 ...%C%[0m
::  Veri ba§lantsnn baŸka bir cihazla paylaŸlmasn sa§lar
%PowerRun% sc config icssvc start= %2
%PowerRun% net %1 icssvc
:: Internet Ba§lants PaylaŸm (ICS)
%PowerRun% sc config SharedAccess start= %2
%PowerRun% net %1 SharedAccess
:: Uygulama katman a§ ge‡idi hizmeti
%PowerRun% sc config ALG start= %2
%PowerRun% net %1 ALG
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.8.ucakmodu
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Radyo ve U‡ak Modu hizmeti %3. >> %Location%\Logs
echo   %C%[96mRadyo y”netim ve u‡ak modu hizmeti %3 ...%C%[0m
::  Radyo y”netimi ve u‡ak modu hizmeti
%PowerRun% sc config RMSvc start= %2
%PowerRun% net %1 RMSvc
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.9.akis
echo [%date% - %time%] ^| Hizmetleri Y”net ^| AkŸ deneyimi hizmeti %3. >> %Location%\Logs
echo   %C%[96mUzak Masast/AkŸ hizmetleri %3 ...%C%[0m
:: ConsentUx kullanc hizmeti 
%PowerRun% sc config ConsentUxUserSvc start= %2
%PowerRun% net %1 ConsentUxUserSvc
:: Miracast, DLNA kullanc arabirimini
%PowerRun% sc config DevicePickerUserSvc start= %2
%PowerRun% net %1 DevicePickerUserSvc
:: Cihaz AkŸ
%PowerRun% sc config DevicesFlowUserSvc start= %2
%PowerRun% net %1 DevicesFlowUserSvc
:: WMP a§ paylaŸm hizmeti
%PowerRun% sc config WMPNetworkSvc start= %2
%PowerRun% net %1 WMPNetworkSvc
::PNRP Makine ad yayn hizmeti
%PowerRun% sc config PNRPAutoReg start= %2
%PowerRun% net %1 PNRPAutoReg
:: EŸ ad ‡”zmleme protokol
%PowerRun% sc config PNRPsvc start= %2
%PowerRun% net %1 PNRPsvc
:: EŸ a§ gruplandrma
%PowerRun% sc config p2psvc start= %2
%PowerRun% net %1 p2psvc
:: EŸler aras a§ oluŸturma kimlik y”neticisi
%PowerRun% sc config p2pimsvc start= %2
%PowerRun% net %1 p2pimsvc
:: UPNP aygt ana makinesi
%PowerRun% sc config upnphost start= %2
%PowerRun% net %1 upnphost
:: Upnp Aygt ana bilgisyar (A§daki cihazlar bulur)
%PowerRun% sc config SSDPSRV start= %2
%PowerRun% net %1 SSDPSRV
:: Uzak masast hizmetleri
%PowerRun% sc config TermService start= %2
%PowerRun% net %1 TermService
:: Uzak Masast Hizmetleri Kullanc Modu Ba§lant Noktas Yeniden Y”nlendiricisi
%PowerRun% sc config UmRdpService start= %2
%PowerRun% net %1 UmRdpService
:: Uzak Masast Yaplandrmas
%PowerRun% sc config SessionEnv start= %2
%PowerRun% net %1 SessionEnv
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.10.wps
echo [%date% - %time%] ^| Hizmetleri Y”net ^| WPS hizmeti %3. >> %Location%\Logs
echo   %C%[96mWindows imdi Ba§lan hizmeti %3 ...%C%[0m
:: Windows imdi Ba§lan - Yaplandrma Dosyas Kaydedici
::  WPS protokolnn uygulanmasn sa§lar.
%PowerRun% sc config wcncsvc start= %2
%PowerRun% net %1 wcncsvc
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.11.camera
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Taraycs ve Kamera hizmeti %3. >> %Location%\Logs
echo   %C%[96mTarayc ve Kamera hizmetleri %3 ...%C%[0m
:: Windows Kamera ‡er‡eve sunucusu
%PowerRun% sc config FrameServer start= %2
%PowerRun% net %1 FrameServer
:: Windows Kamera €er‡eve Sunucusu
%PowerRun% sc config FrameServerMonitor start= %2
%PowerRun% net %1 FrameServerMonitor
:: Resim alma olaylar (Windows G”rnt Alma-WIA)
%PowerRun% sc config WiaRpc start= %2
%PowerRun% net %1 WiaRpc
:: Windows Resim Alma (Windows G”rnt Alma (WIA))
%PowerRun% sc config StiSvc start= %2
%PowerRun% net %1 StiSvc
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.12.insider
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Insider hizmeti %3. >> %Location%\Logs
echo   %C%[96mWindows Insider hizmeti %3 ...%C%[0m
:: Windows Insider Hizmeti
%PowerRun% sc config wisvc start= %2
%PowerRun% net %1 wisvc
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.13.biyometrik
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Biyometrik hizmeti %3. >> %Location%\Logs
echo   %C%[96mWindows Biyometrik hizmeti %3 ...%C%[0m
:: Windows Biyometrik Hizmeti
%PowerRun% sc config WbioSrvc start= %2
%PowerRun% net %1 WbioSrvc
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.14.dokunmatik
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Dokunmatik Klavye ve Kalem hizmeti %3. >> %Location%\Logs
echo   %C%[96mDokunmatik Klavye ve Kalem hizmeti %3 ...%C%[0m
:: Kalem servisi
%PowerRun% sc config PenService start= %2
%PowerRun% net %1 PenService
::Dokunmatik Klavyeyi ve el yazs paneli hizmeit
%PowerRun% sc config TabletInputService start= %2
%PowerRun% net %1 TabletInputService
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.15.sistemgeriyukleme
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Sistem Geri ykleme hizmeti a‡ld. hizmeti %5. >> %Location%\Logs
echo   %C%[96mSistem geri ykleme hizmeti %5 ...%C%[0m
:: Windows Yedekleme ve Geri Ykleme hizmeti
%PowerRun% sc config SDRSVC start= %2
%PowerRun% net %1 SDRSVC
:: Birim G”lge kopyas
%PowerRun% sc config VSS start= %2
%PowerRun% net %1 VSS
:: Microsoft Yazlm G”lge Kopya Sa§laycs
%PowerRun% sc config swprv start= %2
%PowerRun% net %1 swprv
:: Blok Dzeyinde Yedekleme Altyap Hizmeti
%PowerRun% sc config wbengine start= %2
%PowerRun% net %1 wbengine
:: Dosya ge‡miŸi hizmeti
%PowerRun% sc config fhsvc start= %2
%PowerRun% net %1 fhsvc
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /%3 > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /f /v "DisableSR" /t REG_DWORD /d %4 > NUL 2>&1
::-------------------------------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : ENABLE  | %4 : 0 | %5 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %4 : 1 | %5 : kapatlyor
::-------------------------------------------------------------------------------
goto :eof

:serv.16.sysmain
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Hzl Getir^(Sysmain^) hizmeti %3. >> %Location%\Logs
echo   %C%[96mHzl Getir hizmeti %3 ...%C%[0m
%PowerRun% sc config SysMain start= %2
%PowerRun% net %1 SysMain
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : auto   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.17.hibernate
::Hzl baŸlang‡
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Hzl baŸlang‡^(Hibernate^) hizmeti %3. >> %Location%\Logs
echo   %C%[96mHzl baŸlat %3 ...%C%[0m
powercfg /hibernate %1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d %2 /f > NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d %2 /f > NUL 2>&1
::-------------------------------------------------------
::    A‡ = %1 : On  | %2 : 1  | %3 : a‡lyor
:: Kapat = %1 : Off | %2 : 0  | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.18.Location
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Konum hizmeti %7. >> %Location%\Logs
echo   %C%[96mKonum hizmeti %7 ...%C%[0m
reg %5 "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" %~6 > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\Location" /v "Value" /t REG_SZ /d "%3" /f > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowLocation" /t REG_DWORD /d %4 /f > NUL 2>&1
:: Natural Kimlik Do§rulama
%PowerRun% sc config NaturalAuthentication start= %2
%PowerRun% net %1 NaturalAuthentication
:: Co§rafi Konum Hizmeti
%PowerRun% sc config lfsvc start= %2
%PowerRun% net %1 lfsvc
::----------------------------------------------------------------------------------------------------------------------------------------------
::    A‡ = %1 : start  | %2 : demand    | %3 : Allow |  %4 : 1 | %5 : delete | %6 : /v "DisableLocation" /f                   | %7 : a‡lyor
:: Kapat = %1 : stop   | %2 : disabled  | %3 : Deny  |  %4 : 0 | %5 : add    | %6 : /v "DisableLocation" /t REG_DWORD /d 1 /f | %7 : kapatlyor
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

:serv.19.mediaplayer
echo [%date% - %time%] ^| Hizmetleri Y”net ^| MediaPlayer hizmeti %4. >> %Location%\Logs
:: Windows Media Player
echo   %C%[96mWindows Media Player %4 ...%C%[0m
Dism /Online /%3-Feature /FeatureName:MediaPlayback /Quiet /NoRestart
:: Windows Media Player A§ PaylaŸm Hizmeti
%PowerRun% sc config WMPNetworkSvc start= %2
%PowerRun% net %1 WMPNetworkSvc
::---------------------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : ENABLE  | %4 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %4 : kapatlyor
::---------------------------------------------------------------------
goto :eof

:serv.20.hyperv
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Hyper-V hizmeti %4. >> %Location%\Logs
echo   %C%[96mHyper-V hizmeti %4 ...%C%[0m
:: HV Ana Bilgisayar Hizmeti
%PowerRun% sc config HvHost start= %1
:: Hyper-V Birim G”lge Kopyas ˜steyicisi
%PowerRun% sc config vmicvss start= %1
:: Hyper-V Konuk Arabirimi Hizmeti
%PowerRun% sc config vmicguestinterface start= %1
:: Hyper-V Konuk Kapatma Hizmeti
%PowerRun% sc config vmicshutdown start= %1
:: Hyper-V PowerShell Direct Hizmeti
%PowerRun% sc config vmicvmsession start= %1
:: Hyper-V Sinyal Hizmeti
%PowerRun% sc config vmicheartbeat start= %1
:: Hyper-V Uzak Masast SanallaŸtrma Hizmeti
%PowerRun% sc config vmicrdv start= %1
:: Hyper-V Veri De§iŸimi Hizmeti
%PowerRun% sc config vmickvpexchange start= %1
:: Hyper-V Zaman EŸitleme Hizmeti
%PowerRun% sc config vmictimesync start= %1
:: Hyper-V Sanal Makine Y”netimi
%PowerRun% sc config vmms start= %1
:: Hyper-V Ana Bilgisayar ˜Ÿlem Hizmeti
%PowerRun% sc config vmcompute start= %1
%~3 /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-All /Quiet /NoRestart
:: DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V /Quiet /NoRestart
:: DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Tools-All /Quiet /NoRestart
:: DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Management-PowerShell /Quiet /NoRestart
:: DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Hypervisor /Quiet /NoRestart
:: DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Services /Quiet /NoRestart
:: DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Management-Clients /Quiet /NoRestart
::------------------------------------------
::    A‡ = %1 : demand    | %2 : Enable  | %~3 : For | %4 : a‡lyor   
:: Kapat = %1 : disabled  | %2 : Disable | %~3 : ::  | %4 : kapatlyor
::------------------------------------------
goto :eof

:serv.21.xbox
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Xbox hizmeti %7. >> %Location%\Logs
echo   %C%[96mXbox hizmeti %7 ...%C%[0m
:: Oyun DVR ve Yayn kullanc hizmeti
%PowerRun% sc config BcastDVRUserService start= %2
%PowerRun% net %1 BcastDVRUserService
:: Xbox Accessory Management Service
%PowerRun% sc config XboxGipSvc start= %2
%PowerRun% net %1 XboxGipSvc
:: Xbox Live A§ Hizmeti
%PowerRun% sc config XboxNetApiSvc start= %2
%PowerRun% net %1 XboxNetApiSvc
:: Xbox Live Kimlik Do§rulama Y”neticisi
%PowerRun% sc config XblAuthManager start= %2
%PowerRun% net %1 XblAuthManager
:: Xbox Live Oyun Kaydetme
%PowerRun% sc config XblGameSave start= %2
%PowerRun% net %1 XblGameSave
:: Teslimat optimizasyonu
%PowerRun% sc config DoSvc start= %2
%PowerRun% net %1 DoSvc
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_SZ /d "%3" /f > NUL 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_SZ /d "%4" /f > NUL 2>&1
reg %5 "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" %6 > NUL 2>&1
::----------------------------------------------------------------------------------------------------------------------------------------------
::    A‡ = %1 : start  | %2 : demand    | %3 : 1  |  %4 : 0 | %5 : delete | %6 : /v "AllowGameDVR" /f                     | %7 : a‡lyor
:: Kapat = %1 : stop   | %2 : disabled  | %3 : 0  |  %4 : 2 | %5 : add    | %6 : /v "AllowGameDVR" /t REG_DWORD /d 0 /f   | %7 : kapatlyor
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

:serv.22.bitlocker
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Bitlocker hizmeti %3. >> %Location%\Logs
echo   %C%[96mBitlocker hizmeti %3 ...%C%[0m
:: Bitlocker src Ÿifreleme hizmeti
%PowerRun% sc config BDESVC start= %2
%PowerRun% net %1 BDESVC
::-------------------------------------------------------
::    A‡ = %1 : start | %2 : demand   | %3 : a‡lyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::------------------------------------------------------
goto :eof

:serv.23.mixedreality
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Karma Ger‡eklik hizmeti %2. >> %Location%\Logs
echo   %C%[96mKarma Ger‡eklik hizmeti %2 ...%C%[0m
:: Uzlamsal veri hizmeti
%PowerRun% sc config SharedRealitySvc start= %1
:: Volumetrik ses oluŸturucu hizmeti
%PowerRun% sc config VacSvc start= %1
:: Windows alglama benzetimi hizmeti
%PowerRun% sc config perceptionsimulation start= %1
:: Windows Alglama Hizmeti
%PowerRun% sc config spectrum start= %1
::Windows Mixed Reality OpenXR Service
%PowerRun% sc config MixedRealityOpenXRSvc start= %1
::------------------------------------------
::    A‡ = %1 : demand    | %2 : a‡lyor   
:: Kapat = %1 : disabled  | %2 : kapatlyor
::------------------------------------------
goto :eof

:serv.24.driverupdate
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Driver Gncelle / Ykle %3. >> %Location%\Logs
echo   %C%[96mDriver Ykle/Gncelle hizmeti %3 ...%C%[0m
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Update" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update\ExcludeWUDriversInQualityUpdate" "value" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" "%~2"
::-------------------------------------
::    A‡ = %~1 : 0  | %~2: 1  | %3 : a‡lyor   
:: Kapat = %~1 : 1  | %~2: 0  | %3 : kapatlyor
::-------------------------------------
goto :eof

:serv.25.memorycompression
echo [%date% - %time%] ^| Hizmetleri Y”net ^| Bellek skŸtrma %2. >> %Location%\Logs
echo   %C%[96mBellek skŸtrma hizmeti %2 ...%C%[0m
%PowerRun% sc config SysMain start= auto
%PowerRun% sc start SysMain
%PowerRun% powershell "%1-MMAgent -MemoryCompression"
%PowerRun% powershell "%1-MMAgent -PageCombining"
%PowerRun% sc stop SysMain
%PowerRun% sc config SysMain start= disabled
::-------------------------------------
::    A‡ = %~1 : Enable   | %~2: a‡lyor   
:: Kapat = %~1 : Disable  | %~2: kapatlyor
::-------------------------------------
goto :eof

:serv.26.coreparking
echo [%date% - %time%] ^| Hizmetleri Y”net ^| ˜Ÿlemci ‡ekirdek bekleme hizmeti %4. >> %Location%\Logs
echo   %C%[96m˜Ÿlemci ‡ekirdek bekleme hizmeti %4 ...%C%[0m
Call :dword "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
Call :dword "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
%~2 "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
%~2 "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
%~3 "HKLM\SYSTEM\CurrentControlSet\Control\Power" "CoreParkingDisabled" "0"
::-------------------------------------
::    A‡ = %~1 : 100  |  %~2: Call :delete |  %~3: Call :delete2  | %4: a‡lyor
:: Kapat = %~1 : 0    |  %~2: Call :dword  |  %~3: Call :dword    | %4: kapatlyor
::-------------------------------------
goto :eof


:serv.27.gpuoptimization
set /p value=%R%[1;97m%R%[42m GPU Optimizasyonu%R%[0m %C%[90m[%C%[1;91mAMD: 1%C%[90m /%C%[1;92m NVIDIA: 2%C%[90m /%C%[1;96m Men: X%C%[90m]%C%[0m :
	if %value%==1 (Call :amd.optimization)
	if %value%==2 (Call :nvidia.optimization)
	if %value%==x goto servicesmanagement
	if %value%==X goto servicesmanagement
) else
	goto servicesmanagement
goto :eof

:amd.optimization
echo [%date% - %time%] ^| Optimizasyon ^| AMD GPU optimize edildi. >> %Location%\Logs
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "EnableUlps" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableDMACopy" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableBlockWrite" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "StutterMode" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_SclkDeepSleepDisable" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_ThermalAutoThrottlingEnable" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableDrmdmaPowerGating" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "KMD_EnableComputePreemption" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "KMD_DeLagEnabled" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "EnableVceSwClockGating" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "EnableUvdClockGating" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableVCEPowerGating" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableUVDPowerGatingDynamic" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisablePowerGating" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableSAMUPowerGating" "1"
Call :sz "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableFBCForFullScreenApp" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableFBCSupport" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableEarlySamuInit" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_GPUPowerDownEnabled" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_ActivityTarget" "30"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_ODNFeatureEnable" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "EnableUlps" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "GCOOPTION_DisableGPIOPowerSaveMode" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_AllGraphicLevel_DownHyst" "20"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_AllGraphicLevel_UpHyst" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "KMD_FRTEnabled" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "KMD_MaxUVDSessions" "32"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DalAllowDirectMemoryAccessTrig" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DalAllowDPrefSwitchingForGLSync" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "WmAgpMaxIdleClk" "32"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_MCLKStutterModeThreshold" "4096"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "TVEnableOverscan" "0"
goto servicesmanagement

:nvidia.optimization
echo [%date% - %time%] ^| Optimizasyon ^| Nvidia GPU optimize edildi. >> %Location%\Logs
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "RmGpsPsEnablePerCpuCoreDpc" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" "RmGpsPsEnablePerCpuCoreDpc" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "RmGpsPsEnablePerCpuCoreDpc" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" "RmGpsPsEnablePerCpuCoreDpc" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" "RmGpsPsEnablePerCpuCoreDpc" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" "ThreadPriority" "31"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" "EnableRID61684" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "DisablePreemption" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "DisablePreemptionOnS3S4" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "EnableCEPreemption" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "ComputePreemption" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "DisableCudaContextPreemption" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "EnableTiledDisplay" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "TCCSupported" "0"
Call :dword "HKCU\SOFTWARE\NVIDIA Corporation\Global\NVTweak\Devices\509901423-0\Color" "NvCplUseColorCorrection" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "PlatformSupportMiracast" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" "EnableRID73779"  "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" "EnableRID73780"  "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" "EnableRID74361"  "1"
Call :dword "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" "EnableRID44231"  "0"
Call :dword "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" "EnableRID64640"  "0"
Call :dword "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" "EnableRID66610"  "0"
Call :dword "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" "OptInOrOutPreference" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\services\NvTelemetryContainer" "Start" "4"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup" "SendTelemetryData" "0"
Call :dword "HKLM\SOFTWARE\NVIDIA Corporation\Global\Startup\SendTelemetryData" "0" "0"
goto servicesmanagement

:stop
:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş
:wificrackarchley
mode con cols=65 lines=45
title Wireless Password Cracker / (Archley)
echo [%date% - %time%] ^| WifiCrack ^| Wifi Crack b”lm a‡ld. >> %Location%\Logs
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                   Wireless Password Cracker                 %R%[0m%R%[90mº%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                          (Archley)                          %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
FOR /F "tokens=5" %%a in ('netsh wlan show profil ^| find "All"') do (
	FOR /F "tokens=4" %%b in ('netsh wlan show profile "%%a" key^=clear ^| find "Content"') do (
		echo    %R%[36m%%a :%R%[33m %%b%R%[0m
		echo   
		)
	)
)
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo %R%[32m  Menye d”nmek i‡in herhangi bir tuŸa basnz.%R%[0m
pause > NUL
goto :eof

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş
:stop
:WinSahiplik
cls
mode con cols=55 lines=15
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m               Sa§-Tk Sahiplik Al                 %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Ekle%C%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 2.%C%[33m Kaldr%C%[0m                                      %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value= %R%[92m  ˜Ÿlem : %R%[0m
	if %value%==1 (title Sahiplik al ekleniyor... / OgnitorenKs
				   echo [%date% - %time%] ^| WinSahiplik ^| Sa§-tk "Sahiplik Al" eklendi. >> %Location%\Logs
				   reg add "HKCR\*\shell\runas" /f /ve /t REG_SZ /d "Sahipli§i Al" > NUL 2>&1
				   reg add "HKCR\*\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" > NUL 2>&1
				   reg add "HKCR\*\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" > NUL 2>&1
				   reg add "HKCR\*\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" && ica \"%%^1\" /grant administrators:F" > NUL 2>&1
				   reg add "HKCR\*\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" && ica \"%%^1\" /grant administrators:F" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas" /f /ve /t REG_SZ /d "Sahipli§i Al" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" /r /d y && ica \"%%^1\" /grant administrators:F /t" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" /r /d y && ica \"%%^1\" /grant administrators:F /t" > NUL 2>&1
				   echo %R%[92m ˜Ÿlem tamamland.%R%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %value%==2 (title Sahiplik al kaldrlyor... / OgnitorenKs
				   echo [%date% - %time%] ^| WinSahiplik ^| Sa§-tk "Sahiplik Al" kaldrld. >> %Location%\Logs
				   reg delete "HKCR\*\shell\runas" /f > NUL 2>&1
				   reg delete "HKCR\Directory\shell\runas" /f > NUL 2>&1
				   echo %R%[92m ˜Ÿlem tamamland.%R%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %value%==x GOTO kontroll
	if %value%==X GOTO kontroll
) else
	goto WinSahiplik

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş
:stop
:WinCompactOS
cls
mode con cols=55 lines=15
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m           CompactOS (Windows SkŸtrma)          %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m CompactOS %C%[90m[A€]%C%[0m                              %R%[0mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 2.%C%[33m CompactOS %C%[90m[KAPAT]%C%[0m                           %R%[0mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value= %C%[92m ˜Ÿlem :%C%[0m
	if %value%==1 (Call :CompactOn)
	if %value%==2 (Call :CompactOff)
	if %value%==x GOTO kontroll
	if %value%==X GOTO kontroll
) else
	GOTO WinCompactOS

:CompactOn
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS skŸtrma iŸlemi uyguland. >> %Location%\Logs
echo %C%[96m CompactOS skŸtrma iŸlemi uygulanyor...%C%[0m
Compact.exe /CompactOS:always
goto :eof

:CompactOff
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS skŸtrma iŸlemi kapatld. >> %Location%\Logs
echo %C%[96m CompactOS skŸtrma iŸlemi devre dŸ braklyor...%C%[0m
Compact.exe /CompactOS:never
goto :eof
:stop

:gpedit
Call :Logs
echo [%date% - %time%] ^| Gpedit ^| Gpedit.msc eklendi. >> %Location%\Logs
echo %C%[96m Gpedit.msc (Yerel Grup ilkesi) aktifleŸtiriliyor...%C%[0m
FOR /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
FOR /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
goto :eof

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş

:update2050
echo %C%[96m GncelleŸtirmeler 2050 ylna erteleniyor...%C%[0m
echo [%date% - %time%] ^| update2050 ^| GncelleŸtirmeler 2050 ylna ertelendi. >> %Location%\Logs
for /f "tokens=2" %%a in ('echo %date%') do set timeupdate=%%a
set tuyil=%timeupdate:~6%
set tuay=%timeupdate:~3,-5%
set tugun=%timeupdate:~0,-8%
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesStartTime" "%tuyil%-%tuay%-%tugun%T11:05:27Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesStartTime" "%tuyil%-%tuay%-%tugun%T11:05:27Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseUpdatesExpiryTime" "2050-12-29T11:05:30Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesEndTime" "2050-12-29T11:05:30Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesEndTime" "2050-12-29T11:05:30Z"
goto kontroll

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş
::  W˜NDOWS 11 B™LšMš 

:stop
:Win11SettingsMenu
cls
call :Location
call :PowerRun
mode con cols=55 lines=18
title Windows 11 ™zelleŸtir / OgnitorenKs
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m              Windows 11 ™zelleŸtirme              %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Taskbar Boyut %C%[90m[Kš€šK/BšYšK]%C%[0m                 %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 2.%C%[33m Taskbar Konumu %C%[90m[ALT/šST]%C%[0m                    %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 3.%C%[33m Taskbar Simge Konumu %C%[90m[SOL/ORTA]%C%[0m             %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 4.%C%[33m Sa§-Tk Men %C%[90m[ESK˜/YEN˜]%C%[0m                    %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 5.%C%[33m Sa§-Tk Terminal %C%[90m[EKLE/KALDIR]%C%[0m              %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 6.%C%[33m Sahiplik Al %C%[90m[EKLE/KALDIR]%C%[0m                   %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 7.%C%[33m Compact OS (Windows SkŸtrma) %C%[90m[A€/KAPAT]%C%[0m  %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 8.%C%[33m Gpedit.msc (Yerel Grup ilkesi)%C%[90m[EKLE]%C%[0m        %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 9.%C%[33m GncelleŸtirmeleri 2050 ylna ertele%C%[0m       %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m  ˜Ÿlem : %C%[0m
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
title G”rev ‡ubu§u boyut ayar / OgnitorenKs
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m             G”rev €ubu§u Boyut Ayar              %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 0.%C%[33m K‡k %C%[0m                                      %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Varsaylan %C%[0m                                 %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 2.%C%[33m Byk %C%[0m                                      %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value= %C%[92m ˜Ÿlem : %C%[0m
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuChange ^| Taskbar boyut ayar "%value%" olarak ayarland. >> %Location%\Logs	
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarSi" /t REG_DWORD /d %value%
Call :ExplorerReset
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11MenuLocation
cls
mode con cols=55 lines=15
title G”rev ‡ubu§u Location ayar / OgnitorenKs
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                G”rev €ubu§u Konumu                %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m šst%C%[0m                                         %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 3.%C%[33m Alt %C%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value= %C%[92m ˜Ÿlem : %C%[0m
	if %value%==x goto win11settingsmenu
	if %value%==X goto win11settingsmenu

echo [%date% - %time%] ^| Win11MenuLocation ^| Taskbar Location ayar "%value%" olarak ayarland. >> %Location%\Logs
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3" /v "Settings" /t REG_BINARY /d "30000000feffffff7af400000%value%0000003000000030000000000000000804000080070000380400006000000001000000" /f
Call :ExplorerReset
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof


:Win11MenuOld
cls
mode con cols=55 lines=15
title G”rev ‡ubu§u simge Locationu ayar / OgnitorenKs
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m            G”rev €ubu§u Simge Konumu              %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 0.%C%[33m Sol%C%[0m                                         %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Orta%C%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value= %C%[92m ˜Ÿlem : %C%[0m
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuOld ^| Taskbar simge Locationu "%value%" olarak ayarland. >> %Location%\Logs
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAl" /t REG_DWORD /d %value%
Call :ExplorerReset
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11RightClick
cls
mode con cols=55 lines=15
title Sa§ tk se‡enek ayar / OgnitorenKs
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                 Sa§-Tk Men Ayar                %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Eski%C%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 2.%C%[33m Yeni%C%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value= %C%[92m ˜Ÿlem : %C%[0m
	if %value%==1 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 sa§-tk ayar eski haline getirildi.. >> %Location%\Logs
				   reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&taskkill /f /im explorer.exe&start explorer.exe&goto :eof)
	if %value%==2 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 sa§-tk ayar yeni haline getirildi.. >> %Location%\Logs
				   reg delete "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&goto :eof)
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu	

:Win11RightMenuTerminal
cls
mode con cols=55 lines=15
title Sa§-tk Terminal ayar / OgnitorenKs
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m              Sa§-Tk Terminal Ayar               %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Terminal%C%[90m [KALDIR]%C%[0m                           %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 2.%C%[33m Terminal%C%[90m [EKLE]%C%[0m                             %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value= %C%[92m ˜Ÿlem : %C%[0m
	if %value%==1 (echo [%date% - %time%] ^| Win11RightMenuTerminal ^| Windows 11 sa§-tk b”lmnden terminal kaldrld. >> %Location%\Logs
				   reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{9F156763-7844-4DC4-B2B1-901F640F5155}" /t REG_SZ /d "" /f&taskkill /f /im "explorer.exe"&start explorer.exe&goto :eof)
	if %value%==2 (echo [%date% - %time%] ^| Win11RightMenuTerminal ^| Windows 11 sa§-tk b”lmne terminal eklendi. >> %Location%\Logs
				   reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /f&goto :eof)
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş


:stop
:Win10SettingsMenu
cls
mode con cols=55 lines=18
title Windows 10 ™zelleŸtir / OgnitorenKs
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m              Windows 10 ™zelleŸtirme              %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Taskbar saat yan simge ayar%C%[90m [G™STER/G˜ZLE]%C%[0m%R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 2.%C%[33m Bildirim Alan%C%[90m [A€/KAPAT]%C%[0m                   %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 3.%C%[33m Sahiplik Al%C%[90m [EKLE/KALDIR]%C%[0m                   %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 4.%C%[33m Taskbar Hava Durumu%C%[90m [A€/KAPAT]%C%[0m              %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 5.%C%[33m Microsoft Store%C%[90m [YšKLE/KALDIR]%C%[0m              %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 6.%C%[33m Compact OS (Windows SkŸtrma)%C%[90m [A€/KAPAT]%C%[0m  %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 7.%C%[33m Gpedit.msc (Yerel Grup ilkesi)%C%[90m [EKLE]%C%[0m       %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 8.%C%[33m Simgeleri De§iŸtir%C%[90m [ESK˜/YEN˜]%C%[0m              %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 9.%C%[33m GncelleŸtirmeleri 2050 ylna ertele%C%[0m       %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m  ˜Ÿlem : %C%[0m
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
title G”rev ‡ubu§u dzenleniyor... / OgnitorenKs
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m               Saat Yan Simge Ayar               %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 0.%C%[33m Hepsini G”ster%C%[90m [A€]%C%[0m                         %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Hepsini Gizle%C%[90m [KAPAT]%C%[0m                       %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m  ˜Ÿlem : %C%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10EkranTepsi ^| Windows 10 Saat yan simgeri ayar "%value%" olarak ayarland. >> %Location%\Logs
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /f /v "EnableAutoTray" /t REG_DWORD /d %value% > NUL 2>&1
Call :ExplorerReset
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:Win10Bildirim
cls
mode con cols=55 lines=15
title Bildirim alan dzenleniyor... / OgnitorenKs
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m               Bildirim Alan Ayar                %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 0.%C%[33m A‡k%C%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Kapal%C%[0m                                      %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value= %C%[92m  ˜Ÿlem : %C%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10Bildirim ^| Windows 10 Bildirim alan ayar "%value%" olarak ayarland. >> %Location%\Logs
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %value% > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %value% > NUL 2>&1
Call :ExplorerReset
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:Win10HavaDurumu
cls
mode con cols=55 lines=15
title Taskbar Hava Durumu dzenleniyor... / OgnitorenKs
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m         G”rev €ubu§u Hava Durumu Ayar            %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 0.%C%[33m Kapat%C%[0m                                       %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m A‡%C%[0m                                          %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value= %C%[92m  ˜Ÿlem : %C%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu
	
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d %value% /f 
Call :ExplorerReset
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:Win10StoreDelIns
cls
mode con cols=55 lines=15
title Market Y”neticisi / OgnitorenKs
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                   Market Y”netici                 %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Market%C%[90m [KALDIR]%C%[0m                             %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 2.%C%[33m Market%C%[90m [YšKLE]%C%[0m                              %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m  ˜Ÿlem : %C%[0m
	if %value%==1 (Call :Win10StoreDel)
	if %value%==2 (Call :Win10StoreIns)
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu
) else
	goto Win10.Store.Del.Ins

:Win10StoreDel
cls
mode con cols=109 lines=35
title Microsoft Store kaldrlyor / OgnitorenKs
echo [%date% - %time%] ^| Win10StoreDelIns ^| Windows 10 market uygulamalar kaldrld. >> %Location%\Logs
echo %R%[92m Microsoft Store siliniyor...%R%[0m

powershell -command "Get-AppXPackage | Remove-AppxPackage"

echo %R%[92m Hizmetler durduruluyor...%R%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution" > NUL 2>&1
net start wuauserv > NUL 2>&1
:: AppX Da§tm Hizmeti
%PowerRun% sc config AppXSvc start= disabled
%PowerRun% net stop AppXSvc
:: Yetenek eriŸim y”netim istemcisi
%PowerRun% sc config camsvc start= disabled
%PowerRun% net stop camsvc
:: Depolama hizmeti
%PowerRun% sc config StorSvc start= disabled
%PowerRun% net stop StorSvc
:: ˜stemci Lisans Hizmeti
%PowerRun% sc config ClipSVC start= disabled
%PowerRun% net stop ClipSVC

echo %R%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%R%[0m
timeout /t 3 /nobreak
goto :eof

:Win10StoreIns
cls
mode con cols=109 lines=35
title Market ykleniyor... / OgnitorenKs
echo [%date% - %time%] ^| Win10StoreDelIns ^| Windows 10 Market uygulamas yeniden yklendi. >> %Location%\Logs
echo %R%[92m Microsoft Store ykleniyor...%R%[0m
powershell -command "Add-AppxPackage -DisableDevelopmentMode -Register $Env:%windir%\SystemApps\*\AppxManifest.xml"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "DisableSubscription" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "InactivityShutdownDelay" /t REG_DWORD /d 0x0000012c /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ProcessBiosKey" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "RefreshRequired" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ServiceDll" /t REG_EXPAND_SZ /d "%SystemRoot%\System32\ClipSVC.dll" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ServiceDllUnloadOnStop" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d 0 /f
:: echo %R%[92m Hizmetler baŸlatlyor...%R%[0m
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
RD /S /Q "%windir%\SoftwareDistribution"
net start wuauserv > NUL 2>&1
:: echo %R%[92m DLL dosyalar kontrol ediliyor...%R%[0m
regsvr32  softpub.dll /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  dssenh.dll /s&regsvr32  rsaenh.dll /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  slbcsp.dll /s&regsvr32  mssip32.dll /s&regsvr32  cryptdlg.dll /s&regsvr32  msxml3.dll /s&regsvr32  comcat.dll /s&Regsvr32  Msxml.dll /s&Regsvr32  Msxml2.dll /s&regsvr32  mshtml.dll /s&regsvr32  shdocvw.dll /s&regsvr32  browseui.dll /s&regsvr32  msjava.dll /s&regsvr32  shdoc401.dll /s&regsvr32  cdm.dll /s&regsvr32  shdoc401.dll /i /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  asctrls.ocx /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  softpub.dll /s&regsvr32  oleaut32.dll /s&regsvr32  shdocvw.dll /I /s&regsvr32  Shell32.dll /s&regsvr32  browseui.dll /s&regsvr32  browseui.dll /I /s&regsvr32  msrating.dll /s&regsvr32  mlang.dll /s&regsvr32  hlink.dll /s&regsvr32  mshtmled.dll /s&regsvr32  urlmon.dll /s&regsvr32  urlmon.dll /i /s&regsvr32  plugin.ocx /s&regsvr32  sendmail.dll /s&regsvr32  scrobj.dll /s&regsvr32  mmefxe.ocx /s&regsvr32  corpol.dll /s&regsvr32  jscript.dll /s&regsvr32  imgutil.dll /s&regsvr32  thumbvw.dll /s&regsvr32  cryptext.dll /s&regsvr32  rsabase.dll /s&regsvr32  inseng.dll /s&regsvr32  iesetup.dll /i /s&regsvr32  actxprxy.dll /s&regsvr32  dispex.dll /s&regsvr32  occache.dll /s&regsvr32  occache.dll /i /s&regsvr32  iepeers.dll /s&regsvr32  cdfview.dll /s&regsvr32  webcheck.dll /s&regsvr32  mobsync.dll /s&regsvr32  pngfilt.dll /s&regsvr32  licmgr10.dll /s
regsvr32  icmfilter.dll /s&regsvr32  hhctrl.ocx /s&regsvr32  inetcfg.dll /s&regsvr32  tdc.ocx /s&regsvr32  MSR2C.DLL /s&regsvr32  msident.dll /s&regsvr32  msieftp.dll /s&regsvr32  xmsconf.ocx /s&regsvr32  ils.dll /s&regsvr32  msoeacct.dll /s&regsvr32  inetcomm.dll /s&regsvr32  msdxm.ocx /s&regsvr32  dxmasf.dll /s&regsvr32  l3codecx.ax /s&regsvr32  acelpdec.ax /s&regsvr32  mpg4ds32.ax /s&regsvr32  voxmsdec.ax /s&regsvr32  danim.dll /s&regsvr32  Daxctle.ocx /s&regsvr32  lmrt.dll /s&regsvr32  datime.dll /s&regsvr32  dxtrans.dll /s&regsvr32  dxtmsft.dll /s&regsvr32  WEBPOST.DLL /s&regsvr32  WPWIZDLL.DLL /s&regsvr32  POSTWPP.DLL /s&regsvr32  CRSWPP.DLL /s&regsvr32  FTPWPP.DLL /s&regsvr32  FPWPP.DLL /s&regsvr32  WUAPI.DLL /s&regsvr32  wups2.dll /S&regsvr32  WUAUENG.DLL /s&regsvr32  ATL.DLL /s&regsvr32  WUCLTUI.DLL /s&regsvr32  WUPS.DLL /s&regsvr32  WUWEB.DLL /s&regsvr32  wshom.ocx /s&regsvr32  wshext.dll /s&regsvr32  vbscript.dll /s&regsvr32  scrrun.dll mstinit.exe /setup /s&regsvr32  msnsspc.dll /SspcCreateSspiReg /s&regsvr32  msapsspc.dll /SspcCreateSspiReg /s
wsreset
echo %R%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%R%[0m
timeout /t 3 /nobreak
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:stop
:icochangemenu
cls
mode con cols=55 lines=15
title ICO Y”neticisi / OgnitorenKs
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                    ICO Y”netici                   %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Eski Simge%C%[90m [YšKLE]%C%[0m                          %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 2.%C%[33m Yeni Simge%C%[90m [YšKLE]%C%[0m                          %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Men%R%[0m                                        %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m  ˜Ÿlem : %C%[0m
	if %value%==1 (Call :icochange Oldico)
	if %value%==2 (Call :icochange Newico)
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu
) else
	goto icochange

:icochange
cls
Call :PowerRun
Call :Location
echo [%date% - %time%] ^| icochangemenu ^| "%~1" simge dosyas yklendi. >> %Location%\Logs
title ICO Ayarlar yaplyor / OgnitorenKs
dir /b %Location%\Files\Oldico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :oldicodown)
title ICO Ayarlar yaplyor / OgnitorenKs
taskkill /f /im "explorer.exe" > NUL 2>&1
echo %R%[1;97m%R%[42m %1 simgeler ykleniyor...%R%[0m
%PowerRun% Powershell -command "Expand-Archive -Force '%Location%\Files\%~1.zip' 'C:\Windows'"
timeout /t 3 /nobreak > NUL
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
"%Location%\Files\ReIconCache.exe"
powershell -command "Start-Process 'C:\Windows\explorer.exe'"
goto Win10SettingsMenu

:oldicodown
echo %R%[96m Simge dosyalar indiriliyor...%R%[0m
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo  %R%[1;97m%R%[41m               ˜nternet ba§lants yok.              %R%[0m
						echo  %R%[1;97m%R%[41m   Ba§lanty sa§layp herhangi bir tuŸa basnz    %R%[0m
						Call :Logss "oldicodown" "HATA! ˜nternet ba§lants bulunamad."
						pause > NUL
						goto oldicodown)

echo [%date% - %time%] ^| oldicodown ^| Simge dosyalar indirildi. >> %Location%\Logs
%Location%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=18kwIyPhIpk0wS-LbwMhsi4ocXJk0R-rG" -O %Location%\Files\Oldico.zip
%Location%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=1D6TR20HEo6diHH_g53GxPL5Tpdg3cT2m" -O %Location%\Files\Newico.zip
goto :eof


:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş
:stop
:AdminMenu
cls
mode con cols=55 lines=17
title Kullanc ˜Ÿlemleri \ OgnitorenKs
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m              Kullanc Hesap Y”netimi             %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 1.%C%[33m Administrator%C%[90m [AKT˜F]%C%[0m                       %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 2.%C%[33m Administrator%C%[90m [PAS˜F]%C%[0m                       %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 3.%C%[33m Admin grubuna Kullanc ekle%C%[0m                %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 4.%C%[33m Kullanc%C%[90m [EKLE]%C%[0m                            %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 5.%C%[33m Kullanc%C%[90m [S˜L]%C%[0m                             %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 6.%C%[33m ifremi unuttum%C%[0m                             %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m 7.%C%[33m Mevcut Kullanclar G”ster%C%[0m                 %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m   %R%[32m X.%R%[36m Menye d”n%R%[0m                                  %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m Yapmak istedi§iniz iŸlem : %C%[0m
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
title Administrator A‡ \ OgnitorenKs
echo 
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m        Administrator AktifleŸtiriliyor...       %R%[0m%R%[90mº%R%[0m
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo [%date% - %time%] ^| AdminMenu ^| Administrator aktifleŸtirildi. >> %Location%\Logs
net user administrator /active:yes
net user administrator *
echo %R%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%R%[0m
timeout /t 1 /nobreak > NUL
goto AdminMenu

:Tweak2AdminPasif
cls
mode con cols=55 lines=20
title Administrator kapat \ OgnitorenKs
echo 
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m           Administrator Kapatlyor...          %R%[0m%R%[90mº%R%[0m
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo [%date% - %time%] ^| AdminMenu ^| Administrator kapatld. >> %Location%\Logs
net user Administrator /active:no
echo %R%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%R%[0m
timeout /t 1 /nobreak > NUL
goto AdminMenu

:Tweak3GrupAdmin
cls
mode con cols=55 lines=20
title Admin Grubuna Kullanc ekle \ OgnitorenKs
echo 
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m          Admin Grubuna Kullanc Ekle           %R%[0m%R%[90mº%R%[0m
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m  Kullanc Ad : %C%[0m  
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Admin grubuna %value% kullancs eklendi. >> %Location%\Logs
net localgroup Administrators %value% /add 
echo %R%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak4NewUsers
cls
mode con cols=55 lines=20
title Yeni Kullanc ekle \ OgnitorenKs
echo 
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m               Yeni Kullanc Ekle               %R%[0m%R%[90mº%R%[0m
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m  Kullanc Ad : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Yeni kullanc "%value%" oluŸturuldu. >> %Location%\Logs
net user %value% * /add

echo %R%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak5DelUsers
cls
mode con cols=55 lines=20
title Kullanc Sil \ OgnitorenKs
echo 
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m                  Kullanc Sil                  %R%[0m%R%[90mº%R%[0m
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m  Kullanc Ad : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Kullanc "%value%" silindi. >> %Location%\Logs
net user %value% /delete

echo %R%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak6UsersKey
cls
mode con cols=55 lines=20
title ifremi Unuttum / De§iŸtir \ OgnitorenKs
echo 
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m             ifremi Unuttum / De§iŸtir          %R%[0m%R%[90mº%R%[0m
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m  Kullanc Ad : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Kullanc "%value%" Ÿifre de§iŸtirildi. >> %Location%\Logs
net user %value% *

echo %R%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş
:shutdownpc
cls
mode con cols=55 lines=18
title ShutDown / OgnitorenKs
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m            Otomatik Bilgisayar Kapatma            %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m                 %R%[32m 0.%C%[33m 30%C%[90m [Dakika]%C%[0m                   %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m                 %R%[32m 1.%C%[33m  1%C%[90m [Saat]%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m                 %R%[32m 2.%C%[33m  2%C%[90m [Saat]%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m                 %R%[32m 3.%C%[33m  3%C%[90m [Saat]%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m                 %R%[32m 4.%C%[33m  4%C%[90m [Saat]%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m                 %R%[32m 5.%C%[33m  5%C%[90m [Saat]%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m                 %R%[32m 6.%C%[33m  6%C%[90m [Saat]%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m                 %R%[32m 7.%C%[33m  7%C%[90m [Saat]%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m                 %R%[32m 8.%C%[33m  8%C%[90m [Saat]%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m                 %R%[32m 9.%R%[33m ˜ptal et%R%[0m                      %R%[90mº%R%[0m
echo  %R%[90mº%R%[0m                 %R%[32m X.%R%[36m Menye d”n%R%[0m                    %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p value=%C%[92m  ˜Ÿlem : %C%[0m
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
				   echo %R%[96m  Oto kapatma iptal edildi%R%[0m
				   timeout /t 2 /nobreak > NUL)
	if %value%==x goto menu
	if %value%==X goto menu
) else
	goto shutdownpc
goto shutdownpc
:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş
:stop
:UpdateAfter
cls
Call :PowerRun
echo [%date% - %time%] ^| UpdateAfter ^| Gncelleme sonras temizlik b”lm ‡alŸtrld. >> %Location%\Logs
echo %R%[92m Gncelleme sonras temizlik iŸlemi yaplyor.%R%[0m
echo %R%[92m Defender dosyalar siliniyor.%R%[0m
%PowerRun% DEL /F /Q /A "%windir%\System32\CompatTelRunner.exe"
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\MsSecFlt.sys"
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\WdBoot.sys"
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\WdFilter.sys"
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\WdNisDrv.sys"
%PowerRun% DEL /F /Q /A "%windir%\System32\smartscreen.exe"
%PowerRun% DEL /F /Q /A "%windir%\System32\securityhealthhost.exe"
%PowerRun% DEL /F /Q /A "%windir%\System32\securityhealthservice.exe"
%PowerRun% DEL /F /Q /A "%windir%\System32\securityhealthsystray.exe"
%PowerRun% DEL /F /Q /A "%windir%\System32\SgrmBroker.exe"
%PowerRun% DEL /F /Q /A "%programfiles%\Windows Defender Advanced Threat Protection"
%PowerRun% DEL /F /Q /A "%programfiles%\Windows Defender"
%PowerRun% DEL /F /Q /A "%programfiles%\Windows Security"
%PowerRun% DEL /F /Q /A "%programfiles(x86)%\Windows Security"
%PowerRun% DEL /F /Q /A "%programfiles(x86)%\Windows Defender"
%PowerRun% DEL /F /Q /A "%programfiles(x86)%\Windows Defender Advanced Threat Protection"
%PowerRun% DEL /F /Q /A "%programdata%\Microsoft\Windows Security Health"
%PowerRun% DEL /F /Q /A "%programdata%\Microsoft\Windows Defender Advanced Threat Protection"
%PowerRun% DEL /F /Q /A "%programdata%\Microsoft\Windows Defender"
%PowerRun% DEL /F /Q /A "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy"
echo %R%[92m Defender hizmetler kapatlyor.%R%[0m
%PowerRun% net stop SecurityHealthService
%PowerRun% sc delete SecurityHealthService
%PowerRun% net stop Sense
%PowerRun% sc delete Sense
%PowerRun% net stop SgrmBroker
%PowerRun% sc delete SgrmBroker
%PowerRun% net stop WdNisSvc
%PowerRun% sc delete WdNisSvc
%PowerRun% net stop WinDefend
%PowerRun% sc delete WinDefend 
%PowerRun% net stop wscsvc
%PowerRun% sc delete wscsvc 
echo %R%[92m Hizmetler ilk haline getiriliyor...%R%[0m
:: Akll kart
%PowerRun% sc config SCardSvr start= disabled
%PowerRun% net stop SCardSvr
:: Akll kart cihaz numaralandrma hizmeti
%PowerRun% sc config ScDeviceEnum start= disabled
%PowerRun% net stop ScDeviceEnum
:: Akll kart kaldrma ilkesi
%PowerRun% sc config SCPolicySvc start= disabled
%PowerRun% net stop SCPolicySvc
:: Sertifika yayma (Akll Kart)
%PowerRun% sc config CertPropSvc start= disabled
%PowerRun% net stop CertPropSvc
:: All joyn y”nlendirici hizmeti
%PowerRun% sc config AJRouter start= disabled
%PowerRun% net stop AJRouter
:: BrancCache istemcisi
%PowerRun% sc config PeerDistSvc start= disabled
%PowerRun% net stop PeerDistSvc
:: Co§rafi Location hizmeti
%PowerRun% sc config Ifsvc start= disabled
%PowerRun% net stop Ifsvc
:: Czdan Hizmeti
%PowerRun% sc config WalletService start= disabled
%PowerRun% net stop WalletService
:: Da§tlmŸ ba§lant izleme istemcisi
%PowerRun% sc config TrkWks start= disabled
%PowerRun% net stop TrkWks
:: Ba§l kullanc deneyimleri ve Telemetrisi
%PowerRun% net stop DiagTrack
%PowerRun% sc delete DiagTrack
%PowerRun% net stop dmwappushservice
%PowerRun% sc delete dmwappushservice
%PowerRun% net stop diagnosticshub.standartcollector.service
%PowerRun% sc delete diagnosticshub.standartcollector.service
:: Diagnostic Execution Service (TeŸhis ve Sorun Giderme)
%PowerRun% net stop diagsvc
%PowerRun% sc delete diagsvc
:: Dosya Ge‡miŸi Hizmeti
%PowerRun% sc config fhsvc start= disabled
%PowerRun% net stop fhsvc
:: Czdan Hizmeti
%PowerRun% sc config WalletService start= disabled
%PowerRun% net stop WalletService
:: Ebeveyn Kontrolleri
%PowerRun% sc config WpcMonSvc start= disabled
%PowerRun% net stop WpcMonSvc
:: Fax
%PowerRun% sc config fax start= disabled
%PowerRun% net stop fax
:: KiŸi hizmeti
%PowerRun% sc config PimIndexMaintenanceSvc start= disabled
%PowerRun% net stop PimIndexMaintenanceSvc
:: Kurumsal uygulama y”netimi hizmeti
%PowerRun% sc config EntAppSvc start= disabled
%PowerRun% net stop EntAppSvc
:: Edge gncelleme hizmeti
%PowerRun% net stop edgeupdate
%PowerRun% net stop edgeupdatem
%PowerRun% net stop MicrosoftEdgeElevationService
%PowerRun% sc config edgeupdate start= disabled
%PowerRun% sc config edgeupdatem start= disabled
%PowerRun% sc config MicrosoftEdgeElevationService start= disabled
:: Parekende G”steri hizmeti
%PowerRun% sc config RetailDemo start= disabled
%PowerRun% net stop RetailDemo
:: Program Uyumluluk Yardmcs Hizmeti
%PowerRun% sc config PcaSvc start= disabled
%PowerRun% net stop PcaSvc
:: Tanlama ˜lkesi Hizmeti
%PowerRun% sc config DPS start= disabled
%PowerRun% net stop DPS
:: Karma Ger‡eklik
%PowerRun% sc config SharedRealitySvc start= disabled
%PowerRun% net stop SharedRealitySvc
%PowerRun% sc config VacSvc start= disabled
%PowerRun% net stop VacSvc
%PowerRun% sc config perceptionsimulation start= disabled
%PowerRun% net stop perceptionsimulation
%PowerRun% sc config spectrum start= disabled
%PowerRun% net stop spectrum
%PowerRun% net stop MixedRealityOpenXRSvc
%PowerRun% sc config MixedRealityOpenXRSvc start= disabled
:: Windows Hata Raporlama
%PowerRun% sc config WerSvc start= disabled
%PowerRun% net stop WerSvc
:: Windows Search
%PowerRun% net stop WSearch
%PowerRun% sc config WSearch start= disabled
:: €evrimdŸ dosyalar
%PowerRun% sc config CscService start= disabled
%PowerRun% net stop CscService
:: NFC/SE hizmeti
%PowerRun% sc config SEMgrSvc start= disabled
%PowerRun% net stop SEMgrSvc
:: ™nerilen Sorun giderme hizmeti
%PowerRun% net stop TroubleshootingSvc
%PowerRun% sc config TroubleshootingSvc start= disabled
:: ˜ndirilen haritalar y”neticisi
%PowerRun% net stop MapsBroker
%PowerRun% sc config MapsBroker start= disabled
:: KiŸi verileri
%PowerRun% net stop PimIndexMainteanceSvc
%PowerRun% sc config PimIndexMainteanceSvc start= disabled
:: Natural Kimlik Do§rulamas
%PowerRun% net stop NaturalAuthentication
%PowerRun% sc config NaturalAuthentication start= disabled
:: Perakende g”steri hizmeti
%PowerRun% net stop RetailDemo
%PowerRun% sc config RetailDemo start= disabled
:: Resim alma olaylar
%PowerRun% net stop WiaRpc
%PowerRun% sc config WiaRpc start= disabled
:: Windows resim alma (WIA) 
%PowerRun% net stop StiSvc
%PowerRun% sc config StiSvc start= disabled
:: Temalar
%PowerRun% net stop Themes
%PowerRun% sc config Themes start= disabled
:: €alŸma klas”rleri istemcisi
%PowerRun% net stop workfolderssvc
%PowerRun% sc config workfolderssvc start= disabled
:: ˜kincil oturum a‡ma 
%PowerRun% sc config seclogon start= disabled
echo %R%[92m Regedit kaytlar yeniden dzenleniyor.%R%[0m
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
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" "SecurityHealth" /t REG_BINARY /d "030000000000000000000000"
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
FOR "tokens=2" %%a in ('Powershell -command "Get-CimInstance -ClassName Win32_UserAccount | Select-Object -Property Name,SID" ^| Find "%username%"') do set currentusername=%%a
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
Call :dword "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "IsExpedited" 0 & :: Gncellemenin yklenmesi gerekti§inde bilgisayar mmkn olan en ksa srede devre dŸ brak
Call :dword "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "RestartNotificationsAllowed2" 0 & :: Gncelleme sonras yeniden baŸlatma bildirimi devre dŸ braklyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "ModelDownloadAllowed" 0 & :: KonuŸma modellerinin gnceleŸtirmeleri devre dŸ braklyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" "DODownloadMode" "100" & :: Teslimat Optimizasyonu BITS hizmeti olarak ayarlanyor...
:: Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" 2 & :: Driverlar kurulu de§il ise kurulmas i‡in ayarlanyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "NoAutoUpdate" "0" & :: Update Manuel
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "AUOptions" "2" & :: Update Manuel
:: Cortana
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" "0"
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" "0" & :: Cortana - Oturum a‡t§m cihazlar ge‡miŸimi kullan
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" "0" & :: Cortana - Cihaz de§iŸtirirken etkinlik ”nerileri
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
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowTaskViewButton" 0 & :: G”rev G”rnm Simgesi Kaldrlyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "MMTaskbarEnabled" 1 & :: G”rev €ubu§u ve btn simgeleri tm monit”rlerde g”ster
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "MMTaskbarMode" 0 & :: G”rev €ubu§u ve btn simgeleri tm monit”rlerde g”ster
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" "EnableTransparency" 0 & :: G”rev ‡ubu§u transparan ”zelli§i devre dŸ braklyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowCortanaButton" 0 & :: Cortana Butonu kaldrlyor...
:: Explorer
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "LaunchTo" 1 & :: Explorer "Bu Bilgisayar" olarak ayarlanyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" "EnthusiastMode" 1 & :: Dosya kopyalama iletiŸim kutusuda daha fazla detay g”ster olarak ayarlanyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "HideFileExt" 0 & :: Dosya uzantlar aktifleŸtiriliyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" "DisableAutoplay" 1 & :: Otomatik oynatma kapatlyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoRecentDocsHistory" 0 & :: Son a‡lan belgelerin ge‡miŸi kapatlyor...
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "ClearRecentDocsOnExit" 1 & :: Windows'u kapatrken yeni a‡lan belgelerin ge‡miŸini temizle aktifleŸtiriliyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowRecent" 0 & :: Son kullanlan dosyalarn hzl eriŸimde g”rntlenmesi engelleniyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowFrequent" 0 & :: Hzl EriŸimden Sk Kullanlan klas”rler kaldrlyor
Call :binary "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "Link" "00000000" & :: Ksayol yazs kaldrlyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoInternetOpenWith" 1 & :: Birlikte a‡ se‡ene§inden internette ara se‡ene§i kaldrlyor...
:: Search
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" 1 & :: Arama b”lm simge haline getiriliyor
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" 1 & :: Web aramas kapatlyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" 0 & :: Web'de arama yapmayn veya Arama'da web sonu‡larn g”rntlemeyin
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowIndexingEncryptedStoresOrItems" 0 & :: ifrelenmiŸ dosyalarn indekslenme izni kaldrlyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" 0 & :: Arama ve Cortana'nn Locationu kullanma izni kapatlyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AlwaysUseAutoLangDetection" 0 & :: ˜‡eri§i ve ”zellikleri dizine eklerken her zaman otomatik dil alglamay kullann kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaConsent" 0 & :: Cortana izni kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaInAmbientMode" 0 & :: Cortana Ortam modu kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "AllowSearchToUseLocation" 0 & :: Arama b”lmnn Locationu kullanmas engelleniyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" "SafeSearchMode" 0 & :: Gvenli arama modu kapatlyor.
Call :dword "HKCU\Software\Policies\Microsoft\Windows\Explorer" "DisableSearchBoxSuggestions" 1 & :: Dosya Gezgini arama kutusundaki son arama giriŸlerinin g”rntlenmesini kapatn
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" 1 & :: Web aramas kapatlyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" 0 & :: Tarifeli ba§lantlar zerinden aramada web'de arama yapmayn veya web sonu‡larn g”rntlemeyin
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCloudSearch" 0 & :: Bulut arama kapatlyor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "AcceptedPrivacyPolicy" 0 & :: Gizlilik politikas devre dŸ braklyor.
Call :dword "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "VoiceActivationDefaultOn" 0 & :: Sesle etkinleŸtirme kapatlyor.
Call :dword "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "VoiceActivationEnableAboveLockscreen" 0 & :: Kilit Ekrannn šstnde Sesle EtkinleŸtirme kapatlyor.
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" "DisableVoice" 1 & :: Ses etkinleŸtirme kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "BingSearchEnabled" 0 & :: Arama - Bing web sonu‡larn dahil et kapatlyor...
:: Optimizasyon
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" 0 & :: Hiberboot Devre DŸ braklyor
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" 0 & :: Hazrda bekletme ”zelli§i devre dŸ braklyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" "ShowHibernateOption" 0 & :: Kapatma mens - Hibernate kapatlyor.
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" "ShippedWithReserves" 0 & :: AyrlmŸ depolama alan devre dŸ braklyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" 0 & :: Prefetch devre dŸ braklyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" 0 & :: Prefetch devre dŸ braklyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" 0 & :: Startup Delay (BaŸlang‡ Gecikmesi) devre dŸ braklyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" 0 & :: Qos Limiti Devre DŸ braklyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" "LongPathsEnabled" 1 & :: Windows 255 Karakter Snr devre dŸ braklyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" 0 & :: DiagTrack Devre DŸ braklyor...
Call :dword "HKEY_CURRENT_USER\Software\Microsoft\Narrator\QuickStart" "SkipQuickStart" 1 & :: Narrator QuickStart kapatlyor.
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SoftLandingEnabled" 0 & :: Windows ”nerileri devre dŸ braklyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-310093Enabled" 0 & :: Windows karŸlama deneyimi kapatlyor...
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisablePCA" 1 & :: Program uyumluluk yardmcs devre dŸ braklyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "HwSchMode" 2 & :: Donanm hzlandrmal GPU Planlamas aktifleŸtiriliyor...
:: Call :sz "HKCU\Control Panel\Mouse" "MouseSpeed" 0 & :: ˜Ÿaret‡i hassasiyeti devre dŸ braklyor...
Call :sz "HKCU\Control Panel\Desktop" "AutoEndTasks" 1 & :: Kapatma iŸleminde uygulamalar a‡k ise otomatik kapat ve bekleme sresi azaltlyor
Call :sz "HKCU\Control Panel\Desktop" "HungAppTimeout" "1000" & :: Uygulamalar cevap vermedi§i zaman g”revi sonlandr se‡ene§ine baslmadan ”nceki bekleme sresini ksaltr.
Call :sz "HKCU\Control Panel\Desktop" "WaitToKillAppTime" "2000" & :: Bilgisayar kapatlrken ya da oturumdan ‡klrken kullanc uygulamalarnn kapatlmas i‡in sistem bekleme sresini ksaltr.
Call :sz "HKCU\Control Panel\Desktop" "LowLevelHooksTimeout" "1000" & :: Cevap vermeyen hizmetlerin kapatlmasndan ”nceki sistem bekleme sresini ksaltr.
Call :sz "HKLM\SYSTEM\CurrentControlSet\Control" "WaitToKillServiceTimeout" "2000" & :: Bilgisayarn kapatlmas srasnda durdurulacak hizmetler uyars geldi§inde, uygulamalarn kapanmas i‡in beklenen sreyi ksaltr.
Call :sz "HKCU\Control Panel\Desktop" "MenuShowDelay" "8" & :: Men g”sterimi bekleme sresini azaltr. B”ylelikle tkland§ zaman menler daha hzl gelecek.
Call :sz "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoLowDiskSpaceChecks" 1 & :: DŸk Depolama alan uyars devre dŸ braklyor...
Call :sz "HKCU\Control Panel\Mouse" "MouseHoverTime" 8 & :: Farenizle birlikte bir nesnenin zerine geldi§inizde g”rlen a‡klamann ‡kŸ sresini ksaltr
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "LinkResolveIgnoreLinkInfo" 1 & :: Bilgisayarnzda mevcut olmayan programlara ait ksayollarn ba§lantsnn Windows tarafndan boŸa vakit harcanarak aranmasn ”nler
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveSearch" 1 & :: Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un diski aramasn ”nler
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveTrack" 1 & :: Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un NTFS dosya sisteminin izleme ”zelli§ini kullanmasn engeller
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours" "Enable" 1 & :: Odak Yardm aktifleŸtiriliyor
:: Store
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "ContentDeliveryAllowed" 0 & :: 3.Parti Market uygulamalarnn yeniden yklenmesi engelleyen b”lm
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "FeatureManagementEnabled" 0 & :: 3.Parti Market uygulamalarnn yeniden yklenmesi engelleyen b”lm
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEverEnabled" 0 & :: 3.Parti Market uygulamalarnn yeniden yklenmesi engelleyen b”lm
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "OemPreInstalledAppsEnabled" 0 & :: ™nceden yklenmiŸ OEM uygulamalar devre dŸ braklyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEnabled" 0 & :: ™nceden yklenmiŸ OEM uygulamalar (Minecraft, CandyCrush, Flipboard) kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SilentInstalledAppsEnabled" 0 & :: ™nerilen uygulamalar otomatik olarak ykleyin kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-314559Enabled" 0 & :: ™nerilen uygulamalar otomatik olarak ykleyin kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338387Enabled" 0 & :: ™nerilen uygulamalar otomatik olarak ykleyin kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338388Enabled" 0 & :: ™nerilen uygulamalar otomatik olarak ykleyin kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338389Enabled" 0 & :: ™nerilen uygulamalar otomatik olarak ykleyin kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" 0 & :: ™nerilen uygulamalar otomatik olarak ykleyin kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContentEnabled" 0 & :: ™nerilen uygulamalar otomatik olarak ykleyin kapatlyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPane RecommendionsEnabled" 0 & :: ™nerilen uygulamalar otomatik olarak ykleyin kapatlyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "AutoDownload" 2 & :: Market otomatik gncelleŸtirme kapatr.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" 1 & :: Market otomatik gncelleŸtirme kapatr.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "Migrated" 4 & :: Uygulamalarn arka planda ‡alŸmas engelleniyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "GlobalUserDisabled" 1 & :: Uygulamalarn arka planda ‡alŸmas engelleniyor...
:: Gizlilik
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" 0 & :: Ayarlar uygulamasn ”nerilen i‡eri§i g”stermesi kapatlyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353694Enabled" 0 & :: Ayarlar uygulamasn ”nerilen i‡eri§i g”stermesi kapatlyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353696Enabled" 0 & :: Ayarlar uygulamasn ”nerilen i‡eri§i g”stermesi kapatlyor...
Call :dword "HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache" "OsuRegistrationStatus" 0 & :: Ba§lanmak i‡in Hotspot 2.0 €evrimi‡i kaydolmay kullann kapatlyor
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackProgs" 0 & :: BaŸlang‡ ve arama sonu‡larn iyileŸtirmek i‡in Windows izleme uygulamasnn baŸlatlmasna izin verin kapatlyor
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPaneSuggestionsEnabled" 0 & :: BaŸlang‡taki ara sra ”neriler kapatlyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" "ScoobeSystemSettingEnabled" 0 & :: Cihazmn kurulumunu ‡evrimi‡i olarak tamamlayabilece§im yollar ”ner kapatlyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableCloudOptimizedContent" 1 & :: Programlanabilir G”rev €ubu§u ”zelli§i devre dŸ braklyor.
Call :dword "HKCU\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" "OptInOrOutPreference" 0 & :: Deneyim geliŸtirme programna izin ver(NVIDIA Srcs) kapatlyor...
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowExperimentation" 0 & :: Deneylere izin ver kapatlyor
Call :dword "HKCU\SOFTWARE\Microsoft\Input\TIPC" "Enabled" 0 & :: Gelecekte yazmay iyileŸtirmenize yardmc olmas i‡in nasl yazd§m hakknda Microsoft'a bilgi g”nderme kapatlyor.
Call :dword "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" 0 & :: Geri Bildirim frekans kapatlyor.
Call :dword "HKCU\Software\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" 0 & :: GiriŸ verilerinizi Microsoft'a g”ndererek konuŸma, yazma ve mrekkepleme giriŸinizi kiŸiselleŸtirin kapatlyor
Call :dword "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts " 0 & :: GiriŸ verilerinizi Microsoft'a g”ndererek konuŸma, yazma ve mrekkepleme giriŸinizi kiŸiselleŸtirin kapatlyor
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowLocation" 0 & :: Konum Hizmetlerini kapatlyor...
Call :dword "HKCU\Control Panel\International\User Profile" "HttpAcceptLanguageOptOut" 1 & :: Kullanc dil listesine eriŸerek web sitelerinin yerel olarak alakal i‡erik sa§lamas engelleniyor.
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" "UserAuthPolicy" 0 & :: Kullancnn di§er cihazlardaki uygulamalar a‡mas engelleniyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" "FPEnabled" 0 & :: Okumay iyileŸtirmek, taramay hzlandrmak i‡in sayfa tahminini kullann. G”z Atma Verilerinin Microsoft'a G”nderilmesi engelleniyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" "Skype-UserConsentAccepted" 0 & :: Skype KiŸiler ba§lants devre dŸ braklyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" 1 & :: Sponsorlu uygulamalarn otomatik kurulumu (Tketici Deneyimi)
Call :dword "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" 1 & :: Sponsorlu uygulamalarn otomatik kurulumu (Tketici Deneyimi)
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" 0 & :: Tanlama verilerinizi kullanarak Microsoft'un ilgili ipu‡lar ve ”nerilerle daha ”zel deneyimler sunmasna izin verin.
Call :dword "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" 0 & :: Tanlama verilerinizi kullanarak Microsoft'un ilgili ipu‡lar ve ”nerilerle daha ”zel deneyimler sunmasna izin verin.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" 0 & :: Telemetry Devre DŸ braklyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy" 1 & :: Uygulamalarn uygulamalardaki deneyimler i‡in kullanc reklam kimli§ini kullanmas engelleniyor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" 0 & :: Windows ve Cortana'nn sizi daha iyi anlamasna izin vermek i‡in kiŸileri toplama kapatlyor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" 1 & :: Windows ve Cortana'nn sizi daha iyi anlamasna izin vermek i‡in yazl metin (mrekkep) toplayn kapatlyor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" 1 & :: Windows ve Cortana'nn sizi daha iyi anlamasna izin vermek i‡in yazl metni toplayn.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "EnableActivityFeed" 0 & :: Windows'un bu bilgisayardan etkinliklerimi toplamasna izin ver (Zaman ‡izelgesi)
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackDocs" 0 & :: Windows'un s‡rama listelerini doldurmak i‡in a‡lan belgeleri izlemesi kapatlyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" "AllowInputPersonalization" 0 & :: €evrimi‡i konuŸma hizmetleri devre dŸ braklyor...
Call :dword "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" "WiFiSenseOpen" 0 & :: ™nerilen a‡k scak noktalara otomatik ba§lan kapatlyor.
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" "value" 0 :: ™nerilen a‡k scak noktalara otomatik ba§lan kapatlyor.
Call :dword "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" "PaidWifi" 0 & :: šcretli a§ hizmetlerinin mevcut olup olmad§n g”rmek i‡in ge‡ici olarak eriŸim noktalarna otomatik olarak ba§lanma kapatlyor.
Call :dword "HKCU\SOFTWARE\Microsoft\Input\Settings" "InsightsEnabled" 0 & :: ˜‡g”rsel yazma engelleniyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" "DisableFileSyncNGSC" 1 & :: OneDrive EŸitlemesi devre dŸ braklyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" "Start" 0 & :: AutoLogger devre dŸ braklyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" 1 & :: Windows Hata Raporlama devre dŸ braklyor...
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" 0 & :: Wifi Hotspot Raporlama devre dŸ braklyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" 0 & :: Windows Reklam Kimli§ini devre dŸ braklyor...
Call :dword "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" 0 & :: MŸteri Deneyim Program devre dŸ brakrlyor...
Call :delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" & ::Metadata izleme dosyalar kaldrlyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "PublishUserActivities" 0 & :: Windows'un bilgisayardaki etkinlikleri toplamas engelleniyor...
Call :dword "HKLM\Software\Policies\Microsoft\Windows\System" "EnableActivityFeed" 0 & :: Windows'un bilgisayardaki etkinlikleri toplamas engelleniyor...
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Start" "HideRecentJumplists" 1 & :: Atlama Listelerinde en son a‡lan ”§eler engelleniyor...
Call :dword "HKCU\Software\Policies\Microsoft\Windows\Explorer\NoBalloonFeatureAdvertisements" "NoBalloonFeatureAdvertisements" 1 & :: ™zellik reklam balonu bildirimlerini kapatlyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" "PreventHandwritingErrorReports" 1 & :: El yazs hata raporlarnn paylaŸmn devre dŸ brak 
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" "PreventHandwritingDataSharing" 1 & :: El yazs verilerinin paylaŸmn devre dŸ brak
:: Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableInventory" 1 & :: Envanter Toplaycy Devre DŸ Brak

Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "01" "0" & :: Depolama algs
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "04" "0" & :: Depolama algs - Uygulamalarn kullanmad§ ge‡ici dosyalar sil
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "256" "0" & :: Geri d”nŸm kutusu uzun sre doluysa temizle
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "512" "0" & :: Depolama algs
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "2048" "0" & :: ˜ndirilen klas”rnde uzun sre duran dosyalar sil


bcdedit /deletevalue useplatformclock > NUL 2>&1
bcdedit /set {current} recoveryenabled no > NUL 2>&1
powercfg /h off > NUL 2>&1
bcdedit /set useplatformtick yes > NUL 2>&1
bcdedit /set disabledynamictick yes > NUL 2>&1
echo %R%[92m G”rev zamanlaycsnda dzenlemeler yaplyor.%R%[0m
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
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 2 /nobreak > NUL
goto menu

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş

:PingMeter
Call :Location
echo [%date% - %time%] ^| UpdateAfter ^| Ping ”l‡er ‡alŸtrld. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Extra\Pingolc.bat'"
goto :eof

:SistemHakkinda
Call :Location
echo [%date% - %time%] ^| SistemHakkinda ^| Sistem hakknda b”lm ‡alŸtrld. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Extra\Sistem.Hakkinda.bat'"
goto :eof

:FoldertoISO
Call :Location
echo [%date% - %time%] ^| FoldertoISO ^| Folder to ISO yazlm ‡alŸtrld. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Files\Folder2Iso\Folder2Iso.exe'"
goto :eof

:AppxManager
Call :Location
echo [%date% - %time%] ^| AppxManager ^| Appx Manager uygulamas ‡alŸtrld. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Files\WindowsAppBoss.exe'
goto :eof

:WindowsEditor
Call :Location
echo [%date% - %time%] ^| WindowsEditor ^| Windows Dzenleme b”lm ‡alŸtrld. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Extra\Windows.Editor.bat'
goto :eof

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş

:PowerRun
Call :Location
dir /b "%Location%\Files\PowerRun.exe" > NUL 2>&1
	if %errorlevel%==1 (echo %R%[1;97m%R%[41m HATA! PowerRun.exe dosyas bulunamad. Yeniden indiriliyor... %R%[0m
						Call :Logss "PowerRun indiriliyor" "PowerRun.exe dosyas bulunamad. Yeniden indirildi."
						Call :wget3 "https://docs.google.com/uc?export=download&id=10UikjZGEvcnB9j6gDYmURZhmhruiKbfK" "%Location%\Download\PowerRun.zip"
						powershell -command "Expand-Archive -Force '%Location%\Download\PowerRun.zip' '%Location%\Files"
						timeout /t 2 /nobreak > NUL)
						
set PowerRun=%Location%\Files\PowerRun.exe /SW:0 %SystemRoot%\system32\cmd.exe /c
goto :EOF

:Location
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
goto :EOF

:Logs
Call :Location
set Logs=%Location%\Edit\Logs
goto :eof

:ExplorerReset
taskkill /f /im explorer.exe > NUL 2>&1
powershell -command "Start-Process 'C:\Windows\explorer.exe'"
goto :EOF

:kontroll
cls
FOR /F "tokens=5" %%i in ('FIND "Caption" %Logs%\OS.txt') do SET caption3=%%i
	if %caption3%==11 GOTO Win11SettingsMenu
	if %caption3%==10 GOTO Win10SettingsMenu
) else
	exit
:: --------------------------------------------------------------------------------------------	
:Logss
echo [%date% - %time%] ^| %~1 ^| %~2 >> %Location%\Logs
goto :eof
:: --------------------------------------------------------------------------------------------
:: %~1: B”lm ad | %~2: Bilgi ksm
:: --------------------------------------------------------------------------------------------

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş
:: --------------------------------------------------------------------------------------------
:: ˜lerleme ‡ubu§u konusunda yardmc olan KaanBeyhan'a (Doggest) teŸekkr ederim.
:: --------------------------------------------------------------------------------------------
:wget
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                  ˜nternet ba§lants yok                                   %R%[0m
						echo [%date% - %time%] ^| wget ^| HATA! ˜nternet ba§lants bulunamad. ˜sim:%~2 Link:"%~1" Download:%download% >> %Location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget ^| %~2 program indirildi. Link:"%~1" Download:%download% >> %Location%\Logs
Files\wget.exe -c -q --no-check-certificate --show-progress "%~1" -O %download%\%~2"
"%download%\%~2" %~3
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= ˜ndirme ismi  | %~3= Sessiz kurulum parametresi
:: ========================================================================================================

:wget2
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                  ˜nternet ba§lants yok                                   %R%[0m
						echo [%date% - %time%] ^| wget2 ^| HATA! ˜nternet ba§lants bulunamad. ˜sim:%~2 Link:"%~1" Download:%download% >> %Location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget2 ^| %~2 program indirildi. Link:"%~1" Download:%download% >> %Location%\Logs
Files\wget.exe -c -q --no-check-certificate --show-progress %1 -O %download%\%~2
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= ˜ndirme ismi 
:: ========================================================================================================

:wget3
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                  ˜nternet ba§lants yok                                   %R%[0m
						echo [%date% - %time%] ^| wget3 ^| HATA! ˜nternet ba§lants bulunamad. ˜sim:"%~2" Link:"%~1" >> %Location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget3 ^| Masstne "%~2" program indirildi. Link:"%~1" >> %Location%\Logs
Files\wget -c -q --no-check-certificate --show-progress %1 -O %~2
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= Masast Locationu ve ismi
:: ========================================================================================================

:ZipExport
echo [%date% - %time%] ^| ZipExport ^| %~1 dosyas "%download%\%~n1"  >> %Location%\Logs
powershell -command "Expand-Archive -Force '%download%\%~1' '%download%\%~n1'" 
goto :eof

:: ========================================================================================================
:: %~1= Dosya yolu | %~n1= Dosya ismi
:: ========================================================================================================
 
:netkontrol
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                  ˜nternet ba§lants yok                                   %R%[0m
						echo   %R%[1;97m%R%[41m               Wget.exe indirilemedi, indirme iŸlemlerinde hata alacaksnz                 %R%[0m
						echo [%date% - %time%] ^| wgetyok ^| HATA! ˜nternet ba§lants olmad§ i‡in wget.exe indirilemedi. >> %Location%\Logs
						timeout /t 5 /nobreak > NUL
						goto :eof)
goto :eof

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş

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

:delete
reg delete "%~1" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg delete "%~1" /f)
goto :eof

:delete2
reg delete "%~1" /v "%~2" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg delete "%~1" /v "%~2" /f)
goto :eof

:: şşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşşş

:: ==============================================================================================================================

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

