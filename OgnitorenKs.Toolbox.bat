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
::  Projeye katkda bulunanlar;
::  ---------------------------
::   Eray Trkay [470650]
::  ----------------------
::     Sistem Hakknda - RAM soket yapsnn eklenmesi.
::    	Sistem Hakknda - Sistem format tarihinin eklenmesi.
::  ----------------------
::   KaanBeyhan [DOGGEST]
::  ----------------------
::     ˜ndirme iŸlemlerinde ilerleme ‡ubu§unun eklenmesi.
::  ---------
::   Archley
::  ---------
:: 	   Wifi Crack ‡alŸmasnn toolbox'a eklenmesi. 
::
:: ==============================================================================================================================
echo off
cls

setlocal
call :setESC
Call :menuRGB

:: ==============================================================================================================================
::  RENK HAR˜TASI
::  -------------
:: ^%RGB%^[33m > Sar renkli b”lmler. Men i‡indeki sar renkli b”lmler
:: ^%RGB%^[36m > Mavi renkli b”lmler. Men i‡indeki mavi renkli b”lmler
:: ^%RGB%^[37m > Beyaz renkli b”lmler. Men i‡indeki beyaz renkli b”lmler
:: ^%RGB%^[90m > Gri renkli b”lmler. Men i‡indeki gri renkli b”lmler(€er‡eveler dahil de§il)
:: ^%RGB%^[92m > De§iŸken rengi (YeŸil). Kullancdan bir de§er girmesi istenilen b”lmlere aittir.
:: ^%RGB%^[96m > ˜kinci de§iŸken rengi (A‡k Mavi) | Menye yansyan bilgi mesajlar. Ana ekrana dŸecek olan ikinci de§iŸken b”lmlerine aittir.
::
:: ^%ESC%^[41m > Hata mesajlar dolgu rengi (krmz)
:: ^%ESC%^[32m > ˜Ÿlem (yeŸil) numara rengidir. Men i‡indeki iŸlem numaralardr.
:: ^%ESC%^[36m > Menye d”n renk ayardr. Menye d”n b”lmlerinin renk ayardr.
:: ^%ESC%^[100m > BaŸlk b”lmlerinde arka plan dolduran renktir.
:: ^%ESC%^[1;97m > BaŸlkta dolgu b”lmnn i‡inde yer alan yaz rengidir. 1; b”lm kaln yazmasn sa§lar. 97m beyaz renk yazmasn sa§lar.
:: ^%ESC%^[90m > €er‡eveleri ve | iŸaretlerinin rengini de§iŸir.
:: 
:: ==============================================================================================================================

:: Admin yetkisi kontrol edilir.
:AdminKontrol
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo  ___________________________________________________________
echo 
echo                           -------
echo                       %ESC%[91m***  UYARI ***%ESC%[0m
echo                           -------
echo 
echo              %ESC%[92mSa§-Tk Y”netici olarak ‡alŸtrnz...%ESC%[0m 
echo 
echo  ___________________________________________________________
echo 
echo             %ESC%[92mKapatmak i‡in herhangi bir tuŸa basnz.%ESC%[0m 
pause > nul
exit
)
mode con cols=96 lines=37 
:: ==============================================================================================================================
::                                                  DOWNLOAD KONUM B™LšMš
::
::   Download konumunu de§iŸtirmek istiyorsanz;
::   set download= eŸittirden sonra klas”r yolunu yazn.
::   Varsaylan olarak Toolbox klas”r i‡ine ykler.

call :Logs
set download=%konum%\Download

:: ==============================================================================================================================
:: Toolbox i‡in gerekli klas”rler oluŸturuluyor.
mkdir "%konum%\Download" > NUL 2>&1
mkdir "%konum%\Edit\Appx" > NUL 2>&1
mkdir "%konum%\Edit\Desktop" > NUL 2>&1
mkdir "%konum%\Edit\Driver" > NUL 2>&1
mkdir "%konum%\Edit\ESDtoWIM" > NUL 2>&1
mkdir "%konum%\Edit\Logs" > NUL 2>&1
mkdir "%konum%\Edit\Mount" > NUL 2>&1
mkdir "%konum%\Edit\Update" > NUL 2>&1
:: ==============================================================================================================================
::
:: Wget.exe yazlmlar baz antivirs yazlmlar tarafndan virs olarak alglanmaktadr. 
:: Bu tarz bir durumda wget.exe dosyas silinirse indirme iŸlemleri ger‡ekleŸtirilemez.
:: AŸa§daki komut ile wget dosyasnn olup olmad§n kontrol ediyorum. Hata vermesi durumunda Powershell komutuyle yeniden indiriyorum.
dir /b "%konum%\Files\wget.exe" > NUL 2>&1
	if %errorlevel%==1 (echo [%date% - %time%] ^| Wget indiriliyor ^| Wget.exe dosyas bulunamad. Yeniden indirildi. >> %konum%\Logs
						echo   %ESC%[1;97m%ESC%%ESC%[41m                                Wget.exe dosyas bulunamad                                 %ESC%[0m
						echo   %ESC%[1;97m%ESC%%ESC%[42m                                    Yeniden indiriliyor                                     %ESC%[0m
						Call :netkontrol
						powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.2/64/wget.exe -OutFile %konum%\Files\wget.exe }")
::
:: ------------------------------------------------------------------------------------------------------------------------------
::
:: Ana ekranda yer alan Kullanc ad, iŸletim sistemi gibi bilgiler alnr. 

wmic os get RegisteredUser, CSName, Caption, OSArchitecture, BuildNumber /value > %Logs%\OS.txt
FOR /F "tokens=2 delims='='" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption=%%a 
set caption=%caption:~10%
FOR /F "tokens=2 delims='='" %%b in ('FIND "RegisteredUser" %Logs%\OS.txt') do set registereduser=%%b 
FOR /F "tokens=2 delims='='" %%c in ('FIND "CSName" %Logs%\OS.txt') do set pcname=%%c 
FOR /F "tokens=2 delims='='" %%d in ('FIND "OSArchitecture" %Logs%\OS.txt') do set osarch=%%d 
set osarch=%osarch:~0,-5%
:: FOR /F "tokens=2 delims='='" %%e in ('FIND "BuildNumber" %Logs%\OS.txt') do set buildnumber=%%e 
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version"') do set isderleme=%%f
set isderleme=%isderleme:~5%
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion"') do set ImageBuild=%%f
for /f "tokens=2 delims='('" %%f in ('powercfg -list ^| findstr /C:"*"') do set gucc=%%f
set gucc=%gucc:~0,-3%

:: Men i‡inde sisteme g”re ayarlama yapyorum
FOR /F "tokens=3" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption2=%%a 
	if %caption2%==10 (set editmenu=Windows 10 Edit)
	if %caption2%==11 (set editmenu=Windows 11 Edit)
	
:: Y”nlendirme b”lmn sisteme g”re ayarlyorum.
echo %caption2% > NUL
	if %caption2%==10 (set editmenugo=Win10SettingsMenu) 
	if %caption2%==11 (set editmenugo=Win11SettingsMenu)

::set editmenu=Windows 11 Edit
::set editmenugo=Win11SettingsMenu

(
echo.
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] OgnitorenKs Toolbox baŸlatld.
echo  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo  º OGNITORENKS TOOLBOX v1.8 ^| USER: %registereduser% ^| PC-Name: %pcname%	
echo  º OS: %caption% ^| x%osarch% ^| %ImageBuild% ^| %isderleme% ^| G‡: %gucc% 	
echo  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo ---------------------------------------------------------------------------------------------------------------------------
echo.
) >> %konum%\Logs

:menu
cls
mode con cols=96 lines=37 
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo   %ESC%[90mº%ESC%[1;97m%ESC%%ESC%[100m OGNITORENKS TOOLBOX v1.8 %ESC%[0m%ESC%[90m ^|%ESC%%ESC%[32m USER:%ESC%%ESC%[37m %registereduser% %ESC%%ESC%[90m^|%ESC%%ESC%[32m PC-Name: %ESC%%ESC%[37m%pcname%%ESC%[0m	
echo   %ESC%[90mº%ESC%%ESC%[32m OS:%ESC%%ESC%[37m %caption% %ESC%%ESC%[90m^|%ESC%%ESC%[37m x%osarch% %ESC%%ESC%[90m^|%ESC%%ESC%[37m %ImageBuild% %ESC%[0m%ESC%[90m^|%ESC%%ESC%[37m %isderleme% %ESC%%ESC%[90m^|%ESC%%ESC%[32m G‡:%ESC%%ESC%[37m %gucc% %ESC%[0m	
echo   %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[32m  1.%ESC%%RGB%[37m All In One Runtimes%RGB%[0m  %ESC%[90mº%ESC%[0m %ESC%[32m 27.%ESC%%RGB%[36m Kdenlive%RGB%[0m               %ESC%[90mº%ESC%[0m          %ESC%[92m BONUS%ESC%[0m               %ESC%[90mº%ESC%[0m  
echo   %ESC%[90mº%ESC%%ESC%[32m  2.%ESC%%RGB%[33m Discord%RGB%[0m              %ESC%[90mº%ESC%[0m %ESC%[32m 28.%ESC%%RGB%[36m Krita%RGB%[0m                  %ESC%[90mº%ESC%%ESC%[32m 53.%ESC%%RGB%[36m %editmenu%%ESC%[0m             %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m  3.%ESC%%RGB%[33m Whatsapp%RGB%[0m             %ESC%[90mº%ESC%[0m %ESC%[32m 29.%ESC%%RGB%[36m Gimp%RGB%[0m                   %ESC%[90mº%ESC%%ESC%[32m 54.%ESC%%RGB%[33m Kapatlan Servisleri Y”net%RGB%[0m  %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m  4.%ESC%%RGB%[33m Signal%RGB%[0m               %ESC%[90mº%ESC%[0m %ESC%[32m 30.%ESC%%RGB%[36m OBS Studio%RGB%[0m             %ESC%[90mº%ESC%%ESC%[32m 55.%ESC%%RGB%[33m Simge Hatasn dzelt%RGB%[0m       %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m  5.%ESC%%RGB%[33m Telegram%RGB%[0m             %ESC%[90mº%ESC%[0m %ESC%[32m 31.%ESC%%RGB%[36m ShareX%RGB%[0m                 %ESC%[90mº%ESC%%ESC%[32m 56.%ESC%%RGB%[36m Windows Dzenleme%RGB%[0m           %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m  6.%ESC%%RGB%[33m Microsoft Teams%RGB%[0m      %ESC%[90mº%ESC%[0m %ESC%[32m 32.%ESC%%RGB%[36m Audacity%RGB%[0m               %ESC%[90mº%ESC%%ESC%[32m 57.%ESC%%RGB%[33m Gncelleme Sonras Temizlik%RGB%[0m %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m  7.%ESC%%RGB%[33m Zoom%RGB%[0m                 %ESC%[90mº%ESC%[0m %ESC%[32m 33.%ESC%%RGB%[36m K-Lite Codec%RGB%[0m           %ESC%[90mº%ESC%%ESC%[32m 58.%ESC%%RGB%[33m Sistem / Market Onar%RGB%[0m        %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m  8.%ESC%%RGB%[36m EpicGames%RGB%[0m            %ESC%[90mº%ESC%[0m %ESC%[32m 34.%ESC%%RGB%[36m VLC Media Player%RGB%[0m       %ESC%[90mº%ESC%%ESC%[32m 59.%ESC%%RGB%[33m PC Temizle%RGB%[0m                  %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m  9.%ESC%%RGB%[36m Steam%RGB%[0m                %ESC%[90mº%ESC%[0m %ESC%[32m 35.%ESC%%RGB%[36m Aimp%RGB%[0m                   %ESC%[90mº%ESC%%ESC%[32m 60.%ESC%%RGB%[36m Appx Y”netici%RGB%[0m               %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 10.%ESC%%RGB%[36m GOG Galaxy%RGB%[0m           %ESC%[90mº%ESC%[0m %ESC%[32m 36.%ESC%%RGB%[36m Any Video Converter%RGB%[0m    %ESC%[90mº%ESC%%ESC%[32m 61.%ESC%%RGB%[36m Folder to ISO%RGB%[0m               %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 11.%ESC%%RGB%[36m Uplay%RGB%[0m                %ESC%[90mº%ESC%[0m %ESC%[32m 37.%ESC%%RGB%[33m Free Download Manager%RGB%[0m  %ESC%[90mº%ESC%%ESC%[32m 62.%ESC%%RGB%[33m Fat32 to NTFS%RGB%[0m               %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 12.%ESC%%RGB%[36m Origin%RGB%[0m               %ESC%[90mº%ESC%[0m %ESC%[32m 38.%ESC%%RGB%[33m ByClick Downloader%RGB%[0m     %ESC%[90mº%ESC%%ESC%[32m 63.%ESC%%RGB%[33m Ping ™l‡er%RGB%[0m                  %ESC%[90mº%ESC%[0m  
echo   %ESC%[90mº%ESC%%ESC%[32m 13.%ESC%%RGB%[36m Cheat Engine%RGB%[0m         %ESC%[90mº%ESC%[0m %ESC%[32m 39.%ESC%%RGB%[33m Utorrent%RGB%[0m               %ESC%[90mº%ESC%%ESC%[32m 64.%ESC%%RGB%[33m Lisans Y”netimi%RGB%[0m             %ESC%[90mº%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[32m 14.%ESC%%RGB%[36m Wemod%RGB%[0m                %ESC%[90mº%ESC%[0m %ESC%[32m 40.%ESC%%RGB%[33m GlassWire%RGB%[0m              %ESC%[90mº%ESC%%ESC%[32m 65.%ESC%%RGB%[33m Kullanc Hesap Y”netimi%RGB%[0m     %ESC%[90mº%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[32m 15.%ESC%%RGB%[37m League Of Legends%RGB%[0m    %ESC%[90mº%ESC%[0m %ESC%[32m 41.%ESC%%RGB%[33m TeamViewer%RGB%[0m             %ESC%[90mº%ESC%%ESC%[32m 66.%ESC%%RGB%[33m Sistem Hakknda%RGB%[0m             %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 16.%ESC%%RGB%[37m Blitz%RGB%[0m                %ESC%[90mº%ESC%[0m %ESC%[32m 42.%ESC%%RGB%[33m Hamachi%RGB%[0m                %ESC%[90mº%ESC%%ESC%[32m 67.%ESC%%RGB%[33m Wifi Crack%RGB%[0m                  %ESC%[90mº%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[32m 17.%ESC%%RGB%[33m Google Chrome%RGB%[0m        %ESC%[90mº%ESC%[0m %ESC%[32m 43.%ESC%%RGB%[33m Stremio%RGB%[0m                %ESC%[90mº%ESC%[0m                                 %ESC%[90mº%ESC%[0m  
echo   %ESC%[90mº%ESC%%ESC%[32m 18.%ESC%%RGB%[33m Mozilla Firefox%RGB%[0m      %ESC%[90mº%ESC%[0m %ESC%[32m 44.%ESC%%RGB%[36m ISLC%RGB%[0m                   %ESC%[90mº%ESC%[0m                                 %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 19.%ESC%%RGB%[33m Brave%RGB%[0m                %ESC%[90mº%ESC%[0m %ESC%[32m 45.%ESC%%RGB%[36m MSI Afterburner%RGB%[0m        %ESC%[90mº%ESC%[0m                                 %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 20.%ESC%%RGB%[33m Microsoft Edge%RGB%[0m       %ESC%[90mº%ESC%[0m %ESC%[32m 46.%ESC%%RGB%[36m Hibit Uninstaller%RGB%[0m      %ESC%[90mº%ESC%[0m                                 %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 21.%ESC%%RGB%[36m Libre Office%RGB%[0m         %ESC%[90mº%ESC%[0m %ESC%[32m 47.%ESC%%RGB%[36m Unlocker%RGB%[0m               %ESC%[90mº%ESC%[0m                                 %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 22.%ESC%%RGB%[36m PDF-XChange Edit”r%RGB%[0m   %ESC%[90mº%ESC%[0m %ESC%[32m 48.%ESC%%RGB%[36m OpenShell%RGB%[0m              %ESC%[90mº%ESC%[0m                                 %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 23.%ESC%%RGB%[36m Notepad++%RGB%[0m            %ESC%[90mº%ESC%[0m %ESC%[32m 49.%ESC%%RGB%[36m SSD Booster%RGB%[0m            %ESC%[90mº%ESC%[0m                                 %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 24.%ESC%%RGB%[36m Calibre%RGB%[0m              %ESC%[90mº%ESC%[0m %ESC%[32m 50.%ESC%%RGB%[36m Everything%RGB%[0m             %ESC%[90mº%ESC%%ESC%[32m 97.%ESC%%RGB%[36m Toolbox Kullanm%RGB%[0m           %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 25.%ESC%%RGB%[33m 7 - Zip%RGB%[0m              %ESC%[90mº%ESC%[0m %ESC%[32m 51.%ESC%%RGB%[36m TaskbarX%RGB%[0m               %ESC%[90mº%ESC%%ESC%[32m 98.%ESC%%RGB%[36m Toolbox Gncelle%RGB%[0m            %ESC%[90mº%ESC%[0m 
echo   %ESC%[90mº%ESC%%ESC%[32m 26.%ESC%%RGB%[33m WinRAR%RGB%[0m               %ESC%[90mº%ESC%[0m %ESC%[32m 52.%ESC%%RGB%[37m €oklu Se‡im Yap%RGB%[0m        %ESC%[90mº%ESC%%ESC%[32m 99.%ESC%%RGB%[36m Srm Notlar%RGB%[0m               %ESC%[90mº%ESC%[0m
echo   %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo   %ESC%[90mº%ESC%[0m                          %ESC%[32m X.%ESC%%ESC%[33m Kalntlar temizleyerek kapat%ESC%[0m                              %ESC%[90mº%ESC%[0m
echo   %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p menu= %RGB%[92m  Yapmak istedi§iniz iŸlem : %RGB%[0m
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
	if %menu%==52 GOTO MultiSelect
	if %menu%==53 GOTO %editmenugo%
	if %menu%==54 GOTO kapatilanservislery”netimi
	if %menu%==55 (Call :icofix)
	if %menu%==56 (Call :WindowsEdition)
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
	if %menu%==97 (start https://drive.google.com/file/d/1TeuGBW_3OSMtNn4jW10KFXZ433isP6jJ/view?usp=sharing&goto menu)
	if %menu%==98 (Call :Logss "Toolbox.Update" "Toolbox gncelleme arac ‡alŸtrld."
				   Powershell -command "Start-Process '%konum%\Toolbox.Update.bat'"&exit)
	if %menu%==99 (Call :Logss "Toolbox.Update" "Toolbox Srm Notlar sayfas a‡ld."
				   start https://drive.google.com/file/d/14w5_BWIKreSDhCjJk_Ay27uer-SI9ix3/view&goto menu)
	if %menu%==x (Call :Logss "Kalntlar.Temizle" "Download klas”r temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
	if %menu%==X (Call :Logss "Kalntlar.Temizle" "Download klas”r temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
else
	goto menu


:MultiSelect
set /p $multi= %ESC%[96m  Se‡im arasna virgl koyun  : %ESC%[0m
(
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] ^| MultiSelect ^| Se‡ilenler:"%$multi%"
) >> %konum%\Logs
cls
echo   %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo   %ESC%[90mº%ESC%[1;97m%ESC%%ESC%[100m OGNITORENKS TOOLBOX %ESC%[0m%ESC%[90m ^|%ESC%%ESC%[32m USER:%ESC%%ESC%[37m %registereduser% %ESC%%ESC%[90m^|%ESC%%ESC%[32m PC-Name: %ESC%%ESC%[37m%pcname%%ESC%[0m	
echo   %ESC%[90mº%ESC%%ESC%[32m OS:%ESC%%ESC%[37m %caption% %ESC%%ESC%[90m^|%ESC%%ESC%[37m x%osarch% %ESC%%ESC%[90m^|%ESC%%ESC%[37m %ImageBuild% %ESC%[0m%ESC%[90m^|%ESC%%ESC%[37m %isderleme% %ESC%%ESC%[90m^|%ESC%%ESC%[32m G‡:%ESC%%ESC%[37m %gucc% %ESC%[0m
echo   %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo                                         %ESC%[92m €OKLU ˜ND˜RME%ESC%[0m 
echo   %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
echo    %RGB%[96m Se‡ilen indirmeler: %$multi%%RGB%[0m
FOR %%a in (%$multi%) do (Call :Download%%a)
echo --------------------------------------------------------------------------------------------------------------------------- >> %konum%\Logs
goto menu

:Download1
cls
:: AŸa§daki FOR d”ngsyle link.bat dosyas i‡inden programlara ait linkleri alyorum.
:: Link sistemini katlmsz program hazrlama b”lmnde kulland§m i‡in ortak bir sistem olarak hazrladm.
:: Di§er download b”lmleri de ayn Ÿekilde ‡alŸmaktadr.
FOR /F "tokens=1" %%i in ('FIND "05x86ATL" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 05x86ATL.exe /Q
FOR /F "tokens=1" %%i in ('FIND "05x64ATL" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 05x64ATL.exe /Q

FOR /F "tokens=1" %%i in ('FIND "05x86MFC" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 05x86MFC.exe /Q
FOR /F "tokens=1" %%i in ('FIND "05x64MFC" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 05x64MFC.exe /Q

FOR /F "tokens=1" %%i in ('FIND "08x86ATL" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 08x86ATL.exe /q
FOR /F "tokens=1" %%i in ('FIND "08x64ATL" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 08x64ATL.exe /q

FOR /F "tokens=1" %%i in ('FIND "08x86MFC" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 08x86MFC.exe /q
FOR /F "tokens=1" %%i in ('FIND "08x64MFC" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 08x64MFC.exe /q

FOR /F "tokens=1" %%i in ('FIND "10x86" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 10x86.exe "/q /norestart"
FOR /F "tokens=1" %%i in ('FIND "10x64" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 10x64.exe "/q /norestart"

FOR /F "tokens=1" %%i in ('FIND "12x86" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 12x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "12x64" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 12x64.exe "/install /quiet /norestart"

FOR /F "tokens=1" %%i in ('FIND "13x86" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 13x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "13x64" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 13x64.exe "/install /quiet /norestart"

FOR /F "tokens=1" %%i in ('FIND "15x86" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 15x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "15x64" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 15x64.exe "/install /quiet /norestart" 

FOR /F "tokens=1" %%i in ('FIND "javax64" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" javax64.exe "INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable"

FOR /F "tokens=1" %%i in ('FIND "xnafx40" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" xnafx40.msi /qn

FOR /F "tokens=1" %%i in ('FIND "oal.zip" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetozel "%link%" oal.zip
Call :ZipExport oal.zip
"%download%\oal\oalinst.exe" /SILENT

FOR /F "tokens=1" %%i in ('FIND "Desktop5x64" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Desktop5x64.exe "/q /norestart"
FOR /F "tokens=1" %%i in ('FIND "Desktop5x86" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Desktop5x86.exe "/q /norestart"

FOR /F "tokens=1" %%i in ('FIND "DirectX" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetozel "%link%" DirectX.exe
%konum%\Download\DirectX.exe /Q /C /T:"%konum%\Download\DirectX\"
"%konum%\Download\DirectX\DXSETUP.exe" /silent
goto :eof

:Download2
FOR /F "tokens=1" %%i in ('FIND "Discord" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Discord.exe -s
goto :eof

:Download3
FOR /F "tokens=1" %%i in ('FIND "WhatsApp" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" WhatsApp.exe --silent 
goto :eof

:Download4
FOR /F "tokens=1" %%i in ('FIND "Signal" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Signal.exe /S
goto :eof

:Download5
FOR /F "tokens=1" %%i in ('FIND "Telegram" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Telegram.exe "/VERYSILENT /NORESTART"
goto :eof

:Download6
FOR /F "tokens=1" %%i in ('FIND "Teams" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Teams.exe -s
goto :eof

:Download7
FOR /F "tokens=1" %%i in ('FIND "Zoom" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Zoom.msi /qn
goto :eof

:Download8
FOR /F "tokens=1" %%i in ('FIND "EpicGames" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" EpicGames.msi "/qn /norestart"
goto :eof

:Download9
FOR /F "tokens=1" %%i in ('FIND "Steam" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Steam.exe /S
goto :eof

:Download10
FOR /F "tokens=1" %%i in ('FIND "GOG.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" GOG.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download11
FOR /F "tokens=1" %%i in ('FIND "Uplay" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Uplay.exe /S
goto :eof

:Download12
FOR /F "tokens=1" %%i in ('FIND "Origin" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Origin.exe /SILENT
goto :eof

:Download13
FOR /F "tokens=1" %%i in ('FIND "CheatEngine" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" CheatEngine.exe /SILENT
goto :eof

:Download14
FOR /F "tokens=1" %%i in ('FIND "Wemod" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Wemod.exe --silent
goto :eof

:Download15
FOR /F "tokens=1" %%i in ('FIND "LeagueOfLegends" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" C:\users\%username%\Desktop\League.Of.Legends.exe 
goto :eof

:Download16
FOR /F "tokens=1" %%i in ('FIND "Blitz" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Blitz.exe /S
goto :eof

:Download17
FOR /F "tokens=1" %%i in ('FIND "Chrome" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetozel "%link%" Chrome.zip /qn
Call :ZipExport Chrome.zip
"%download%\Chrome\Installers\GoogleChromeStandaloneEnterprise64.msi" /qn
REM UBlock Origin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM HTTPS Everywhere
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM Clear URL's
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
goto :eof 

:Download18
FOR /F "tokens=1" %%i in ('FIND "Firefox" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Firefox.exe /S
goto :eof

:Download19
FOR /F "tokens=1" %%i in ('FIND "Brave" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Brave.exe "--install --silent --system-level"
REM UBlock Origin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM HTTPS Everywhere
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM Clear URL's
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
goto :eof 

:Download20
FOR /F "tokens=1" %%i in ('FIND "edge.msi" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" edge.msi /qn
goto :eof

:Download21
FOR /F "tokens=1" %%i in ('FIND "LibreOffice.msi" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" LibreOffice.msi "/qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL"
goto :eof

:Download22
FOR /F "tokens=1" %%i in ('FIND "PdfXchange.msi" %konum%\Ekler\Links.bat') do set link=%%i
::Call :wget "%link%" AdobeReader.exe "/sPB /rs /msi"
Call :wget "%link%" PdfXchange.msi "/quiet /norestart"
goto :eof

:Download23
FOR /F "tokens=1" %%i in ('FIND "Notepad" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Notepad.exe /S
goto :eof

:Download24
FOR /F "tokens=1" %%i in ('FIND "Calibre" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Calibre.msi /qn
goto :eof

:Download25
FOR /F "tokens=1" %%i in ('FIND "7-Zip" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 7-Zip.msi /qn
goto :eof

:Download26
FOR /F "tokens=1" %%i in ('FIND "Winrar" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Winrar.exe /S
goto :eof

:Download27
FOR /F "tokens=1" %%i in ('FIND "Kdenlive" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Kdenlive.exe /S
goto :eof

:Download28
FOR /F "tokens=1" %%i in ('FIND "Krita" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Krita.exe /S
goto :eof

:Download29
FOR /F "tokens=1" %%i in ('FIND "Gimp" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Gimp.exe "/VERYSILENT /NORESTART /MERGETASKS=desktopicon /ALLUSERS"
goto :eof

:Download30
FOR /F "tokens=1" %%i in ('FIND "OBS" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" OBS.exe /S
goto :eof

:Download31
FOR /F "tokens=1" %%i in ('FIND "ShareX" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" ShareX.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download32
FOR /F "tokens=1" %%i in ('FIND "Audacity" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Audacity.exe "/VERYSILENT /NORESTART"
goto :eof

:Download33
FOR /F "tokens=1" %%i in ('FIND "Klite" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Klite.exe /verysilent
goto :eof

:Download34
FOR /F "tokens=1" %%i in ('FIND "VLCMediaPlayer" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" VLCMediaPlayer.exe "/L=1055 /S"
goto :eof

:Download35
FOR /F "tokens=1" %%i in ('FIND "Aimp" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Aimp.exe "/AUTO /SILENT"
goto :eof

:Download36
FOR /F "tokens=1" %%i in ('FIND "AnyVideoConverter" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" AnyVideoConverter.exe /S
Powershell -command "New-Item -ItemType SymbolicLink -Path 'C:\Users\OgnitorenKs\Desktop' -Name 'Any Video Converter' -Value 'C:\Program Files (x86)\Anvsoft\Any Video Converter\AVCFree.exe'"
goto :eof

:Download37
FOR /F "tokens=1" %%i in ('FIND "FreeDownloadManager" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" FreeDownloadManager.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download38
FOR /F "tokens=1" %%i in ('FIND "ByClick" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" ByClick.exe /q
goto :eof

:Download39
FOR /F "tokens=1" %%i in ('FIND "Utorrent" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Utorrent.exe /S
goto :eof

:Download40
FOR /F "tokens=1" %%i in ('FIND "GlassWire" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" GlassWire.exe /S
goto :eof

:Download41
FOR /F "tokens=1" %%i in ('FIND "TeamViewer" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" TeamViewer.exe /S
goto :eof

:Download42
FOR /F "tokens=1" %%i in ('FIND "Hamachi" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Hamachi.msi /q
goto :eof

:Download43
FOR /F "tokens=1" %%i in ('FIND "Stremio" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Stremio.exe /S
goto :eof

:Download44
powershell -command "Expand-Archive -Force '%konum%\Files\ISLC.zip' 'C:\'"
move "C:\ISLC\ISLC.lnk" "C:\Users\%username%\Desktop" 
powershell -command "Start-Process 'C:\ISLC\Intelligent standby list cleaner ISLC.exe'
goto :eof

:Download45
FOR /F "tokens=1" %%i in ('FIND "MSIAfterburner" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetozel "%link%" MSIAfterburner.zip /S
Call :ZipExport MSIAfterburner.zip 
for /f %%i in ('"dir /b %download%\MSIAfterburner\*.exe"') do "%download%\MSIAfterburner\%%i" /S
goto :eof

:Download46
FOR /F "tokens=1" %%i in ('FIND "Hibit" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Hibit.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download47
FOR /F "tokens=1" %%i in ('FIND "Unlocker.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Unlocker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download48
FOR /F "tokens=1" %%i in ('FIND "OpenShell" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu"
goto :eof

:Download49
FOR /F "tokens=1" %%i in ('FIND "SSDBooster" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\SSDBooster.exe"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\SSDBooster.exe'"
goto :eof

:Download50
FOR /F "tokens=1" %%i in ('FIND "Everything" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Everything.exe /S
goto :eof

:Download51
FOR /F "tokens=1" %%i in ('FIND "TaskbarX" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetozel "%link%" TaskbarX.zip 
powershell -command "Expand-Archive -Force '%download%\TaskbarX.zip' 'C:\Users\%username%\Desktop\TaskbarX'"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX Configurator.exe'
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX.exe'
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:WindowsRepair
cls
mode con cols=80 lines=30

Call :Logss "WindowsRepair" "Windows onarma se‡ene§i kullanld."

Call :PC.Temizle
echo %ESC%[92m   Sfc /scannow komutu ‡alŸyor...%ESC%[0m
sfc /scannow
echo %ESC%[92m   DISM /Online /Cleanup-Image /RestoreHealth komutu ‡alŸtrlyor...%ESC%[0m
DISM /Online /Cleanup-Image /RestoreHealth
echo %ESC%[92m   WinSxS Temizleniyor...%ESC%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup 
echo %ESC%[92m   Market Regedit kaytlar dzenleniyor...%ESC%[0m
:: Market b”lmnnn sorunsuz ‡alŸmas i‡in reg kaytlarn dzenler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /f /v "RemoveWindowsStore" /t REG_DWORD /d 0 > NUL 2>&1
:: Market i‡in gerekli hizmetleri baŸlatr.
echo %ESC%[92m   Market uygulamas i‡in servisler ‡alŸtrlyor...%ESC%[0m
:: AppX Deployment Service (Da§tm Hizmeti)
sc config AppXSvc start= demand > NUL 2>&1
net start AppXSvc > NUL 2>&1
:: Yetenek EriŸim Y”neticisi Hizmeti
sc config camsvc start= demand > NUL 2>&1
net start camsvc > NUL 2>&1
:: žifreleme Hizmetleri
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
echo %ESC%[92m   DLL dosyalar kontrol ediliyor...%ESC%[0m
regsvr32 softpub.dll /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 dssenh.dll /s&regsvr32 rsaenh.dll /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 slbcsp.dll /s&regsvr32 mssip32.dll /s&regsvr32 cryptdlg.dll /s&regsvr32 msxml3.dll /s&regsvr32 comcat.dll /s&Regsvr32 Msxml.dll /s&Regsvr32 Msxml2.dll /s&regsvr32 mshtml.dll /s&regsvr32 shdocvw.dll /s&regsvr32 browseui.dll /s&regsvr32 msjava.dll /s&regsvr32 shdoc401.dll /s&regsvr32 cdm.dll /s&regsvr32 shdoc401.dll /i /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 asctrls.ocx /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 softpub.dll /s&regsvr32 oleaut32.dll /s&regsvr32 shdocvw.dll /I /s&regsvr32 Shell32.dll /s&regsvr32 browseui.dll /s&regsvr32 browseui.dll /I /s&regsvr32 msrating.dll /s&regsvr32 mlang.dll /s&regsvr32 hlink.dll /s&regsvr32 mshtmled.dll /s&regsvr32 urlmon.dll /s&regsvr32 urlmon.dll /i /s&regsvr32 plugin.ocx /s&regsvr32 sendmail.dll /s&regsvr32 scrobj.dll /s&regsvr32 mmefxe.ocx /s&regsvr32 corpol.dll /s&regsvr32 jscript.dll /s&regsvr32 imgutil.dll /s&regsvr32 thumbvw.dll /s&regsvr32 cryptext.dll /s&regsvr32 rsabase.dll /s&regsvr32 inseng.dll /s&regsvr32 iesetup.dll /i /s&regsvr32 actxprxy.dll /s&regsvr32 dispex.dll /s&regsvr32 occache.dll /s&regsvr32 occache.dll /i /s&regsvr32 iepeers.dll /s&regsvr32 cdfview.dll /s&regsvr32 webcheck.dll /s&regsvr32 mobsync.dll /s&regsvr32 pngfilt.dll /s&regsvr32 licmgr10.dll /s
regsvr32 icmfilter.dll /s&regsvr32 hhctrl.ocx /s&regsvr32 inetcfg.dll /s&regsvr32 tdc.ocx /s&regsvr32 MSR2C.DLL /s&regsvr32 msident.dll /s&regsvr32 msieftp.dll /s&regsvr32 xmsconf.ocx /s&regsvr32 ils.dll /s&regsvr32 msoeacct.dll /s&regsvr32 inetcomm.dll /s&regsvr32 msdxm.ocx /s&regsvr32 dxmasf.dll /s&regsvr32 l3codecx.ax /s&regsvr32 acelpdec.ax /s&regsvr32 mpg4ds32.ax /s&regsvr32 voxmsdec.ax /s&regsvr32 danim.dll /s&regsvr32 Daxctle.ocx /s&regsvr32 lmrt.dll /s&regsvr32 datime.dll /s&regsvr32 dxtrans.dll /s&regsvr32 dxtmsft.dll /s&regsvr32 WEBPOST.DLL /s&regsvr32 WPWIZDLL.DLL /s&regsvr32 POSTWPP.DLL /s&regsvr32 CRSWPP.DLL /s&regsvr32 FTPWPP.DLL /s&regsvr32 FPWPP.DLL /s&regsvr32 WUAPI.DLL /s&regsvr32 wups2.dll /S&regsvr32 WUAUENG.DLL /s&regsvr32 ATL.DLL /s&regsvr32 WUCLTUI.DLL /s&regsvr32 WUPS.DLL /s&regsvr32 WUWEB.DLL /s&regsvr32 wshom.ocx /s&regsvr32 wshext.dll /s&regsvr32 vbscript.dll /s&regsvr32 scrrun.dll mstinit.exe /setup /s&regsvr32 msnsspc.dll /SspcCreateSspiReg /s&regsvr32 msapsspc.dll /SspcCreateSspiReg /s
wsreset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof


:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PCTemizle
cls
Call :Logss "PCTemizle" "'PC Temizle' se‡e§i ‡alŸtrld." >> %konum%\Logs
echo %ESC%[92m   Eski tarihli dosya ge‡miŸi temizleniyor...%ESC%[0m
FhManagew.exe -cleanup 360 -quiet > NUL 2>&1

echo %ESC%[92m   ico ve k‡k resim belle§i temizleniyor...%ESC%[0m
taskkill /f /IM explorer.exe > NUL 2>&1
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
Start explorer.exe > NUL 2>&1

echo %ESC%[92m   Temp dosyas temizleniyor...%ESC%[0m
DEL /F /Q /A %temp%\OgnitorenKs.Toolbax\* > NUL 2>&1
RD /S /Q %temp%\* > NUL 2>&1

echo %ESC%[92m   SoftwareDistribution temizleniyor...%ESC%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1

echo %ESC%[92m   Prefetch temizleniyor...%ESC%[0m
DEL /F /Q /A %windir%\prefetch\* > NUL 2>&1

echo %ESC%[92m   Windows tarafndan oluŸturulan ‡”p dosyalar temizleniyor...%ESC%[0m
DEL /F /Q /A %windir%\temp\* > NUL 2>&1

::echo %ESC%[92m   Adobe Reader kalntlar temizleniyor...%ESC%[0m
::DEL /F /Q /A %localappdata%\Adobe\Acrobat\DC\Cache\* > NUL 2>&1
::DEL /F /Q /A %localappdata%\Adobe\Acrobat\DC\*.lst > NUL 2>&1

echo %ESC%[92m   Microsoft Edge ”nbelle§i temizleniyor...%ESC%[0m
DEL /F /Q /A %programfiles(x86)%\Microsoft\Edge\User Data\Default\Cache\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Edge\User Data\Default\Service Worker\CacheStorage\* > NUL 2>&1

echo %ESC%[92m   Ekran Kart Driver kalntlar temizleniyor...%ESC%[0m
RD /S /Q %systemdrive%\AMD > NUL 2>&1
RD /S /Q %systemdrive%\NVIDIA > NUL 2>&1

echo %ESC%[92m   Sistem Log Dosyalar siliniyor...%ESC%[0m
DEL /F /Q /A %windir%\System32\LogFiles\* > NUL 2>&1

echo %ESC%[92m   Yaz tipi ”nbelli§i siliniyor...%ESC%[0m
DEL /F /Q /A %windir%\System32\FNTCACHE.DAT > NUL 2>&1

echo %ESC%[92m   Windows Sistem ™nbelli§i temizleniyor...%ESC%[0m
DEL /F /Q /A %windir%\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\* > NUL 2>&1

echo %ESC%[92m   Windows Ykleyici ™nbelli§i temizleniyor...%ESC%[0m
DEL /F /Q /A %windir%\Installer\$PatchCache$\Managed\* > NUL 2>&1

echo %ESC%[92m   Uygulamalar tarafndan oluŸturulan kalntlar temizleniyor...%ESC%[0m
DEL /F /Q /A %localappdata%\Temp\* > NUL 2>&1

echo %ESC%[92m   Hata Raporu Dosyalar temizleniyor...%ESC%[0m
DEL /F /Q /A %programdata%\Microsoft\Windows\WER\ReportQueue\* > NUL 2>&1

echo %ESC%[92m   WinSxS temizleniyor...%ESC%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup

echo %ESC%[92m   Disk temizleme iŸlemi yaplyor...%ESC%[0m
cleanmgr /verylowdisk /sagerun:5

echo %ESC%[92m   ˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Fat32toNTFS
title Fat32 to NTFS d”nŸtrme / OgnitorenKs
set /p deger=%RGB%[96m  D”nŸtrlecek Disk harfi:%RGB%[0m
	if %deger%==X GOTO menu
	if %deger%==x GOTO menu
Call :Logss "Fat32toNTFS" "%deger% diski NTFS'ye d”nŸtrld."
convert %deger%: /fs:NTFS /v
goto :eof

:stop
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:Slmgrvbs
cls
mode con cols=55 lines=16
title Lisans Y”netimi \ OgnitorenKs
echo 
echo   %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m          Lisans Y”netimi / SLMGR.VBS            %ESC%[0m%ESC%%ESC%[90mº%ESC%[0m
echo   %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo   %ESC%[90mº%ESC%[0m  %ESC%[32m 1.%ESC%%RGB%[33m Lisans Gir %RGB%%RGB%[90m[ipk]%RGB%[0m                           %ESC%[90mº%ESC%[0m
echo   %ESC%[90mº%ESC%[0m  %ESC%[32m 2.%ESC%%RGB%[33m Lisans Durumu %RGB%%RGB%[90m[dli]%RGB%[0m                        %ESC%[90mº%ESC%[0m
echo   %ESC%[90mº%ESC%[0m  %ESC%[32m 3.%ESC%%RGB%[33m Lisans Durumu Detayl %RGB%%RGB%[90m[dlv]%RGB%[0m                %ESC%[90mº%ESC%[0m
echo   %ESC%[90mº%ESC%[0m  %ESC%[32m 4.%ESC%%RGB%[33m Lisans Sresini ™§ren %RGB%%RGB%[90m[xpr]%RGB%[0m                %ESC%[90mº%ESC%[0m
echo   %ESC%[90mº%ESC%[0m  %ESC%[32m 5.%ESC%%RGB%[33m Lisans Sil %RGB%%RGB%[90m[upk]%RGB%[0m                           %ESC%[90mº%ESC%[0m
echo   %ESC%[90mº%ESC%[0m  %ESC%[32m 6.%ESC%%RGB%[33m Lisans Sre Sfrla %RGB%%RGB%[90m[rearm]%RGB%[0m                %ESC%[90mº%ESC%[0m
echo   %ESC%[90mº%ESC%[0m  %ESC%[32m X.%ESC%%ESC%[36m Ana Men%ESC%[0m                                   %ESC%[90mº%ESC%[0m
echo   %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger=%RGB%[92m  Yapmak istedi§iniz iŸlem : %RGB%[0m
	if %deger%==1 (Call :slmgrlisans)
	if %deger%==2 (Call :Logss "SLMGR.VBS" "Lisans Durumu, kontrol edildi."
				   slmgr /dli&goto Slmgrvbs)		   
	if %deger%==3 (Call :Logss "SLMGR.VBS" "Lisans Durumu Detayl, kontrol edildi."
				   slmgr /dlv&goto Slmgrvbs)
	if %deger%==4 (Call :Logss "SLMGR.VBS" "Lisans Sresini ™§ren, ‡alŸtrld."
				   slmgr /xpr&goto Slmgrvbs)
	if %deger%==5 (Call :Logss "SLMGR.VBS" "Lisans Sil, ‡alŸtrld."
				   slmgr /upk&goto Slmgrvbs)
	if %deger%==6 (Call :Logss "SLMGR.VBS" "Lisans Sre Sfrla, ‡alŸtrld."
				   slmgr /rearm&goto Slmgrvbs)
	if %deger%==x GOTO menu
	if %deger%==X GOTO menu
else
	goto Slmgrvbs

:slmgrlisans
cls
echo   %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m            Manuel Lisanslama Hizmeti            %ESC%[0m%ESC%%ESC%[90mº%ESC%[0m
echo   %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
set /p deger= %ESC%[92m   Lisans : %ESC%[0m
	if %deger%==X (goto :eof)
	if %deger%==x (goto :eof)
echo [%date% - %time%] ^| Slmgr.vbs ^| Slmgr Lisans(ipk), Windows lisansland >> %konum%\Logs
slmgr /ipk %deger%

echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof
:stop
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:icofix
cls
Call :konum
echo [%date% - %time%] ^| icofix ^| Simge sorunu giderildi. >> %konum%\Logs
echo %ESC%[92m Simge sorunu dzeltiliyor...%ESC%[0m
taskkill /f /im explorer.exe
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
del /f /s /q /a %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
"%konum%\Files\ReIconCache.exe"
start explorer.exe
goto menu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:kapatilanservislery”netimi
cls
mode con cols=55 lines=28
title Kapatlan Servisler Y”netimi / OgnitorenKs
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m           Kapatlan Servisler Y”netimi            %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Bluetooth %RGB%%RGB%[90m[A€]%RGB%[0m                              %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Yazc %RGB%%RGB%[90m[A€]%RGB%[0m                                 %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Telefon Hizmetini %RGB%%RGB%[90m[A€]%RGB%[0m                      %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 4.%ESC%%RGB%[33m Tarifeli a§lar %RGB%%RGB%[90m[A€]%RGB%[0m                        %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 5.%ESC%%RGB%[33m IP yardmcs %RGB%%RGB%[90m[A€]%RGB%[0m                          %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 6.%ESC%%RGB%[33m Mobil Etkin Nokta (Hotspot) %RGB%%RGB%[90m[A€]%RGB%[0m            %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 7.%ESC%%RGB%[33m Radyo ve U‡ak modu hizmetini %RGB%%RGB%[90m[A€]%RGB%[0m           %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 8.%ESC%%RGB%[33m AkŸ deneyimini (Ekran paylaŸ) %RGB%%RGB%[90m[A€]%RGB%[0m         %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 9.%ESC%%RGB%[33m Windows žimdi Ba§lan(WPS) %RGB%%RGB%[90m[A€]%RGB%[0m              %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m  %ESC%[32m 10.%ESC%%RGB%[33m Tarayc hizmetlerini %RGB%%RGB%[90m[A€]%RGB%[0m                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m  %ESC%[32m 11.%ESC%%RGB%[33m Kamera hizmetlerini %RGB%%RGB%[90m[A€]%RGB%[0m                    %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m  %ESC%[32m 12.%ESC%%RGB%[33m Uzak Masast %RGB%%RGB%[90m[A€]%RGB%[0m                          %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m  %ESC%[32m 13.%ESC%%RGB%[33m Insider hizmetini %RGB%%RGB%[90m[A€]%RGB%[0m                      %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m  %ESC%[32m 14.%ESC%%RGB%[33m Biyometrik hizmeti %RGB%%RGB%[90m[A€]%RGB%[0m                     %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m  %ESC%[32m 15.%ESC%%RGB%[33m Kalem ve Dokunmatik Klavye hizmetini %RGB%%RGB%[90m[A€]%RGB%[0m   %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m  %ESC%[32m 16.%ESC%%RGB%[33m Sistem Geri ykleme hizmetini%RGB%%RGB%[90m[A€]%RGB%[0m           %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m  %ESC%[32m 17.%ESC%%RGB%[33m Sysmain (Hzl Getir)%RGB%%RGB%[90m[A€]%RGB%[0m                   %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m  %ESC%[32m 18.%ESC%%RGB%[33m Hzl BaŸlat (Hibernate)%RGB%%RGB%[90m[A€]%RGB%[0m                %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m  %ESC%[32m 19.%ESC%%RGB%[33m Konum hizmetini%RGB%%RGB%[90m[A€]%RGB%[0m                         %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m  %ESC%[32m 20.%ESC%%RGB%[33m Windows Media Player%RGB%%RGB%[90m[A€]%RGB%[0m                    %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n %ESC%[0m                                 %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger= %RGB%[92m ˜Ÿlem : %RGB%[0m
	if %deger%==1 goto serv.1.bluetooth
	if %deger%==2 goto serv.2.yazici
	if %deger%==3 goto serv.3.phone
	if %deger%==4 goto serv.4.tarifeli
	if %deger%==5 goto serv.5.ipyardimci
	if %deger%==6 goto serv.6.hotspot
	if %deger%==7 goto serv.7.ucakmodu
	if %deger%==8 goto serv.8.akis
	if %deger%==9 goto serv.9.wps
	if %deger%==10 goto serv.10.tarayici
	if %deger%==11 goto serv.11.camera
	if %deger%==12 goto serv.12.uzakmasast
	if %deger%==13 goto serv.13.insider
	if %deger%==14 goto serv.14.biyometrik
	if %deger%==15 goto serv.15.dokunmatik
	if %deger%==16 goto serv.16.sistemgeriyukleme
	if %deger%==17 goto serv.17.sysmain
	if %deger%==18 goto serv.18.hibernate
	if %deger%==19 goto serv.19.konum
	if %deger%==20 goto serv.20.mediaplayer
	if %deger%==x goto menu
	if %deger%==X goto menu
else 
	goto kapatilanservislery”netimi


:serv.1.bluetooth
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Bluetooth hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mBluetooth hizmeti a‡lyor...%RGB%[0m 
:: Bluetooth (AVCTP hizmeti) 
::  Ses, video denetim aktarm protokoldr.
sc config "BthAvctpSvc" start= demand > NUL 2>&1
net start BthAvctpSvc > NUL 2>&1
:: Bluetooth destek hizmeti
::  Bluetooth cihazlarn bulunmas ve iliŸkilendirmesini sa§lar.
sc config "bthserv" start= demand > NUL 2>&1
net start bthserv > NUL 2>&1
:: Bluetooth kullanc deste§i hizmeti
::  Kullanc oturumuyla Bluetooth ”zelliklerinin tam ‡alŸmasn sa§lar.
sc config "BluetoothUserService" start= demand > NUL 2>&1
net start BluetoothUserService > NUL 2>&1
:: Ses a§ ge‡idi hizmeti
::  Eller boŸta profilinin ses a§ ge‡idini destekler.
sc config "BTAGService" start= demand > NUL 2>&1
net start BTAGService > NUL 2>&1
:: Natural Kimlik Do§rulaycs
sc config NaturalAuthentication start= demand > NUL 2>&1
net start NaturalAuthentication > NUL 2>&1
goto kapatilanservislery”netimi

:serv.2.yazici
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Yazc hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mYazc hizmetleri a‡lyor...%RGB%[0m 
sc config "Spooler" start= auto > NUL 2>&1
net start Spooler > NUL 2>&1
DEL /F /Q /A %windir%\System32\spool\PRINTERS\* > NUL 2>&1
::PrintWorkFlow (iŸ akŸ hizmeti)
sc config PrintWorkflowUserSvc start= demand > NUL 2>&1
net start PrintWorkflowUserSvc > NUL 2>&1
:: Uzak Masast Hizmetleri Kullanc Modu Ba§lant Noktas Yeniden Y”nlendiricisi
sc config UmRdpService start= demand > NUL 2>&1
net start UmRdpService > NUL 2>&1
goto kapatilanservislery”netimi

:serv.3.phone
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Telefon hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mTelefon hizmeti a‡lyor...%RGB%[0m 
:: Telefon
sc config TapiSrv start= demand > NUL 2>&1
net start TapiSrv > NUL 2>&1
:: Telefon Hizmeti
sc config PhoneSvc start= demand > NUL 2>&1
net start PhoneSvc > NUL 2>&1
:: Bluetooth (AVCTP hizmeti) 
::  Ses, video denetim aktarm protokoldr.
sc config "BthAvctpSvc" start= demand > NUL 2>&1
net start BthAvctpSvc > NUL 2>&1
:: Bluetooth destek hizmeti
::  Bluetooth cihazlarn bulunmas ve iliŸkilendirmesini sa§lar.
sc config "bthserv" start= demand > NUL 2>&1
net start bthserv > NUL 2>&1
:: Bluetooth kullanc deste§i hizmeti
::  Kullanc oturumuyla Bluetooth ”zelliklerinin tam ‡alŸmasn sa§lar.
sc config "BluetoothUserService" start= demand > NUL 2>&1
net start BluetoothUserService > NUL 2>&1
:: Ses a§ ge‡idi hizmeti
::  Eller boŸta profilinin ses a§ ge‡idini destekler.
sc config "BTAGService" start= demand > NUL 2>&1
net start BTAGService > NUL 2>&1
:: Natural Kimlik Do§rulaycs
sc config NaturalAuthentication start= demand > NUL 2>&1
net start NaturalAuthentication > NUL 2>&1
goto kapatilanservislery”netimi

:serv.4.tarifeli
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Tarifeli a§lar hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mTarifeli a§lar hizmeti a‡lyor...%RGB%[0m 
:: Veri kullanm
::  Arkaplan verilierni ve a§ kullanmn snrlar
sc config DusmSvc start= auto > NUL 2>&1
net start DusmSvc > NUL 2>&1
goto kapatilanservislery”netimi

:serv.5.ipyardmci
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| IP yardmc hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mIP yardmcs hizmeti a‡lyor...%RGB%[0m 
::  IPv6 ge‡iŸ teknolojileri ve IP-HTTPS kullanarak tnel ba§lants sa§lar.
sc config iphlpsvc start= auto > NUL 2>&1
net start iphlpsvc > NUL 2>&1
:: IP €eviri yaplandrma hizmeti (v4'den v6'ya tam tersi y”nde ‡eviriyi yaplandrr)
sc config IpxlatCfgSvc start= demand > NUL 2>&1
net start IpxlatCfgSvc > NUL 2>&1
goto kapatilanservislery”netimi

:serv.6.hotspot
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Mobil Etkin Nokta hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mMobil etkin nokta hizmeti a‡lyor...%RGB%[0m 
::  Veri ba§lantsnn baŸka bir cihazla paylaŸlmasn sa§lar
sc config icssvc start= demand > NUL 2>&1
net start icssvc > NUL 2>&1
:: Internet Ba§lants PaylaŸm (ICS)
sc config SharedAccess start= demand > NUL 2>&1
net start SharedAccess > NUL 2>&1
:: WMP A§ PaylaŸm hizmeti
sc config WMPNetworkSvc start= demand > NUL 2>&1
net start WMPNetworkSvc > NUL 2>&1
goto kapatilanservislery”netimi

:serv.7.ucakmodu
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Radyo ve U‡ak Modu hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mRadyo y”netim ve u‡ak modu hizmeti a‡lyor...%RGB%[0m 
::  Radyo y”netimi ve u‡ak modu hizmeti
sc config RMSvc start= demand > NUL 2>&1
net start RMSvc > NUL 2>&1
goto kapatilanservislery”netimi

:serv.8.akis
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| AkŸ deneyimi hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mAkŸ deneyimi hizmetleri a‡lyor...%RGB%[0m 
:: Miracast, DLNA kullanc arabirimini
sc config DevicePickerUserSvc_54454 start= demand > NUL 2>&1
net start DevicePickerUserSvc_54454 > NUL 2>&1
sc config DevicePickerUserSvc start= demand > NUL 2>&1
net start DevicePickerUserSvc > NUL 2>&1
:: Cihaz AkŸ
sc config DevicesFlowUserSvc_54454 start= demand > NUL 2>&1
net start DevicesFlowUserSvc_54454 > NUL 2>&1
sc config DevicesFlowUserSvc start= demand > NUL 2>&1
net start DevicesFlowUserSvc > NUL 2>&1
:: WMP a§ paylaŸm hizmeti
sc config WMPNetworkSvc start= demand > NUL 2>&1
net start WMPNetworkSvc > NUL 2>&1
echo Da§tlmŸ Ba§lant ˜zleme ˜stemcisi
::  Bir bilgisayardaki ya da bir a§ zerindeki bilgisayarlar zerinde NTFS dosyalar arasndaki ba§lantlar korur.
sc config TrkWks start= auto > NUL 2>&1
net start TrkWks > NUL 2>&1
:: EŸ ad ‡”zmleme protokol
sc config PNPRsvc start= demand > NUL 2>&1
net start PNPRsvc > NUL 2>&1
:: EŸ a§ gruplandrma
sc config p2psvc start= demand
net start p2psvc > NUL 2>&1
:: EŸler aras a§ oluŸturma kimlik y”neticisi
sc config p2pimsvc start= demand > NUL 2>&1
net start p2pimsvc > NUL 2>&1
:: BranchCache
sc config PeerDistSvc start= demand > NUL 2>&1
net start PeerDistSvc > NUL 2>&1
:: Upnp Aygt ana bilgisyar (A§daki cihazlar bulur)
sc config SSDPSRV start= demand > NUL 2>&1
net start SSDPSRV > NUL 2>&1
:: Natural Kimlik Do§rulaycs
sc config NaturalAuthentication start= demand > NUL 2>&1
net start NaturalAuthentication > NUL 2>&1
::PNRP Makine ad yayn hizmeti
sc config PNRPAutoReg start= demand > NUL 2>&1
net start PNRPAutoReg > NUL 2>&1
:: WMPNetworkSvc (WMP A§ paylaŸm hizmeti)
sc config WMPNetworkSvc start= demand > NUL 2>&1
net start WMPNetworkSvc > NUL 2>&1
:: €alŸma klas”rleri istemcisi
sc config workfolderssvc start= demand > NUL 2>&1
net start workfolderssvc > NUL 2>&1
goto kapatilanservislery”netimi

:serv.9.wps
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| WPS hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mWindows žimdi Ba§lan hizmeti a‡lyor...%RGB%[0m 
:: Windows žimdi Ba§lan - Yaplandrma Dosyas Kaydedici
::  WPS protokolnn uygulanmasn sa§lar.
sc config wcncsvc start= demand > NUL 2>&1
net start wcncsvc > NUL 2>&1
goto kapatilanservislery”netimi

:serv.10.tarayici
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Tarayc hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mTarayc hizmetleri a‡lyor...%RGB%[0m 
:: Resim alma olaylar (Windows G”rnt Alma-WIA)
sc config WiaRpc start= demand > NUL 2>&1
net start WiaRpc > NUL 2>&1
:: Windows Resim Alma (Windows G”rnt Alma (WIA))
sc config StiSvc start= demand > NUL 2>&1
net start StiSvc > NUL 2>&1
goto kapatilanservislery”netimi

:serv.11.camera
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Kamera hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mWindows Kamera hizmetleri a‡lyor...%RGB%[0m 
:: Windows Kamera ‡er‡eve sunucusu
sc config FrameServer start= demand > NUL 2>&1
net start FrameServer > NUL 2>&1
:: Windows Kamera €er‡eve Sunucusu
sc config FrameServerMonitor start= demand > NUL 2>&1
net start FrameServerMonitor > NUL 2>&1
goto kapatilanservislery”netimi

:serv.12.uzakmasaustu
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Uzak Masast hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mUzak Masast hizmetleri a‡lyor...%RGB%[0m 
:: Uzak masast hizmetleri
sc config TermService start= demand > NUL 2>&1
net start TermService > NUL 2>&1
:: Uzak Masast Hizmetleri Kullanc Modu Ba§lant Noktas Yeniden Y”nlendiricisi
sc config UmRdpService start= demand > NUL 2>&1
net start UmRdpService > NUL 2>&1
:: Uzak Masast Yaplandrmas
sc config SessionEnv start= demand > NUL 2>&1
net start SessionEnv > NUL 2>&1
:: Y”nlendirme ve Uzaktan EriŸim
sc config RemoteAccess start= demand > NUL 2>&1
net start RemoteAccess > NUL 2>&1
:: EŸ ad ‡”zmleme protokol
sc config PNPRsvc start= demand > NUL 2>&1
net start PNPRsvc > NUL 2>&1
:: EŸ a§ gruplandrma
sc config p2psvc start= demand
net start p2psvc > NUL 2>&1
:: EŸler aras a§ oluŸturma kimlik y”neticisi
sc config p2pimsvc start= demand
net start p2pimsvc > NUL 2>&1
::PNRP Makine ad yayn hizmeti
sc config PNRPAutoReg start= demand > NUL 2>&1
net start PNRPAutoReg > NUL 2>&1
:: €alŸma klas”rleri istemcisi
sc config workfolderssvc start= demand > NUL 2>&1
net start workfolderssvc > NUL 2>&1
goto kapatilanservislery”netimi

:serv.13.insider
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Insider hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mWindows Insider hizmeti a‡lyor...%RGB%[0m 
:: Windows Insider Hizmeti
sc config wisvc start= demand > NUL 2>&1
net start wisvc > NUL 2>&1
goto kapatilanservislery”netimi

:serv.14.biyometrik
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Biyometrik hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mWindows Biyometrik hizmeti a‡lyor...%RGB%[0m 
:: Windows Biyometrik Hizmeti
sc config WbioSrvc start= demand > NUL 2>&1
net start WbioSrvc > NUL 2>&1
goto kapatilanservislery”netimi

:serv.15.dokunmatik
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Dokunmatik Klavye ve Kalem hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mDokunmatik Klavye ve Kalem hizmeti a‡lyor...%RGB%[0m 
:: Kalem servisi
sc config PenService start= demand > NUL 2>&1
net start PenService > NUL 2>&1
::Dokunmatik Klavyeyi ve el yazs paneli hizmeit
sc config TabletInputService start= demand > NUL 2>&1
net start TabletInputService > NUL 2>&1
goto kapatilanservislery”netimi

:serv.16.sistemgeriyukleme
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Sistem Geri ykleme hizmeti a‡ld. hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mSistem geri ykleme hizmeti a‡lyor...%RGB%[0m 
::Windows Yedekleme ve Geri Ykleme hizmeti
sc config SDRSVC start= demand > NUL 2>&1
net start SDRSVC > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /ENABLE  > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /f /v "DisableSR" /t REG_DWORD /d 0 > NUL 2>&1
goto kapatilanservislery”netimi

:serv.17.sysmain
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Hzl Getir^(Sysmain^) hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mHzl Getir hizmeti a‡lyor...%RGB%[0m 
sc config SysMain start= auto > NUL 2>&1
net start SysMain > NUL 2>&1
goto kapatilanservislery”netimi

:serv.18.hibernate
::Hzl baŸlang‡
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Hzl baŸlang‡^(Hibernate^) hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mHzl baŸlat a‡lyor...%RGB%[0m 
powercfg /hibernate on
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d 1 /f > NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "1" /f
goto kapatilanservislery”netimi

:serv.19.konum
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Konum hizmeti a‡ld. >> %konum%\Logs
echo  %RGB%[96mKonum hizmeti a‡lyor...%RGB%[0m 
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /f > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Allow" /f > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowLocation" /t REG_DWORD /d 1 /f > NUL 2>&1
sc config NaturalAuthentication start= demand > NUL 2>&1
net start NaturalAuthentication > NUL 2>&1
sc config lfsvc start= demand > NUL 2>&1
net start lfsvc > NUL 2>&1
goto kapatilanservislery”netimi

:serv.20.mediaplayer
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| MediaPlayer hizmeti a‡ld. >> %konum%\Logs
:: Windows Media Player
echo  %RGB%[96mWindows Media Player a‡lyor...%RGB%[0m 
Dism /Online /Remove-Feature /FeatureName:MediaPlayback /Quiet /NoRestart
goto kapatilanservislery”netimi


:stop
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:wificrackarchley
mode con cols=58 lines=35
title Wireless Password Cracker / (Archley)
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m               Wireless Password Cracker              %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m                      (Archley)                       %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
FOR /F "tokens=5" %%a in ('netsh wlan show profil ^| find "All"') do (
	FOR /F "tokens=4" %%b in ('netsh wlan show profile "%%a" key^=clear ^| find "Content"') do (
		echo    %ESC%[36m%%a :%ESC%%ESC%[33m %%b%ESC%[0m
		echo   
		)
	)
)
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
echo %ESC%[32m  Kapatmak i‡in herhangi bir tuŸa basnz.%ESC%[0m
pause > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:WinSahiplik
cls
mode con cols=55 lines=15
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Sa§ Tk Sahiplik Men                %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Ekle%RGB%[0m                                        %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Kaldr%RGB%[0m                                      %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger= %ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %deger%==1 (title Sahiplik al ekleniyor... / OgnitorenKs
				   echo [%date% - %time%] ^| WinSahiplik ^| Sa§-tk "Sahiplik Al" eklendi. >> %konum%\Logs
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
				   echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %deger%==2 (title Sahiplik al kaldrlyor... / OgnitorenKs
				   echo [%date% - %time%] ^| WinSahiplik ^| Sa§-tk "Sahiplik Al" kaldrld. >> %konum%\Logs
				   reg delete "HKCR\*\shell\runas" /f > NUL 2>&1
				   reg delete "HKCR\Directory\shell\runas" /f > NUL 2>&1
				   echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %deger%==x GOTO kontroll
	if %deger%==X GOTO kontroll
else
	goto WinSahiplik

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:WinCompactOS
cls
mode con cols=55 lines=15
echo 
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m           CompactOS (Windows SkŸtrma)          %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m CompactOS %RGB%%RGB%[90m[A€]%RGB%[0m                              %ESC%[0mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m CompactOS %RGB%%RGB%[90m[KAPAT]%RGB%[0m                           %ESC%[0mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger= %RGB%[92m ˜Ÿlem :%RGB%[0m
	if %deger%==1 (Call :CompactOn)
	if %deger%==2 (Call :CompactOff)
	if %deger%==x GOTO kontroll
	if %deger%==X GOTO kontroll
else
	GOTO WinCompactOS

:CompactOn
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS skŸtrma iŸlemi uyguland. >> %konum%\Logs
echo %RGB%[96m CompactOS skŸtrma iŸlemi uygulanyor...%RGB%[0m
Compact.exe /CompactOS:always
goto :eof

:CompactOff
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS skŸtrma iŸlemi kapatld. >> %konum%\Logs
echo %RGB%[96m CompactOS skŸtrma iŸlemi devre dŸ braklyor...%RGB%[0m
Compact.exe /CompactOS:never
goto :eof
:stop

:gpedit
Call :Logs
echo [%date% - %time%] ^| Gpedit ^| Gpedit.msc eklendi. >> %konum%\Logs
echo %RGB%[96m Gpedit.msc (Yerel Grup ilkesi) aktifleŸtiriliyor...%RGB%[0m
for %%a in ("dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum") do (Dism /Online /Norestart /Add-Package:"%%a" > NUL 2>&1)
for %%a in ("dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum") do (Dism /Online /Norestart /Add-Package:"%%a" > NUL 2>&1)
goto kontroll

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
::  W˜NDOWS 11 B™LšMš 

:stop
:Win11SettingsMenu
cls
call :konum
call :PowerRun
mode con cols=55 lines=17
title Windows 11 ™zelleŸtir / OgnitorenKs
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Windows 11 ™zelleŸtirme              %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Taskbar Boyut %RGB%%RGB%[90m[Kš€šK/BšYšK]%RGB%[0m                 %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Taskbar Konumu %RGB%%RGB%[90m[ALT/šST]%RGB%[0m                    %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Taskbar Simge Konumu %RGB%%RGB%[90m[SOL/ORTA]%RGB%[0m             %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 4.%ESC%%RGB%[33m Sa§-Tk Men %RGB%%RGB%[90m[ESK˜/YEN˜]%RGB%[0m                    %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 5.%ESC%%RGB%[33m Sa§-Tk Terminal %RGB%%RGB%[90m[EKLE/KALDIR]%RGB%[0m              %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 6.%ESC%%RGB%[33m Sahiplik Al %RGB%%RGB%[90m[EKLE/KALDIR]%RGB%[0m                   %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 7.%ESC%%RGB%[33m Compact OS (Windows SkŸtrma) %RGB%%RGB%[90m[A€/KAPAT]%RGB%[0m  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 8.%ESC%%RGB%[33m Gpedit.msc (Yerel Grup ilkesi)%RGB%%RGB%[90m[EKLE]%RGB%[0m        %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger=%RGB%[92m  ˜Ÿlem : %RGB%[0m
	if %deger%==1 (Call :Win11MenuChange)
	if %deger%==2 (Call :Win11MenuLocation)
	if %deger%==3 (Call :Win11MenuOld)
	if %deger%==4 (Call :Win11RightClick)
	if %deger%==5 (Call :Win11RightMenuTerminal)
	if %deger%==6 (Call :WinSahiplik)
	if %deger%==7 (Call :WinCompactOS)
	if %deger%==8 GOTO gpedit
	if %deger%==x GOTO menu
	if %deger%==X GOTO menu
else
	goto Win11SettingsMenu

	
:Win11MenuChange
cls
mode con cols=55 lines=15
title G”rev ‡ubu§u boyut ayar / OgnitorenKs
echo 
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m             G”rev €ubu§u Boyut Ayar              %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m K‡k %RGB%[0m                                      %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Varsaylan %RGB%[0m                                 %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Byk %RGB%[0m                                      %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger= %RGB%[92m G”rev ‡ubu§u bykl§ : %RGB%[0m
	if %deger%==x goto Win11SettingsMenu
	if %deger%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuChange ^| Taskbar boyut ayar "%deger%" olarak ayarland. >> %konum%\Logs	
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarSi" /t REG_DWORD /d %deger%
Call :ExplorerReset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11MenuLocation
cls
mode con cols=55 lines=15
title G”rev ‡ubu§u konum ayar / OgnitorenKs
echo 
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m                G”rev €ubu§u Konumu                %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m šst%RGB%[0m                                         %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Alt %RGB%[0m                                        %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger= %RGB%[92m G”rev ‡ubu§u konumu : %RGB%[0m
	if %deger%==x goto win11settingsmenu
	if %deger%==X goto win11settingsmenu

echo [%date% - %time%] ^| Win11MenuLocation ^| Taskbar konum ayar "%deger%" olarak ayarland. >> %konum%\Logs
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3" /v "Settings" /t REG_BINARY /d "30000000feffffff7af400000%deger%0000003000000030000000000000000804000080070000380400006000000001000000" /f
Call :ExplorerReset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof


:Win11MenuOld
cls
mode con cols=55 lines=15
title G”rev ‡ubu§u simge konumu ayar / OgnitorenKs
echo 
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m            G”rev €ubu§u Simge Konumu              %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Sol%RGB%[0m                                         %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Orta%RGB%[0m                                        %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger= %RGB%[92m Tarafnz se‡iniz : %RGB%[0m
	if %deger%==x goto Win11SettingsMenu
	if %deger%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuOld ^| Taskbar simge konumu "%deger%" olarak ayarland. >> %konum%\Logs
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAl" /t REG_DWORD /d %deger%
Call :ExplorerReset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11RightClick
cls
mode con cols=55 lines=15
title Sa§ tk se‡enek ayar / OgnitorenKs
echo 
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m                 Sa§-Tk Men Ayar                %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Eski%RGB%[0m                                        %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Yeni%RGB%[0m                                        %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger= %RGB%[92m Tarafnz se‡iniz : %RGB%[0m
	if %deger%==1 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 sa§-tk ayar eski haline getirildi.. >> %konum%\Logs
				   reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&taskkill /f /im explorer.exe&start explorer.exe&goto :eof)
	if %deger%==2 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 sa§-tk ayar yeni haline getirildi.. >> %konum%\Logs
				   reg delete "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&goto :eof)
	if %deger%==x goto Win11SettingsMenu
	if %deger%==X goto Win11SettingsMenu
else
	goto Win11SettingsMenu	

:Win11RightMenuTerminal
cls
mode con cols=55 lines=15
title Sa§-tk Terminal ayar / OgnitorenKs
echo 
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Sa§-Tk Terminal Ayar               %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Terminal%RGB%%RGB%[90m [KALDIR]%RGB%[0m                           %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Terminal%RGB%%RGB%[90m [EKLE]%RGB%[0m                             %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger= %RGB%[92m ˜Ÿlem : %RGB%[0m
	if %deger%==1 (echo [%date% - %time%] ^| Win11RightMenuTerminal ^| Windows 11 sa§-tk b”lmnden terminal kaldrld. >> %konum%\Logs
				   reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /f /v "{9F156763-7844-4DC4-B2B1-901F640F5155}" /t REG_SZ /d ""&start explorer.exe&goto :eof)
	if %deger%==2 (echo [%date% - %time%] ^| Win11RightMenuTerminal ^| Windows 11 sa§-tk b”lmne terminal eklendi. >> %konum%\Logs
				   reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /f&goto :eof)
	if %deger%==x goto Win11SettingsMenu
	if %deger%==X goto Win11SettingsMenu
else
	goto Win11SettingsMenu
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:Win10SettingsMenu
cls
mode con cols=55 lines=17
title Windows 10 ™zelleŸtir / OgnitorenKs
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Windows 10 ™zelleŸtirme              %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Saat yan, simgeler%RGB%%RGB%[90m [G™STER/G˜ZLE]%RGB%[0m          %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Bildirim Alan%RGB%%RGB%[90m [A€/KAPAT]%RGB%[0m                   %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Sahiplik Al%RGB%%RGB%[90m [EKLE/KALDIR]%RGB%[0m                   %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 4.%ESC%%RGB%[33m Market%RGB%%RGB%[90m [YšKLE/KALDIR]%RGB%[0m                       %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 5.%ESC%%RGB%[33m Compact OS (Windows SkŸtrma)%RGB%%RGB%[90m [A€/KAPAT]%RGB%[0m  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 6.%ESC%%RGB%[33m Gpedit.msc (Yerel Grup ilkesi)%RGB%%RGB%[90m [EKLE]%RGB%[0m       %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 7.%ESC%%RGB%[33m Simgeleri De§iŸtir%RGB%%RGB%[90m [ESK˜/YEN˜]%RGB%[0m              %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger=%RGB%[92m  ˜Ÿlem : %RGB%[0m
	if %deger%==1 (Call :Win10EkranTepsi)
	if %deger%==2 (Call :Win10Bildirim)
	if %deger%==3 (Call :WinSahiplik)
	if %deger%==4 (Call :Win10StoreDelIns)
	if %deger%==5 (Call :WinCompactOS)
	if %deger%==6 GOTO gpedit
	if %deger%==7 GOTO icochangemenu
	if %deger%==x GOTO menu
	if %deger%==X GOTO menu
else
	goto Win10SettingsMenu
	
:: 
	
:Win10EkranTepsi
cls
mode con cols=55 lines=15
title G”rev ‡ubu§u dzenleniyor... / OgnitorenKs
echo 
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m               Saat Yan Simge Ayar               %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Hepsini G”ster%RGB%%RGB%[90m [A€]%RGB%[0m                         %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Hepsini Gizle%RGB%%RGB%[90m [KAPAT]%RGB%[0m                       %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger=%RGB%[92m  ˜Ÿlem : %RGB%[0m
	if %deger%==x goto Win10SettingsMenu
	if %deger%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10EkranTepsi ^| Windows 10 Saat yan simgeri ayar "%deger%" olarak ayarland. >> %konum%\Logs
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /f /v "EnableAutoTray" /t REG_DWORD /d %deger% > NUL 2>&1
Call :ExplorerReset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: 

:Win10Bildirim
cls
mode con cols=55 lines=15
title Bildirim alan dzenleniyor... / OgnitorenKs
echo 
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m               Bildirim Alan Ayar                %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m A‡k%RGB%[0m                                        %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Kapal%RGB%[0m                                      %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger= %RGB%[92m  ˜Ÿlem : %RGB%[0m
	if %deger%==x goto Win10SettingsMenu
	if %deger%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10Bildirim ^| Windows 10 Bildirim alan ayar "%deger%" olarak ayarland. >> %konum%\Logs
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %deger% > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %deger% > NUL 2>&1
Call :ExplorerReset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: 

:Win10StoreDelIns
cls
mode con cols=55 lines=15
title Market Y”neticisi / OgnitorenKs
echo 
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m                   Market Y”netici                 %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Market%RGB%%RGB%[90m [KALDIR]%RGB%[0m                             %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Market%RGB%%RGB%[90m [YšKLE]%RGB%[0m                              %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger=%RGB%[92m  ˜Ÿlem : %RGB%[0m
	if %deger%==1 (Call :Win10StoreDel)
	if %deger%==2 (Call :Win10StoreIns)
	if %deger%==x GOTO Win10SettingsMenu
	if %deger%==X GOTO Win10SettingsMenu
else
	goto Win10.Store.Del.Ins

:Win10StoreDel
cls
mode con cols=109 lines=35
title Market kaldrlyor... / OgnitorenKs
echo [%date% - %time%] ^| Win10StoreDelIns ^| Windows 10 market uygulamalar kaldrld. >> %konum%\Logs
echo %ESC%[92m Microsoft Store siliniyor...%ESC%[0m

powershell -command "Get-AppXPackage | Remove-AppxPackage"

echo %ESC%[92m Hizmetler durduruluyor...%ESC%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution" > NUL 2>&1
net start wuauserv > NUL 2>&1
sc config AppXSvc start= disabled > NUL 2>&1
net stop AppXSvc > NUL 2>&1
sc config camsvc start= disabled > NUL 2>&1
net stop camsvc > NUL 2>&1
sc config StorSvc start= disabled
net stop StorSvc > NUL 2>&1
net stop "ClipSVC" > NUL 2>&1

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto :eof

:Win10StoreIns
cls
mode con cols=109 lines=35
title Market ykleniyor... / OgnitorenKs
echo [%date% - %time%] ^| Win10StoreDelIns ^| Windows 10 Market uygulamas yeniden yklendi. >> %konum%\Logs
echo %ESC%[92m Microsoft Store ykleniyor...%ESC%[0m
powershell -command "Add-AppxPackage -DisableDevelopmentMode -Register $Env:%windir%\SystemApps\*\AppxManifest.xml"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "" /t REG_SZ /d /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "DisableSubscription" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "InactivityShutdownDelay" /t REG_DWORD /d 0x0000012c /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ProcessBiosKey" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "RefreshRequired" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ServiceDll" /t REG_EXPAND_SZ /d "%SystemRoot%\System32\ClipSVC.dll" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ServiceDllUnloadOnStop" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d 0 /f

echo %ESC%[92m Hizmetler baŸlatlyor...%ESC%[0m
sc config AppXSvc start= demand > NUL 2>&1
net start AppXSvc > NUL 2>&1
sc config camsvc start= demand > NUL 2>&1
net start camsvc > NUL 2>&1
sc config cryptsvc start= auto > NUL 2>&1
net start cryptsvc > NUL 2>&1
sc config wuauserv start= demand > NUL 2>&1
net start wuauserv > NUL 2>&1
sc config StorSvc start= demand > NUL 2>&1
net start StorSvc > NUL 2>&1
sc config bits start= auto > NUL 2>&1
net start bits > NUL 2>&1
sc config trustedinstaller start= demand > NUL 2>&1
net start trustedinstaller > NUL 2>&1
net start ClipSVC > NUL 2>&1
net stop wuauserv > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution"
net start wuauserv > NUL 2>&1

echo %ESC%[92m DLL dosyalar kontrol ediliyor...%ESC%[0m
regsvr32  softpub.dll /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  dssenh.dll /s&regsvr32  rsaenh.dll /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  slbcsp.dll /s&regsvr32  mssip32.dll /s&regsvr32  cryptdlg.dll /s&regsvr32  msxml3.dll /s&regsvr32  comcat.dll /s&Regsvr32  Msxml.dll /s&Regsvr32  Msxml2.dll /s&regsvr32  mshtml.dll /s&regsvr32  shdocvw.dll /s&regsvr32  browseui.dll /s&regsvr32  msjava.dll /s&regsvr32  shdoc401.dll /s&regsvr32  cdm.dll /s&regsvr32  shdoc401.dll /i /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  asctrls.ocx /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  softpub.dll /s&regsvr32  oleaut32.dll /s&regsvr32  shdocvw.dll /I /s&regsvr32  Shell32.dll /s&regsvr32  browseui.dll /s&regsvr32  browseui.dll /I /s&regsvr32  msrating.dll /s&regsvr32  mlang.dll /s&regsvr32  hlink.dll /s&regsvr32  mshtmled.dll /s&regsvr32  urlmon.dll /s&regsvr32  urlmon.dll /i /s&regsvr32  plugin.ocx /s&regsvr32  sendmail.dll /s&regsvr32  scrobj.dll /s&regsvr32  mmefxe.ocx /s&regsvr32  corpol.dll /s&regsvr32  jscript.dll /s&regsvr32  imgutil.dll /s&regsvr32  thumbvw.dll /s&regsvr32  cryptext.dll /s&regsvr32  rsabase.dll /s&regsvr32  inseng.dll /s&regsvr32  iesetup.dll /i /s&regsvr32  actxprxy.dll /s&regsvr32  dispex.dll /s&regsvr32  occache.dll /s&regsvr32  occache.dll /i /s&regsvr32  iepeers.dll /s&regsvr32  cdfview.dll /s&regsvr32  webcheck.dll /s&regsvr32  mobsync.dll /s&regsvr32  pngfilt.dll /s&regsvr32  licmgr10.dll /s
regsvr32  icmfilter.dll /s&regsvr32  hhctrl.ocx /s&regsvr32  inetcfg.dll /s&regsvr32  tdc.ocx /s&regsvr32  MSR2C.DLL /s&regsvr32  msident.dll /s&regsvr32  msieftp.dll /s&regsvr32  xmsconf.ocx /s&regsvr32  ils.dll /s&regsvr32  msoeacct.dll /s&regsvr32  inetcomm.dll /s&regsvr32  msdxm.ocx /s&regsvr32  dxmasf.dll /s&regsvr32  l3codecx.ax /s&regsvr32  acelpdec.ax /s&regsvr32  mpg4ds32.ax /s&regsvr32  voxmsdec.ax /s&regsvr32  danim.dll /s&regsvr32  Daxctle.ocx /s&regsvr32  lmrt.dll /s&regsvr32  datime.dll /s&regsvr32  dxtrans.dll /s&regsvr32  dxtmsft.dll /s&regsvr32  WEBPOST.DLL /s&regsvr32  WPWIZDLL.DLL /s&regsvr32  POSTWPP.DLL /s&regsvr32  CRSWPP.DLL /s&regsvr32  FTPWPP.DLL /s&regsvr32  FPWPP.DLL /s&regsvr32  WUAPI.DLL /s&regsvr32  wups2.dll /S&regsvr32  WUAUENG.DLL /s&regsvr32  ATL.DLL /s&regsvr32  WUCLTUI.DLL /s&regsvr32  WUPS.DLL /s&regsvr32  WUWEB.DLL /s&regsvr32  wshom.ocx /s&regsvr32  wshext.dll /s&regsvr32  vbscript.dll /s&regsvr32  scrrun.dll mstinit.exe /setup /s&regsvr32  msnsspc.dll /SspcCreateSspiReg /s&regsvr32  msapsspc.dll /SspcCreateSspiReg /s
wsreset
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto :eof

:stop
:icochangemenu
cls
mode con cols=55 lines=15
title ICO Y”neticisi / OgnitorenKs
echo 
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m                    ICO Y”netici                   %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Eski Simge%RGB%%RGB%[90m [YšKLE]%RGB%[0m                          %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Yeni Simge%RGB%%RGB%[90m [YšKLE]%RGB%[0m                          %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger=%RGB%[92m  ˜Ÿlem : %RGB%[0m
	if %deger%==1 (Call :icochange Oldico)
	if %deger%==2 (Call :icochange Newico)
	if %deger%==x GOTO Win10SettingsMenu
	if %deger%==X GOTO Win10SettingsMenu
else
	goto icochange

:icochange
cls
Call :PowerRun
Call :konum
echo [%date% - %time%] ^| icochangemenu ^| "%~1" simge dosyas yklendi. >> %konum%\Logs
title ICO Ayarlar yaplyor / OgnitorenKs
dir /b %konum%\Files\Oldico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :oldicodown)
title ICO Ayarlar yaplyor / OgnitorenKs
taskkill /f /im "explorer.exe" > NUL 2>&1
echo %ESC%[92m Simgeler ykleniyor...%ESC%[0m
%PowerRun% Powershell -command "Expand-Archive -Force '%konum%\Files\%~1.zip' 'C:\'"
timeout /t 20 /nobreak > NUL
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
"%konum%\Files\ReIconCache.exe"
powershell -command "Start-Process 'C:\Windows\explorer.exe'"
goto Win10SettingsMenu

:oldicodown
echo %ESC%[96m Simge dosyalar indiriliyor...%ESC%[0m
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo  %ESC%[1;97m%ESC%%ESC%[41m               ˜nternet ba§lants yok.              %ESC%[0m
						echo  %ESC%[1;97m%ESC%%ESC%[41m   Ba§lanty sa§layp herhangi bir tuŸa basnz    %ESC%[0m
						Call :Logss "oldicodown" "HATA! ˜nternet ba§lants bulunamad."
						pause > NUL
						goto oldicodown)

echo [%date% - %time%] ^| oldicodown ^| Simge dosyalar indirildi. >> %konum%\Logs
%konum%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=1CXNQ2WVGM_udNMvaloaxFFQ_2sMaY5RQ" -O %konum%\Files\Oldico.zip
%konum%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=1_Vcmp6xUwlqwuUdAjscS9bnGEi_XW24G" -O %konum%\Files\Newico.zip
goto :eof


:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:AdminMenu
cls
mode con cols=55 lines=17
title Kullanc ˜Ÿlemleri \ OgnitorenKs
echo 
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Kullanc Hesap Y”netimi             %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Administrator%RGB%%RGB%[90m [AKT˜F]%RGB%[0m                       %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Administrator%RGB%%RGB%[90m [PAS˜F]%RGB%[0m                       %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Admin grubuna Kullanc ekle%RGB%[0m                %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 4.%ESC%%RGB%[33m Kullanc%RGB%%RGB%[90m [EKLE]%RGB%[0m                            %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 5.%ESC%%RGB%[33m Kullanc%RGB%%RGB%[90m [S˜L]%RGB%[0m                             %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 6.%ESC%%RGB%[33m žifremi unuttum%RGB%[0m                             %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m 7.%ESC%%RGB%[33m Mevcut Kullanclar G”ster%RGB%[0m                 %ESC%[90mº%ESC%[0m
echo  %ESC%[90mº%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mº%ESC%[0m
echo  %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger=%RGB%[92m Yapmak istedi§iniz iŸlem : %RGB%[0m
	if %deger%==1 GOTO Tweak1AdminAktif
	if %deger%==2 GOTO Tweak2AdminPasif
	if %deger%==3 GOTO Tweak3GrupAdmin
	if %deger%==4 GOTO Tweak4NewUsers
	if %deger%==5 GOTO Tweak5DelUsers
	if %deger%==6 GOTO Tweak6UsersKey
	if %deger%==7 (start cmd /k Powershell -command "Get-WmiObject Win32_UserAccount -filter "LocalAccount=True" | Select-Object Name,Disabled"&goto AdminMenu)
	if %deger%==x GOTO menu
	if %deger%==X GOTO menu
else
	goto AdminMenu

:Tweak1AdminAktif
cls
mode con cols=55 lines=20
title Administrator A‡ \ OgnitorenKs
echo 
echo   %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m        Administrator aktifleŸtiriliyor...       %ESC%[0m%ESC%[90mº%ESC%[0m
echo   %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
echo [%date% - %time%] ^| AdminMenu ^| Administrator aktifleŸtirildi. >> %konum%\Logs
net user administrator /active:yes
net user administrator *
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 1 /nobreak > NUL
goto AdminMenu

:Tweak2AdminPasif
cls
mode con cols=55 lines=20
title Administrator kapat \ OgnitorenKs
echo 
echo   %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m           Administrator kapatlyor...          %ESC%[0m%ESC%[90mº%ESC%[0m
echo   %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
echo [%date% - %time%] ^| AdminMenu ^| Administrator kapatld. >> %konum%\Logs
net user Administrator /active:no
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 1 /nobreak > NUL
goto AdminMenu

:Tweak3GrupAdmin
cls
mode con cols=55 lines=20
title Admin Grubuna Kullanc ekle \ OgnitorenKs
echo 
echo   %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m          Admin Grubuna kullanc ekle           %ESC%[0m%ESC%[90mº%ESC%[0m
echo   %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger=%RGB%[92m     Kullanc Ad : %RGB%[0m  
	if %deger%==x GOTO AdminMenu
	if %deger%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Admin grubuna %deger% kullancs eklendi. >> %konum%\Logs
net localgroup Administrators %deger% /add 
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak4NewUsers
cls
mode con cols=55 lines=20
title Yeni Kullanc ekle \ OgnitorenKs
echo 
echo   %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m               Yeni kullanc ekle               %ESC%[0m%ESC%[90mº%ESC%[0m
echo   %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger=%RGB%[92m     Kullanc Ad : %RGB%[0m
	if %deger%==x GOTO AdminMenu
	if %deger%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Yeni kullanc "%deger%" oluŸturuldu. >> %konum%\Logs
net user %deger% * /add

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak5DelUsers
cls
mode con cols=55 lines=20
title Kullanc Sil \ OgnitorenKs
echo 
echo   %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m                  Kullanc Sil                  %ESC%[0m%ESC%[90mº%ESC%[0m
echo   %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger=%RGB%[92m     Kullanc Ad : %RGB%[0m
	if %deger%==x GOTO AdminMenu
	if %deger%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Kullanc "%deger%" silindi. >> %konum%\Logs
net user %deger% /delete

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak6UsersKey
cls
mode con cols=55 lines=20
title žifremi Unuttum / De§iŸtir \ OgnitorenKs
echo 
echo   %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo   %ESC%[90mº%ESC%%ESC%[1;97m%ESC%%ESC%[100m             žifremi Unuttum / De§iŸtir          %ESC%[0m%ESC%[90mº%ESC%[0m
echo   %ESC%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%ESC%[0m
set /p deger=%RGB%[92m     Kullanc Ad : %RGB%[0m
	if %deger%==x GOTO AdminMenu
	if %deger%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Kullanc "%deger%" Ÿifre de§iŸtirildi. >> %konum%\Logs
net user %deger% *

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu


:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:UpdateAfter
cls
Call :PowerRun
echo [%date% - %time%] ^| UpdateAfter ^| Gncelleme sonras temizlik b”lm ‡alŸtrld. >> %konum%\Logs
echo %ESC%[92m Gncelleme sonras temizlik iŸlemi yaplyor.%ESC%[0m
echo %ESC%[92m Defender dosyalar siliniyor.%ESC%[0m
%PowerRun% DEL /F /Q /A "%windir%\System32\CompatTelRunner.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\MsSecFlt.sys" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\WdBoot.sys" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\WdFilter.sys" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\WdNisDrv.sys" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%windir%\System32\smartscreen.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%windir%\System32\securityhealthhost.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%windir%\System32\securityhealthservice.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%windir%\System32\securityhealthsystray.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%windir%\System32\SgrmBroker.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%programfiles%\Windows Defender Advanced Threat Protection" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%programfiles%\Windows Defender" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%programfiles%\Windows Security" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%programfiles(x86)%\Windows Security" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%programfiles(x86)%\Windows Defender" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%programfiles(x86)%\Windows Defender Advanced Threat Protection" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%programdata%\Microsoft\Windows Security Health" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%programdata%\Microsoft\Windows Defender Advanced Threat Protection" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%programdata%\Microsoft\Windows Defender" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy" > NUL 2>&1
echo %ESC%[92m Defender hizmetler kapatlyor.%ESC%[0m
%PowerRun% sc config SecurityHealthService start= disabled > NUL 2>&1
%PowerRun% net stop SecurityHealthService > NUL 2>&1
%PowerRun% sc config Sense start= disabled > NUL 2>&1
%PowerRun% net stop Sense > NUL 2>&1
%PowerRun% sc config SgrmBroker start= disabled > NUL 2>&1
%PowerRun% net stop SgrmBroker > NUL 2>&1
%PowerRun% sc config WdNisSvc start= disabled > NUL 2>&1
%PowerRun% net stop WdNisSvc > NUL 2>&1
%PowerRun% sc config WinDefend start= disabled > NUL 2>&1
%PowerRun% net stop WinDefend > NUL 2>&1
%PowerRun% sc config wscsvc start= disabled > NUL 2>&1
%PowerRun% net stop wscsvc > NUL 2>&1
echo %ESC%[92m Yeniden a‡lan di§er hizmetler kapatlyor.%ESC%[0m
net stop DiagTrack > NUL 2>&1
sc delete DiagTrack > NUL 2>&1
net stop dmwappushservice > NUL 2>&1
sc delete dmwappushservice > NUL 2>&1
net stop diagnosticshub.standartcollector.service > NUL 2>&1
sc delete diagnosticshub.standartcollector.service > NUL 2>&1
net stop diagsvc > NUL 2>&1
sc delete diagsvc > NUL 2>&1
:: Czdan Hizmeti
sc config WalletService start= disabled > NUL 2>&1
net stop WalletService > NUL 2>&1
:: Ebeveyn Kontrolleri
sc config WpcMonSvc start= disabled > NUL 2>&1
net stop WpcMonSvc > NUL 2>&1
:: Fax
sc config fax start= disabled > NUL 2>&1
net stop fax > NUL 2>&1
:: KiŸi hizmeti
sc config PimIndexMaintenanceSvc start= disabled > NUL 2>&1
net stop PimIndexMaintenanceSvc > NUL 2>&1
:: Kurumsal uygulama y”netimi hizmeti
sc config EntAppSvc start= disabled > NUL 2>&1
net stop EntAppSvc > NUL 2>&1
:: Edge gncelleme hizmeti
net stop edgeupdate > NUL 2>&1
net stop edgeupdatem > NUL 2>&1
sc config edgeupdate start= disabled > NUL 2>&1
sc config edgeupdatem start= disabled > NUL 2>&1
:: Parekende G”steri hizmeti
sc config RetailDemo start= disabled > NUL 2>&1
net stop RetailDemo > NUL 2>&1
:: Program Uyumluluk Yardmcs Hizmeti
sc config PcaSvc start= disabled > NUL 2>&1
net stop PcaSvc > NUL 2>&1
:: Hzl Getir
sc config SysMain start= disabled > NUL 2>&1
net stop SysMain > NUL 2>&1
:: Tanlama ˜lkesi Hizmeti
sc config DPS start= disabled > NUL 2>&1
net stop DPS > NUL 2>&1
:: Karma Ger‡eklik
sc config SharedRealitySvc start= disabled > NUL 2>&1
net stop SharedRealitySvc > NUL 2>&1
sc config VacSvc start= disabled > NUL 2>&1
net stop VacSvc > NUL 2>&1
sc config perceptionsimulation start= disabled > NUL 2>&1
net stop perceptionsimulation > NUL 2>&1
sc config spectrum start= disabled > NUL 2>&1
net stop spectrum > NUL 2>&1
net stop MixedRealityOpenXRSvc > NUL 2>&1
sc config MixedRealityOpenXRSvc start= disabled > NUL 2>&1
:: Windows Hata Raporlama
sc config WerSvc start= disabled > NUL 2>&1
net stop WerSvc > NUL 2>&1
:: Windows Search
net stop WSearch > NUL 2>&1
sc config WSearch start= disabled > NUL 2>&1
:: €evrimdŸ dosyalar
sc config CscService start= disabled > NUL 2>&1
net stop CscService > NUL 2>&1
:: NFC/SE hizmeti
sc config SEMgrSvc start= disabled > NUL 2>&1
net stop SEMgrSvc > NUL 2>&1
:: ™nerilen Sorun giderme hizmeti
net stop TroubleshootingSvc > NUL 2>&1
sc config TroubleshootingSvc start= disabled > NUL 2>&1
:: ˜ndirilen haritalar y”neticisi
net stop MapsBroker > NUL 2>&1
sc config MapsBroker start= disabled > NUL 2>&1
echo %ESC%[92m Regedit kaytlar yeniden dzenleniyor.%ESC%[0m
:: Defender
Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKCU\SOFTWARE\Microsoft\Windows Security Health\State" /v "AccountProtection_MicrosoftAccount_Disconnected" /t REG_DWORD /d "0" /f >nul 2>&1
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f >nul 2>&1
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableAntiVirus" /t REG_DWORD /d "1" /f >nul 2>&1
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtection" /t REG_DWORD /d "0" /f >nul 2>&1
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtectionSource" /t REG_DWORD /d "2" /f >nul 2>&1
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Signature Updates" /v "FirstAuGracePeriod" /t REG_DWORD /d "0" /f >nul 2>&1
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\UX Configuration" /v "DisablePrivacyMode" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "SecurityHealth" /t REG_BINARY /d "030000000000000000000000" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" /v "HideSystray" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "PUAProtection" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "RandomizeScheduleTaskTimes" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions" /v "DisableAutoExclusions" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\MpEngine" /v "MpEnablePus" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" /v "LocalSettingOverridePurgeItemsAfterDelay" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" /v "PurgeItemsAfterDelay" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableIOAVProtection" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScriptScanning" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" /v "Scan_ScheduleDay" /t REG_DWORD /d "8" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" /v "Scan_ScheduleTime" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "AdditionalActionTimeOut" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "CriticalFailureTimeOut" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableGenericRePorts" /t REG_DWORD /d 1 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "NonCriticalTimeOut" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "AvgCPULoadFactor" /t REG_DWORD /d "10" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableArchiveScanning" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableCatchupFullScan" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableCatchupQuickScan" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableRemovableDriveScanning" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableRestorePoint" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableScanningMappedNetworkDrivesForFullScan" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableScanningNetworkFiles" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "PurgeItemsAfterDelay" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScanOnlyIfIdle" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScanParameters" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScheduleDay" /t REG_DWORD /d 8 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScheduleTime" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "DisableUpdateOnStartupWithoutEngine" /t REG_DWORD /d 1 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "ScheduleDay" /t REG_DWORD /d 8 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "ScheduleTime" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "SignatureUpdateCatchupInterval" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SpyNet" /v "DisableBlockAtFirstSeen" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "LocalSettingOverrideSpynetReporting" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReportingLocation" /t REG_MULTI_SZ /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f >nul 2>&1
timeout /t 2 /nobreak > NUL
:: SmartScreen
for /f "tokens=* USEBACKQ" %%i in (`wmic useraccount where "name="%username%"" get sid ^| findstr "S-"`) do set currentusername=%%i
set currentusername=%currentusername:~0,-3%
Reg add "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "PreventOverride" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKU\%currentusername%\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "PreventOverride" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKCU\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Microsoft\Windows Security Health\State" /v "AppAndBrowser_StoreAppsSmartScreenOff" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "PreventOverride" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t REG_SZ /d "Anywhere" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "ContentEvaluation" /t REG_DWORD /d 0 > NUL 2>&1
::Di§er
:: Gncellemenin yklenmesi gerekti§inde bilgisayar mmkn olan en ksa srede devre dŸ brak
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "IsExpedited" /t REG_DWORD /d 0 > NUL 2>&1
:: Gncelleme sonras yeniden baŸlatma bildirimi devre dŸ braklyor...
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "RestartNotificationsAllowed2" /t REG_DWORD /d 0 > NUL 2>&1
:: KonuŸma modellerinin gnceleŸtirmeleri devre dŸ braklyor...
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "ModelDownloadAllowed" /t REG_DWORD /d 0 > NUL 2>&1
:: Teslimat Optimizasyonu BITS hizmeti olarak ayarlanyor...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /f /v "DODownloadMode" /t REG_DWORD /d "100" > NUL 2>&1
:: Driverlar kurulu de§il ise kurulmas i‡in ayarlanyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /f /v "SearchOrderConfig" /t REG_DWORD /d 2 > NUL 2>&1
:: GncelleŸtirmeler Manuel yaplyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "NoAutoUpdate" /t REG_DWORD /d "0" > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "AUOptions" /t REG_DWORD /d "2" > NUL 2>&1
:: Explorer "Bu Bilgisayar" olarak ayarlanyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "LaunchTo" /t REG_DWORD /d 1 > NUL 2>&1
:: Dosya kopyalama iletiŸim kutusuda daha fazla detay g”ster olarak ayarlanyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /f /v "EnthusiastMode" /t REG_DWORD /d 1 > NUL 2>&1
:: G”rev G”rnm Simgesi Kaldrlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowTaskViewButton" /t REG_DWORD /d 0 > NUL 2>&1
:: Dosya uzantlar aktifleŸtiriliyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "HideFileExt" /t REG_DWORD /d 0 > NUL 2>&1
:: Otomatik oynatma kapatlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /f /v "DisableAutoplay" /t REG_DWORD /d 1 > NUL 2>&1
:: Son a‡lan belgelerin ge‡miŸi kapatlyor...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoRecentDocsHistory" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows'u kapatrken yeni a‡lan belgelerin ge‡miŸini temizle aktifleŸtiriliyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ClearRecentDocsOnExit" /t REG_DWORD /d 1 /f > NUL 2>&1
:: Son kullanlan dosyalarn hzl eriŸimde g”rntlenmesi engelleniyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowRecent" /t REG_DWORD /d 0 > NUL 2>&1
:: Hzl EriŸimden Sk Kullanlan klas”rler kaldrlyor
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowFrequent" /t REG_DWORD /d 0 > NUL 2>&1
:: G”rev €ubu§u ve btn simgeleri tm monit”rlerde g”ster
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "MMTaskbarEnabled" /t REG_DWORD /d 1 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "MMTaskbarMode" /t REG_DWORD /d 0 > NUL 2>&1
:: Ksayol yazs kaldrlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "Link" /t REG_BINARY /d "00000000" > NUL 2>&1
:: Birlikte a‡ se‡ene§inden internette ara se‡ene§i kaldrlyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoInternetOpenWith" /t REG_DWORD /d 1 > NUL 2>&1
:: G”rev ‡ubu§u transparan ”zelli§i devre dŸ braklyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /f /v "EnableTransparency" /t REG_DWORD /d 0 > NUL 2>&1
:: Arama b”lm simge haline getiriliyor
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v "SearchboxTaskbarMode" /t REG_DWORD /d 1 > NUL 2>&1
:: Web aramas kapatlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "DisableWebSearch" /t REG_DWORD /d 1 > NUL 2>&1
:: Web'de arama yapmayn veya Arama'da web sonu‡larn g”rntlemeyin
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 > NUL 2>&1
:: žifrelenmiŸ dosyalarn indekslenme izni kaldrlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowIndexingEncryptedStoresOrItems" /t REG_DWORD /d 0 > NUL 2>&1
:: Arama ve Cortana'nn konumu kullanma izni kapatlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 > NUL 2>&1
:: ˜‡eri§i ve ”zellikleri dizine eklerken her zaman otomatik dil alglamay kullann kapatlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AlwaysUseAutoLangDetection" /t REG_DWORD /d 0 > NUL 2>&1
:: Cortana izni kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaConsent" /t REG_DWORD /d 0 > NUL 2>&1
:: Cortana Ortam modu kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaInAmbientMode" /t REG_DWORD /d 0 > NUL 2>&1
:: Arama b”lmnn konumu kullanmas engelleniyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 > NUL 2>&1
:: Gvenli arama modu kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /f /v "SafeSearchMode" /t REG_DWORD /d 0 > NUL 2>&1
:: Dosya Gezgini arama kutusundaki son arama giriŸlerinin g”rntlenmesini kapatn
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /f /v "DisableSearchBoxSuggestions" /t REG_DWORD /d 1 > NUL 2>&1
:: Web aramas kapatlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "DisableWebSearch" /t REG_DWORD /d 1 > NUL 2>&1
:: Tarifeli ba§lantlar zerinden aramada web'de arama yapmayn veya web sonu‡larn g”rntlemeyin
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 > NUL 2>&1
:: Bulut arama kapatlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowCloudSearch" /t REG_DWORD /d 0 > NUL 2>&1
:: Gizlilik politikas devre dŸ braklyor.
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 > NUL 2>&1
:: Sesle etkinleŸtirme kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "VoiceActivationDefaultOn" /t REG_DWORD /d 0 > NUL 2>&1
:: Kilit Ekrannn šstnde Sesle EtkinleŸtirme kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "VoiceActivationEnableAboveLockscreen" /t REG_DWORD /d 0 > NUL 2>&1
:: Ses etkinleŸtirme kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" /f /v "DisableVoice" /t REG_DWORD /d 1 > NUL 2>&1
:: Arama - Bing web sonu‡larn dahil et kapatlyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "BingSearchEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Ayarlar uygulamasn ”nerilen i‡eri§i g”stermesi kapatlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Ba§lanmak i‡in Hotspot 2.0 €evrimi‡i kaydolmay kullann kapatlyor
reg add "HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache" /f /v "OsuRegistrationStatus" /t REG_DWORD /d 0 > NUL 2>&1
:: BaŸlang‡ ve arama sonu‡larn iyileŸtirmek i‡in Windows izleme uygulamasnn baŸlatlmasna izin verin kapatlyor
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackProgs" /t REG_DWORD /d 0 > NUL 2>&1
:: BaŸlang‡taki ara sra ”neriler kapatlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Cihazmn kurulumunu ‡evrimi‡i olarak tamamlayabilece§im yollar ”ner kapatlyor.
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /f /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Programlanabilir G”rev €ubu§u ”zelli§i devre dŸ braklyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableCloudOptimizedContent" /t REG_DWORD /d 1 > NUL 2>&1
:: Cortana
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowCortana" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" /f /v "AllowCortana" /t REG_DWORD /d 0 > NUL 2>&1
:: Cortana - Cihaz de§iŸtirirken etkinlik ”nerileri
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "HistoryViewEnabled" /t REG_DWORD 0 > NUL 2>&1
:: Cortana - Oturum a‡t§m cihazlar ge‡miŸimi kullan
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v "DeviceHistoryEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Cortana Butonu kaldrlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowCortanaButton" /t REG_DWORD /d 0 > NUL 2>&1
:: Deneyim geliŸtirme programna izin ver(NVIDIA Srcs) kapatlyor...
reg add "HKCU\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /f /v "OptInOrOutPreference" /t REG_DWORD /d 0 > NUL 2>&1
:: Deneylere izin ver kapatlyor
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowExperimentation" /t REG_DWORD /d 0 > NUL 2>&1
:: Gelecekte yazmay iyileŸtirmenize yardmc olmas i‡in nasl yazd§m hakknda Microsoft'a bilgi g”nderme kapatlyor.
reg add "HKCU\SOFTWARE\Microsoft\Input\TIPC" /f /v "Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Geri Bildirim frekans kapatlyor.
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /f /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 > NUL 2>&1
:: GiriŸ verilerinizi Microsoft'a g”ndererek konuŸma, yazma ve mrekkepleme giriŸinizi kiŸiselleŸtirin kapatlyor
reg add "HKCU\Software\Microsoft\Personalization\Settings" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts " /t REG_DWORD /d 0 > NUL 2>&1
:: Konum Hizmetlerini kapatlyor...
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowLocation" /t REG_DWORD /d 0 > NUL 2>&1
:: Kullanc dil listesine eriŸerek web sitelerinin yerel olarak alakal i‡erik sa§lamas engelleniyor.
reg add "HKCU\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 > NUL 2>&1
:: Kullancnn di§er cihazlardaki uygulamalarn uygulamalar a‡mas engelleniyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /f /v "UserAuthPolicy" /t REG_DWORD /d 0 > NUL 2>&1
:: Okumay iyileŸtirmek, taramay hzlandrmak i‡in sayfa tahminini kullann. G”z Atma Verilerinin Microsoft'a G”nderilmesi engelleniyor...
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" /f /v "FPEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Skype KiŸiler ba§lants devre dŸ braklyor...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" /f /v "Skype-UserConsentAccepted" /t REG_DWORD /d 0 > NUL 2>&1
:: Sponsorlu uygulamalarn otomatik kurulumu (Tketici Deneyimi)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 > NUL 2>&1
reg add "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 > NUL 2>&1
:: Tanlama verilerinizi kullanarak Microsoft'un ilgili ipu‡lar ve ”nerilerle daha ”zel deneyimler sunmasna izin verin.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Telemetry Devre DŸ braklyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0 > NUL 2>&1
:: Uygulamalarn arka planda ‡alŸmas engelleniyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "Migrated" /t REG_DWORD /d 4 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "GlobalUserDisabled" /t REG_DWORD /d 1 > NUL 2>&1
:: Uygulamalarn uygulamalardaki deneyimler i‡in kullanc reklam kimli§ini kullanmas engelleniyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v "DisabledByGroupPolicy" /t REG_DWORD /d 1 > NUL 2>&1
:: Windows ve Cortana'nn sizi daha iyi anlamasna izin vermek i‡in kiŸileri toplama kapatlyor.
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows ve Cortana'nn sizi daha iyi anlamasna izin vermek i‡in yazl metin (mrekkep) toplayn kapatlyor.
reg add "HKCU\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 > NUL 2>&1
:: Windows ve Cortana'nn sizi daha iyi anlamasna izin vermek i‡in yazl metni toplayn.
reg add "HKCU\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 > NUL 2>&1
:: Windows'un bu bilgisayardan etkinliklerimi toplamasna izin ver (Zaman ‡izelgesi)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows'un s‡rama listelerini doldurmak i‡in a‡lan belgeleri izlemesi kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackDocs" /t REG_DWORD /d 0 > NUL 2>&1
:: €evrimi‡i konuŸma hizmetleri devre dŸ braklyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /f /v "AllowInputPersonalization" /t REG_DWORD /d 0 > NUL 2>&1
:: ™nerilen a‡k scak noktalara otomatik ba§lan kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "WiFiSenseOpen" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" /f /v "value" /t REG_DWORD /d 0 > NUL 2>&1
:: šcretli a§ hizmetlerinin mevcut olup olmad§n g”rmek i‡in ge‡ici olarak eriŸim noktalarna otomatik olarak ba§lanma kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "PaidWifi" /t REG_DWORD /d 0 > NUL 2>&1
:: ˜‡g”rsel yazma engelleniyor...
reg add "HKCU\SOFTWARE\Microsoft\Input\Settings" /f /v "InsightsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: OneDrive EŸitlemesi devre dŸ braklyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 > NUL 2>&1
:: AutoLogger devre dŸ braklyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f > NUL 2>&1
:: Windows Hata Raporlama devre dŸ braklyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /f /v "DontSendAdditionalData" /t REG_DWORD /d 1 > NUL 2>&1
:: Wifi Hotspot Raporlama devre dŸ braklyor...
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" /f /v "value" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows Reklam Kimli§ini devre dŸ braklyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v "Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: MŸteri Deneyim Program devre dŸ brakrlyor...
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /f /v "CEIPEnable" /t REG_DWORD /d 0 > NUL 2>&1
::Metadata izleme dosyalar kaldrlyor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /f > NUL 2>&1
:: Windows'un bilgisayardaki etkinlikleri toplamas engelleniyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "PublishUserActivities" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 > NUL 2>&1
:: Atlama Listelerinde en son a‡lan ”§eler engelleniyor...
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Start" /f /v "HideRecentJumplists" /t REG_DWORD /d 1 > NUL 2>&1
:: ™zellik reklam balonu bildirimlerini kapatlyor...
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer\NoBalloonFeatureAdvertisements" /f /v "NoBalloonFeatureAdvertisements" /t REG_DWORD /d 1 > NUL 2>&1
:: Hiberboot Devre DŸ braklyor
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /f /v "HiberbootEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Hazrda bekletme ”zelli§i devre dŸ braklyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /f /v "HibernateEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Kapatma mens - Hibernate kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /f /v "ShowHibernateOption" /t REG_DWORD /d 0 > NUL 2>&1
:: AyrlmŸ depolama alan devre dŸ braklyor...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "ShippedWithReserves" /t REG_DWORD /d 0 > NUL 2>&1
:: Prefetch devre dŸ braklyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnablePrefetcher" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnableSuperFetch" /t REG_DWORD /d 0 > NUL 2>&1
:: Startup Delay (BaŸlang‡ Gecikmesi) devre dŸ braklyor...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /f /v "StartupDelayInMSec" /t REG_DWORD /d 0 > NUL 2>&1
:: Qos Limiti Devre DŸ braklyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /f /v "NonBestEffortLimit" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows 255 Karakter Snr devre dŸ braklyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /f /v "LongPathsEnabled" /t REG_DWORD /d 1 > NUL 2>&1
:: DiagTrack Devre DŸ braklyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /f /v "Start" /t REG_DWORD /d 0 > NUL 2>&1
:: Narrator QuickStart kapatlyor.
reg add "HKEY_CURRENT_USER\Software\Microsoft\Narrator\QuickStart" /f /v "SkipQuickStart" /t REG_DWORD /d 1 > NUL 2>&1
:: Windows ”nerileri devre dŸ braklyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SoftLandingEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows karŸlama deneyimi kapatlyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Program uyumluluk yardmcs devre dŸ braklyor...
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /f /v "DisablePCA" /t REG_DWORD /d 1 > NUL 2>&1
:: Donanm hzlandrmal GPU Planlamas aktifleŸtiriliyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /f /v "HwSchMode" /t REG_DWORD /d 2 > NUL 2>&1
:: ˜Ÿaret‡i hassasiyeti devre dŸ braklyor...
reg add "HKCU\Control Panel\Mouse" /f /v "MouseSpeed" /t REG_SZ /d 0 > NUL 2>&1
:: Kapatma iŸleminde uygulamalar a‡k ise otomatik kapat ve bekleme sresi azaltlyor
reg add "HKCU\Control Panel\Desktop" /f /v "AutoEndTasks" /t REG_SZ /d 1 > NUL 2>&1
:: :: Uygulamalar cevap vermedi§i zaman g”revi sonlandr se‡ene§ine baslmadan ”nceki bekleme sresini ksaltr.
reg add "HKCU\Control Panel\Desktop" /f /v "HungAppTimeout" /t REG_SZ /d "1000" > NUL 2>&1
:: Bilgisayar kapatlrken ya da oturumdan ‡klrken kullanc uygulamalarnn kapatlmas i‡in sistem bekleme sresini ksaltr.
reg add "HKCU\Control Panel\Desktop" /f /v "WaitToKillAppTime" /t REG_SZ /d "2000" > NUL 2>&1
:: Cevap vermeyen hizmetlerin kapatlmasndan ”nceki sistem bekleme sresini ksaltr.
reg add "HKCU\Control Panel\Desktop" /f /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" > NUL 2>&1
:: Bilgisayarn kapatlmas srasnda durdurulacak hizmetler uyars geldi§inde, uygulamalarn kapanmas i‡in beklenen sreyi ksaltr.
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /f /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" > NUL 2>&1
:: Men g”sterimi bekleme sresini azaltr. B”ylelikle tkland§ zaman menler daha hzl gelecek.
reg add "HKCU\Control Panel\Desktop" /f /v "MenuShowDelay" /t REG_SZ /d "8" > NUL 2>&1
:: DŸk Depolama alan uyars devre dŸ braklyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1 > NUL 2>&1
:: :: Farenizle birlikte bir nesnenin zerine geldi§inizde g”rlen a‡klamann ‡kŸ sresini ksaltr
reg add "HKCU\Control Panel\Mouse" /f /v "MouseHoverTime" /t REG_SZ /d 8 > NUL 2>&1
:: Bilgisayarnzda mevcut olmayan programlara ait ksayollarn ba§lantsnn Windows tarafndan boŸa vakit harcanarak aranmasn ”nler
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1 > NUL 2>&1
:: Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un diski aramasn ”nler
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveSearch" /t REG_DWORD /d 1 > NUL 2>&1
:: Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un NTFS dosya sisteminin izleme ”zelli§ini kullanmasn engeller
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveTrack" /t REG_DWORD /d 1 > NUL 2>&1
:: Odak Yardm aktifleŸtiriliyor
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours" /f /v "Enable" /t REG_DWORD /d 1 > NUL 2>&1

:: 3.Parti Market uygulamalarnn yeniden yklenmesi engelleyen b”lm
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "ContentDeliveryAllowed" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "FeatureManagementEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: ™nceden yklenmiŸ OEM uygulamalar devre dŸ braklyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: ™nceden yklenmiŸ OEM uygulamalar (Minecraft, CandyCrush, Flipboard) kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "PreInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: ™nerilen uygulamalar otomatik olarak ykleyin kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-314559Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338387Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338389Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContentEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SystemPane RecommendionsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Market otomatik gncelleŸtirme kapatr.
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d 2 /f > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 > NUL 2>&1
bcdedit /deletevalue useplatformclock
bcdedit /set {current} recoveryenabled no
powercfg /h off
bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick yes
echo %ESC%[92m G”rev zamanlaycsnda dzenlemeler yaplyor.%ESC%[0m
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
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto menu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PingMeter
call :konum
echo [%date% - %time%] ^| UpdateAfter ^| Ping ”l‡er ‡alŸtrld. >> %konum%\Logs
powershell -command "Start-Process '%konum%\Ekler\Pingolc.bat'"
goto :eof

:SistemHakkinda
call :konum
echo [%date% - %time%] ^| SistemHakkinda ^| Sistem hakknda b”lm ‡alŸtrld. >> %konum%\Logs
powershell -command "Start-Process '%konum%\Ekler\Sistem.Hakkinda.bat'"
goto :eof

:FoldertoISO
call :konum
echo [%date% - %time%] ^| FoldertoISO ^| Folder to ISO yazlm ‡alŸtrld. >> %konum%\Logs
powershell -command "Start-Process '%konum%\Files\Folder2Iso\Folder2Iso.exe'"
goto :eof

:AppxManager
call :konum
echo [%date% - %time%] ^| AppxManager ^| Appx Manager uygulamas ‡alŸtrld. >> %konum%\Logs
powershell -command "Start-Process '%konum%\Files\WindowsAppBoss.exe'
goto :eof

:WindowsEdition
Call :konum
echo [%date% - %time%] ^| WindowsEdition ^| Windows Dzenleme b”lm ‡alŸtrld. >> %konum%\Logs
powershell -command "Start-Process '%konum%\Ekler\Windows.Edition.bat'
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PowerRun
Call :konum
dir /b "%konum%\Files\PowerRun.exe" > NUL 2>&1
	if %errorlevel%==1 (echo %ESC%[1;97m%ESC%%ESC%[41m HATA! PowerRun.exe dosyas bulunamad. Yeniden indiriliyor... %ESC%[0m
						Call :Logss "PowerRun indiriliyor" "PowerRun.exe dosyas bulunamad. Yeniden indirildi." >> %konum%\Logs
						Call :wgetdesktop "https://docs.google.com/uc?export=download&id=1wfov7bUB3j3X_VzwLw3X8bvNYtVNJ6NI" "%konum%\Download\PowerRun.zip"
						powershell -command "Expand-Archive -Force '%konum%\Download\PowerRun.zip' '%konum%\Files"
						timeout /t 2 /nobreak > NUL)
						
set PowerRun=%konum%\Files\PowerRun.exe /SW:0 %SystemRoot%\system32\cmd.exe /c
goto :EOF

:konum
cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum=%%a
goto :EOF

:Logs
Call :konum
set Logs=%konum%\Edit\Logs
goto :eof

:ExplorerReset
taskkill /f /im explorer.exe > NUL 2>&1
start explorer.exe > NUL 2>&1
goto :EOF

:kontroll
cls
FOR /F "tokens=3" %%i in ('FIND "Caption" %Logs%\OS.txt') do SET caption3=%%i
	if %caption3%==11 GOTO Win11settingsmenu
	if %caption3%==10 GOTO Win10settingsmenu
else
	exit

:: --------------------------------------------------------------------------------------------	
:Logss
echo [%date% - %time%] ^| %~1 ^| %~2 >> %konum%\Logs
goto :eof
:: --------------------------------------------------------------------------------------------
:: %~1: B”lm ad | %~2: Bilgi ksm
:: --------------------------------------------------------------------------------------------

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: --------------------------------------------------------------------------------------------
:: ˜lerleme ‡ubu§u konusunda yardmc olan KaanBeyhan'a (Doggest) teŸekkr ederim.
:: --------------------------------------------------------------------------------------------
:wget
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                  ˜nternet ba§lants yok.                                  %ESC%[0m
						echo [%date% - %time%] ^| wget ^| HATA! ˜nternet ba§lants bulunamad. ˜sim:%~2 Link:"%~1" Download:%download% >> %konum%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget ^| %~2 program indirildi. Link:"%~1" Download:%download% >> %konum%\Logs
Files\wget.exe -c -q --no-check-certificate --show-progress "%~1" -O %download%\%~2"
"%download%\%~2" %~3
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= ˜ndirme ismi  | %~3= Sessiz kurulum parametresi
:: ========================================================================================================

:wgetozel
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                  ˜nternet ba§lants yok.                                  %ESC%[0m
						echo [%date% - %time%] ^| wgetozel ^| HATA! ˜nternet ba§lants bulunamad. ˜sim:%~2 Link:"%~1" Download:%download% >> %konum%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wgetozel ^| %~2 program indirildi. Link:"%~1" Download:%download% >> %konum%\Logs
Files\wget.exe -c -q --no-check-certificate --show-progress %1 -O %download%\%~2
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= ˜ndirme ismi 
:: ========================================================================================================

:wgetdesktop
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                  ˜nternet ba§lants yok.                                  %ESC%[0m
						echo [%date% - %time%] ^| wgetdesktop ^| HATA! ˜nternet ba§lants bulunamad. ˜sim:"%~2" Link:"%~1" >> %konum%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wgetdesktop ^| Masstne "%~2" program indirildi. Link:"%~1" >> %konum%\Logs
Files\wget -c -q --no-check-certificate --show-progress %1 -O %~2
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= Masast konumu ve ismi
:: ========================================================================================================

:ZipExport
echo [%date% - %time%] ^| ZipExport ^| %~1 dosyas "%download%\%~n1"  >> %konum%\Logs
powershell -command "Expand-Archive -Force '%download%\%~1' '%download%\%~n1'" 
goto :eof

:: ========================================================================================================
:: %~1= Dosya yolu | %~n1= Dosya ismi
:: ========================================================================================================
 
:netkontrol
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                  ˜nternet ba§lants yok.                                  %ESC%[0m
						echo   %ESC%[1;97m%ESC%%ESC%[41m               Wget.exe indirilemedi, indirme iŸlemlerinde hata alacaksnz                 %ESC%[0m
						echo [%date% - %time%] ^| wgetyok ^| HATA! ˜nternet ba§lants olmad§ i‡in wget.exe indirilemedi. >> %konum%\Logs
						timeout /t 5 /nobreak > NUL
						goto :eof)
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
	
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0

:menuRGB
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set RGB=%%b
  exit /B 0
)
exit /B 0

