::                               NOTEPAD++ > Kodlama > Karakter Takm > Trke > OEM857
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
::  Toolbox' hazrladงm sistemlerde temel programlar indirip, basit bir ekilde sistem zerinde dzenleme yapmas iin hazrladm.
::  Srekli olarak gncellenecektir. Toolbox' indirmek iin aaงdaki linkleri kullanabilirsiniz.
::   https://www.technopat.net/sosyal/konu/ognitorenks-toolbox-kullanimi.1790250/
::
::  OgnitorenKs.Toolbox katlmsz kurulum dosyasn indirmek iin aaงdaki "Toolbox.Update.bat" dosyasn indirip y”netici olarak altrn.
::   https://docs.google.com/uc?export=download&id=1JmrWYeNjVopcIP0n9iNkMUCEbQ2SIvpY
::
::  stek ve ”nerileriniz olursa, iletiim;
::   Discord: OgnitorenKs#2737 
::   Mail: ognitorenks@gmail.com
::   Site: ognitorenks.blogspot.com (Bu b”lm u an aktif deงil)
::   Site: www.technopat.net\Sosyal (Yeni bir konu ap yada hazrladงm konularda @OgnitorenKs yazarak etiketleyebilirsiniz) 
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
::     ndirme ilemlerinde ilerleme ubuงunun eklenmesi.
::  ---------
::   Archley
::  ---------
:: 	   Wifi Crack almasnn toolbox'a eklenmesi. 
::
:: ==============================================================================================================================
echo off
cls

setlocal
call :setESC
Call :menuRGB

:: ==============================================================================================================================
::  RENK HARTASI
::  -------------
:: ^%RGB%^[33m > Sar renkli b”lmler. Men iindeki sar renkli b”lmler
:: ^%RGB%^[36m > Mavi renkli b”lmler. Men iindeki mavi renkli b”lmler
:: ^%RGB%^[37m > Beyaz renkli b”lmler. Men iindeki beyaz renkli b”lmler
:: ^%RGB%^[90m > Gri renkli b”lmler. Men iindeki gri renkli b”lmler(€ereveler dahil deงil)
:: ^%RGB%^[92m > Deงiken rengi (Yeil). Kullancdan bir deงer girmesi istenilen b”lmlere aittir.
:: ^%RGB%^[96m > kinci deงiken rengi (Ak Mavi) | Menye yansyan bilgi mesajlar. Ana ekrana decek olan ikinci deงiken b”lmlerine aittir.
::
:: ^%ESC%^[41m > Hata mesajlar dolgu rengi (krmz)
:: ^%ESC%^[32m > lem (yeil) numara rengidir. Men iindeki ilem numaralardr.
:: ^%ESC%^[36m > Menye d”n renk ayardr. Menye d”n b”lmlerinin renk ayardr.
:: ^%ESC%^[100m > Balk b”lmlerinde arka plan dolduran renktir.
:: ^%ESC%^[1;97m > Balkta dolgu b”lmnn iinde yer alan yaz rengidir. 1; b”lm kaln yazmasn saงlar. 97m beyaz renk yazmasn saงlar.
:: ^%ESC%^[90m > €ereveleri ve | iaretlerinin rengini deงiir.
:: 
:: ==============================================================================================================================

:: Admin yetkisi kontrol edilir.
:AdminKontrol
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo 
echo 
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  %ESC%[90mบ                                                         บ%ESC%[0m
echo  %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[41m               ! UYARI !           ! UYARI !             %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ                                                         บ%ESC%[0m
echo  %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[41m           Saง-Tk Y”netici olarak altrnz          %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ                                                         บ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo 
echo             %ESC%[92mKapatmak iin herhangi bir tua basnz.%ESC%[0m 
pause > nul
exit
)
mode con cols=96 lines=37 
:: ==============================================================================================================================
::                                                  DOWNLOAD KONUM BLM
::
::   Download konumunu deงitirmek istiyorsanz;
::   set download= eittirden sonra klas”r yolunu yazn.
::   Varsaylan olarak Toolbox klas”r iine ykler.

call :Logs
set download=%konum%\Download

:: ==============================================================================================================================
:: Toolbox iin gerekli klas”rler oluturuluyor.
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
:: Bu tarz bir durumda wget.exe dosyas silinirse indirme ilemleri gerekletirilemez.
:: Aaงdaki komut ile wget dosyasnn olup olmadงn kontrol ediyorum. Hata vermesi durumunda Powershell komutuyle yeniden indiriyorum.
dir /b "%konum%\Files\wget.exe" > NUL 2>&1
	if %errorlevel%==1 (echo [%date% - %time%] ^| Wget indiriliyor ^| Wget.exe dosyas bulunamad. Yeniden indirildi. >> %konum%\Logs
						echo   %ESC%[1;97m%ESC%%ESC%[41m                                Wget.exe dosyas bulunamad                                 %ESC%[0m
						echo   %ESC%[1;97m%ESC%%ESC%[42m                                    Yeniden indiriliyor                                     %ESC%[0m
						Call :netkontrol
						powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.2/64/wget.exe -OutFile %konum%\Files\wget.exe }")
::
:: ------------------------------------------------------------------------------------------------------------------------------
::

:: Wmic.exe Windows 11 yeni srmlerinde silindiงi iin PowerShell zerinden bilgi alnacak. Buras eski komutlardr.
::wmic os get RegisteredUser, CSName, Caption, OSArchitecture, BuildNumber /value > %Logs%\OS.txt
::FOR /F "tokens=2 delims='='" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption=%%a 
::set caption=%caption:~10%
::FOR /F "tokens=2 delims='='" %%b in ('FIND "RegisteredUser" %Logs%\OS.txt') do set registereduser=%%b 
::FOR /F "tokens=2 delims='='" %%c in ('FIND "CSName" %Logs%\OS.txt') do set pcname=%%c 
::FOR /F "tokens=2 delims='='" %%d in ('FIND "OSArchitecture" %Logs%\OS.txt') do set osarch=%%d 
::set osarch=%osarch:~0,-5%
::FOR /F "tokens=3" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption2=%%a 
:::: FOR /F "tokens=2 delims='='" %%e in ('FIND "BuildNumber" %Logs%\OS.txt') do set buildnumber=%%e 

:: Ana ekranda yer alan Kullanc ad, iletim sistemi gibi bilgiler alnr. 
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


:: Men iinde sisteme g”re ayarlama yapyorum
FOR /F "tokens=5" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption2=%%a 
	if %caption2%==10 (set editmenu=Windows 10 Edit)
	if %caption2%==11 (set editmenu=Windows 11 Edit)
	
:: Y”nlendirme b”lmn sisteme g”re ayarlyorum.
echo %caption2% > NUL
	if %caption2%==10 (set editmenugo=Win10SettingsMenu) 
	if %caption2%==11 (set editmenugo=Win11SettingsMenu)

set versiyon=2.2

::set editmenu=Windows 11 Edit
::set editmenugo=Win11SettingsMenu

(
echo.
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] OgnitorenKs Toolbox balatld.
echo  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  บ OGNITORENKS TOOLBOX %versiyon% ^| USER: %registereduser% ^| PC-Name: %pcname%	
echo  บ OS: %caption% ^| x%osarch% ^| %ImageBuild% ^| %isderleme% ^| G: %gucc% 	
echo  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo ---------------------------------------------------------------------------------------------------------------------------
echo.
) >> %konum%\Logs

:menu
cls
mode con cols=96 lines=37 
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[100m OGNITORENKS TOOLBOX %versiyon% %ESC%[0m%ESC%[90m ^|%ESC%%ESC%[32m USER:%ESC%%ESC%[37m %registereduser% %ESC%%ESC%[90m^|%ESC%%ESC%[32m PC-Name: %ESC%%ESC%[37m%pcname%%ESC%[0m	
echo   %ESC%[90mบ%ESC%%ESC%[32m OS:%ESC%%ESC%[37m %caption% %ESC%%ESC%[90m^|%ESC%%ESC%[37m x%osarch% %ESC%%ESC%[90m^|%ESC%%ESC%[37m %ImageBuild% %ESC%[0m%ESC%[90m^|%ESC%%ESC%[37m %isderleme% %ESC%%ESC%[90m^|%ESC%%ESC%[32m G:%ESC%%ESC%[37m %gucc% %ESC%[0m	
echo   %ESC%[90mฬออออออออออออออออออออออออออหอออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m  1.%ESC%%RGB%[37m All In One Runtimes%RGB%[0m  %ESC%[90mบ%ESC%[0m %ESC%[32m 27.%ESC%%RGB%[36m Kdenlive%RGB%[0m               %ESC%[90mบ%ESC%[0m          %ESC%[92m BONUS%ESC%[0m               %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m  2.%ESC%%RGB%[33m Discord%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 28.%ESC%%RGB%[36m OpenShot%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 53.%ESC%%RGB%[36m %editmenu%%ESC%[0m             %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  3.%ESC%%RGB%[33m Whatsapp%RGB%[0m             %ESC%[90mบ%ESC%[0m %ESC%[32m 29.%ESC%%RGB%[36m Shotcut%RGB%[0m                %ESC%[90mบ%ESC%%ESC%[32m 54.%ESC%%RGB%[33m Kapatlan Servisleri Y”net%RGB%[0m  %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  4.%ESC%%RGB%[33m Signal%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 30.%ESC%%RGB%[36m Krita%RGB%[0m                  %ESC%[90mบ%ESC%%ESC%[32m 55.%ESC%%RGB%[33m Simge Hatasn dzelt%RGB%[0m       %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  5.%ESC%%RGB%[33m Telegram%RGB%[0m             %ESC%[90mบ%ESC%[0m %ESC%[32m 31.%ESC%%RGB%[36m Gimp%RGB%[0m                   %ESC%[90mบ%ESC%%ESC%[32m 56.%ESC%%RGB%[36m Windows Dzenleme%RGB%[0m           %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  6.%ESC%%RGB%[33m Microsoft Teams%RGB%[0m      %ESC%[90mบ%ESC%[0m %ESC%[32m 32.%ESC%%RGB%[36m OBS Studio%RGB%[0m             %ESC%[90mบ%ESC%%ESC%[32m 57.%ESC%%RGB%[33m Gncelleme Sonras Temizlik%RGB%[0m %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  7.%ESC%%RGB%[33m Zoom%RGB%[0m                 %ESC%[90mบ%ESC%[0m %ESC%[32m 33.%ESC%%RGB%[36m ShareX%RGB%[0m                 %ESC%[90mบ%ESC%%ESC%[32m 58.%ESC%%RGB%[33m Sistem / Market Onar%RGB%[0m        %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  8.%ESC%%RGB%[36m EpicGames%RGB%[0m            %ESC%[90mบ%ESC%[0m %ESC%[32m 34.%ESC%%RGB%[36m Audacity%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 59.%ESC%%RGB%[33m PC Temizle%RGB%[0m                  %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  9.%ESC%%RGB%[36m Steam%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 35.%ESC%%RGB%[36m K-Lite Codec%RGB%[0m           %ESC%[90mบ%ESC%%ESC%[32m 60.%ESC%%RGB%[36m Appx Y”netici%RGB%[0m               %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 10.%ESC%%RGB%[36m GOG Galaxy%RGB%[0m           %ESC%[90mบ%ESC%[0m %ESC%[32m 36.%ESC%%RGB%[36m VLC Media Player%RGB%[0m       %ESC%[90mบ%ESC%%ESC%[32m 61.%ESC%%RGB%[36m Folder to ISO%RGB%[0m               %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 11.%ESC%%RGB%[36m Uplay%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 37.%ESC%%RGB%[36m Aimp%RGB%[0m                   %ESC%[90mบ%ESC%%ESC%[32m 62.%ESC%%RGB%[33m Fat32 to NTFS%RGB%[0m               %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 12.%ESC%%RGB%[36m Origin%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 38.%ESC%%RGB%[36m Any Video Converter%RGB%[0m    %ESC%[90mบ%ESC%%ESC%[32m 63.%ESC%%RGB%[33m Ping ler%RGB%[0m                  %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m 13.%ESC%%RGB%[36m Cheat Engine%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 39.%ESC%%RGB%[33m Free Download Manager%RGB%[0m  %ESC%[90mบ%ESC%%ESC%[32m 64.%ESC%%RGB%[33m Lisans Y”netimi%RGB%[0m             %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 14.%ESC%%RGB%[36m Wemod%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 40.%ESC%%RGB%[33m nt Download Manager%RGB%[0m   %ESC%[90mบ%ESC%%ESC%[32m 65.%ESC%%RGB%[33m Kullanc Hesap Y”netimi%RGB%[0m     %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 15.%ESC%%RGB%[33m Google Chrome%RGB%[0m        %ESC%[90mบ%ESC%[0m %ESC%[32m 41.%ESC%%RGB%[33m ByClick Downloader%RGB%[0m     %ESC%[90mบ%ESC%%ESC%[32m 66.%ESC%%RGB%[33m Sistem Hakknda%RGB%[0m             %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 16.%ESC%%RGB%[33m Mozilla Firefox%RGB%[0m      %ESC%[90mบ%ESC%[0m %ESC%[32m 42.%ESC%%RGB%[33m Utorrent%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 67.%ESC%%RGB%[33m Wifi Crack%RGB%[0m                  %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 17.%ESC%%RGB%[33m Brave%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 43.%ESC%%RGB%[33m GlassWire%RGB%[0m              %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m 18.%ESC%%RGB%[33m Microsoft Edge%RGB%[0m       %ESC%[90mบ%ESC%[0m %ESC%[32m 44.%ESC%%RGB%[33m TeamViewer%RGB%[0m             %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 19.%ESC%%RGB%[37m ISLC%RGB%[0m                 %ESC%[90mบ%ESC%[0m %ESC%[32m 45.%ESC%%RGB%[33m Hamachi%RGB%[0m                %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 20.%ESC%%RGB%[37m MemReduct%RGB%[0m            %ESC%[90mบ%ESC%[0m %ESC%[32m 46.%ESC%%RGB%[33m Stremio%RGB%[0m                %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 21.%ESC%%RGB%[36m Libre Office%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 47.%ESC%%RGB%[36m MSI Afterburner%RGB%[0m        %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 22.%ESC%%RGB%[36m Adobe Reader%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 48.%ESC%%RGB%[36m Hibit Uninstaller%RGB%[0m      %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 23.%ESC%%RGB%[36m PDF-XChange Edit”r%RGB%[0m   %ESC%[90mบ%ESC%[0m %ESC%[32m 49.%ESC%%RGB%[36m Wise Care 365%RGB%[0m          %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 24.%ESC%%RGB%[36m Calibre%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 50.%ESC%%RGB%[36m Unlocker%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 97.%ESC%%RGB%[36m Toolbox Kullanm%RGB%[0m           %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 25.%ESC%%RGB%[33m 7 - Zip%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 51.%ESC%%RGB%[36m SSD Booster%RGB%[0m            %ESC%[90mบ%ESC%%ESC%[32m 98.%ESC%%RGB%[36m Toolbox Gncelle%RGB%[0m            %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 26.%ESC%%RGB%[33m WinRAR%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m  Z.%ESC%%RGB%[37m Listeyi Genilet ^>^>^>   %RGB%[0m%ESC%[90mบ%ESC%%ESC%[32m 99.%ESC%%RGB%[36m Srm Notlar%RGB%[0m               %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออสอออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m                          %ESC%[32m X.%ESC%%ESC%[33m Kalntlar temizleyerek kapat%ESC%[0m                              %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p menu= %RGB%[92m  Yapmak istediงiniz ilem : %RGB%[0m
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
	if %menu%==z GOTO menu2
	if %menu%==Z GOTO menu2
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
	if %menu%==97 (start https://github.com/OgnitorenKs/OgnitorenKs.Toolbox&goto menu)
	if %menu%==98 (Call :Logss "Toolbox.Update" "Toolbox gncelleme arac altrld."
				   Powershell -command "Start-Process '%konum%\Toolbox.Update.bat'"&exit)
	if %menu%==99 (Call :Logss "Toolbox.Update" "Toolbox Srm Notlar sayfas ald."
				   start https://drive.google.com/file/d/14w5_BWIKreSDhCjJk_Ay27uer-SI9ix3/view&goto menu)
	if %menu%==x (Call :Logss "Kalntlar.Temizle" "Download klas”r temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
	if %menu%==X (Call :Logss "Kalntlar.Temizle" "Download klas”r temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
) else
	goto menu

:menu2
cls
mode con cols=96 lines=37 
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[100m OGNITORENKS TOOLBOX %versiyon% %ESC%[0m%ESC%[90m ^|%ESC%%ESC%[32m USER:%ESC%%ESC%[37m %registereduser% %ESC%%ESC%[90m^|%ESC%%ESC%[32m PC-Name: %ESC%%ESC%[37m%pcname%%ESC%[0m	
echo   %ESC%[90mบ%ESC%%ESC%[32m OS:%ESC%%ESC%[37m %caption% %ESC%%ESC%[90m^|%ESC%%ESC%[37m x%osarch% %ESC%%ESC%[90m^|%ESC%%ESC%[37m %ImageBuild% %ESC%[0m%ESC%[90m^|%ESC%%ESC%[37m %isderleme% %ESC%%ESC%[90m^|%ESC%%ESC%[32m G:%ESC%%ESC%[37m %gucc% %ESC%[0m	
echo   %ESC%[90mฬออออออออออออออออออออออออออหอออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m  1.%ESC%%RGB%[37m All In One Runtimes%RGB%[0m  %ESC%[90mบ%ESC%[0m %ESC%[32m 27.%ESC%%RGB%[36m Kdenlive%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 53.%ESC%%RGB%[36m Everything%RGB%[0m                  %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m  2.%ESC%%RGB%[33m Discord%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 28.%ESC%%RGB%[36m OpenShot%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 54.%ESC%%RGB%[36m TaskbarX%RGB%[0m                    %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  3.%ESC%%RGB%[33m Whatsapp%RGB%[0m             %ESC%[90mบ%ESC%[0m %ESC%[32m 29.%ESC%%RGB%[36m Shotcut%RGB%[0m                %ESC%[90mบ%ESC%%ESC%[32m 55.%ESC%%RGB%[36m Stellarium%RGB%[0m                  %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  4.%ESC%%RGB%[33m Signal%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 30.%ESC%%RGB%[36m Krita%RGB%[0m                  %ESC%[90mบ%ESC%%ESC%[32m 56.%ESC%%RGB%[36m Recuva%RGB%[0m                      %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  5.%ESC%%RGB%[33m Telegram%RGB%[0m             %ESC%[90mบ%ESC%[0m %ESC%[32m 31.%ESC%%RGB%[36m Gimp%RGB%[0m                   %ESC%[90mบ%ESC%%ESC%[32m 57.%ESC%%RGB%[36m AOMEI Partiton Assistans%RGB%[0m    %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  6.%ESC%%RGB%[33m Microsoft Teams%RGB%[0m      %ESC%[90mบ%ESC%[0m %ESC%[32m 32.%ESC%%RGB%[36m OBS Studio%RGB%[0m             %ESC%[90mบ%ESC%%ESC%[32m 58.%ESC%%RGB%[33m Python%RGB%[0m                      %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  7.%ESC%%RGB%[33m Zoom%RGB%[0m                 %ESC%[90mบ%ESC%[0m %ESC%[32m 33.%ESC%%RGB%[36m ShareX%RGB%[0m                 %ESC%[90mบ%ESC%%ESC%[32m 59.%ESC%%RGB%[33m Phycharm%RGB%[0m                    %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  8.%ESC%%RGB%[36m EpicGames%RGB%[0m            %ESC%[90mบ%ESC%[0m %ESC%[32m 34.%ESC%%RGB%[36m Audacity%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 60.%ESC%%RGB%[33m Notepad++%RGB%[0m                   %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  9.%ESC%%RGB%[36m Steam%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 35.%ESC%%RGB%[36m K-Lite Codec%RGB%[0m           %ESC%[90mบ%ESC%%ESC%[32m 61.%ESC%%RGB%[33m Visual Studio Code%RGB%[0m          %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 10.%ESC%%RGB%[36m GOG Galaxy%RGB%[0m           %ESC%[90mบ%ESC%[0m %ESC%[32m 36.%ESC%%RGB%[36m VLC Media Player%RGB%[0m       %ESC%[90mบ%ESC%%ESC%[32m 62.%ESC%%RGB%[33m Github%RGB%[0m                      %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 11.%ESC%%RGB%[36m Uplay%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 37.%ESC%%RGB%[36m Aimp%RGB%[0m                   %ESC%[90mบ%ESC%%ESC%[32m 63.%ESC%%RGB%[33m Git%RGB%[0m                         %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 12.%ESC%%RGB%[36m Origin%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 38.%ESC%%RGB%[36m Any Video Converter%RGB%[0m    %ESC%[90mบ%ESC%%ESC%[32m 64.%ESC%%RGB%[36m Blender%RGB%[0m                     %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m 13.%ESC%%RGB%[36m Cheat Engine%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 39.%ESC%%RGB%[33m Free Download Manager%RGB%[0m  %ESC%[90mบ%ESC%%ESC%[32m 65.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 14.%ESC%%RGB%[36m Wemod%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 40.%ESC%%RGB%[33m nt Download Manager%RGB%[0m   %ESC%[90mบ%ESC%%ESC%[32m 66.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 15.%ESC%%RGB%[33m Google Chrome%RGB%[0m        %ESC%[90mบ%ESC%[0m %ESC%[32m 41.%ESC%%RGB%[33m ByClick Downloader%RGB%[0m     %ESC%[90mบ%ESC%%ESC%[32m 67.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 16.%ESC%%RGB%[33m Mozilla Firefox%RGB%[0m      %ESC%[90mบ%ESC%[0m %ESC%[32m 42.%ESC%%RGB%[33m Utorrent%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 68.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 17.%ESC%%RGB%[33m Brave%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 43.%ESC%%RGB%[33m GlassWire%RGB%[0m              %ESC%[90mบ%ESC%%ESC%[32m 69.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m 18.%ESC%%RGB%[33m Microsoft Edge%RGB%[0m       %ESC%[90mบ%ESC%[0m %ESC%[32m 44.%ESC%%RGB%[33m TeamViewer%RGB%[0m             %ESC%[90mบ%ESC%%ESC%[32m 70.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 19.%ESC%%RGB%[37m ISLC%RGB%[0m                 %ESC%[90mบ%ESC%[0m %ESC%[32m 45.%ESC%%RGB%[33m Hamachi%RGB%[0m                %ESC%[90mบ%ESC%%ESC%[32m 71.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 20.%ESC%%RGB%[37m MemReduct%RGB%[0m            %ESC%[90mบ%ESC%[0m %ESC%[32m 46.%ESC%%RGB%[33m Stremio%RGB%[0m                %ESC%[90mบ%ESC%%ESC%[32m 72.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 21.%ESC%%RGB%[36m Libre Office%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 47.%ESC%%RGB%[36m MSI Afterburner%RGB%[0m        %ESC%[90mบ%ESC%%ESC%[32m 73.%ESC%%RGB%[37m OSU! %RGB%[0m                       %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 22.%ESC%%RGB%[36m Adobe Reader%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 48.%ESC%%RGB%[36m Hibit Uninstaller%RGB%[0m      %ESC%[90mบ%ESC%%ESC%[32m 74.%ESC%%RGB%[37m World Of Tanks%RGB%[0m              %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 23.%ESC%%RGB%[36m PDF-XChange Edit”r%RGB%[0m   %ESC%[90mบ%ESC%[0m %ESC%[32m 49.%ESC%%RGB%[36m Wise Care 365%RGB%[0m          %ESC%[90mบ%ESC%%ESC%[32m 75.%ESC%%RGB%[37m Genshin Impact%RGB%[0m              %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 24.%ESC%%RGB%[36m Calibre%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 50.%ESC%%RGB%[36m Unlocker%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 76.%ESC%%RGB%[37m League Of Legends%RGB%[0m           %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 25.%ESC%%RGB%[33m 7 - Zip%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 51.%ESC%%RGB%[36m SSD Booster%RGB%[0m            %ESC%[90mบ%ESC%%ESC%[32m 77.%ESC%%RGB%[37m Blitz%RGB%[0m                       %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 26.%ESC%%RGB%[33m WinRAR%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 52.%ESC%%RGB%[36m OpenShell%RGB%[0m              %ESC%[90mบ%ESC%%ESC%[32m 78.%ESC%%RGB%[37m Valorant%RGB%[0m                    %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออสอออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m                             %ESC%[32m X.%ESC%%ESC%[33m ^<^<^< Listeyi Daralt%ESC%[0m                                       %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p $multi= %ESC%[96m  Seim arasna virgl koyun  : %ESC%[0m

echo %$multi% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto menu
echo %$multi% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto menu	
(
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] ^| MultiSelect ^| Seilenler:"%$multi%"
) >> %konum%\Logs
cls
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[100m OGNITORENKS TOOLBOX %ESC%[0m%ESC%[90m ^|%ESC%%ESC%[32m USER:%ESC%%ESC%[37m %registereduser% %ESC%%ESC%[90m^|%ESC%%ESC%[32m PC-Name: %ESC%%ESC%[37m%pcname%%ESC%[0m	
echo   %ESC%[90mบ%ESC%%ESC%[32m OS:%ESC%%ESC%[37m %caption% %ESC%%ESC%[90m^|%ESC%%ESC%[37m x%osarch% %ESC%%ESC%[90m^|%ESC%%ESC%[37m %ImageBuild% %ESC%[0m%ESC%[90m^|%ESC%%ESC%[37m %isderleme% %ESC%%ESC%[90m^|%ESC%%ESC%[32m G:%ESC%%ESC%[37m %gucc% %ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo                                         %ESC%[92m €OKLU NDRME%ESC%[0m 
echo   %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo    %RGB%[96m Seilen indirmeler: %$multi%%RGB%[0m
:MultiSelect
FOR %%a in (%$multi%) do (Call :Download%%a)
echo --------------------------------------------------------------------------------------------------------------------------- >> %konum%\Logs
goto menu2

:Download1
cls
:: Aaงdaki FOR d”ngsyle link.bat dosyas iinden programlara ait linkleri alyorum.
:: Link sistemini katlmsz program hazrlama b”lmnde kullandงm iin ortak bir sistem olarak hazrladm.
:: Diงer download b”lmleri de ayn ekilde almaktadr.
FOR /F "tokens=1" %%i in ('FIND "05x86.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 05x86.exe /Q
FOR /F "tokens=1" %%i in ('FIND "05x64.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 05x64.exe /Q

FOR /F "tokens=1" %%i in ('FIND "08x86.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 08x86.exe /q
FOR /F "tokens=1" %%i in ('FIND "08x64.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 08x64.exe /q

FOR /F "tokens=1" %%i in ('FIND "10x86.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 10x86.exe "/q /norestart"
FOR /F "tokens=1" %%i in ('FIND "10x64.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 10x64.exe "/q /norestart"

FOR /F "tokens=1" %%i in ('FIND "12x86.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 12x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "12x64.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 12x64.exe "/install /quiet /norestart"

FOR /F "tokens=1" %%i in ('FIND "13x86.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 13x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "13x64.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 13x64.exe "/install /quiet /norestart"

FOR /F "tokens=1" %%i in ('FIND "15x86.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" 15x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "15x64.exe" %konum%\Ekler\Links.bat') do set link=%%i
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

:Download16
FOR /F "tokens=1" %%i in ('FIND "Firefox" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Firefox.exe /S
goto :eof

:Download17
FOR /F "tokens=1" %%i in ('FIND "Brave" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Brave.exe "--install --silent --system-level"
REM UBlock Origin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM HTTPS Everywhere
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM Clear URL's
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
goto :eof 

:Download18
FOR /F "tokens=1" %%i in ('FIND "edge.msi" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" edge.msi /qn
goto :eof

:Download19
Powershell -command "Expand-Archive -Force '%konum%\Files\ISLC.zip' 'C:\'"
Powershell -command "New-Item -ItemType SymbolicLink -Path 'C:\Users\%username%\Desktop' -Name 'ISLC' -Value 'C:\ISLC\Intelligent standby list cleaner ISLC.exe'"
goto :eof

:Download20
FOR /F "tokens=1" %%i in ('FIND "MemReduct.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" MemReduct.exe /S
goto :eof

:Download21
FOR /F "tokens=1" %%i in ('FIND "LibreOffice.msi" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" LibreOffice.msi "/qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL"
goto :eof

:Download22
FOR /F "tokens=1" %%i in ('FIND "AdobeReader.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" "AdobeReader.exe" "/sPB /rs /msi"
goto :eof

:Download23
FOR /F "tokens=1" %%i in ('FIND "PdfXchange.msi" %konum%\Ekler\Links.bat') do set link=%%i
::Call :wget "%link%" AdobeReader.exe "/sPB /rs /msi"
Call :wget "%link%" PdfXchange.msi "/quiet /norestart"
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
FOR /F "tokens=1" %%i in ('FIND "Openshot.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Openshot.exe /VERYSILENT /NORESTART
goto :eof

:Download29
FOR /F "tokens=1" %%i in ('FIND "Shotcut.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Shotcut.exe /S
goto :eof

:Download30
FOR /F "tokens=1" %%i in ('FIND "Krita" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Krita.exe /S
goto :eof

:Download31
FOR /F "tokens=1" %%i in ('FIND "Gimp" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Gimp.exe "/VERYSILENT /NORESTART /MERGETASKS=desktopicon /ALLUSERS"
goto :eof

:Download32
FOR /F "tokens=1" %%i in ('FIND "OBS" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" OBS.exe /S
goto :eof

:Download33
FOR /F "tokens=1" %%i in ('FIND "ShareX" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" ShareX.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download34
FOR /F "tokens=1" %%i in ('FIND "Audacity" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Audacity.exe "/VERYSILENT /NORESTART"
goto :eof

:Download35
FOR /F "tokens=1" %%i in ('FIND "Klite" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Klite.exe /verysilent
goto :eof

:Download36
FOR /F "tokens=1" %%i in ('FIND "VLCMediaPlayer" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" VLCMediaPlayer.exe "/L=1055 /S"
goto :eof

:Download37
FOR /F "tokens=1" %%i in ('FIND "Aimp" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Aimp.exe "/AUTO /SILENT"
goto :eof

:Download38
FOR /F "tokens=1" %%i in ('FIND "AnyVideoConverter" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" AnyVideoConverter.exe /S
Powershell -command "New-Item -ItemType SymbolicLink -Path 'C:\Users\OgnitorenKs\Desktop' -Name 'Any Video Converter' -Value 'C:\Program Files (x86)\Anvsoft\Any Video Converter\AVCFree.exe'"
goto :eof

:Download39
FOR /F "tokens=1" %%i in ('FIND "FreeDownloadManager" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" FreeDownloadManager.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download40
FOR /F "tokens=1" %%i in ('FIND "idm.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" idm.exe /skipdlgs
goto :eof

:Download41
FOR /F "tokens=1" %%i in ('FIND "ByClick" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" ByClick.exe /q
goto :eof

:Download42
FOR /F "tokens=1" %%i in ('FIND "Utorrent" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Utorrent.exe /S
goto :eof

:Download43
FOR /F "tokens=1" %%i in ('FIND "GlassWire" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" GlassWire.exe /S
goto :eof

:Download44
FOR /F "tokens=1" %%i in ('FIND "TeamViewer" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" TeamViewer.exe /S
goto :eof

:Download45
FOR /F "tokens=1" %%i in ('FIND "Hamachi" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Hamachi.msi /q
goto :eof

:Download46
FOR /F "tokens=1" %%i in ('FIND "Stremio" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Stremio.exe /S
goto :eof

:Download47
FOR /F "tokens=1" %%i in ('FIND "MSIAfterburner" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetozel "%link%" MSIAfterburner.zip /S
Call :ZipExport MSIAfterburner.zip 
for /f %%i in ('"dir /b %download%\MSIAfterburner\*.exe"') do "%download%\MSIAfterburner\%%i" /S
goto :eof

:Download48
FOR /F "tokens=1" %%i in ('FIND "Hibit" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Hibit.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download49
FOR /F "tokens=1" %%i in ('FIND "WiseCare365.zip" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetozel "%link%" WiseCare365.zip
powershell -command "Expand-Archive -Force '%download%\WiseCare365.zip' '%download%'"
"%download%\WiseCare365.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%download%\WiseCare365.zip"
goto :eof

:Download50
FOR /F "tokens=1" %%i in ('FIND "Unlocker.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Unlocker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download51
FOR /F "tokens=1" %%i in ('FIND "SSDBooster" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\SSDBooster.exe"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\SSDBooster.exe'"
goto :eof

:Download52
FOR /F "tokens=1" %%i in ('FIND "OpenShell" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu"
goto :eof

:Download53
FOR /F "tokens=1" %%i in ('FIND "Everything" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Everything.exe /S
goto :eof

:Download54
FOR /F "tokens=1" %%i in ('FIND "TaskbarX" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetozel "%link%" TaskbarX.zip 
powershell -command "Expand-Archive -Force '%download%\TaskbarX.zip' 'C:\Users\%username%\Desktop\TaskbarX'"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX Configurator.exe'"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX.exe'"
goto :eof

:Download55
FOR /F "tokens=1" %%i in ('FIND "Stellarium.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Stellarium.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download56
FOR /F "tokens=1" %%i in ('FIND "Recuva.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Recuva.exe /S
goto :eof

:Download57
FOR /F "tokens=1" %%i in ('FIND "AOMEI.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" AOMEI.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download58
FOR /F "tokens=1" %%i in ('FIND "Python.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Python.exe "/quiet InstallAllUsers=1 PrependPath=1"
goto :eof

:Download59
FOR /F "tokens=1" %%i in ('FIND "PyCharm.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" PyCharm.exe "/S /CONFIG=%download%\silent.config /D=C:\PyCharm
goto :eof

:Download60
FOR /F "tokens=1" %%i in ('FIND "Notepad" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Notepad.exe /S
goto :eof

:Download61
FOR /F "tokens=1" %%i in ('FIND "VisualStudioCode.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" VisualStudioCode.exe "/VERYSILENT /NORESTART /MERGETASKS=!runcode"
goto :eof

:Download62
FOR /F "tokens=1" %%i in ('FIND "Github.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Github.exe -s
goto :eof

:Download63
FOR /F "tokens=1" %%i in ('FIND "Git.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Git.exe "/VERYSILENT /NORESTART"
goto :eof

:Download64
FOR /F "tokens=1" %%i in ('FIND "Blender.msi" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Blender.msi "ALLUSERS=1 /qn"
goto :eof

:Download73
FOR /F "tokens=1" %%i in ('FIND "osu.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\osu.exe" 
goto :eof

:Download74
FOR /F "tokens=1" %%i in ('FIND "WorldOfTanks.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\WorldOfTanks.exe" 
goto :eof

:Download75
FOR /F "tokens=1" %%i in ('FIND "GenshinImpact.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\GenshinImpact.exe" 
goto :eof

:Download76
FOR /F "tokens=1" %%i in ('FIND "LeagueOfLegends.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\LeagueOfLegends.exe" 
goto :eof

:Download77
FOR /F "tokens=1" %%i in ('FIND "Blitz" %konum%\Ekler\Links.bat') do set link=%%i
Call :wget "%link%" Blitz.exe /S
goto :eof

:Download78
FOR /F "tokens=1" %%i in ('FIND "Valorant.exe" %konum%\Ekler\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\Valorant.exe" 
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:WindowsRepair
cls
mode con cols=80 lines=30

Call :Logss "WindowsRepair" "Windows onarma seeneงi kullanld."

echo %ESC%[92m   Sfc /scannow komutu alyor...%ESC%[0m
sfc /scannow
echo %ESC%[92m   DISM /Online /Cleanup-Image /RestoreHealth komutu altrlyor...%ESC%[0m
DISM /Online /Cleanup-Image /RestoreHealth
echo %ESC%[92m   WinSxS Temizleniyor...%ESC%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup 
echo %ESC%[92m   SoftwareDistribution temizleniyor...%ESC%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1
echo %ESC%[92m   Market Regedit kaytlar dzenleniyor...%ESC%[0m
:: Market b”lmnnn sorunsuz almas iin reg kaytlarn dzenler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /f /v "RemoveWindowsStore" /t REG_DWORD /d 0 > NUL 2>&1
:: Market iin gerekli hizmetleri balatr.
echo %ESC%[92m   Market uygulamas iin servisler altrlyor...%ESC%[0m
:: AppX Deployment Service (Daงtm Hizmeti)
sc config AppXSvc start= demand > NUL 2>&1
net start AppXSvc > NUL 2>&1
:: Yetenek Eriim Y”neticisi Hizmeti
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
echo %ESC%[92m   DLL dosyalar kontrol ediliyor...%ESC%[0m
regsvr32 softpub.dll /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 dssenh.dll /s&regsvr32 rsaenh.dll /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 slbcsp.dll /s&regsvr32 mssip32.dll /s&regsvr32 cryptdlg.dll /s&regsvr32 msxml3.dll /s&regsvr32 comcat.dll /s&Regsvr32 Msxml.dll /s&Regsvr32 Msxml2.dll /s&regsvr32 mshtml.dll /s&regsvr32 shdocvw.dll /s&regsvr32 browseui.dll /s&regsvr32 msjava.dll /s&regsvr32 shdoc401.dll /s&regsvr32 cdm.dll /s&regsvr32 shdoc401.dll /i /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 asctrls.ocx /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 softpub.dll /s&regsvr32 oleaut32.dll /s&regsvr32 shdocvw.dll /I /s&regsvr32 Shell32.dll /s&regsvr32 browseui.dll /s&regsvr32 browseui.dll /I /s&regsvr32 msrating.dll /s&regsvr32 mlang.dll /s&regsvr32 hlink.dll /s&regsvr32 mshtmled.dll /s&regsvr32 urlmon.dll /s&regsvr32 urlmon.dll /i /s&regsvr32 plugin.ocx /s&regsvr32 sendmail.dll /s&regsvr32 scrobj.dll /s&regsvr32 mmefxe.ocx /s&regsvr32 corpol.dll /s&regsvr32 jscript.dll /s&regsvr32 imgutil.dll /s&regsvr32 thumbvw.dll /s&regsvr32 cryptext.dll /s&regsvr32 rsabase.dll /s&regsvr32 inseng.dll /s&regsvr32 iesetup.dll /i /s&regsvr32 actxprxy.dll /s&regsvr32 dispex.dll /s&regsvr32 occache.dll /s&regsvr32 occache.dll /i /s&regsvr32 iepeers.dll /s&regsvr32 cdfview.dll /s&regsvr32 webcheck.dll /s&regsvr32 mobsync.dll /s&regsvr32 pngfilt.dll /s&regsvr32 licmgr10.dll /s
regsvr32 icmfilter.dll /s&regsvr32 hhctrl.ocx /s&regsvr32 inetcfg.dll /s&regsvr32 tdc.ocx /s&regsvr32 MSR2C.DLL /s&regsvr32 msident.dll /s&regsvr32 msieftp.dll /s&regsvr32 xmsconf.ocx /s&regsvr32 ils.dll /s&regsvr32 msoeacct.dll /s&regsvr32 inetcomm.dll /s&regsvr32 msdxm.ocx /s&regsvr32 dxmasf.dll /s&regsvr32 l3codecx.ax /s&regsvr32 acelpdec.ax /s&regsvr32 mpg4ds32.ax /s&regsvr32 voxmsdec.ax /s&regsvr32 danim.dll /s&regsvr32 Daxctle.ocx /s&regsvr32 lmrt.dll /s&regsvr32 datime.dll /s&regsvr32 dxtrans.dll /s&regsvr32 dxtmsft.dll /s&regsvr32 WEBPOST.DLL /s&regsvr32 WPWIZDLL.DLL /s&regsvr32 POSTWPP.DLL /s&regsvr32 CRSWPP.DLL /s&regsvr32 FTPWPP.DLL /s&regsvr32 FPWPP.DLL /s&regsvr32 WUAPI.DLL /s&regsvr32 wups2.dll /S&regsvr32 WUAUENG.DLL /s&regsvr32 ATL.DLL /s&regsvr32 WUCLTUI.DLL /s&regsvr32 WUPS.DLL /s&regsvr32 WUWEB.DLL /s&regsvr32 wshom.ocx /s&regsvr32 wshext.dll /s&regsvr32 vbscript.dll /s&regsvr32 scrrun.dll mstinit.exe /setup /s&regsvr32 msnsspc.dll /SspcCreateSspiReg /s&regsvr32 msapsspc.dll /SspcCreateSspiReg /s
wsreset
echo %ESC%[92m lem tamamland.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof


:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PCTemizle
cls
Call :Logss "PCTemizle" "PC Temizle seeงi altrld."
echo %ESC%[92m   Eski tarihli dosya gemii temizleniyor...%ESC%[0m
FhManagew.exe -cleanup 360 -quiet > NUL 2>&1

echo %ESC%[92m   ico ve kk resim belleงi temizleniyor...%ESC%[0m
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

echo %ESC%[92m   Windows tarafndan oluturulan ”p dosyalar temizleniyor...%ESC%[0m
DEL /F /Q /A %windir%\temp\* > NUL 2>&1

::echo %ESC%[92m   Adobe Reader kalntlar temizleniyor...%ESC%[0m
::DEL /F /Q /A %localappdata%\Adobe\Acrobat\DC\Cache\* > NUL 2>&1
::DEL /F /Q /A %localappdata%\Adobe\Acrobat\DC\*.lst > NUL 2>&1

echo %ESC%[92m   Microsoft Edge ”nbelleงi temizleniyor...%ESC%[0m
DEL /F /Q /A %programfiles(x86)%\Microsoft\Edge\User Data\Default\Cache\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Edge\User Data\Default\Service Worker\CacheStorage\* > NUL 2>&1

echo %ESC%[92m   Ekran Kart Driver kalntlar temizleniyor...%ESC%[0m
RD /S /Q %systemdrive%\AMD > NUL 2>&1
RD /S /Q %systemdrive%\NVIDIA > NUL 2>&1

echo %ESC%[92m   Sistem Log Dosyalar siliniyor...%ESC%[0m
DEL /F /Q /A %windir%\System32\LogFiles\* > NUL 2>&1

echo %ESC%[92m   Yaz tipi ”nbelliงi siliniyor...%ESC%[0m
DEL /F /Q /A %windir%\System32\FNTCACHE.DAT > NUL 2>&1

echo %ESC%[92m   Windows Sistem nbelliงi temizleniyor...%ESC%[0m
DEL /F /Q /A %windir%\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\* > NUL 2>&1

echo %ESC%[92m   Windows Ykleyici nbelliงi temizleniyor...%ESC%[0m
DEL /F /Q /A %windir%\Installer\$PatchCache$\Managed\* > NUL 2>&1

echo %ESC%[92m   Uygulamalar tarafndan oluturulan kalntlar temizleniyor...%ESC%[0m
DEL /F /Q /A %localappdata%\Temp\* > NUL 2>&1

echo %ESC%[92m   Hata Raporu Dosyalar temizleniyor...%ESC%[0m
DEL /F /Q /A %programdata%\Microsoft\Windows\WER\ReportQueue\* > NUL 2>&1

echo %ESC%[92m   WinSxS temizleniyor...%ESC%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup

echo %ESC%[92m   Disk temizleme ilemi yaplyor...%ESC%[0m
cleanmgr /verylowdisk /sagerun:5

echo %ESC%[92m   lem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Fat32toNTFS
mode con cols=63 lines=25
title Fat32 to NTFS d”ntrme / OgnitorenKs
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                      Fat32 to NTFS                       %ESC%[0m%ESC%%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
	echo       %RGB%[32mHarf      sim%RGB%[0m
for /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property DeviceID,VolumeName"') do (
   echo       %%a)
echo   %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[32m  D”ntrlecek Disk harfi:%RGB%[0m
	if %deger%==X GOTO menu
	if %deger%==x GOTO menu
Call :Logss "Fat32toNTFS" "%deger% diski NTFS'ye d”ntrld."
convert %deger%: /fs:NTFS /v
goto :eof

:stop
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:Slmgrvbs
cls
mode con cols=55 lines=16
title Lisans Y”netimi \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m          Lisans Y”netimi / SLMGR.VBS            %ESC%[0m%ESC%%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 1.%ESC%%RGB%[33m Lisans Gir %RGB%%RGB%[90m[ipk]%RGB%[0m                           %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 2.%ESC%%RGB%[33m Lisans Durumu %RGB%%RGB%[90m[dli]%RGB%[0m                        %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 3.%ESC%%RGB%[33m Lisans Durumu Detayl %RGB%%RGB%[90m[dlv]%RGB%[0m                %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 4.%ESC%%RGB%[33m Lisans Sresini งren %RGB%%RGB%[90m[xpr]%RGB%[0m                %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 5.%ESC%%RGB%[33m Lisans Sil %RGB%%RGB%[90m[upk]%RGB%[0m                           %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 6.%ESC%%RGB%[33m Lisans Sre Sfrla %RGB%%RGB%[90m[rearm]%RGB%[0m                %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m X.%ESC%%ESC%[36m Ana Men%ESC%[0m                                   %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[92m  Yapmak istediงiniz ilem : %RGB%[0m
	if %deger%==1 (Call :slmgrlisans)
	if %deger%==2 (Call :Logss "SLMGR.VBS" "Lisans Durumu, kontrol edildi."
				   slmgr /dli&goto Slmgrvbs)		   
	if %deger%==3 (Call :Logss "SLMGR.VBS" "Lisans Durumu Detayl, kontrol edildi."
				   slmgr /dlv&goto Slmgrvbs)
	if %deger%==4 (Call :Logss "SLMGR.VBS" "Lisans Sresini งren, altrld."
				   slmgr /xpr&goto Slmgrvbs)
	if %deger%==5 (Call :Logss "SLMGR.VBS" "Lisans Sil, altrld."
				   slmgr /upk&goto Slmgrvbs)
	if %deger%==6 (Call :Logss "SLMGR.VBS" "Lisans Sre Sfrla, altrld."
				   slmgr /rearm&goto Slmgrvbs)
	if %deger%==x GOTO menu
	if %deger%==X GOTO menu
) else
	goto Slmgrvbs

:slmgrlisans
cls
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m            Manuel Lisanslama Hizmeti            %ESC%[0m%ESC%%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
set /p deger= %ESC%[92m   Lisans : %ESC%[0m
	if %deger%==X (goto :eof)
	if %deger%==x (goto :eof)
echo [%date% - %time%] ^| Slmgr.vbs ^| Slmgr Lisans(ipk), Windows lisansland >> %konum%\Logs
slmgr /ipk %deger%

echo %ESC%[92m lem tamamland.%ESC%[0m
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
DEL /F /Q /A "%userprofile%\AppData\Local\IconCache.db" > NUL 2>&1
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
del /f /s /q /a %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
"%konum%\Files\ReIconCache.exe"
powershell -command "Start-Process 'C:\Windows\explorer.exe'"
goto menu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:kapatilanservislery”netimi
cls
mode con cols=55 lines=32
Call :PowerRun
title Kapatlan Servisler Y”netimi / OgnitorenKs
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m           Kapatlan Servisler Y”netimi            %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Bluetooth hizmetini %RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Yazc hizmetini %RGB%[0m                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 3%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Bask hizmetini %RGB%[0m                       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 4%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Telefon hizmetini %RGB%[0m                     %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 5%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Tarifeli aงlar %RGB%[0m                       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 6%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m IP yardmcs (IPv6)%RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 7%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Mobil Etkin Nokta (Hotspot) %RGB%[0m           %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 8%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Radyo ve Uak modu hizmetini %RGB%[0m          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 9%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Uzak Masast/Ak/Aง hizmetleri%RGB%[0m       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 10%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Windows imdi Baงlan(WPS) %RGB%[0m             %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 11%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Tarayc hizmetlerini %RGB%[0m                 %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 12%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Kamera hizmetlerini %RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 13%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Insider hizmetini %RGB%[0m                     %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 14%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Biyometrik hizmeti %RGB%[0m                    %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 15%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Kalem ve Dokunmatik hizmetini %RGB%[0m         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 16%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Sistem Geri ykleme hizmetini%RGB%[0m          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 17%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Sysmain (Hzl Getir)%RGB%[0m                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 18%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Hzl Balat (Hibernate)%RGB%[0m               %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 19%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Konum hizmetini%RGB%[0m                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 20%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Windows Media Player%RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 21%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Hyper-V hizmetini%RGB%[0m                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 22%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Xbox hizmetini%RGB%[0m                         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 23%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Bitlocker Src ifreleme hizmeti%RGB%[0m     %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 24%ESC%%RGB%[90m[%RGB%%RGB%[36mA%RGB%%RGB%[90m/%RGB%%RGB%[36mK%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Karma Gereklik hizmeti (VR)%RGB%[0m           %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m        %ESC%[32m X.%ESC%%ESC%[36m Menye d”n %ESC%[0m                            %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger= %RGB%[92m lem : %RGB%[0m
	if %deger%==1a (Call :serv.1.bluetooth start demand alyor)
	if %deger%==1A (Call :serv.1.bluetooth start demand alyor)
	if %deger%==1K (Call :serv.1.bluetooth stop disabled kapatlyor)
	if %deger%==1k (Call :serv.1.bluetooth stop disabled kapatlyor)
	if %deger%==2a (Call :serv.2.yazici start demand auto alyor)
	if %deger%==2A (Call :serv.2.yazici start demand auto alyor)
	if %deger%==2K (Call :serv.2.yazici stop disabled disabled kapatlyor)
	if %deger%==2k (Call :serv.2.yazici stop disabled disabled kapatlyor)
	if %deger%==3a (Call :serv.3.baski start demand alyor)
	if %deger%==3A (Call :serv.3.baski start demand alyor)
	if %deger%==3K (Call :serv.3.baski stop disabled kapatlyor)
	if %deger%==3k (Call :serv.3.baski stop disabled kapatlyor)
	if %deger%==4a (Call :serv.4.phone start demand alyor)
	if %deger%==4A (Call :serv.4.phone start demand alyor)
	if %deger%==4K (Call :serv.4.phone stop disabled kapatlyor)
	if %deger%==4k (Call :serv.4.phone stop disabled kapatlyor)
	if %deger%==5a (Call :serv.5.tarifeli start auto alyor)
	if %deger%==5A (Call :serv.5.tarifeli start auto alyor)
	if %deger%==5K (Call :serv.5.tarifeli stop disabled kapatlyor)
	if %deger%==5k (Call :serv.5.tarifeli stop disabled kapatlyor)
	if %deger%==6a (Call :serv.6.ipyardimci start demand auto alyor)
	if %deger%==6A (Call :serv.6.ipyardimci start demand auto alyor)
	if %deger%==6K (Call :serv.6.ipyardimci stop disabled disabled kapatlyor)
	if %deger%==6k (Call :serv.6.ipyardimci stop disabled disabled kapatlyor)
	if %deger%==7a (Call :serv.7.hotspot start demand alyor)
	if %deger%==7A (Call :serv.7.hotspot start demand alyor)
	if %deger%==7K (Call :serv.7.hotspot stop disabled kapatlyor)
	if %deger%==7k (Call :serv.7.hotspot stop disabled kapatlyor)
	if %deger%==8a (Call :serv.8.ucakmodu start demand alyor)
	if %deger%==8A (Call :serv.8.ucakmodu start demand alyor)
	if %deger%==8K (Call :serv.8.ucakmodu stop disabled kapatlyor)
	if %deger%==8k (Call :serv.8.ucakmodu stop disabled kapatlyor)
	if %deger%==9a (Call :serv.9.akis start demand alyor)
	if %deger%==9A (Call :serv.9.akis start demand alyor)
	if %deger%==9K (Call :serv.9.akis stop disabled kapatlyor)
	if %deger%==9k (Call :serv.9.akis stop disabled kapatlyor)
	if %deger%==10a (Call :serv.10.wps start demand alyor)
	if %deger%==10A (Call :serv.10.wps start demand alyor)
	if %deger%==10K (Call :serv.10.wps stop disabled kapatlyor)
	if %deger%==10k (Call :serv.10.wps stop disabled kapatlyor)
	if %deger%==11a (Call :serv.11.tarayici start demand alyor)
	if %deger%==11A (Call :serv.11.tarayici start demand alyor)
	if %deger%==11K (Call :serv.11.tarayici stop disabled kapatlyor)
	if %deger%==11k (Call :serv.11.tarayici stop disabled kapatlyor)
	if %deger%==12a (Call :serv.12.camera start demand alyor)
	if %deger%==12A (Call :serv.12.camera start demand alyor)
	if %deger%==12K (Call :serv.12.camera stop disabled kapatlyor)
	if %deger%==12k (Call :serv.12.camera stop disabled kapatlyor)
	if %deger%==13a (Call :serv.13.insider start demand alyor)
	if %deger%==13A (Call :serv.13.insider start demand alyor)
	if %deger%==13K (Call :serv.13.insider stop disabled kapatlyor)
	if %deger%==13k (Call :serv.13.insider stop disabled kapatlyor)
	if %deger%==14a (Call :serv.14.biyometrik start demand alyor)
	if %deger%==14A (Call :serv.14.biyometrik start demand alyor)
	if %deger%==14K (Call :serv.14.biyometrik stop disabled kapatlyor)
	if %deger%==14k (Call :serv.14.biyometrik stop disabled kapatlyor)
	if %deger%==15a (Call :serv.15.dokunmatik start demand alyor)
	if %deger%==15A (Call :serv.15.dokunmatik start demand alyor)
	if %deger%==15K (Call :serv.15.dokunmatik stop disabled kapatlyor)
	if %deger%==15k (Call :serv.15.dokunmatik stop disabled kapatlyor)
	if %deger%==16a (Call :serv.16.sistemgeriyukleme start demand ENABLE 0 alyor)
	if %deger%==16A (Call :serv.16.sistemgeriyukleme start demand ENABLE 0 alyor)
	if %deger%==16K (Call :serv.16.sistemgeriyukleme stop disabled DISABLE 1 kapatlyor)
	if %deger%==16k (Call :serv.16.sistemgeriyukleme stop disabled DISABLE 1 kapatlyor)
	if %deger%==17a (Call :serv.17.sysmain start auto alyor)
	if %deger%==17A (Call :serv.17.sysmain start auto alyor)
	if %deger%==17K (Call :serv.17.sysmain stop disabled kapatlyor)
	if %deger%==17k (Call :serv.17.sysmain stop disabled kapatlyor)
	if %deger%==18a (Call :serv.18.hibernate on 1 alyor)
	if %deger%==18A (Call :serv.18.hibernate on 1 alyor)
	if %deger%==18K (Call :serv.18.hibernate off 0 kapatlyor)
	if %deger%==18k (Call :serv.18.hibernate off 0 kapatlyor)
	if %deger%==19a (Call :serv.19.konum start demand Allow 1 delete "/v "DisableLocation" /f" alyor)
	if %deger%==19A (Call :serv.19.konum start demand Allow 1 delete "/v "DisableLocation" /f" alyor)
	if %deger%==19K (Call :serv.19.konum stop disabled Deny 0 add "/v "DisableLocation" /t REG_DWORD /d 1 /f" kaptlyor)
	if %deger%==19k (Call :serv.19.konum stop disabled Deny 0 add "/v "DisableLocation" /t REG_DWORD /d 1 /f" kaptlyor)
	if %deger%==20a (Call :serv.20.mediaplayer start demand ENABLE alyor)
	if %deger%==20A (Call :serv.20.mediaplayer start demand ENABLE alyor)
	if %deger%==20K (Call :serv.20.mediaplayer stop disabled DISABLE kapatlyor)
	if %deger%==20k (Call :serv.20.mediaplayer stop disabled DISABLE kapatlyor)
	if %deger%==21a (Call :serv.21.hyperv demand Enable For alyor)
	if %deger%==21A (Call :serv.21.hyperv demand Enable For alyor)
	if %deger%==21K (Call :serv.21.hyperv disabled Disable "::" kapatlyor)
	if %deger%==21k (Call :serv.21.hyperv disabled Disable "::" kapatlyor)
	if %deger%==22a (Call :serv.22.xbox start demand 1 0 delete "/v "AllowGameDVR" /f" alyor)
	if %deger%==22A (Call :serv.22.xbox start demand 1 0 delete "/v "AllowGameDVR" /f" alyor)
	if %deger%==22K (Call :serv.22.xbox stop disabled 0 2 add "/v "AllowGameDVR" /t REG_DWORD /d 0 /f" kapatlyor)
	if %deger%==22k (Call :serv.22.xbox stop disabled 0 2 add "/v "AllowGameDVR" /t REG_DWORD /d 0 /f" kapatlyor)
	if %deger%==23a (Call :serv.23.bitlocker start demand alyor)
	if %deger%==23A (Call :serv.23.bitlocker start demand alyor)
	if %deger%==23K (Call :serv.23.bitlocker stop disabled kapatlyor)
	if %deger%==23k (Call :serv.23.bitlocker stop disabled kapatlyor)
	if %deger%==24a (Call :serv.24.mixedreality demand alyor)
	if %deger%==24A (Call :serv.24.mixedreality demand alyor)
	if %deger%==24K (Call :serv.24.mixedreality disabled kapatlyor)
	if %deger%==24k (Call :serv.24.mixedreality disabled kapatlyor)
	if %deger%==x goto menu
	if %deger%==X goto menu
) else 
	goto kapatilanservislery”netimi

:serv.1.bluetooth
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Bluetooth hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mBluetooth hizmeti %3 ...%RGB%[0m
:: Bluetooth (AVCTP hizmeti) 
::  Ses, video denetim aktarm protokoldr.
%PowerRun% sc config "BthAvctpSvc" start= %2
%PowerRun% net %1 BthAvctpSvc
:: Bluetooth destek hizmeti
::  Bluetooth cihazlarn bulunmas ve ilikilendirmesini saงlar.
%PowerRun% sc config "bthserv" start= %2
%PowerRun% net %1 bthserv
:: Bluetooth kullanc desteงi hizmeti
::  Kullanc oturumuyla Bluetooth ”zelliklerinin tam almasn saงlar.
%PowerRun% sc config "BluetoothUserService" start= %2
%PowerRun% net %1 BluetoothUserService
:: Ses aง geidi hizmeti
::  Eller bota profilinin ses aง geidini destekler.
%PowerRun% sc config "BTAGService" start= %2
%PowerRun% net %1 BTAGService
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.2.yazici
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Yazc hizmeti %4. >> %konum%\Logs
echo   %RGB%[96mYazc hizmetleri %4 ...%RGB%[0m
%PowerRun% sc config "Spooler" start= %3
%PowerRun% net %1 Spooler
DEL /F /Q /A %windir%\System32\spool\PRINTERS\*
:: Uzak Masast Hizmetleri Kullanc Modu Baงlant Noktas Yeniden Y”nlendiricisi
%PowerRun% sc config UmRdpService start= %2
%PowerRun% net %1 UmRdpService
::----------------------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : auto     | %4 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled | %4 : kapatlyor
::----------------------------------------------------------------------
goto :eof

:serv.3.baski
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Yazc hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mBask hizmetleri %3 ...%RGB%[0m 
::PrintWorkFlow (i ak hizmeti)
%PowerRun% sc config McpManagementService start= %2
%PowerRun% net %1 McpManagementService
%PowerRun% sc config PrintWorkflowUserSvc start= %2
%PowerRun% net %1 PrintWorkflowUserSvc
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.4.phone
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Telefon hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mTelefon hizmeti %3 ...%RGB%[0m 
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
::  Bluetooth cihazlarn bulunmas ve ilikilendirmesini saงlar.
%PowerRun% sc config "bthserv" start= %2
%PowerRun% net %1 bthserv
:: Bluetooth kullanc desteงi hizmeti
::  Kullanc oturumuyla Bluetooth ”zelliklerinin tam almasn saงlar.
%PowerRun% sc config "BluetoothUserService" start= %2
%PowerRun% net %1 BluetoothUserService
:: Ses aง geidi hizmeti
::  Eller bota profilinin ses aง geidini destekler.
%PowerRun% sc config "BTAGService" start= %2
%PowerRun% net %1 BTAGService
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.5.tarifeli
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Tarifeli aงlar hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mTarifeli aงlar hizmeti %3 ...%RGB%[0m
:: Veri kullanm
::  Arkaplan verilierni ve aง kullanmn snrlar
%PowerRun% sc config DusmSvc start= %2
%PowerRun% net %1 DusmSvc
::-------------------------------------------------------
::    A = %1 : start | %2 : auto     | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.6.ipyardmci
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| IP yardmc hizmeti %4. >> %konum%\Logs
echo   %RGB%[96mIP yardmcs hizmeti %4 ...%RGB%[0m
::  IPv6 gei teknolojileri ve IP-HTTPS kullanarak tnel baงlants saงlar.
%PowerRun% sc config iphlpsvc start= %3
%PowerRun% net %1 iphlpsvc
:: IP €eviri yaplandrma hizmeti (v4'den v6'ya tam tersi y”nde eviriyi yaplandrr)
%PowerRun% sc config IpxlatCfgSvc start= %2
%PowerRun% net %1 IpxlatCfgSvc
::----------------------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : auto     | %4 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled | %4 : kapatlyor
::----------------------------------------------------------------------
goto :eof

:serv.7.hotspot
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Mobil Etkin Nokta hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mMobil etkin nokta hizmeti %3 ...%RGB%[0m
::  Veri baงlantsnn baka bir cihazla paylalmasn saงlar
%PowerRun% sc config icssvc start= %2
%PowerRun% net %1 icssvc
:: Internet Baงlants Paylam (ICS)
%PowerRun% sc config SharedAccess start= %2
%PowerRun% net %1 SharedAccess
:: Uygulama katman aง geidi hizmeti
%PowerRun% sc config ALG start= %2
%PowerRun% net %1 ALG
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.8.ucakmodu
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Radyo ve Uak Modu hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mRadyo y”netim ve uak modu hizmeti %3 ...%RGB%[0m
::  Radyo y”netimi ve uak modu hizmeti
%PowerRun% sc config RMSvc start= %2
%PowerRun% net %1 RMSvc
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.9.akis
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Ak deneyimi hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mUzak Masast/Ak hizmetleri %3 ...%RGB%[0m
:: ConsentUx kullanc hizmeti 
%PowerRun% sc config ConsentUxUserSvc start= %2
%PowerRun% net %1 ConsentUxUserSvc
:: Miracast, DLNA kullanc arabirimini
%PowerRun% sc config DevicePickerUserSvc start= %2
%PowerRun% net %1 DevicePickerUserSvc
:: Cihaz Ak
%PowerRun% sc config DevicesFlowUserSvc start= %2
%PowerRun% net %1 DevicesFlowUserSvc
:: WMP aง paylam hizmeti
%PowerRun% sc config WMPNetworkSvc start= %2
%PowerRun% net %1 WMPNetworkSvc
::PNRP Makine ad yayn hizmeti
%PowerRun% sc config PNRPAutoReg start= %2
%PowerRun% net %1 PNRPAutoReg
:: E ad ”zmleme protokol
%PowerRun% sc config PNRPsvc start= %2
%PowerRun% net %1 PNRPsvc
:: E aง gruplandrma
%PowerRun% sc config p2psvc start= %2
%PowerRun% net %1 p2psvc
:: Eler aras aง oluturma kimlik y”neticisi
%PowerRun% sc config p2pimsvc start= %2
%PowerRun% net %1 p2pimsvc
:: UPNP aygt ana makinesi
%PowerRun% sc config upnphost start= %2
%PowerRun% net %1 upnphost
:: Upnp Aygt ana bilgisyar (Aงdaki cihazlar bulur)
%PowerRun% sc config SSDPSRV start= %2
%PowerRun% net %1 SSDPSRV
:: Uzak masast hizmetleri
%PowerRun% sc config TermService start= %2
%PowerRun% net %1 TermService
:: Uzak Masast Hizmetleri Kullanc Modu Baงlant Noktas Yeniden Y”nlendiricisi
%PowerRun% sc config UmRdpService start= %2
%PowerRun% net %1 UmRdpService
:: Uzak Masast Yaplandrmas
%PowerRun% sc config SessionEnv start= %2
%PowerRun% net %1 SessionEnv
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.10.wps
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| WPS hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mWindows imdi Baงlan hizmeti %3 ...%RGB%[0m
:: Windows imdi Baงlan - Yaplandrma Dosyas Kaydedici
::  WPS protokolnn uygulanmasn saงlar.
%PowerRun% sc config wcncsvc start= %2
%PowerRun% net %1 wcncsvc
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.11.tarayici
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Tarayc hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mTarayc hizmetleri %3 ...%RGB%[0m
:: Resim alma olaylar (Windows G”rnt Alma-WIA)
%PowerRun% sc config WiaRpc start= %2
%PowerRun% net %1 WiaRpc
:: Windows Resim Alma (Windows G”rnt Alma (WIA))
%PowerRun% sc config StiSvc start= %2
%PowerRun% net %1 StiSvc
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.12.camera
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Kamera hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mWindows Kamera hizmetleri %3 ...%RGB%[0m
:: Windows Kamera ereve sunucusu
%PowerRun% sc config FrameServer start= %2
%PowerRun% net %1 FrameServer
:: Windows Kamera €ereve Sunucusu
%PowerRun% sc config FrameServerMonitor start= %2
%PowerRun% net %1 FrameServerMonitor
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.13.insider
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Insider hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mWindows Insider hizmeti %3 ...%RGB%[0m
:: Windows Insider Hizmeti
%PowerRun% sc config wisvc start= %2
%PowerRun% net %1 wisvc
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.14.biyometrik
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Biyometrik hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mWindows Biyometrik hizmeti %3 ...%RGB%[0m
:: Windows Biyometrik Hizmeti
%PowerRun% sc config WbioSrvc start= %2
%PowerRun% net %1 WbioSrvc
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.15.dokunmatik
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Dokunmatik Klavye ve Kalem hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mDokunmatik Klavye ve Kalem hizmeti %3 ...%RGB%[0m
:: Kalem servisi
%PowerRun% sc config PenService start= %2
%PowerRun% net %1 PenService
::Dokunmatik Klavyeyi ve el yazs paneli hizmeit
%PowerRun% sc config TabletInputService start= %2
%PowerRun% net %1 TabletInputService
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.16.sistemgeriyukleme
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Sistem Geri ykleme hizmeti ald. hizmeti %5. >> %konum%\Logs
echo   %RGB%[96mSistem geri ykleme hizmeti %5 ...%RGB%[0m
:: Windows Yedekleme ve Geri Ykleme hizmeti
%PowerRun% sc config SDRSVC start= %2
%PowerRun% net %1 SDRSVC
:: Birim G”lge kopyas
%PowerRun% sc config VSS start= %2
%PowerRun% net %1 VSS
:: Dosya gemii hizmeti
%PowerRun% sc config fhsvc start= %2
%PowerRun% net %1 fhsvc
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /%3 > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /f /v "DisableSR" /t REG_DWORD /d %4 > NUL 2>&1
::-------------------------------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : ENABLE  | %4 : 0 | %5 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %4 : 1 | %5 : kapatlyor
::-------------------------------------------------------------------------------
goto :eof

:serv.17.sysmain
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Hzl Getir^(Sysmain^) hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mHzl Getir hizmeti %3 ...%RGB%[0m
%PowerRun% sc config SysMain start= %2
%PowerRun% net %1 SysMain
::-------------------------------------------------------
::    A = %1 : start | %2 : auto   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.18.hibernate
::Hzl balang
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Hzl balang^(Hibernate^) hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mHzl balat %3 ...%RGB%[0m
powercfg /hibernate %1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d %2 /f > NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d %2 /f > NUL 2>&1
::-------------------------------------------------------
::    A = %1 : On  | %2 : 1  | %3 : alyor
:: Kapat = %1 : Off | %2 : 0  | %3 : kapatlyor
::-------------------------------------------------------
goto :eof

:serv.19.konum
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Konum hizmeti %7. >> %konum%\Logs
echo   %RGB%[96mKonum hizmeti %7 ...%RGB%[0m
reg %5 "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" %~6 > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "%3" /f > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowLocation" /t REG_DWORD /d %4 /f > NUL 2>&1
%PowerRun% sc config NaturalAuthentication start= %2
%PowerRun% net %1 NaturalAuthentication
%PowerRun% sc config lfsvc start= %2
%PowerRun% net %1 lfsvc
::----------------------------------------------------------------------------------------------------------------------------------------------
::    A = %1 : start  | %2 : demand    | %3 : Allow |  %4 : 1 | %5 : delete | %6 : /v "DisableLocation" /f                   | %7 : alyor
:: Kapat = %1 : stop   | %2 : disabled  | %3 : Deny  |  %4 : 0 | %5 : add    | %6 : /v "DisableLocation" /t REG_DWORD /d 1 /f | %7 : kapatlyor
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

:serv.20.mediaplayer
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| MediaPlayer hizmeti %4. >> %konum%\Logs
:: Windows Media Player
echo   %RGB%[96mWindows Media Player %4 ...%RGB%[0m
Dism /Online /%3-Feature /FeatureName:MediaPlayback /Quiet /NoRestart
%PowerRun% sc config WMPNetworkSvc start= %2
%PowerRun% net %1 WMPNetworkSvc
::---------------------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : ENABLE  | %4 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %4 : kapatlyor
::---------------------------------------------------------------------
goto :eof

:serv.21.hyperv
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Hyper-V hizmeti %4. >> %konum%\Logs
echo   %RGB%[96mHyper-V hizmeti %4 ...%RGB%[0m
:: HV Ana Bilgisayar Hizmeti
%PowerRun% sc config HvHost start= %1
:: Hyper-V Birim G”lge Kopyas steyicisi
%PowerRun% sc config vmicvss start= %1
:: Hyper-V Konuk Arabirimi Hizmeti
%PowerRun% sc config vmicguestinterface start= %1
:: Hyper-V Konuk Kapatma Hizmeti
%PowerRun% sc config vmicshutdown start= %1
:: Hyper-V PowerShell Direct Hizmeti
%PowerRun% sc config vmicvmsession start= %1
:: Hyper-V Sinyal Hizmeti
%PowerRun% sc config vmicheartbeat start= %1
:: Hyper-V Uzak Masast Sanallatrma Hizmeti
%PowerRun% sc config vmicrdv start= %1
:: Hyper-V Veri Deงiimi Hizmeti
%PowerRun% sc config vmickvpexchange start= %1
:: Hyper-V Zaman Eitleme Hizmeti
%PowerRun% sc config vmictimesync start= %1
:: Hyper-V Sanal Makine Y”netimi
%PowerRun% sc config vmms start= %1
:: Hyper-V Ana Bilgisayar lem Hizmeti
%PowerRun% sc config vmcompute start= %1
%~3 /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-All /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Tools-All /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Management-PowerShell /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Hypervisor /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Services /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Management-Clients /Quiet /NoRestart
::------------------------------------------
::    A = %1 : demand    | %2 : Enable  | %~3 : For | %4 : alyor   
:: Kapat = %1 : disabled  | %2 : Disable | %~3 : ::  | %4 : kapatlyor
::------------------------------------------
goto :eof

:serv.22.xbox
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Xbox hizmeti %7. >> %konum%\Logs
echo   %RGB%[96mXbox hizmeti %7 ...%RGB%[0m
:: Oyun DVR ve Yayn kullanc hizmeti
%PowerRun% sc config BcastDVRUserService start= %2
%PowerRun% net %1 BcastDVRUserService
:: Xbox Accessory Management Service
%PowerRun% sc config XboxGipSvc start= %2
%PowerRun% net %1 XboxGipSvc
:: Xbox Live Aง Hizmeti
%PowerRun% sc config XboxNetApiSvc start= %2
%PowerRun% net %1 XboxNetApiSvc
:: Xbox Live Kimlik Doงrulama Y”neticisi
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
::    A = %1 : start  | %2 : demand    | %3 : 1  |  %4 : 0 | %5 : delete | %6 : /v "AllowGameDVR" /f                     | %7 : alyor
:: Kapat = %1 : stop   | %2 : disabled  | %3 : 0  |  %4 : 2 | %5 : add    | %6 : /v "AllowGameDVR" /t REG_DWORD /d 0 /f   | %7 : kapatlyor
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

:serv.23.bitlocker
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Bitlocker hizmeti %3. >> %konum%\Logs
echo   %RGB%[96mBitlocker hizmeti %3 ...%RGB%[0m
:: Bitlocker src ifreleme hizmeti
%PowerRun% sc config BDESVC start= %2
%PowerRun% net %1 BDESVC
::-------------------------------------------------------
::    A = %1 : start | %2 : demand   | %3 : alyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatlyor
::------------------------------------------------------
goto :eof

:serv.24.mixedreality
echo [%date% - %time%] ^| Kapatlan Hizmetleri Y”net ^| Karma Gereklik hizmeti %2. >> %konum%\Logs
echo   %RGB%[96mKarma Gereklik hizmeti %2 ...%RGB%[0m
:: Uzlamsal veri hizmeti
%PowerRun% sc config SharedRealitySvc start= %1
:: Volumetrik ses oluturucu hizmeti
%PowerRun% sc config VacSvc start= %1
:: Windows alglama benzetimi hizmeti
%PowerRun% sc config perceptionsimulation start= %1
:: Windows Alglama Hizmeti
%PowerRun% sc config spectrum start= %1
::Windows Mixed Reality OpenXR Service
%PowerRun% sc config MixedRealityOpenXRSvc start= %1
::------------------------------------------
::    A = %1 : demand    | %2 : alyor   
:: Kapat = %1 : disabled  | %2 : kapatlyor
::------------------------------------------
goto :eof

:stop
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:wificrackarchley
mode con cols=65 lines=45
title Wireless Password Cracker / (Archley)
echo [%date% - %time%] ^| WifiCrack ^| Wifi Crack b”lm ald. >> %konum%\Logs
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                   Wireless Password Cracker                 %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                          (Archley)                          %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
FOR /F "tokens=5" %%a in ('netsh wlan show profil ^| find "All"') do (
	FOR /F "tokens=4" %%b in ('netsh wlan show profile "%%a" key^=clear ^| find "Content"') do (
		echo    %ESC%[36m%%a :%ESC%%ESC%[33m %%b%ESC%[0m
		echo   
		)
	)
)
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo %ESC%[32m  Kapatmak iin herhangi bir tua basnz.%ESC%[0m
pause > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:WinSahiplik
cls
mode con cols=55 lines=15
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Saง Tk Sahiplik Men                %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Ekle%RGB%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Kaldr%RGB%[0m                                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger= %ESC%[92m  lem : %ESC%[0m
	if %deger%==1 (title Sahiplik al ekleniyor... / OgnitorenKs
				   echo [%date% - %time%] ^| WinSahiplik ^| Saง-tk "Sahiplik Al" eklendi. >> %konum%\Logs
				   reg add "HKCR\*\shell\runas" /f /ve /t REG_SZ /d "Sahipliงi Al" > NUL 2>&1
				   reg add "HKCR\*\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" > NUL 2>&1
				   reg add "HKCR\*\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" > NUL 2>&1
				   reg add "HKCR\*\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" && ica \"%%^1\" /grant administrators:F" > NUL 2>&1
				   reg add "HKCR\*\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" && ica \"%%^1\" /grant administrators:F" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas" /f /ve /t REG_SZ /d "Sahipliงi Al" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" /r /d y && ica \"%%^1\" /grant administrators:F /t" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" /r /d y && ica \"%%^1\" /grant administrators:F /t" > NUL 2>&1
				   echo %ESC%[92m lem tamamland.%ESC%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %deger%==2 (title Sahiplik al kaldrlyor... / OgnitorenKs
				   echo [%date% - %time%] ^| WinSahiplik ^| Saง-tk "Sahiplik Al" kaldrld. >> %konum%\Logs
				   reg delete "HKCR\*\shell\runas" /f > NUL 2>&1
				   reg delete "HKCR\Directory\shell\runas" /f > NUL 2>&1
				   echo %ESC%[92m lem tamamland.%ESC%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %deger%==x GOTO kontroll
	if %deger%==X GOTO kontroll
) else
	goto WinSahiplik

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:WinCompactOS
cls
mode con cols=55 lines=15
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m           CompactOS (Windows Sktrma)          %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m CompactOS %RGB%%RGB%[90m[A€]%RGB%[0m                              %ESC%[0mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m CompactOS %RGB%%RGB%[90m[KAPAT]%RGB%[0m                           %ESC%[0mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger= %RGB%[92m lem :%RGB%[0m
	if %deger%==1 (Call :CompactOn)
	if %deger%==2 (Call :CompactOff)
	if %deger%==x GOTO kontroll
	if %deger%==X GOTO kontroll
) else
	GOTO WinCompactOS

:CompactOn
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS sktrma ilemi uyguland. >> %konum%\Logs
echo %RGB%[96m CompactOS sktrma ilemi uygulanyor...%RGB%[0m
Compact.exe /CompactOS:always
goto :eof

:CompactOff
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS sktrma ilemi kapatld. >> %konum%\Logs
echo %RGB%[96m CompactOS sktrma ilemi devre d braklyor...%RGB%[0m
Compact.exe /CompactOS:never
goto :eof
:stop

:gpedit
Call :Logs
echo [%date% - %time%] ^| Gpedit ^| Gpedit.msc eklendi. >> %konum%\Logs
echo %RGB%[96m Gpedit.msc (Yerel Grup ilkesi) aktifletiriliyor...%RGB%[0m
FOR /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
FOR /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
::  WNDOWS 11 BLM 

:stop
:Win11SettingsMenu
cls
call :konum
call :PowerRun
mode con cols=55 lines=17
title Windows 11 zelletir / OgnitorenKs
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Windows 11 zelletirme              %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Taskbar Boyut %RGB%%RGB%[90m[K€K/BYK]%RGB%[0m                 %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Taskbar Konumu %RGB%%RGB%[90m[ALT/ST]%RGB%[0m                    %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Taskbar Simge Konumu %RGB%%RGB%[90m[SOL/ORTA]%RGB%[0m             %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 4.%ESC%%RGB%[33m Saง-Tk Men %RGB%%RGB%[90m[ESK/YEN]%RGB%[0m                    %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 5.%ESC%%RGB%[33m Saง-Tk Terminal %RGB%%RGB%[90m[EKLE/KALDIR]%RGB%[0m              %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 6.%ESC%%RGB%[33m Sahiplik Al %RGB%%RGB%[90m[EKLE/KALDIR]%RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 7.%ESC%%RGB%[33m Compact OS (Windows Sktrma) %RGB%%RGB%[90m[A€/KAPAT]%RGB%[0m  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 8.%ESC%%RGB%[33m Gpedit.msc (Yerel Grup ilkesi)%RGB%%RGB%[90m[EKLE]%RGB%[0m        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[92m  lem : %RGB%[0m
	if %deger%==1 (Call :Win11MenuChange)
	if %deger%==2 (Call :Win11MenuLocation)
	if %deger%==3 (Call :Win11MenuOld)
	if %deger%==4 (Call :Win11RightClick)
	if %deger%==5 (Call :Win11RightMenuTerminal)
	if %deger%==6 (Call :WinSahiplik)
	if %deger%==7 (Call :WinCompactOS)
	if %deger%==8 (Call :gpedit)
	if %deger%==x GOTO menu
	if %deger%==X GOTO menu
) else
	goto Win11SettingsMenu

	
:Win11MenuChange
cls
mode con cols=55 lines=15
title G”rev ubuงu boyut ayar / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m             G”rev €ubuงu Boyut Ayar              %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Kk %RGB%[0m                                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Varsaylan %RGB%[0m                                 %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Byk %RGB%[0m                                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger= %RGB%[92m G”rev ubuงu byklง : %RGB%[0m
	if %deger%==x goto Win11SettingsMenu
	if %deger%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuChange ^| Taskbar boyut ayar "%deger%" olarak ayarland. >> %konum%\Logs	
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarSi" /t REG_DWORD /d %deger%
Call :ExplorerReset
echo %ESC%[92m lem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11MenuLocation
cls
mode con cols=55 lines=15
title G”rev ubuงu konum ayar / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                G”rev €ubuงu Konumu                %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m st%RGB%[0m                                         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Alt %RGB%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger= %RGB%[92m G”rev ubuงu konumu : %RGB%[0m
	if %deger%==x goto win11settingsmenu
	if %deger%==X goto win11settingsmenu

echo [%date% - %time%] ^| Win11MenuLocation ^| Taskbar konum ayar "%deger%" olarak ayarland. >> %konum%\Logs
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3" /v "Settings" /t REG_BINARY /d "30000000feffffff7af400000%deger%0000003000000030000000000000000804000080070000380400006000000001000000" /f
Call :ExplorerReset
echo %ESC%[92m lem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof


:Win11MenuOld
cls
mode con cols=55 lines=15
title G”rev ubuงu simge konumu ayar / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m            G”rev €ubuงu Simge Konumu              %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Sol%RGB%[0m                                         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Orta%RGB%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger= %RGB%[92m Tarafnz seiniz : %RGB%[0m
	if %deger%==x goto Win11SettingsMenu
	if %deger%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuOld ^| Taskbar simge konumu "%deger%" olarak ayarland. >> %konum%\Logs
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAl" /t REG_DWORD /d %deger%
Call :ExplorerReset
echo %ESC%[92m lem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11RightClick
cls
mode con cols=55 lines=15
title Saง tk seenek ayar / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                 Saง-Tk Men Ayar                %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Eski%RGB%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Yeni%RGB%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger= %RGB%[92m Tarafnz seiniz : %RGB%[0m
	if %deger%==1 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 saง-tk ayar eski haline getirildi.. >> %konum%\Logs
				   reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&taskkill /f /im explorer.exe&start explorer.exe&goto :eof)
	if %deger%==2 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 saง-tk ayar yeni haline getirildi.. >> %konum%\Logs
				   reg delete "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&goto :eof)
	if %deger%==x goto Win11SettingsMenu
	if %deger%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu	

:Win11RightMenuTerminal
cls
mode con cols=55 lines=15
title Saง-tk Terminal ayar / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Saง-Tk Terminal Ayar               %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Terminal%RGB%%RGB%[90m [KALDIR]%RGB%[0m                           %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Terminal%RGB%%RGB%[90m [EKLE]%RGB%[0m                             %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger= %RGB%[92m lem : %RGB%[0m
	if %deger%==1 (echo [%date% - %time%] ^| Win11RightMenuTerminal ^| Windows 11 saง-tk b”lmnden terminal kaldrld. >> %konum%\Logs
				   reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{9F156763-7844-4DC4-B2B1-901F640F5155}" /t REG_SZ /d "" /f&taskkill /f /im "explorer.exe"&start explorer.exe&goto :eof)
	if %deger%==2 (echo [%date% - %time%] ^| Win11RightMenuTerminal ^| Windows 11 saง-tk b”lmne terminal eklendi. >> %konum%\Logs
				   reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /f&goto :eof)
	if %deger%==x goto Win11SettingsMenu
	if %deger%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:Win10SettingsMenu
cls
mode con cols=55 lines=17
title Windows 10 zelletir / OgnitorenKs
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Windows 10 zelletirme              %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Saat yan, simgeler%RGB%%RGB%[90m [GSTER/GZLE]%RGB%[0m          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Bildirim Alan%RGB%%RGB%[90m [A€/KAPAT]%RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Sahiplik Al%RGB%%RGB%[90m [EKLE/KALDIR]%RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 4.%ESC%%RGB%[33m Taskbar Hava Durumu%RGB%%RGB%[90m [A€/KAPAT]%RGB%[0m              %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 5.%ESC%%RGB%[33m Market%RGB%%RGB%[90m [YKLE/KALDIR]%RGB%[0m                       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 6.%ESC%%RGB%[33m Compact OS (Windows Sktrma)%RGB%%RGB%[90m [A€/KAPAT]%RGB%[0m  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 7.%ESC%%RGB%[33m Gpedit.msc (Yerel Grup ilkesi)%RGB%%RGB%[90m [EKLE]%RGB%[0m       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 8.%ESC%%RGB%[33m Simgeleri Deงitir%RGB%%RGB%[90m [ESK/YEN]%RGB%[0m              %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[92m  lem : %RGB%[0m
	if %deger%==1 (Call :Win10EkranTepsi)
	if %deger%==2 (Call :Win10Bildirim)
	if %deger%==3 (Call :WinSahiplik)
	if %deger%==4 (Call :Win10HavaDurumu)
	if %deger%==5 (Call :Win10StoreDelIns)
	if %deger%==6 (Call :WinCompactOS)
	if %deger%==7 (Call :gpedit)
	if %deger%==8 GOTO icochangemenu
	if %deger%==x GOTO menu
	if %deger%==X GOTO menu
) else
	goto Win10SettingsMenu
	
:: 
	
:Win10EkranTepsi
cls
mode con cols=55 lines=15
title G”rev ubuงu dzenleniyor... / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m               Saat Yan Simge Ayar               %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Hepsini G”ster%RGB%%RGB%[90m [A€]%RGB%[0m                         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Hepsini Gizle%RGB%%RGB%[90m [KAPAT]%RGB%[0m                       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[92m  lem : %RGB%[0m
	if %deger%==x goto Win10SettingsMenu
	if %deger%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10EkranTepsi ^| Windows 10 Saat yan simgeri ayar "%deger%" olarak ayarland. >> %konum%\Logs
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /f /v "EnableAutoTray" /t REG_DWORD /d %deger% > NUL 2>&1
Call :ExplorerReset
echo %ESC%[92m lem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: 

:Win10Bildirim
cls
mode con cols=55 lines=15
title Bildirim alan dzenleniyor... / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m               Bildirim Alan Ayar                %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Ak%RGB%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Kapal%RGB%[0m                                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger= %RGB%[92m  lem : %RGB%[0m
	if %deger%==x goto Win10SettingsMenu
	if %deger%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10Bildirim ^| Windows 10 Bildirim alan ayar "%deger%" olarak ayarland. >> %konum%\Logs
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %deger% > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %deger% > NUL 2>&1
Call :ExplorerReset
echo %ESC%[92m lem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: 

:Win10HavaDurumu
cls
mode con cols=55 lines=15
title Taskbar Hava Durumu dzenleniyor... / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m         G”rev €ubuงu Hava Durumu Ayar            %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Kapat%RGB%[0m                                       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m A%RGB%[0m                                          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger= %RGB%[92m  lem : %RGB%[0m
	if %deger%==x goto Win10SettingsMenu
	if %deger%==X goto Win10SettingsMenu
	
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d %deger% /f 
Call :ExplorerReset
echo %ESC%[92m lem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof


:Win10StoreDelIns
cls
mode con cols=55 lines=15
title Market Y”neticisi / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                   Market Y”netici                 %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Market%RGB%%RGB%[90m [KALDIR]%RGB%[0m                             %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Market%RGB%%RGB%[90m [YKLE]%RGB%[0m                              %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[92m  lem : %RGB%[0m
	if %deger%==1 (Call :Win10StoreDel)
	if %deger%==2 (Call :Win10StoreIns)
	if %deger%==x GOTO Win10SettingsMenu
	if %deger%==X GOTO Win10SettingsMenu
) else
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
:: AppX Daงtm Hizmeti
%PowerRun% sc config AppXSvc start= disabled
%PowerRun% net stop AppXSvc
:: Yetenek eriim y”netim istemcisi
%PowerRun% sc config camsvc start= disabled
%PowerRun% net stop camsvc
:: Depolama hizmeti
%PowerRun% sc config StorSvc start= disabled
%PowerRun% net stop StorSvc
:: stemci Lisans Hizmeti
%PowerRun% sc config ClipSVC start= disabled
%PowerRun% net stop ClipSVC

echo %ESC%[92m lem tamamland. Menye aktarlyorsunuz...%ESC%[0m
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

echo %ESC%[92m Hizmetler balatlyor...%ESC%[0m
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

echo %ESC%[92m DLL dosyalar kontrol ediliyor...%ESC%[0m
regsvr32  softpub.dll /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  dssenh.dll /s&regsvr32  rsaenh.dll /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  slbcsp.dll /s&regsvr32  mssip32.dll /s&regsvr32  cryptdlg.dll /s&regsvr32  msxml3.dll /s&regsvr32  comcat.dll /s&Regsvr32  Msxml.dll /s&Regsvr32  Msxml2.dll /s&regsvr32  mshtml.dll /s&regsvr32  shdocvw.dll /s&regsvr32  browseui.dll /s&regsvr32  msjava.dll /s&regsvr32  shdoc401.dll /s&regsvr32  cdm.dll /s&regsvr32  shdoc401.dll /i /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  asctrls.ocx /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  softpub.dll /s&regsvr32  oleaut32.dll /s&regsvr32  shdocvw.dll /I /s&regsvr32  Shell32.dll /s&regsvr32  browseui.dll /s&regsvr32  browseui.dll /I /s&regsvr32  msrating.dll /s&regsvr32  mlang.dll /s&regsvr32  hlink.dll /s&regsvr32  mshtmled.dll /s&regsvr32  urlmon.dll /s&regsvr32  urlmon.dll /i /s&regsvr32  plugin.ocx /s&regsvr32  sendmail.dll /s&regsvr32  scrobj.dll /s&regsvr32  mmefxe.ocx /s&regsvr32  corpol.dll /s&regsvr32  jscript.dll /s&regsvr32  imgutil.dll /s&regsvr32  thumbvw.dll /s&regsvr32  cryptext.dll /s&regsvr32  rsabase.dll /s&regsvr32  inseng.dll /s&regsvr32  iesetup.dll /i /s&regsvr32  actxprxy.dll /s&regsvr32  dispex.dll /s&regsvr32  occache.dll /s&regsvr32  occache.dll /i /s&regsvr32  iepeers.dll /s&regsvr32  cdfview.dll /s&regsvr32  webcheck.dll /s&regsvr32  mobsync.dll /s&regsvr32  pngfilt.dll /s&regsvr32  licmgr10.dll /s
regsvr32  icmfilter.dll /s&regsvr32  hhctrl.ocx /s&regsvr32  inetcfg.dll /s&regsvr32  tdc.ocx /s&regsvr32  MSR2C.DLL /s&regsvr32  msident.dll /s&regsvr32  msieftp.dll /s&regsvr32  xmsconf.ocx /s&regsvr32  ils.dll /s&regsvr32  msoeacct.dll /s&regsvr32  inetcomm.dll /s&regsvr32  msdxm.ocx /s&regsvr32  dxmasf.dll /s&regsvr32  l3codecx.ax /s&regsvr32  acelpdec.ax /s&regsvr32  mpg4ds32.ax /s&regsvr32  voxmsdec.ax /s&regsvr32  danim.dll /s&regsvr32  Daxctle.ocx /s&regsvr32  lmrt.dll /s&regsvr32  datime.dll /s&regsvr32  dxtrans.dll /s&regsvr32  dxtmsft.dll /s&regsvr32  WEBPOST.DLL /s&regsvr32  WPWIZDLL.DLL /s&regsvr32  POSTWPP.DLL /s&regsvr32  CRSWPP.DLL /s&regsvr32  FTPWPP.DLL /s&regsvr32  FPWPP.DLL /s&regsvr32  WUAPI.DLL /s&regsvr32  wups2.dll /S&regsvr32  WUAUENG.DLL /s&regsvr32  ATL.DLL /s&regsvr32  WUCLTUI.DLL /s&regsvr32  WUPS.DLL /s&regsvr32  WUWEB.DLL /s&regsvr32  wshom.ocx /s&regsvr32  wshext.dll /s&regsvr32  vbscript.dll /s&regsvr32  scrrun.dll mstinit.exe /setup /s&regsvr32  msnsspc.dll /SspcCreateSspiReg /s&regsvr32  msapsspc.dll /SspcCreateSspiReg /s
wsreset
echo %ESC%[92m lem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto :eof

:stop
:icochangemenu
cls
mode con cols=55 lines=15
title ICO Y”neticisi / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                    ICO Y”netici                   %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Eski Simge%RGB%%RGB%[90m [YKLE]%RGB%[0m                          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Yeni Simge%RGB%%RGB%[90m [YKLE]%RGB%[0m                          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[92m  lem : %RGB%[0m
	if %deger%==1 (Call :icochange Oldico)
	if %deger%==2 (Call :icochange Newico)
	if %deger%==x GOTO Win10SettingsMenu
	if %deger%==X GOTO Win10SettingsMenu
) else
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
	if %errorlevel%==1 (echo  %ESC%[1;97m%ESC%%ESC%[41m               nternet baงlants yok.              %ESC%[0m
						echo  %ESC%[1;97m%ESC%%ESC%[41m   Baงlanty saงlayp herhangi bir tua basnz    %ESC%[0m
						Call :Logss "oldicodown" "HATA! nternet baงlants bulunamad."
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
title Kullanc lemleri \ OgnitorenKs
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Kullanc Hesap Y”netimi             %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Administrator%RGB%%RGB%[90m [AKTF]%RGB%[0m                       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Administrator%RGB%%RGB%[90m [PASF]%RGB%[0m                       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Admin grubuna Kullanc ekle%RGB%[0m                %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 4.%ESC%%RGB%[33m Kullanc%RGB%%RGB%[90m [EKLE]%RGB%[0m                            %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 5.%ESC%%RGB%[33m Kullanc%RGB%%RGB%[90m [SL]%RGB%[0m                             %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 6.%ESC%%RGB%[33m ifremi unuttum%RGB%[0m                             %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 7.%ESC%%RGB%[33m Mevcut Kullanclar G”ster%RGB%[0m                 %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menye d”n%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[92m Yapmak istediงiniz ilem : %RGB%[0m
	if %deger%==1 GOTO Tweak1AdminAktif
	if %deger%==2 GOTO Tweak2AdminPasif
	if %deger%==3 GOTO Tweak3GrupAdmin
	if %deger%==4 GOTO Tweak4NewUsers
	if %deger%==5 GOTO Tweak5DelUsers
	if %deger%==6 GOTO Tweak6UsersKey
	if %deger%==7 (start cmd /k Powershell -command "Get-LocalUser"&goto AdminMenu)
	if %deger%==x GOTO menu
	if %deger%==X GOTO menu
) else
	goto AdminMenu

:Tweak1AdminAktif
cls
mode con cols=55 lines=20
title Administrator A \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m        Administrator aktifletiriliyor...       %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| AdminMenu ^| Administrator aktifletirildi. >> %konum%\Logs
net user administrator /active:yes
net user administrator *
echo %ESC%[92m lem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 1 /nobreak > NUL
goto AdminMenu

:Tweak2AdminPasif
cls
mode con cols=55 lines=20
title Administrator kapat \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m           Administrator kapatlyor...          %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| AdminMenu ^| Administrator kapatld. >> %konum%\Logs
net user Administrator /active:no
echo %ESC%[92m lem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 1 /nobreak > NUL
goto AdminMenu

:Tweak3GrupAdmin
cls
mode con cols=55 lines=20
title Admin Grubuna Kullanc ekle \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m          Admin Grubuna kullanc ekle           %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[92m  Kullanc Ad : %RGB%[0m  
	if %deger%==x GOTO AdminMenu
	if %deger%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Admin grubuna %deger% kullancs eklendi. >> %konum%\Logs
net localgroup Administrators %deger% /add 
echo %ESC%[92m lem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak4NewUsers
cls
mode con cols=55 lines=20
title Yeni Kullanc ekle \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m               Yeni kullanc ekle               %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[92m  Kullanc Ad : %RGB%[0m
	if %deger%==x GOTO AdminMenu
	if %deger%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Yeni kullanc "%deger%" oluturuldu. >> %konum%\Logs
net user %deger% * /add

echo %ESC%[92m lem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak5DelUsers
cls
mode con cols=55 lines=20
title Kullanc Sil \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                  Kullanc Sil                  %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[92m  Kullanc Ad : %RGB%[0m
	if %deger%==x GOTO AdminMenu
	if %deger%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Kullanc "%deger%" silindi. >> %konum%\Logs
net user %deger% /delete

echo %ESC%[92m lem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak6UsersKey
cls
mode con cols=55 lines=20
title ifremi Unuttum / Deงitir \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m             ifremi Unuttum / Deงitir          %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p deger=%RGB%[92m  Kullanc Ad : %RGB%[0m
	if %deger%==x GOTO AdminMenu
	if %deger%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Kullanc "%deger%" ifre deงitirildi. >> %konum%\Logs
net user %deger% *

echo %ESC%[92m lem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu


:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:UpdateAfter
cls
Call :PowerRun
echo [%date% - %time%] ^| UpdateAfter ^| Gncelleme sonras temizlik b”lm altrld. >> %konum%\Logs
echo %ESC%[92m Gncelleme sonras temizlik ilemi yaplyor.%ESC%[0m
echo %ESC%[92m Defender dosyalar siliniyor.%ESC%[0m
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
echo %ESC%[92m Defender hizmetler kapatlyor.%ESC%[0m
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
echo %ESC%[92m Hizmetler ilk haline getiriliyor...%ESC%[0m
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
:: Coงrafi konum hizmeti
%PowerRun% sc config Ifsvc start= disabled
%PowerRun% net stop Ifsvc
:: Czdan Hizmeti
%PowerRun% sc config WalletService start= disabled
%PowerRun% net stop WalletService
:: Daงtlm baงlant izleme istemcisi
%PowerRun% sc config TrkWks start= disabled
%PowerRun% net stop TrkWks
:: Baงl kullanc deneyimleri ve Telemetrisi
%PowerRun% net stop DiagTrack
%PowerRun% sc delete DiagTrack
%PowerRun% net stop dmwappushservice
%PowerRun% sc delete dmwappushservice
%PowerRun% net stop diagnosticshub.standartcollector.service
%PowerRun% sc delete diagnosticshub.standartcollector.service
:: Diagnostic Execution Service (Tehis ve Sorun Giderme)
%PowerRun% net stop diagsvc
%PowerRun% sc delete diagsvc
:: Dosya Gemii Hizmeti
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
:: Kii hizmeti
%PowerRun% sc config PimIndexMaintenanceSvc start= disabled
%PowerRun% net stop PimIndexMaintenanceSvc
:: Kurumsal uygulama y”netimi hizmeti
%PowerRun% sc config EntAppSvc start= disabled
%PowerRun% net stop EntAppSvc
:: Edge gncelleme hizmeti
%PowerRun% net stop edgeupdate
%PowerRun% net stop edgeupdatem
%PowerRun% sc config edgeupdate start= disabled
%PowerRun% sc config edgeupdatem start= disabled
:: Parekende G”steri hizmeti
%PowerRun% sc config RetailDemo start= disabled
%PowerRun% net stop RetailDemo
:: Program Uyumluluk Yardmcs Hizmeti
%PowerRun% sc config PcaSvc start= disabled
%PowerRun% net stop PcaSvc
:: Tanlama lkesi Hizmeti
%PowerRun% sc config DPS start= disabled
%PowerRun% net stop DPS
:: Karma Gereklik
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
:: €evrimd dosyalar
%PowerRun% sc config CscService start= disabled
%PowerRun% net stop CscService
:: NFC/SE hizmeti
%PowerRun% sc config SEMgrSvc start= disabled
%PowerRun% net stop SEMgrSvc
:: nerilen Sorun giderme hizmeti
%PowerRun% net stop TroubleshootingSvc
%PowerRun% sc config TroubleshootingSvc start= disabled
:: ndirilen haritalar y”neticisi
%PowerRun% net stop MapsBroker
%PowerRun% sc config MapsBroker start= disabled
:: Kii verileri
%PowerRun% net stop PimIndexMainteanceSvc
%PowerRun% sc config PimIndexMainteanceSvc start= disabled
:: Natural Kimlik Doงrulamas
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
:: €alma klas”rleri istemcisi
%PowerRun% net stop workfolderssvc
%PowerRun% sc config workfolderssvc start= disabled
:: kincil oturum ama 
%PowerRun% sc config seclogon start= disabled
timeout /t 5 /nobreak > NUL
echo %ESC%[92m Regedit kaytlar yeniden dzenleniyor.%ESC%[0m
:: Defender
Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKCU\SOFTWARE\Microsoft\Windows Security Health\State" /v "AccountProtection_MicrosoftAccount_Disconnected" /t REG_DWORD /d "0" /f >nul 2>&1
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableAntiVirus" /t REG_DWORD /d "1" /f
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtection" /t REG_DWORD /d "0" /f
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtectionSource" /t REG_DWORD /d "2" /f
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Signature Updates" /v "FirstAuGracePeriod" /t REG_DWORD /d "0" /f
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\UX Configuration" /v "DisablePrivacyMode" /t REG_DWORD /d "1" /f
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
::for /f "tokens=* USEBACKQ" %%i in (`%konum%\Files\wmic.exe useraccount where "name="%username%"" get sid ^| findstr "S-"`) do set currentusername=%%i
::set currentusername=%currentusername:~0,-3%
::Reg add "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 /f >nul 2>&1
::Reg add "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "PreventOverride" /t REG_DWORD /d 0 /f >nul 2>&1
::Reg add "HKU\%currentusername%\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
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
::Diงer
:: Gncellemenin yklenmesi gerektiงinde bilgisayar mmkn olan en ksa srede devre d brak
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "IsExpedited" /t REG_DWORD /d 0 > NUL 2>&1
:: Gncelleme sonras yeniden balatma bildirimi devre d braklyor...
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "RestartNotificationsAllowed2" /t REG_DWORD /d 0 > NUL 2>&1
:: Konuma modellerinin gnceletirmeleri devre d braklyor...
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "ModelDownloadAllowed" /t REG_DWORD /d 0 > NUL 2>&1
:: Teslimat Optimizasyonu BITS hizmeti olarak ayarlanyor...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /f /v "DODownloadMode" /t REG_DWORD /d "100" > NUL 2>&1
:: Driverlar kurulu deงil ise kurulmas iin ayarlanyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /f /v "SearchOrderConfig" /t REG_DWORD /d 2 > NUL 2>&1
:: Gncelletirmeler Manuel yaplyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "NoAutoUpdate" /t REG_DWORD /d "0" > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "AUOptions" /t REG_DWORD /d "2" > NUL 2>&1
:: Explorer "Bu Bilgisayar" olarak ayarlanyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "LaunchTo" /t REG_DWORD /d 1 > NUL 2>&1
:: Dosya kopyalama iletiim kutusuda daha fazla detay g”ster olarak ayarlanyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /f /v "EnthusiastMode" /t REG_DWORD /d 1 > NUL 2>&1
:: G”rev G”rnm Simgesi Kaldrlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowTaskViewButton" /t REG_DWORD /d 0 > NUL 2>&1
:: Dosya uzantlar aktifletiriliyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "HideFileExt" /t REG_DWORD /d 0 > NUL 2>&1
:: Otomatik oynatma kapatlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /f /v "DisableAutoplay" /t REG_DWORD /d 1 > NUL 2>&1
:: Son alan belgelerin gemii kapatlyor...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoRecentDocsHistory" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows'u kapatrken yeni alan belgelerin gemiini temizle aktifletiriliyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ClearRecentDocsOnExit" /t REG_DWORD /d 1 /f > NUL 2>&1
:: Son kullanlan dosyalarn hzl eriimde g”rntlenmesi engelleniyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowRecent" /t REG_DWORD /d 0 > NUL 2>&1
:: Hzl Eriimden Sk Kullanlan klas”rler kaldrlyor
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowFrequent" /t REG_DWORD /d 0 > NUL 2>&1
:: G”rev €ubuงu ve btn simgeleri tm monit”rlerde g”ster
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "MMTaskbarEnabled" /t REG_DWORD /d 1 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "MMTaskbarMode" /t REG_DWORD /d 0 > NUL 2>&1
:: Ksayol yazs kaldrlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "Link" /t REG_BINARY /d "00000000" > NUL 2>&1
:: Birlikte a seeneงinden internette ara seeneงi kaldrlyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoInternetOpenWith" /t REG_DWORD /d 1 > NUL 2>&1
:: G”rev ubuงu transparan ”zelliงi devre d braklyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /f /v "EnableTransparency" /t REG_DWORD /d 0 > NUL 2>&1
:: Arama b”lm simge haline getiriliyor
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v "SearchboxTaskbarMode" /t REG_DWORD /d 1 > NUL 2>&1
:: Web aramas kapatlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "DisableWebSearch" /t REG_DWORD /d 1 > NUL 2>&1
:: Web'de arama yapmayn veya Arama'da web sonularn g”rntlemeyin
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 > NUL 2>&1
:: ifrelenmi dosyalarn indekslenme izni kaldrlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowIndexingEncryptedStoresOrItems" /t REG_DWORD /d 0 > NUL 2>&1
:: Arama ve Cortana'nn konumu kullanma izni kapatlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 > NUL 2>&1
:: eriงi ve ”zellikleri dizine eklerken her zaman otomatik dil alglamay kullann kapatlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AlwaysUseAutoLangDetection" /t REG_DWORD /d 0 > NUL 2>&1
:: Cortana izni kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaConsent" /t REG_DWORD /d 0 > NUL 2>&1
:: Cortana Ortam modu kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaInAmbientMode" /t REG_DWORD /d 0 > NUL 2>&1
:: Arama b”lmnn konumu kullanmas engelleniyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 > NUL 2>&1
:: Gvenli arama modu kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /f /v "SafeSearchMode" /t REG_DWORD /d 0 > NUL 2>&1
:: Dosya Gezgini arama kutusundaki son arama girilerinin g”rntlenmesini kapatn
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /f /v "DisableSearchBoxSuggestions" /t REG_DWORD /d 1 > NUL 2>&1
:: Web aramas kapatlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "DisableWebSearch" /t REG_DWORD /d 1 > NUL 2>&1
:: Tarifeli baงlantlar zerinden aramada web'de arama yapmayn veya web sonularn g”rntlemeyin
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 > NUL 2>&1
:: Bulut arama kapatlyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowCloudSearch" /t REG_DWORD /d 0 > NUL 2>&1
:: Gizlilik politikas devre d braklyor.
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 > NUL 2>&1
:: Sesle etkinletirme kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "VoiceActivationDefaultOn" /t REG_DWORD /d 0 > NUL 2>&1
:: Kilit Ekrannn stnde Sesle Etkinletirme kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "VoiceActivationEnableAboveLockscreen" /t REG_DWORD /d 0 > NUL 2>&1
:: Ses etkinletirme kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" /f /v "DisableVoice" /t REG_DWORD /d 1 > NUL 2>&1
:: Arama - Bing web sonularn dahil et kapatlyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "BingSearchEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Ayarlar uygulamasn ”nerilen ieriงi g”stermesi kapatlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Baงlanmak iin Hotspot 2.0 €evrimii kaydolmay kullann kapatlyor
reg add "HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache" /f /v "OsuRegistrationStatus" /t REG_DWORD /d 0 > NUL 2>&1
:: Balang ve arama sonularn iyiletirmek iin Windows izleme uygulamasnn balatlmasna izin verin kapatlyor
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackProgs" /t REG_DWORD /d 0 > NUL 2>&1
:: Balangtaki ara sra ”neriler kapatlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Cihazmn kurulumunu evrimii olarak tamamlayabileceงim yollar ”ner kapatlyor.
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /f /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Programlanabilir G”rev €ubuงu ”zelliงi devre d braklyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableCloudOptimizedContent" /t REG_DWORD /d 1 > NUL 2>&1
:: Cortana
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowCortana" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" /f /v "AllowCortana" /t REG_DWORD /d 0 > NUL 2>&1
:: Cortana - Cihaz deงitirirken etkinlik ”nerileri
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "HistoryViewEnabled" /t REG_DWORD 0 > NUL 2>&1
:: Cortana - Oturum atงm cihazlar gemiimi kullan
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v "DeviceHistoryEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Cortana Butonu kaldrlyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowCortanaButton" /t REG_DWORD /d 0 > NUL 2>&1
:: Deneyim gelitirme programna izin ver(NVIDIA Srcs) kapatlyor...
reg add "HKCU\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /f /v "OptInOrOutPreference" /t REG_DWORD /d 0 > NUL 2>&1
:: Deneylere izin ver kapatlyor
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowExperimentation" /t REG_DWORD /d 0 > NUL 2>&1
:: Gelecekte yazmay iyiletirmenize yardmc olmas iin nasl yazdงm hakknda Microsoft'a bilgi g”nderme kapatlyor.
reg add "HKCU\SOFTWARE\Microsoft\Input\TIPC" /f /v "Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Geri Bildirim frekans kapatlyor.
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /f /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 > NUL 2>&1
:: Giri verilerinizi Microsoft'a g”ndererek konuma, yazma ve mrekkepleme giriinizi kiiselletirin kapatlyor
reg add "HKCU\Software\Microsoft\Personalization\Settings" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts " /t REG_DWORD /d 0 > NUL 2>&1
:: Konum Hizmetlerini kapatlyor...
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowLocation" /t REG_DWORD /d 0 > NUL 2>&1
:: Kullanc dil listesine erierek web sitelerinin yerel olarak alakal ierik saงlamas engelleniyor.
reg add "HKCU\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 > NUL 2>&1
:: Kullancnn diงer cihazlardaki uygulamalarn uygulamalar amas engelleniyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /f /v "UserAuthPolicy" /t REG_DWORD /d 0 > NUL 2>&1
:: Okumay iyiletirmek, taramay hzlandrmak iin sayfa tahminini kullann. G”z Atma Verilerinin Microsoft'a G”nderilmesi engelleniyor...
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" /f /v "FPEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Skype Kiiler baงlants devre d braklyor...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" /f /v "Skype-UserConsentAccepted" /t REG_DWORD /d 0 > NUL 2>&1
:: Sponsorlu uygulamalarn otomatik kurulumu (Tketici Deneyimi)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 > NUL 2>&1
reg add "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 > NUL 2>&1
:: Tanlama verilerinizi kullanarak Microsoft'un ilgili ipular ve ”nerilerle daha ”zel deneyimler sunmasna izin verin.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Telemetry Devre D braklyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0 > NUL 2>&1
:: Uygulamalarn arka planda almas engelleniyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "Migrated" /t REG_DWORD /d 4 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "GlobalUserDisabled" /t REG_DWORD /d 1 > NUL 2>&1
:: Uygulamalarn uygulamalardaki deneyimler iin kullanc reklam kimliงini kullanmas engelleniyor.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v "DisabledByGroupPolicy" /t REG_DWORD /d 1 > NUL 2>&1
:: Windows ve Cortana'nn sizi daha iyi anlamasna izin vermek iin kiileri toplama kapatlyor.
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows ve Cortana'nn sizi daha iyi anlamasna izin vermek iin yazl metin (mrekkep) toplayn kapatlyor.
reg add "HKCU\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 > NUL 2>&1
:: Windows ve Cortana'nn sizi daha iyi anlamasna izin vermek iin yazl metni toplayn.
reg add "HKCU\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 > NUL 2>&1
:: Windows'un bu bilgisayardan etkinliklerimi toplamasna izin ver (Zaman izelgesi)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows'un srama listelerini doldurmak iin alan belgeleri izlemesi kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackDocs" /t REG_DWORD /d 0 > NUL 2>&1
:: €evrimii konuma hizmetleri devre d braklyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /f /v "AllowInputPersonalization" /t REG_DWORD /d 0 > NUL 2>&1
:: nerilen ak scak noktalara otomatik baงlan kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "WiFiSenseOpen" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" /f /v "value" /t REG_DWORD /d 0 > NUL 2>&1
:: cretli aง hizmetlerinin mevcut olup olmadงn g”rmek iin geici olarak eriim noktalarna otomatik olarak baงlanma kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "PaidWifi" /t REG_DWORD /d 0 > NUL 2>&1
:: g”rsel yazma engelleniyor...
reg add "HKCU\SOFTWARE\Microsoft\Input\Settings" /f /v "InsightsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: OneDrive Eitlemesi devre d braklyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 > NUL 2>&1
:: AutoLogger devre d braklyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f > NUL 2>&1
:: Windows Hata Raporlama devre d braklyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /f /v "DontSendAdditionalData" /t REG_DWORD /d 1 > NUL 2>&1
:: Wifi Hotspot Raporlama devre d braklyor...
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" /f /v "value" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows Reklam Kimliงini devre d braklyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v "Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Mteri Deneyim Program devre d brakrlyor...
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /f /v "CEIPEnable" /t REG_DWORD /d 0 > NUL 2>&1
::Metadata izleme dosyalar kaldrlyor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /f > NUL 2>&1
:: Windows'un bilgisayardaki etkinlikleri toplamas engelleniyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "PublishUserActivities" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 > NUL 2>&1
:: Atlama Listelerinde en son alan ”งeler engelleniyor...
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Start" /f /v "HideRecentJumplists" /t REG_DWORD /d 1 > NUL 2>&1
:: zellik reklam balonu bildirimlerini kapatlyor...
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer\NoBalloonFeatureAdvertisements" /f /v "NoBalloonFeatureAdvertisements" /t REG_DWORD /d 1 > NUL 2>&1
:: Hiberboot Devre D braklyor
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /f /v "HiberbootEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Hazrda bekletme ”zelliงi devre d braklyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /f /v "HibernateEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Kapatma mens - Hibernate kapatlyor.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /f /v "ShowHibernateOption" /t REG_DWORD /d 0 > NUL 2>&1
:: Ayrlm depolama alan devre d braklyor...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "ShippedWithReserves" /t REG_DWORD /d 0 > NUL 2>&1
:: Prefetch devre d braklyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnablePrefetcher" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnableSuperFetch" /t REG_DWORD /d 0 > NUL 2>&1
:: Startup Delay (Balang Gecikmesi) devre d braklyor...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /f /v "StartupDelayInMSec" /t REG_DWORD /d 0 > NUL 2>&1
:: Qos Limiti Devre D braklyor...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /f /v "NonBestEffortLimit" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows 255 Karakter Snr devre d braklyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /f /v "LongPathsEnabled" /t REG_DWORD /d 1 > NUL 2>&1
:: DiagTrack Devre D braklyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /f /v "Start" /t REG_DWORD /d 0 > NUL 2>&1
:: Narrator QuickStart kapatlyor.
reg add "HKEY_CURRENT_USER\Software\Microsoft\Narrator\QuickStart" /f /v "SkipQuickStart" /t REG_DWORD /d 1 > NUL 2>&1
:: Windows ”nerileri devre d braklyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SoftLandingEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows karlama deneyimi kapatlyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Program uyumluluk yardmcs devre d braklyor...
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /f /v "DisablePCA" /t REG_DWORD /d 1 > NUL 2>&1
:: Donanm hzlandrmal GPU Planlamas aktifletiriliyor...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /f /v "HwSchMode" /t REG_DWORD /d 2 > NUL 2>&1
:: areti hassasiyeti devre d braklyor...
reg add "HKCU\Control Panel\Mouse" /f /v "MouseSpeed" /t REG_SZ /d 0 > NUL 2>&1
:: Kapatma ileminde uygulamalar ak ise otomatik kapat ve bekleme sresi azaltlyor
reg add "HKCU\Control Panel\Desktop" /f /v "AutoEndTasks" /t REG_SZ /d 1 > NUL 2>&1
:: :: Uygulamalar cevap vermediงi zaman g”revi sonlandr seeneงine baslmadan ”nceki bekleme sresini ksaltr.
reg add "HKCU\Control Panel\Desktop" /f /v "HungAppTimeout" /t REG_SZ /d "1000" > NUL 2>&1
:: Bilgisayar kapatlrken ya da oturumdan klrken kullanc uygulamalarnn kapatlmas iin sistem bekleme sresini ksaltr.
reg add "HKCU\Control Panel\Desktop" /f /v "WaitToKillAppTime" /t REG_SZ /d "2000" > NUL 2>&1
:: Cevap vermeyen hizmetlerin kapatlmasndan ”nceki sistem bekleme sresini ksaltr.
reg add "HKCU\Control Panel\Desktop" /f /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" > NUL 2>&1
:: Bilgisayarn kapatlmas srasnda durdurulacak hizmetler uyars geldiงinde, uygulamalarn kapanmas iin beklenen sreyi ksaltr.
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /f /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" > NUL 2>&1
:: Men g”sterimi bekleme sresini azaltr. B”ylelikle tklandง zaman menler daha hzl gelecek.
reg add "HKCU\Control Panel\Desktop" /f /v "MenuShowDelay" /t REG_SZ /d "8" > NUL 2>&1
:: Dk Depolama alan uyars devre d braklyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1 > NUL 2>&1
:: :: Farenizle birlikte bir nesnenin zerine geldiงinizde g”rlen aklamann k sresini ksaltr
reg add "HKCU\Control Panel\Mouse" /f /v "MouseHoverTime" /t REG_SZ /d 8 > NUL 2>&1
:: Bilgisayarnzda mevcut olmayan programlara ait ksayollarn baงlantsnn Windows tarafndan boa vakit harcanarak aranmasn ”nler
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1 > NUL 2>&1
:: Ksayol baงlant sorununu ”zmek iin Windows'un diski aramasn ”nler
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveSearch" /t REG_DWORD /d 1 > NUL 2>&1
:: Ksayol baงlant sorununu ”zmek iin Windows'un NTFS dosya sisteminin izleme ”zelliงini kullanmasn engeller
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveTrack" /t REG_DWORD /d 1 > NUL 2>&1
:: Odak Yardm aktifletiriliyor
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours" /f /v "Enable" /t REG_DWORD /d 1 > NUL 2>&1

:: 3.Parti Market uygulamalarnn yeniden yklenmesi engelleyen b”lm
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "ContentDeliveryAllowed" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "FeatureManagementEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: nceden yklenmi OEM uygulamalar devre d braklyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: nceden yklenmi OEM uygulamalar (Minecraft, CandyCrush, Flipboard) kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "PreInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: nerilen uygulamalar otomatik olarak ykleyin kapatlyor.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-314559Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338387Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338389Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContentEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SystemPane RecommendionsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Market otomatik gncelletirme kapatr.
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
echo %ESC%[92m lem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto menu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PingMeter
Call :konum
echo [%date% - %time%] ^| UpdateAfter ^| Ping ”ler altrld. >> %konum%\Logs
powershell -command "Start-Process '%konum%\Ekler\Pingolc.bat'"
goto :eof

:SistemHakkinda
Call :konum
echo [%date% - %time%] ^| SistemHakkinda ^| Sistem hakknda b”lm altrld. >> %konum%\Logs
powershell -command "Start-Process '%konum%\Ekler\Sistem.Hakkinda.bat'"
goto :eof

:FoldertoISO
Call :konum
echo [%date% - %time%] ^| FoldertoISO ^| Folder to ISO yazlm altrld. >> %konum%\Logs
powershell -command "Start-Process '%konum%\Files\Folder2Iso\Folder2Iso.exe'"
goto :eof

:AppxManager
Call :konum
echo [%date% - %time%] ^| AppxManager ^| Appx Manager uygulamas altrld. >> %konum%\Logs
powershell -command "Start-Process '%konum%\Files\WindowsAppBoss.exe'
goto :eof

:WindowsEdition
Call :konum
echo [%date% - %time%] ^| WindowsEdition ^| Windows Dzenleme b”lm altrld. >> %konum%\Logs
powershell -command "Start-Process '%konum%\Ekler\Windows.Edition.bat'
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PowerRun
Call :konum
dir /b "%konum%\Files\PowerRun.exe" > NUL 2>&1
	if %errorlevel%==1 (echo %ESC%[1;97m%ESC%%ESC%[41m HATA! PowerRun.exe dosyas bulunamad. Yeniden indiriliyor... %ESC%[0m
						Call :Logss "PowerRun indiriliyor" "PowerRun.exe dosyas bulunamad. Yeniden indirildi."
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
powershell -command "Start-Process 'C:\Windows\explorer.exe'"
goto :EOF

:kontroll
cls
FOR /F "tokens=3" %%i in ('FIND "Caption" %Logs%\OS.txt') do SET caption3=%%i
	if %caption3%==11 GOTO Win11settingsmenu
	if %caption3%==10 GOTO Win10settingsmenu
) else
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
:: lerleme ubuงu konusunda yardmc olan KaanBeyhan'a (Doggest) teekkr ederim.
:: --------------------------------------------------------------------------------------------
:wget
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                  nternet baงlants yok.                                  %ESC%[0m
						echo [%date% - %time%] ^| wget ^| HATA! nternet baงlants bulunamad. sim:%~2 Link:"%~1" Download:%download% >> %konum%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget ^| %~2 program indirildi. Link:"%~1" Download:%download% >> %konum%\Logs
Files\wget.exe -c -q --no-check-certificate --show-progress "%~1" -O %download%\%~2"
"%download%\%~2" %~3
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= ndirme ismi  | %~3= Sessiz kurulum parametresi
:: ========================================================================================================

:wgetozel
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                  nternet baงlants yok.                                  %ESC%[0m
						echo [%date% - %time%] ^| wgetozel ^| HATA! nternet baงlants bulunamad. sim:%~2 Link:"%~1" Download:%download% >> %konum%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wgetozel ^| %~2 program indirildi. Link:"%~1" Download:%download% >> %konum%\Logs
Files\wget.exe -c -q --no-check-certificate --show-progress %1 -O %download%\%~2
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= ndirme ismi 
:: ========================================================================================================

:wgetdesktop
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                  nternet baงlants yok.                                  %ESC%[0m
						echo [%date% - %time%] ^| wgetdesktop ^| HATA! nternet baงlants bulunamad. sim:"%~2" Link:"%~1" >> %konum%\Logs
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
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                  nternet baงlants yok.                                  %ESC%[0m
						echo   %ESC%[1;97m%ESC%%ESC%[41m               Wget.exe indirilemedi, indirme ilemlerinde hata alacaksnz                 %ESC%[0m
						echo [%date% - %time%] ^| wgetyok ^| HATA! nternet baงlants olmadง iin wget.exe indirilemedi. >> %konum%\Logs
						timeout /t 5 /nobreak > NUL
						goto :eof)
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ


:: ==============================================================================================================================
:1i
cls
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo    %ESC%[92m 1 - All in One Runtimes%ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo    %ESC%[33m All in One Runtimes b”lm iinde;%ESC%[0m
echo    %ESC%[37m   Microsoft Visual C++ 2005 / 2008 / 2010 / 2012 / 2013 / 2015 / 2019 / 2022%ESC%[0m
echo    %ESC%[37m   OpenAL: Oyun ses kalitesini arttrr.%ESC%[0m 
echo    %ESC%[37m   XNA Framework 4.0: C# ile programlanan oyunlarn almas iin gerekli%ESC%[0m
echo    %ESC%[37m   Java%ESC%[0m
echo    %ESC%[37m   Desktop Runtime 5: C++ bileenleriyle ilgilidir.%ESC%[0m 
echo    %ESC%[37m   DirectX: Oyunlarn almas iin yklenmesi art%ESC%[0m 
echo    %ESC%[33m yer almaktadr.%ESC%[0m
echo    %ESC%[33m Uygulama ve oyunlarn sorunsuz almas iin mutlaka kurulmas gerekmektedir.%ESC%[0m
echo   %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo    %ESC%[32m Menye d”nmek iin herhangi bir tua basnz.%ESC%[0m
pause > NUL
goto :eof

:2i
echo %ESC%[96m  Discord: Arkadalarnzla iletiim kurabileceงiniz chat uygulamasdr. %ESC%[0m
pause > NUL
goto :eof

:3i
cls
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo    %ESC%[92m %ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo    %ESC%[33m %ESC%[0m
echo   %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo    %ESC%[32m Menye d”nmek iin herhangi bir tua basnz.%ESC%[0m
pause > NUL
goto :eof



:: ==============================================================================================================================

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

