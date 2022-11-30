:: ==============================================================================================================================
::                               NOTEPAD++ > Kodlama > Karakter Takımı > Türkçe > OEM857
:: ==============================================================================================================================
::
::       ■■■■■■■   ■■■■■■   ■■    ■■ ■■■■ ■■■■■■■■  ■■■■■■■  ■■■■■■■■  ■■■■■■■■ ■■    ■■ ■■    ■■  ■■■■■■
::      ■■     ■■ ■■    ■■  ■■■   ■■  ■■     ■■    ■■     ■■ ■■     ■■ ■■       ■■■   ■■ ■■   ■■  ■■    ■
::      ■■     ■■ ■■        ■■■■  ■■  ■■     ■■    ■■     ■■ ■■     ■■ ■■       ■■■■  ■■ ■■  ■■   ■■
::      ■■     ■■ ■■   ■■■■ ■■ ■■ ■■  ■■     ■■    ■■     ■■ ■■■■■■■■  ■■■■■■   ■■ ■■ ■■ ■■■■■      ■■■■■■ 
::      ■■     ■■ ■■    ■■  ■■  ■■■■  ■■     ■■    ■■     ■■ ■■   ■■   ■■       ■■  ■■■■ ■■  ■■         ■■
::      ■■     ■■ ■■    ■■  ■■   ■■■  ■■     ■■    ■■     ■■ ■■    ■■  ■■       ■■   ■■■ ■■   ■■  ■■    ■■
::       ■■■■■■■   ■■■■■■   ■■    ■■ ■■■■    ■■     ■■■■■■■  ■■     ■■ ■■■■■■■■ ■■    ■■ ■■    ■■  ■■■■■■ 
::
::  Hazırlayan: Hüseyin UZUNYAYLA / OgnitorenKs
::  -------------------------------------------
::  Toolbox'ı hazırladığım sistemlerde temel programları indirip, basit bir şekilde sistem üzerinde düzenleme yapması için hazırladım.
::  Sürekli olarak güncellenecektir. Toolbox'ı indirmek için aşağıdaki linkleri kullanabilirsiniz.
::
::  İstek ve önerileriniz olursa, iletişim;
::  Contact;
::  --------------------------------------
::  >> Discord: OgnitorenKs#2737 
::  >>    Mail: ognitorenks@gmail.com
::
::                                                >>   WEB PAGE   <<
::                                         --------------------------------
::                                         >>  ognitorenks.blogspot.com  <<
::
:: ==============================================================================================================================
::  Projeye katkıda bulunanlar;
::  ---------------------------
::   Eray Türkay
::  ----------------------
::     Sistem Hakkında - RAM soket yapısının eklenmesi.
::     Sistem Hakkında - Sistem format tarihinin eklenmesi.
::  ----------------------
::   KaanBeyhan [Denizlili]
::  ----------------------
::     İndirme işlemlerinde ilerleme çubuğunun eklenmesi.
::  ---------
::   Archley
::  ---------
:: 	   Wifi Crack çalışmasının toolbox'a eklenmesi. 
::  ----------
::   maskem76
::  ----------
:: 	   Hyper-V bölümündeki hatanın giderilmesi.
::  ----------
::   Legnica
::  ----------
:: 	   Windows Search önbelliğinin temizlenmesiyle ilgili komutların eklenmesi.
::
:: ==============================================================================================================================
:: Toolbox içinde kullanılan yazılımlar;
:: ------------------------------------
:: >> Folder2ISO     > https://www.trustfm.net/software/utilities/Folder2Iso.php
::    Klasör içindeki verileri ISO çevirmeye yarayan küçük boyutlu bir yazılım.
::
:: >> wget           > https://eternallybored.org/misc/wget/
::    Download işlemlerinin yapıldığı uygulamadır. Komut istemiyle çalışır.
::
:: >> PowerRun       > https://www.sordum.org/9416/powerrun-v1-6-run-with-highest-privileges/
::    Üst düzey yetki ile işlem yapma izni veren yazılım. 
::
:: >> oscdimg        > https://api.256file.com/oscdimg.exe/tr-download-87465.html
::    ISO dosyası oluşturmaya yarayan yazılıım.
::
:: ==============================================================================================================================
echo off
cls
chcp 65001 >nul 2>&1

setlocal
Call :ColorEnd
Call :ColorEnd2

:: ==============================================================================================================================
::  RENK HARİTASI
::  -------------
:: ^%C%^[33m > Sarı renkli bölümler. Menü içindeki sarı renkli bölümler
:: ^%C%^[36m > Mavi renkli bölümler. Menü içindeki mavi renkli bölümler
:: ^%C%^[37m > Beyaz renkli bölümler. Menü içindeki beyaz renkli bölümler
:: ^%C%^[90m > Gri renkli bölümler. Menü içindeki gri renkli bölümler(Çerçeveler dahil değil)
:: ^%C%^[92m > Değişken rengi (Yeşil). Kullanıcıdan bir değer girmesi istenilen bölümlere aittir.
:: ^%C%^[96m > İkinci değişken rengi (Açık Mavi) | Menüye yansıyan bilgi mesajları. Ana ekrana düşecek olan ikinci değişken bölümlerine aittir.
::
:: ^%R%^[41m > Hata mesajları dolgu rengi (kırmızı)
:: ^%R%^[32m > İşlem (yeşil) numara rengidir. Menü içindeki işlem numaralarıdır.
:: ^%R%^[36m > Menüye dön renk ayarıdır. Menüye dön bölümlerinin renk ayarıdır.
:: ^%R%^[100m > Başlık bölümlerinde arka planı dolduran renktir.
:: ^%R%^[1;97m > Başlıkta dolgu bölümünün içinde yer alan yazı rengidir. 1; bölümü kalın yazmasını sağlar. 97m beyaz renk yazmasını sağlar.
:: ^%R%^[90m > Çerçeveleri ve | işaretlerinin rengini değişir.
:: 
:: ==============================================================================================================================

:AdminKontrol
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo 
echo 
echo 
echo 
echo  %R%[90m╔═════════════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║                                                         ║%R%[0m
echo  %R%[90m║%R%[1;97m%R%[41m               ! UYARI !          ! UYARI !              %R%[0m%R%[90m║%R%[0m
echo  %R%[90m║                                                         ║%R%[0m
echo  %R%[90m║%R%[1;97m%R%[42m            Sağ-Tık Yönetici olarak çalıştırın           %R%[0m%R%[90m║%R%[0m
echo  %R%[90m║                                                         ║%R%[0m
echo  %R%[90m╚═════════════════════════════════════════════════════════╝%R%[0m
echo 
echo              %R%[92mKapatmak için herhangi bir tuşa basınız%R%[0m
pause > nul
exit
)
mode con cols=96 lines=37 
:: ==============================================================================================================================
::                                                  DOWNLOAD KONUM BÖLÜMÜ
::
::   Download Locationunu değiştirmek istiyorsanız;
::   set download= eşittirden sonra klasör yolunu yazın.
::   Varsayılan olarak Toolbox klasörü içine yükler.

Call :Logs
set download=%Location%\Download

:: ==============================================================================================================================
:: Toolbox için gerekli klasörler oluşturuluyor.
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
:: Wget.exe yazılımları bazı antivirüs yazılımları tarafından virüs olarak algılanmaktadır. 
:: Bu tarz bir durumda wget.exe dosyası silinirse indirme işlemleri gerçekleştirilemez.
:: Aşağıdaki komut ile wget dosyasının olup olmadığını kontrol ediyorum. Hata vermesi durumunda Powershell komutuyle yeniden indiriyorum.
dir /b "%Location%\Files\wget.exe" > NUL 2>&1
	if %errorlevel%==1 (echo [%date% - %time%] ^| Wget indiriliyor ^| Wget.exe dosyası bulunamadı. Yeniden indirildi. >> %Location%\Logs
						echo   %R%[1;97m%R%[41m                                Wget.exe dosyası bulunamadı                                 %R%[0m
						echo   %R%[1;97m%R%[42m                                    Yeniden indiriliyor                                     %R%[0m
						Call :netkontrol
						powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.3/64/wget.exe -OutFile %Location%\Files\wget.exe }")

:: ==============================================================================================================================

set version=2.9

:: ==============================================================================================================================
:NetCheck
ping -n 1 www.google.com.tr -w 20000 > NUL
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
echo                     %R%[92m Güncelleştirmeler kontrol ediliyor...%R%[0m
echo 
echo               %R%[33m■■  ■■■■ ■   ■ ■ ■■■  ■■  ■■■■  ■■■ ■   ■   ■ ■■■■%R%[0m
echo              %R%[33m■  ■ ■    ■■  ■ ■  ■  ■  ■ ■  ■  ■   ■■  ■  ■  ■   %R%[0m
echo              %R%[33m■  ■ ■ ■■ ■ ■ ■ ■  ■  ■  ■ ■ ■   ■■  ■ ■ ■ ■   ■■■■%R%[0m
echo              %R%[33m■  ■ ■  ■ ■  ■■ ■  ■  ■  ■ ■  ■  ■   ■  ■■  ■     ■%R%[0m
echo               %R%[33m■■  ■■■■ ■   ■ ■  ■   ■■  ■   ■ ■■■ ■   ■   ■ ■■■■%R%[0m

:: Tarih bilgisi alınır
for /f "tokens=2" %%a in ('echo %date%') do set timeupdate=%%a
set tugun=%timeupdate:~0,-8%
set tuyil=%timeupdate:~6%
set tuay=%timeupdate:~3,-5%
set TimeUpdateDate=%tugun%.%tuay%.%tuyil%

:: Update.ini dosyasına kaydedilen tarih ile güncel tarih verisi karşılaştırılır. Tarihler farklı ise güncellemeler kontrol edilir.
For /f "tokens=2" %%b in ('findstr /i "TimeUpdate" %Location%\Update.ini') do set logstime=%%b
if %logstime% equ %TimeUpdateDate% (
  goto NoInternet
) else (
	goto AU2
)

:AU2
chcp 437 >nul 2>&1
:: Güncel tarih verisi Update.ini dosyasını işlenir.
for /f "tokens=2" %%a in ('findstr /i "TimeUpdate" %Location%\Update.ini') do (
	powershell -Command "(Get-Content %Location%\Update.ini) | ForEach-Object { $_ -replace '%%a', '%TimeUpdateDate%' } | Set-Content '%Location%\Update.ini'"
)
chcp 65001 >nul 2>&1
:: Links.txt dosyasının indirme linki alınır.
FOR /F "tokens=1" %%i in ('FIND "Links.txt" %Location%\Extra\Links.txt') do set link=%%i
:: Links.txt dosyası indirilir.
%Location%\Files\wget --no-check-certificate "%link%" -O %Location%\Extra\Links.txt > NUL 2>&1
:: İndirilen Links.txt dosyasından version durumları karşılaştırılır. Farklı ise Toolbox.Update.bat çalıştırılır.
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

:: Ana ekranda yer alan Kullanıcı adı, işletim sistemi gibi bilgiler alınır.
chcp 437 >nul 2>&1
Powershell -command "Get-CimInstance Win32_OperatingSystem | Select-Object Caption,InstallDate,OSArchitecture,RegisteredUser,CSName | FL" > %Logs%\OS.txt
chcp 65001 >nul 2>&1
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

:: Menü içinde sisteme göre ayarlama yapıyorum
FOR /F "tokens=5" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption2=%%a 
	if %caption2%==10 (set editmenu=Windows 10 Edit)
	if %caption2%==11 (set editmenu=Windows 11 Edit)
	
:: Yönlendirme bölümünü sisteme göre ayarlıyorum.
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
						echo [%date% - %time%] OgnitorenKs Toolbox başlatıldı.
						echo  ╔══════════════════════════════════════════════════════════════════════════════════════════╗
						echo  ║ OGNITORENKS TOOLBOX %version% ^| USER:%registereduser% ^| PC-Name:%pcname%
						echo  ║ OS: %caption% ^| x%osarch% ^| %ImageBuild% ^| %isderleme% ^| Power: %powerr%
						echo  ╚══════════════════════════════════════════════════════════════════════════════════════════╝
						echo ---------------------------------------------------------------------------------------------------------------------------
						) >> %Location%\Logs
						)

:: ==============================================================================================================================
:menu
cls
mode con cols=96 lines=37 
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %R%[90m╔══════════════════════════════════════════════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %version% %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m	
echo   %R%[90m║%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m Power:%R%[37m %powerr%%R%[0m	
echo   %R%[90m╠══════════════════════════╦═════════════════════════════╦═════════════════════════════════╣%R%[0m
echo   %R%[90m║%R%[32m  1.%C%[37m All In One Runtimes  %R%[90m║%R%[32m  27.%C%[36m Kdenlive               %R%[90m║%R%[0m          %R%[92m BONUS%R%[0m               %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m  2.%C%[33m Discord              %R%[90m║%R%[32m  28.%C%[36m OpenShot               %R%[90m║%R%[32m 53.%C%[36m %editmenu%%C%[90m [M]         ║%R%[0m
echo   %R%[90m║%R%[32m  3.%C%[33m Whatsapp             %R%[90m║%R%[32m  29.%C%[36m Shotcut                %R%[90m║%R%[32m 54.%C%[33m Hizmetleri Yönet%C%[90m [M]        ║%R%[0m
echo   %R%[90m║%R%[32m  4.%C%[33m Signal               %R%[90m║%R%[32m  30.%C%[36m Krita                  %R%[90m║%R%[32m 55.%C%[33m Icon Fix                    %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m  5.%C%[33m Telegram             %R%[90m║%R%[32m  31.%C%[36m Gimp                   %R%[90m║%R%[32m 56.%C%[37m Windows Editör%C%[90m [M]          ║%R%[0m
echo   %R%[90m║%R%[32m  6.%C%[33m Zoom                 %R%[90m║%R%[32m  32.%C%[36m OBS Studio             %R%[90m║%R%[32m 57.%C%[33m Güncelleme Sonrası Temizlik %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m  7.%C%[36m EpicGames            %R%[90m║%R%[32m  33.%C%[36m ShareX                 %R%[90m║%R%[32m 58.%C%[33m Windows - Market Onar       %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m  8.%C%[36m Steam                %R%[90m║%R%[32m  34.%C%[36m Audacity               %R%[90m║%R%[32m 59.%C%[33m PC Temizle                  %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m  9.%C%[36m GOG Galaxy           %R%[90m║%R%[32m  35.%C%[36m K-Lite Codec           %R%[90m║%R%[32m 60.%C%[36m Folder to ISO%C%[90m [APP]         ║%R%[0m
echo   %R%[90m║%R%[32m 10.%C%[36m Uplay                %R%[90m║%R%[32m  36.%C%[36m VLC Media Player       %R%[90m║%R%[32m 61.%C%[36m Fat32 to NTFS               %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 11.%C%[36m Origin               %R%[90m║%R%[32m  37.%C%[36m Aimp                   %R%[90m║%R%[32m 62.%C%[33m Ping Ölçer%C%[90m [*]              ║%R%[0m
echo   %R%[90m║%R%[32m 12.%C%[36m Cheat Engine         %R%[90m║%R%[32m  38.%C%[36m File Converter         %R%[90m║%R%[32m 63.%C%[33m Lisans Yönetimi%C%[90m [M]         ║%R%[0m
echo   %R%[90m║%R%[32m 13.%C%[36m Wemod                %R%[90m║%R%[32m  39.%C%[33m Free Download Manager  %R%[90m║%R%[32m 64.%C%[33m Kullancı Hesap Yönetimi%C%[90m [M] ║%R%[0m
echo   %R%[90m║%R%[32m 14.%C%[33m Google Chrome        %R%[90m║%R%[32m  40.%C%[33m İnt Download Manager   %R%[90m║%R%[32m 65.%C%[33m Sistem Hakkında%C%[90m [*]         ║%R%[0m
echo   %R%[90m║%R%[32m 15.%C%[33m Mozilla Firefox      %R%[90m║%R%[32m  41.%C%[33m ByClick Downloader     %R%[90m║%R%[32m 66.%C%[33m Wifi Crack                  %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 16.%C%[33m Brave                %R%[90m║%R%[32m  42.%C%[33m Qbittorrent            %R%[90m║%R%[32m 67.%C%[33m Zaman Ayarlı PC Kapat%C%[90m [M]   ║%R%[0m
echo   %R%[90m║%R%[32m 17.%C%[33m Microsoft Edge       %R%[90m║%R%[32m  43.%C%[33m GlassWire              %R%[90m║%R%[0m                                 %R%[90m║%R%[0m 
echo   %R%[90m║%R%[32m 18.%C%[33m Opera GX             %R%[90m║%R%[32m  44.%C%[33m TeamViewer             %R%[90m║%R%[0m                                 %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 19.%C%[37m ISLC                 %R%[90m║%R%[32m  45.%C%[33m AnyDesk                %R%[90m║%R%[0m                                 %R%[90m║%R%[0m 
echo   %R%[90m║%R%[32m 20.%C%[37m MemReduct            %R%[90m║%R%[32m  46.%C%[33m Hamachi                %R%[90m║%R%[0m                                 %R%[90m║%R%[0m 
echo   %R%[90m║%R%[32m 21.%C%[36m Libre Office         %R%[90m║%R%[32m  47.%C%[33m Stremio                %R%[90m║%R%[0m                                 %R%[90m║%R%[0m 
echo   %R%[90m║%R%[32m 22.%C%[36m Adobe Reader         %R%[90m║%R%[32m  48.%C%[36m MSI Afterburner        %R%[90m║%R%[0m                                 %R%[90m║%R%[0m 
echo   %R%[90m║%R%[32m 23.%C%[36m PDF-XChange Editör   %R%[90m║%R%[32m  49.%C%[36m Hibit Uninstaller      %R%[90m║%R%[0m                                 %R%[90m║%R%[0m 
echo   %R%[90m║%R%[32m 24.%C%[36m Calibre              %R%[90m║%R%[32m  50.%C%[36m Wise Care 365          %R%[90m║%R%[0m                                 %R%[90m║%R%[0m 
echo   %R%[90m║%R%[32m 25.%C%[33m 7 - Zip              %R%[90m║%R%[32m  51.%C%[36m Unlocker               %R%[90m║%R%[32m 98.%C%[36m Toolbox Rehber              %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 26.%C%[33m WinRAR               %R%[90m║%R%[32m  52.%C%[36m SSD Booster            %R%[90m║%R%[32m 99.%C%[36m Toolbox Güncelle            %R%[90m║%R%[0m
echo   %R%[90m╠══════════════════════════╩═════════════════════════════╩═════════════════════════════════╣%R%[0m
echo   %R%[90m║%R%[0m %R%[32m X.%R%[37m Temizle ve Kapat%R%[0m       [%R%[1;97m%R%[100mognitorenks.blogspot.com%R%[0m]   %R%[32m  Z.%C%[37m Listeyi Genişlet ^>^>^>%R%[0m        %R%[90m║%R%[0m
echo   %R%[90m╚══════════════════════════════════════════════════════════════════════════════════════════╝%R%[0m
set /p menu= %C%[92m  İşlem : %C%[0m
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
	if %menu%==x (Call :Logss "Kalıntıları.Temizle" "Download klasörü temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
	if %menu%==X (Call :Logss "Kalıntıları.Temizle" "Download klasörü temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
) else
	goto menu
	
:: ==============================================================================================================================

:menu2
cls
mode con cols=96 lines=37 
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %R%[90m╔══════════════════════════════════════════════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %version% %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m	
echo   %R%[90m║%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m Power:%R%[37m %powerr% %R%[0m	
echo   %R%[90m╠══════════════════════════╦═════════════════════════════╦═════════════════════════════════╣%R%[0m
echo   %R%[90m║%R%[32m  1.%C%[37m All In One Runtimes  %R%[90m║%R%[32m  27.%C%[36m Kdenlive               %R%[90m║%R%[32m 53.%C%[36m OpenShell                   %R%[90m║%R%[0m 
echo   %R%[90m║%R%[32m  2.%C%[33m Discord              %R%[90m║%R%[32m  28.%C%[36m OpenShot               %R%[90m║%R%[32m 54.%C%[36m Everything                  %R%[90m║%R%[0m 
echo   %R%[90m║%R%[32m  3.%C%[33m Whatsapp             %R%[90m║%R%[32m  29.%C%[36m Shotcut                %R%[90m║%R%[32m 55.%C%[36m TaskbarX                    %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m  4.%C%[33m Signal               %R%[90m║%R%[32m  30.%C%[36m Krita                  %R%[90m║%R%[32m 56.%C%[36m Stellarium                  %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m  5.%C%[33m Telegram             %R%[90m║%R%[32m  31.%C%[36m Gimp                   %R%[90m║%R%[32m 57.%C%[36m Recuva                      %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m  6.%C%[33m Zoom                 %R%[90m║%R%[32m  32.%C%[36m OBS Studio             %R%[90m║%R%[32m 58.%C%[36m AOMEI Partiton Assistans    %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m  7.%C%[36m EpicGames            %R%[90m║%R%[32m  33.%C%[36m ShareX                 %R%[90m║%R%[32m 59.%C%[33m Python                      %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m  8.%C%[36m Steam                %R%[90m║%R%[32m  34.%C%[36m Audacity               %R%[90m║%R%[32m 60.%C%[33m Phycharm                    %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m  9.%C%[36m GOG Galaxy           %R%[90m║%R%[32m  35.%C%[36m K-Lite Codec           %R%[90m║%R%[32m 61.%C%[33m Notepad++                   %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 10.%C%[36m Uplay                %R%[90m║%R%[32m  36.%C%[36m VLC Media Player       %R%[90m║%R%[32m 62.%C%[33m Visual Studio Code          %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 11.%C%[36m Origin               %R%[90m║%R%[32m  37.%C%[36m Aimp                   %R%[90m║%R%[32m 63.%C%[33m Github                      %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 12.%C%[36m Cheat Engine         %R%[90m║%R%[32m  38.%C%[36m File Converter         %R%[90m║%R%[32m 64.%C%[33m Git                         %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 13.%C%[36m Wemod                %R%[90m║%R%[32m  39.%C%[33m Free Download Manager  %R%[90m║%R%[32m 65.%C%[33m Blender                     %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 14.%C%[33m Google Chrome        %R%[90m║%R%[32m  40.%C%[33m İnt Download Manager   %R%[90m║%R%[32m 66.%C%[36m Process Hacker 2            %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 15.%C%[33m Mozilla Firefox      %R%[90m║%R%[32m  41.%C%[33m ByClick Downloader     %R%[90m║%R%[32m 67.%C%[36m                             %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 16.%C%[33m Brave                %R%[90m║%R%[32m  42.%C%[33m Qbittorrent            %R%[90m║%R%[32m 68.%C%[36m                             %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 17.%C%[33m Microsoft Edge       %R%[90m║%R%[32m  43.%C%[33m GlassWire              %R%[90m║%R%[32m 69.%C%[36m                             %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 18.%C%[33m Opera GX             %R%[90m║%R%[32m  44.%C%[33m TeamViewer             %R%[90m║%R%[32m 70.%C%[36m                             %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 19.%C%[37m ISLC                 %R%[90m║%R%[32m  45.%C%[33m AnyDesk                %R%[90m║%R%[32m 71.%C%[36m                             %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 20.%C%[37m MemReduct            %R%[90m║%R%[32m  46.%C%[33m Hamachi                %R%[90m║%R%[32m 72.%C%[36m                             %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 21.%C%[36m Libre Office         %R%[90m║%R%[32m  47.%C%[33m Stremio                %R%[90m║%R%[32m 73.%C%[37m OSU!                        %R%[90m║%R%[0m 
echo   %R%[90m║%R%[32m 22.%C%[36m Adobe Reader         %R%[90m║%R%[32m  48.%C%[36m MSI Afterburner        %R%[90m║%R%[32m 74.%C%[37m World Of Tanks              %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 23.%C%[36m PDF-XChange Editör   %R%[90m║%R%[32m  49.%C%[36m Hibit Uninstaller      %R%[90m║%R%[32m 75.%C%[37m Genshin Impact              %R%[90m║%R%[0m
echo   %R%[90m║%R%[32m 24.%C%[36m Calibre              %R%[90m║%R%[32m  50.%C%[36m Wise Care 365          %R%[90m║%R%[32m 76.%C%[37m League Of Legends%C%[90m[TR]       ║%R%[0m 
echo   %R%[90m║%R%[32m 25.%C%[33m 7 - Zip              %R%[90m║%R%[32m  51.%C%[36m Unlocker               %R%[90m║%R%[32m 77.%C%[37m League Of Legends%C%[90m[EUW]      ║%R%[0m
echo   %R%[90m║%R%[32m 26.%C%[33m WinRAR               %R%[90m║%R%[32m  52.%C%[36m SSD Booster            %R%[90m║%R%[32m 78.%C%[37m Valorant                    %R%[90m║%R%[0m
echo   %R%[90m╠══════════════════════════╩═════════════════════════════╩═════════════════════════════════╣%R%[0m
echo   %R%[90m║%R%[0m                             %R%[32m X.%R%[33m ^<^<^< Listeyi Daralt%R%[0m                                       %R%[90m║%R%[0m
echo   %R%[90m╚══════════════════════════════════════════════════════════════════════════════════════════╝%R%[0m
set /p $multi=%R%[96m  Çoklu Seçim %R%[90mx,y%R%[0m :

echo %$multi% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto menu
echo %$multi% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto menu	
(
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] ^| MultiSelect ^| Seçilenler : "%$multi%"
echo ---------------------------------------------------------------------------------------------------------------------------
) >> %Location%\Logs
cls
echo   %R%[90m╔══════════════════════════════════════════════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %version% %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m	
echo   %R%[90m║%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m Power:%R%[37m %powerr% %R%[0m
echo   %R%[90m╚══════════════════════════════════════════════════════════════════════════════════════════╝%R%[0m
echo    %C%[96m Seçilenler: %$multi%%C%[0m
echo 
:MultiSelect
FOR %%a in (%$multi%) do (Call :Download%%a)
goto menu2

:: ==============================================================================================================================

:Downloadd1
cls
echo   %R%[90m╔══════════════════════════════════════════════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %version% %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m	
echo   %R%[90m║%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m Power:%R%[37m %powerr% %R%[0m
echo   %R%[90m╠══════════════════════════════════════════════════════════════════════════════════════════╣%R%[0m
:: Aşağıdaki FOR döngüsüyle link.bat dosyası içinden programlara ait linkleri alıyorum.
:: Link sistemini katılımsız program hazırlama bölümünde kullandığım için ortak bir sistem olarak hazırladım.
:: Diğer download bölümleri de aynı şekilde çalışmaktadır.


::-----------------------
:: Eski sürümleri silme 

:: echo %R%[1;97m%R%[42m Eski sürümler kaldırılıyor%R%[0m
:: DEL /F /Q /A "%Logs%\aiodel.txt" > NUL 2>&1

:: For /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -Class Win32_Product | Select-Object -Property IdentifyingNumber,Name"') do echo %%a >> %Logs%\aiodel.txt

:: 2005 / 2008 / 2010 kaldır
:: FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2005" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
:: FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2008" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
:: FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2010" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn

:: 2012-2013 kaldır
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\vcredist_x86.exe"') do "%%a" /uninstall /quiet /norestart
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\vcredist_x64.exe"') do "%%a" /uninstall /quiet /norestart

:: 2015-2022 kaldır
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\VC_redist.x64.exe"') do "%%a" /uninstall /quiet /norestart
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\VC_redist.x86.exe"') do "%%a" /uninstall /quiet /norestart

:: Desktop runtime kaldır
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\windowsdesktop-runtime-*-win-x64.exe"') do "%%a" /uninstall /quiet /norestart
:: FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\windowsdesktop-runtime-*-win-x86.exe"') do "%%a" /uninstall /quiet /norestart

:: Java kaldır
:: For /f "tokens=1" %%a in ('Findstr /C:"Java" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn

:: OpenAL kaldır
:: "%ProgramFiles(x86)%\OpenAL\oalinst.exe" /U /SILENT

:: XNA Framework 4.0 kaldır
:: FOR /F "tokens=1" %%a in ('Findstr /C:"XNA Framework" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
::-----------------------
:Download1
echo    %R%[1;97m%R%[42m All in One Runtimes yükleniyor... %R%[0m
Dism /Online /Get-Capabilities /format:table > %Logs%\Capabilities.aio.txt 
findstr /C:"NetFX3~~~~" %Logs%\Capabilities.aio.txt | findstr /C:"installed" > NUL 2>&1
	if %errorlevel%==1 (Dism /Online /Enable-Feature /Featurename:NetFx3 /All /Quiet /NoRestart)

findstr /C:"IIS-ASPNET45" %Logs%\Capabilities.aio.txt | findstr /C:"Enabled" > NUL 2>&1
	if %errorlevel%==1 (Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All /Quiet /NoRestart)

findstr /C:"DirectPlay" %Logs%\Capabilities.aio.txt | findstr /C:"Enabled" > NUL 2>&1
	if %errorlevel%==1 (Dism /Online /Enable-Feature /FeatureName:DirectPlay /All /Quiet /NoRestart)

::-----------------------
:: Yükleme bölümü
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
FOR /F "tokens=1" %%i in ('FIND "Edge.msi" %Location%\Extra\Links.txt') do set link=%%i
Call :wget "%link%" Edge.msi /qn
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
echo  %R%[90m╔════════════════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m                    Windows / Store Onar                    %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╚════════════════════════════════════════════════════════════╝%R%[0m
Call :Logss "WindowsRepair" "Windows onarma seçeneği kullanıldı."

echo %R%[92m   Sfc /scannow komutu çalışıyor...%R%[0m
sfc /scannow

echo %R%[92m   DISM /Online /Cleanup-Image /RestoreHealth komutu çalıştırılıyor...%R%[0m
DISM /Online /Cleanup-Image /RestoreHealth

echo %R%[92m   WinSxS Temizleniyor...%R%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup 

echo %R%[92m   SoftwareDistribution temizleniyor...%R%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1

echo %R%[92m   Microsoft Store onarılıyor...%R%[0m
:: Market bölümününün sorunsuz çalışması için reg kayıtlarını düzenler
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "RemoveWindowsStore" "0"

:: AppX Deployment Service (Dağıtım Hizmeti)
sc config AppXSvc start= demand > NUL 2>&1
net start AppXSvc > NUL 2>&1
:: Yetenek Erişim Yöneticisi Hizmeti
sc config camsvc start= demand > NUL 2>&1
net start camsvc > NUL 2>&1
:: Şifreleme Hizmetleri
sc config cryptsvc start= auto > NUL 2>&1
net start cryptsvc > NUL 2>&1
:: Windows Update
sc config wuauserv start= demand > NUL 2>&1
net start wuauserv > NUL 2>&1
:: Depolama Hizmeti
sc config StorSvc start= demand > NUL 2>&1
net start StorSvc > NUL 2>&1
:: Arka Plan Akıllı Aktarım Hizmeti
sc config bits start= auto > NUL 2>&1
net start bits > NUL 2>&1
:: Windows Modül Yükleyici
sc config trustedinstaller start= demand > NUL 2>&1
net start trustedinstaller > NUL 2>&1
net start ClipSVC > NUL 2>&1

Call :delete2 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" "DODownloadMode" & :: Teslimat Optimizasyonu BITS hizmeti olarak ayarlanıyor...

echo %R%[92m   DLL dosyaları kontrol ediliyor...%R%[0m

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

echo %R%[92m İşlem tamamlandı%R%[0m
set /p value=%R%[92m Menu için%R%[96m "X"%R%[92m Yeniden başlatmak için%R%[96m "R"%R%[92m tuşlayın : %R%[0m
	if %value%==R (shutdown -r -f -t 0)
	if %value%==r (shutdown -r -f -t 0)
	if %value%==x goto menu
	if %value%==X goto menu
) else 
	goto menu
goto :eof


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:PCTemizle
cls
mode con cols=64 lines=30
echo  %R%[90m╔════════════════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m                       PC Temizleniyor                      %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╚════════════════════════════════════════════════════════════╝%R%[0m
Call :Logss "PCTemizle" "PC Temizle seçeği çalıştırıldı."
:: echo %R%[92m   Eski tarihli dosya geçmişi temizleniyor...%R%[0m
:: FhManagew.exe -cleanup 360 -quiet > NUL 2>&1

echo %R%[92m   ico ve küçük resim belleği temizleniyor...%R%[0m
taskkill /f /IM explorer.exe > NUL 2>&1
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
Start explorer.exe > NUL 2>&1

echo %R%[92m   Temp dosyası temizleniyor...%R%[0m
DEL /F /Q /A %temp%\* > NUL 2>&1
RD /S /Q %temp%\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Temp\* > NUL 2>&1
:: %PowerRun% DEL /F /Q /A %windir%\temp\* > NUL 2>&1

echo %R%[92m   SoftwareDistribution temizleniyor...%R%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1

echo %R%[92m   Prefetch temizleniyor...%R%[0m
DEL /F /Q /A %windir%\prefetch\* > NUL 2>&1

:: echo %R%[92m   Hata Raporu Dosyaları temizleniyor...%R%[0m
:: DEL /F /Q /A %programdata%\Microsoft\Windows\WER\ReportQueue\* > NUL 2>&1

:: echo %R%[92m   Microsoft Edge önbelleği temizleniyor...%R%[0m
DEL /F /Q /A %localappdata%\Microsoft\Edge\User Data\Default\Service Worker\CacheStorage\* > NUL 2>&1

echo %R%[92m   Ekran Kartı Driver kalıntıları temizleniyor...%R%[0m
RD /S /Q %systemdrive%\AMD > NUL 2>&1
RD /S /Q %systemdrive%\NVIDIA > NUL 2>&1
RD /S /Q %systemdrive%\INTEL > NUL 2>&1

echo %R%[92m   WinSxS temizleniyor...%R%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup

:: echo %R%[92m   Disk temizleme işlemi yapılıyor...%R%[0m
:: cleanmgr /verylowdisk /sagerun:5

echo %R%[92m   İşlem tamamlandı%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Fat32toNTFS
mode con cols=63 lines=25
title Fat32 to NTFS dönüştürme / OgnitorenKs
echo   %R%[90m╔══════════════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m                      Fat32 to NTFS                       %R%[0m%R%[90m║%R%[0m
echo   %R%[90m╠══════════════════════════════════════════════════════════╣%R%[0m
	echo       %C%[32mHarf      İsim%C%[0m
for /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property DeviceID,VolumeName"') do (
   echo       %%a)
   echo       %R%[32m X.%R%[36m Menü%R%[0m
echo   %R%[90m╚══════════════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  Dönüştürülecek Disk Harfi:%C%[0m
	if %value%==X GOTO menu
	if %value%==x GOTO menu
Call :Logss "Fat32toNTFS" "%value% diski NTFS'ye dönüştürüldü."
convert %value%: /fs:NTFS /v
goto :eof

:stop
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:Slmgrvbs
cls
mode con cols=55 lines=16
title Lisans Yönetimi \ OgnitorenKs
echo 
echo   %R%[90m╔═════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m          Lisans Yönetimi / SLMGR.VBS            %R%[0m%R%[90m║%R%[0m
echo   %R%[90m╠═════════════════════════════════════════════════╣%R%[0m
echo   %R%[90m║%R%[0m  %R%[32m 1.%C%[33m Lisans Gir %C%[90m[ipk]                           ║%R%[0m
echo   %R%[90m║%R%[0m  %R%[32m 2.%C%[33m Lisans Durumu %C%[90m[dli]                        ║%R%[0m
echo   %R%[90m║%R%[0m  %R%[32m 3.%C%[33m Lisans Durumu Detaylı %C%[90m[dlv]                ║%R%[0m
echo   %R%[90m║%R%[0m  %R%[32m 4.%C%[33m Lisans Süresini Öğren %C%[90m[xpr]                ║%R%[0m
echo   %R%[90m║%R%[0m  %R%[32m 5.%C%[33m Lisans Sil %C%[90m[upk]                           ║%R%[0m
echo   %R%[90m║%R%[0m  %R%[32m 6.%C%[33m Lisans Süre Sıfırla %C%[90m[rearm]                ║%R%[0m
echo   %R%[90m║%R%[0m  %R%[32m X.%R%[36m Menü%R%[0m                                       %R%[90m║%R%[0m
echo   %R%[90m╚═════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
	if %value%==1 (Call :slmgrlisans)
	if %value%==2 (Call :Logss "SLMGR.VBS" "Lisans Durumu, kontrol edildi."
				   slmgr /dli&goto Slmgrvbs)		   
	if %value%==3 (Call :Logss "SLMGR.VBS" "Lisans Durumu Detaylı, kontrol edildi."
				   slmgr /dlv&goto Slmgrvbs)
	if %value%==4 (Call :Logss "SLMGR.VBS" "Lisans Süresini Öğren, çalıştırıldı."
				   slmgr /xpr&goto Slmgrvbs)
	if %value%==5 (Call :Logss "SLMGR.VBS" "Lisans Sil, çalıştırıldı."
				   slmgr /upk&goto Slmgrvbs)
	if %value%==6 (Call :Logss "SLMGR.VBS" "Lisans Süre Sıfırla, çalıştırıldı."
				   slmgr /rearm&goto Slmgrvbs)
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto Slmgrvbs

:slmgrlisans
cls
echo   %R%[90m╔═════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m            Manuel Lisanslama Hizmeti            %R%[0m%R%[90m║%R%[0m
echo   %R%[90m╠═════════════════════════════════════════════════╣%R%[0m
set /p value= %R%[92m   Lisans : %R%[0m
	if %value%==X (goto :eof)
	if %value%==x (goto :eof)
echo [%date% - %time%] ^| Slmgr.vbs ^| Slmgr Lisans(ipk), Windows lisanslandı >> %Location%\Logs
slmgr /ipk %value%

goto :eof

:stop
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

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

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:stop
:servicesmanagement
cls
mode con cols=55 lines=36
Call :PowerRun
title Hizmet Yönetimi / OgnitorenKs
Dism /Online /Get-Features /format:table > %Logs%\servvalue.txt
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" > NUL 2>&1
	if %errorlevel%==1 (Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" HibernateEnabled 1)
reg query "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" /v "SearchOrderConfig" > NUL 2>&1
	if %errorlevel%==1 (Call :dword "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" 1)
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m                  Hizmet Yönetimi                  %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║             %R%[32m%R%[0m:%R%[36m Açık        %R%[100m %R%[0m:%R%[36m Kapalı              %R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (BthAvctpSvc bthserv BluetoothUserService BTAGService) do (Call :serv.check "%%b")
echo  %R%[90m║%R%[0m   %R%[32m 1%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Bluetooth hizmeti%C%[0m                    %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "Spooler"
echo  %R%[90m║%R%[0m   %R%[32m 2%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Yazıcı hizmeti%C%[0m                       %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (TapiSrv PhoneSvc) do (Call :serv.check "%%b")
echo  %R%[90m║%R%[0m   %R%[32m 3%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Telefon hizmeti%C%[0m                      %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "DusmSvc"
echo  %R%[90m║%R%[0m   %R%[32m 4%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Tarifeli ağlar hizmeti%C%[0m               %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (iphlpsvc IpxlatCfgSvc) do (Call :serv.check "%%b")
echo  %R%[90m║%R%[0m   %R%[32m 5%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m IP yardımcısı (IPv6)%C%[0m                 %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (icssvc SharedAccess ALG) do (Call :serv.check "%%b")
echo  %R%[90m║%R%[0m   %R%[32m 6%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Mobil Etkin Nokta (Hotspot)%C%[0m          %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "RMSvc"
echo  %R%[90m║%R%[0m   %R%[32m 7%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Radyo ve Uçak modu hizmeti%C%[0m           %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (WSearch ConsentUxUserSvc DevicePickerUserSvc DevicesFlowUserSvc PNRPAutoReg PNRPsvc p2psvc p2pimsvc upnphost SSDPSRV TermService UmRdpService SessionEnv) do (Call :serv.check "%%b")
echo  %R%[90m║%R%[0m   %R%[32m 8%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Uzak Masaüstü/Akış/Ağ hizmetleri%C%[0m     %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "WSearch"
echo  %R%[90m║%R%[0m   %R%[32m 9%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Windows Search%C%[0m                       %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "wcncsvc"
echo  %R%[90m║%R%[0m  %R%[32m 10%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Windows Şimdi Bağlan(WPS) hizmeti%C%[0m    %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (FrameServer WiaRpc StiSvc) do (Call :serv.check "%%b")
echo  %R%[90m║%R%[0m  %R%[32m 11%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Tarayıcı ve Kamera hizmetleri%C%[0m        %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "wisvc"
echo  %R%[90m║%R%[0m  %R%[32m 12%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Insider hizmeti%C%[0m                      %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "WbioSrvc"
echo  %R%[90m║%R%[0m  %R%[32m 13%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Biyometrik hizmeti%C%[0m                   %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m
FOR /F "tokens=5" %%i in ('FIND "Caption" %Logs%\OS.txt') do SET caption3=%%i
	if %caption3%==11 (Call :serv.check "PenService")
	if %caption3%==10 (Call :serv.check "TabletInputService")
echo  %R%[90m║%R%[0m  %R%[32m 14%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Kalem ve Dokunmatik hizmeti%C%[0m          %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (SDRSVC VSS swprv wbengine fhsvc) do (Call :serv.check "%%b")
echo  %R%[90m║%R%[0m  %R%[32m 15%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Sistem Geri yükleme hizmeti%C%[0m          %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "SysMain"
echo  %R%[90m║%R%[0m  %R%[32m 16%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Sysmain (Hızlı Getir)%C%[0m                %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
echo  %R%[90m║%R%[0m  %R%[32m 17%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Hızlı Başlat (Hibernate)%C%[0m             %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (lfsvc NaturalAuthentication) do (Call :serv.check "%%b")
echo  %R%[90m║%R%[0m  %R%[32m 18%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Konum hizmeti%C%[0m                        %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&findstr /i "Hyper-V" %Logs%\servvalue.txt | findstr /i "Disabled" > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
echo  %R%[90m║%R%[0m  %R%[32m 19%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Hyper-V hizmeti%C%[0m                      %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (BcastDVRUserService XboxGipSvc XboxNetApiSvc XblAuthManager XblGameSave DoSvc) do (Call :serv.check "%%b")
echo  %R%[90m║%R%[0m  %R%[32m 20%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Xbox hizmeti%C%[0m                         %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "BDESVC"
echo  %R%[90m║%R%[0m  %R%[32m 21%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Bitlocker Sürücü şifreleme hizmeti%C%[0m   %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc) do (Call :serv.check "%%b")
echo  %R%[90m║%R%[0m  %R%[32m 22%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Karma Gerçeklik hizmeti (VR)%C%[0m         %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&reg query "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" /v "SearchOrderConfig" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
echo  %R%[90m║%R%[0m  %R%[32m 23%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Driver Yükle/Güncelle hizmeti%C%[0m        %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m&Powershell -command "Get-MMAgent | Select-Object MemoryCompression| FL" | findstr /i False > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
echo  %R%[90m║%R%[0m  %R%[32m 24%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Bellek Sıkıştırma hizmeti%C%[0m            %R%[90m║%R%[0m
::
set servalue=%R%[100m %R%[0m
reg query "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v  "ValueMax" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
echo  %R%[90m║%R%[0m  %R%[32m 25%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Core Parking (CPU Çekirdek Uyku Modu)%C%[0m%R%[90m║%R%[0m
echo  %R%[90m║%R%[0m        %R%[32m X.%R%[36m Menü%R%[0m                                   %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==1a (Call :serv.1.bluetooth start demand açılıyor)
	if %value%==1A (Call :serv.1.bluetooth start demand açılıyor)
	if %value%==1K (Call :serv.1.bluetooth stop disabled kapatılıyor)
	if %value%==1k (Call :serv.1.bluetooth stop disabled kapatılıyor)
	if %value%==2a (Call :serv.2.yazici start demand auto açılıyor)
	if %value%==2A (Call :serv.2.yazici start demand auto açılıyor)
	if %value%==2K (Call :serv.2.yazici stop disabled disabled kapatılıyor)
	if %value%==2k (Call :serv.2.yazici stop disabled disabled kapatılıyor)
	if %value%==3a (Call :serv.3.phone start demand demand açılıyor)
	if %value%==3A (Call :serv.3.phone start demand demand açılıyor)
	if %value%==3K (Call :serv.3.phone stop disabled demand kapatılıyor)
	if %value%==3k (Call :serv.3.phone stop disabled demand kapatılıyor)
	if %value%==4a (Call :serv.4.tarifeli start auto açılıyor)
	if %value%==4A (Call :serv.4.tarifeli start auto açılıyor)
	if %value%==4K (Call :serv.4.tarifeli stop disabled kapatılıyor)
	if %value%==4k (Call :serv.4.tarifeli stop disabled kapatılıyor)
	if %value%==5a (Call :serv.5.ipyardimci start demand auto açılıyor)
	if %value%==5A (Call :serv.5.ipyardimci start demand auto açılıyor)
	if %value%==5K (Call :serv.5.ipyardimci stop disabled disabled kapatılıyor)
	if %value%==5k (Call :serv.5.ipyardimci stop disabled disabled kapatılıyor)
	if %value%==6a (Call :serv.6.hotspot start demand açılıyor)
	if %value%==6A (Call :serv.6.hotspot start demand açılıyor)
	if %value%==6K (Call :serv.6.hotspot stop disabled kapatılıyor)
	if %value%==6k (Call :serv.6.hotspot stop disabled kapatılıyor)
	if %value%==7a (Call :serv.7.ucakmodu start demand açılıyor)
	if %value%==7A (Call :serv.7.ucakmodu start demand açılıyor)
	if %value%==7K (Call :serv.7.ucakmodu stop disabled kapatılıyor)
	if %value%==7k (Call :serv.7.ucakmodu stop disabled kapatılıyor)
	if %value%==8a (Call :serv.8.akis start demand auto açılıyor)
	if %value%==8A (Call :serv.8.akis start demand auto açılıyor)
	if %value%==8K (Call :serv.8.akis stop disabled disabled kapatılıyor)
	if %value%==8k (Call :serv.8.akis stop disabled disabled kapatılıyor)
	if %value%==9a (Call :serv.9.wsearch start auto açılıyor)
	if %value%==9A (Call :serv.9.wsearch start auto açılıyor)
	if %value%==9K (Call :serv.9.wsearch stop disabled kapatılıyor)
	if %value%==9k (Call :serv.9.wsearch stop disabled kapatılıyor)
	if %value%==10a (Call :serv.10.wps start demand açılıyor)
	if %value%==10A (Call :serv.10.wps start demand açılıyor)
	if %value%==10K (Call :serv.10.wps stop disabled kapatılıyor)
	if %value%==10k (Call :serv.10.wps stop disabled kapatılıyor)
	if %value%==11a (Call :serv.11.camera start demand açılıyor)
	if %value%==11A (Call :serv.11.camera start demand açılıyor)
	if %value%==11K (Call :serv.11.camera stop disabled kapatılıyor)
	if %value%==11k (Call :serv.11.camera stop disabled kapatılıyor)
	if %value%==12a (Call :serv.12.insider start demand açılıyor)
	if %value%==12A (Call :serv.12.insider start demand açılıyor)
	if %value%==12K (Call :serv.12.insider stop disabled kapatılıyor)
	if %value%==12k (Call :serv.12.insider stop disabled kapatılıyor)
	if %value%==13a (Call :serv.13.biyometrik start demand açılıyor)
	if %value%==13A (Call :serv.13.biyometrik start demand açılıyor)
	if %value%==13K (Call :serv.13.biyometrik stop disabled kapatılıyor)
	if %value%==13k (Call :serv.13.biyometrik stop disabled kapatılıyor)
	if %value%==14a (Call :serv.14.dokunmatik start demand açılıyor)
	if %value%==14A (Call :serv.14.dokunmatik start demand açılıyor)
	if %value%==14K (Call :serv.14.dokunmatik stop disabled kapatılıyor)
	if %value%==14k (Call :serv.14.dokunmatik stop disabled kapatılıyor)
	if %value%==15a (Call :serv.15.sistemgeriyukleme start demand ENABLE 0 açılıyor)
	if %value%==15A (Call :serv.15.sistemgeriyukleme start demand ENABLE 0 açılıyor)
	if %value%==15K (Call :serv.15.sistemgeriyukleme stop disabled DISABLE 1 kapatılıyor)
	if %value%==15k (Call :serv.15.sistemgeriyukleme stop disabled DISABLE 1 kapatılıyor)
	if %value%==16a (Call :serv.16.sysmain start auto açılıyor)
	if %value%==16A (Call :serv.16.sysmain start auto açılıyor)
	if %value%==16K (Call :serv.16.sysmain stop disabled kapatılıyor)
	if %value%==16k (Call :serv.16.sysmain stop disabled kapatılıyor)
	if %value%==17a (Call :serv.17.hibernate on 1 açılıyor)
	if %value%==17A (Call :serv.17.hibernate on 1 açılıyor)
	if %value%==17K (Call :serv.17.hibernate off 0 kapatılıyor)
	if %value%==17k (Call :serv.17.hibernate off 0 kapatılıyor)
	if %value%==18a (Call :serv.18.Location start demand Allow 1 "Call :delete2" "DisableLocation" açılıyor)
	if %value%==18A (Call :serv.18.Location start demand Allow 1 "Call :delete2" "DisableLocation" açılıyor)
	if %value%==18K (Call :serv.18.Location stop disabled Deny 0 "Call :dword" "DisableLocation 1" kapıtılıyor)
	if %value%==18k (Call :serv.18.Location stop disabled Deny 0 "Call :dword" "DisableLocation 1" kapıtılıyor)
	if %value%==19a (Call :serv.19.hyperv demand Enable For 1 on açılıyor)
	if %value%==19A (Call :serv.19.hyperv demand Enable For 1 on açılıyor)
	if %value%==19K (Call :serv.19.hyperv disabled Disable "::" 0 off kapatılıyor)
	if %value%==19k (Call :serv.19.hyperv disabled Disable "::" 0 off kapatılıyor)
	if %value%==20a (Call :serv.20.xbox start demand 1 0 "Call :delete2" açılıyor)
	if %value%==20A (Call :serv.20.xbox start demand 1 0 "Call :delete2" açılıyor)
	if %value%==20K (Call :serv.20.xbox stop disabled 0 2 "Call :dword" kapatılıyor)
	if %value%==20k (Call :serv.20.xbox stop disabled 0 2 "Call :dword" kapatılıyor)
	if %value%==21a (Call :serv.21.bitlocker start demand açılıyor)
	if %value%==21A (Call :serv.21.bitlocker start demand açılıyor)
	if %value%==21K (Call :serv.21.bitlocker stop disabled kapatılıyor)
	if %value%==21k (Call :serv.21.bitlocker stop disabled kapatılıyor)
	if %value%==22a (Call :serv.22.mixedreality demand açılıyor)
	if %value%==22A (Call :serv.22.mixedreality demand açılıyor)
	if %value%==22K (Call :serv.22.mixedreality disabled kapatılıyor)
	if %value%==22k (Call :serv.22.mixedreality disabled kapatılıyor)
	if %value%==23a (Call :serv.23.driverupdate 0 1 açılıyor)
	if %value%==23A (Call :serv.23.driverupdate 0 1 açılıyor)
	if %value%==23K (Call :serv.23.driverupdate 1 0 kapatılıyor)
	if %value%==23k (Call :serv.23.driverupdate 1 0 kapatılıyor)
	if %value%==24a (Call :serv.24.memorycompression Enable açılıyor)
	if %value%==24A (Call :serv.24.memorycompression Enable açılıyor)
	if %value%==24K (Call :serv.24.memorycompression Disable kapatılıyor)
	if %value%==24k (Call :serv.24.memorycompression Disable kapatılıyor)
	if %value%==25a (Call :serv.25.coreparking 100 "Call :delete" "Call :delete2" açılıyor)
	if %value%==25A (Call :serv.25.coreparking 100 "Call :delete" "Call :delete2" açılıyor)
	if %value%==25K (Call :serv.25.coreparking 0 "Call :dword" "Call :dword" kapatılıyor)
	if %value%==25k (Call :serv.25.coreparking 0 "Call :dword" "Call :dword" kapatılıyor)
	if %value%==x goto menu
	if %value%==X goto menu
) else 
	goto servicesmanagement
	
:serv.check
FOR %%a in (%~1) do (reg query "HKLM\SYSTEM\CurrentControlSet\Services\%%a" /v "Start" | Findstr /i 4 > NUL 2>&1)
	if %errorlevel%==1 (set servalue=%R%[32m%R%[0m)
goto :eof

:serv.1.bluetooth
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Bluetooth hizmeti %3. >> %Location%\Logs
echo   %C%[96mBluetooth hizmeti %3 ...%C%[0m
:: Bluetooth (AVCTP hizmeti) | Bluetooth destek hizmeti | Bluetooth kullanıcı desteği hizmeti \ Ses ağ geçidi hizmeti
FOR %%a in (BthAvctpSvc bthserv BluetoothUserService BTAGService) do (
	sc config %%a start= %2 > NUL 2>&1
	sc %1 %%a > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.2.yazici
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Yazıcı hizmeti %4. >> %Location%\Logs
echo   %C%[96mYazıcı hizmetleri %4 ...%C%[0m
sc config Spooler start= %3 > NUL 2>&1
sc %1 Spooler > NUL 2>&1
:: Uzak Masaüstü Hizmetleri Kullanıcı Modu Bağlantı Noktası Yeniden Yönlendiricisi
sc config UmRdpService start= %2 > NUL 2>&1
sc %1 UmRdpService > NUL 2>&1
DEL /F /Q /A %windir%\System32\spool\PRINTERS\* > NUL 2>&1
::----------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : auto     | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled | %4 : kapatılıyor
::----------------------------------------------------------------------
goto :eof

:serv.3.phone
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Telefon hizmeti %4. >> %Location%\Logs
echo   %C%[96mTelefon hizmeti %4 ...%C%[0m
:: Telefon | Telefon Hizmeti
FOR %%a in (TapiSrv PhoneSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	sc %1 %%a > NUL 2>&1)
:: Bluetooth (AVCTP hizmeti) | Bluetooth destek hizmeti | Bluetooth kullanıcı desteği hizmeti \ Ses ağ geçidi hizmeti
FOR %%a in (BthAvctpSvc bthserv BluetoothUserService BTAGService) do (sc config %%a start= %3 > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : demand  | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : demand  | %4 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.4.tarifeli
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Tarifeli ağlar hizmeti %3. >> %Location%\Logs
echo   %C%[96mTarifeli ağlar hizmeti %3 ...%C%[0m
:: Veri kullanımı
::  Arkaplan verilierni ve ağ kullanımını sınırlar
sc config DusmSvc start= %2 > NUL 2>&1
sc %1 DusmSvc > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto     | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.5.ipyardimci
echo [%date% - %time%] ^| Hizmetleri Yönet ^| IP yardımcı hizmeti %4. >> %Location%\Logs
echo   %C%[96mIP yardımcısı hizmeti %4 ...%C%[0m
:: IP Yardımcısı | IP Çeviri Yapılandırma Hizmeti
sc config iphlpsvc start= %3 > NUL 2>&1
sc %1 iphlpsvc > NUL 2>&1
sc config IpxlatCfgSvc start= %2 > NUL 2>&1
sc %1 IpxlatCfgSvc > NUL 2>&1
::----------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : auto     | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled | %4 : kapatılıyor
::----------------------------------------------------------------------
goto :eof

:serv.6.hotspot
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Mobil Etkin Nokta hizmeti %3. >> %Location%\Logs
echo   %C%[96mMobil etkin nokta hizmeti %3 ...%C%[0m
:: Windows Mobil Etkin Nokta Hizmeti | Internet Bağlantısı Paylaşımı (ICS) | Uygulama katmanı ağ geçidi hizmeti
FOR %%a in (icssvc SharedAccess ALG) do (
	sc config %%a start= %2 > NUL 2>&1
	sc %1 %%a > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.7.ucakmodu
:: Windows 11'de ağ simgesinde sorun yaşanmaması için hizmetin kapatılması engellendi.
echo %value% | Findstr /i "d" > NUL 2>&1
	if %errorlevel%==0 (FOR /F "tokens=5" %%i in ('FIND "Caption" %Logs%\OS.txt') do SET caption3=%%i)
	if %errorlevel%==1 (set caption3=10)

echo %caption3% > NUL 2>&1
	if %caption3%==11 (echo   %C%[91Windows 11'de bu hizmet kapatılamaz.%C%[0m
					   timeout /t 3 /nobreak > NUL
					   goto servicesmanagement)

echo [%date% - %time%] ^| Hizmetleri Yönet ^| Radyo ve Uçak Modu hizmeti %3. >> %Location%\Logs
echo   %C%[96mRadyo yönetim ve uçak modu hizmeti %3 ...%C%[0m
::  Radyo yönetimi ve uçak modu hizmeti
sc config RMSvc start= %2 > NUL 2>&1
sc %1 RMSvc > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.8.akis
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Akış deneyimi hizmeti %4. >> %Location%\Logs
echo   %C%[96mUzak Masaüstü/Akış hizmetleri %4 ...%C%[0m
:: ConsentUx kullanıcı hizmeti 
%PowerRun% sc config ConsentUxUserSvc start= %2
%PowerRun% net %1 ConsentUxUserSvc
:: Miracast, DLNA kullanıcı arabirimini
%PowerRun% sc config DevicePickerUserSvc start= %2
%PowerRun% net %1 DevicePickerUserSvc
:: Cihaz Akışı
%PowerRun% sc config DevicesFlowUserSvc start= %2
%PowerRun% net %1 DevicesFlowUserSvc
:: WMP ağ paylaşım hizmeti
%PowerRun% sc config WMPNetworkSvc start= %2
%PowerRun% net %1 WMPNetworkSvc
::PNRP Makine adı yayın hizmeti
%PowerRun% sc config PNRPAutoReg start= %2
%PowerRun% net %1 PNRPAutoReg
:: Eş adı çözümleme protokolü
%PowerRun% sc config PNRPsvc start= %2
%PowerRun% net %1 PNRPsvc
:: Eş ağ gruplandırma
%PowerRun% sc config p2psvc start= %2
%PowerRun% net %1 p2psvc
:: Eşler arası ağ oluşturma kimlik yöneticisi
%PowerRun% sc config p2pimsvc start= %2
%PowerRun% net %1 p2pimsvc
:: UPNP aygıt ana makinesi
%PowerRun% sc config upnphost start= %2
%PowerRun% net %1 upnphost
:: Upnp Aygıt ana bilgisyarı (Ağdaki cihazları bulur)
%PowerRun% sc config SSDPSRV start= %2
%PowerRun% net %1 SSDPSRV
:: Uzak masaüstü hizmetleri
%PowerRun% sc config TermService start= %2
%PowerRun% net %1 TermService
:: Uzak Masaüstü Hizmetleri Kullanıcı Modu Bağlantı Noktası Yeniden Yönlendiricisi
%PowerRun% sc config UmRdpService start= %2
%PowerRun% net %1 UmRdpService
:: Uzak Masaüstü Yapılandırması
%PowerRun% sc config SessionEnv start= %2
%PowerRun% net %1 SessionEnv
:: Windows Search
sc config WSearch start= %3 > NUL 2>&1
sc %1 WSearch > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Media Player\*.wmdb > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand    | %3 : auto     | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled  | %3 : disabled | %4 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.9.wsearch
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Wsearch hizmeti %3. >> %Location%\Logs
echo   %C%[96mWindows Search hizmeti %3 ...%C%[0m
:: Windows Search
sc config WSearch start= %2 > NUL 2>&1
sc %1 WSearch > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto     | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.10.wps
echo [%date% - %time%] ^| Hizmetleri Yönet ^| WPS hizmeti %3. >> %Location%\Logs
echo   %C%[96mWindows Şimdi Bağlan hizmeti %3 ...%C%[0m
:: Windows Şimdi Bağlan - Yapılandırma Dosyası Kaydedici
::  WPS protokolünün uygulanmasını sağlar.
sc config wcncsvc start= %2 > NUL 2>&1
sc %1 wcncsvc > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.11.camera
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Tarayıcı ve Kamera hizmeti %3. >> %Location%\Logs
echo   %C%[96mTarayıcı ve Kamera hizmetleri %3 ...%C%[0m
:: Windows Kamera çerçeve sunucusu | Windows Kamera Çerçeve Sunucusu | Resim alma olayları (Windows Görüntü Alma-WIA) | Windows Resim Alma (Windows Görüntü Alma (WIA))
FOR %%a in (FrameServer FrameServerMonitor WiaRpc StiSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	sc %1 %%a > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.12.insider
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Insider hizmeti %3. >> %Location%\Logs
echo   %C%[96mWindows Insider hizmeti %3 ...%C%[0m
:: Windows Insider Hizmeti
sc config wisvc start= %2 > NUL 2>&1
sc %1 wisvc > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.13.biyometrik
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Biyometrik hizmeti %3. >> %Location%\Logs
echo   %C%[96mWindows Biyometrik hizmeti %3 ...%C%[0m
:: Windows Biyometrik Hizmeti
sc config WbioSrvc start= %2 > NUL 2>&1
sc %1 WbioSrvc > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.14.dokunmatik
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Dokunmatik Klavye ve Kalem hizmeti %3. >> %Location%\Logs
echo   %C%[96mDokunmatik Klavye ve Kalem hizmeti %3 ...%C%[0m
:: Kalem servisi
sc config PenService start= %2 > NUL 2>&1
sc %1 PenService > NUL 2>&1
::Dokunmatik Klavyeyi ve el yazısı paneli hizmeit
sc config TabletInputService start= %2 > NUL 2>&1
sc %1 TabletInputService > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.15.sistemgeriyukleme
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Sistem Geri yükleme hizmeti %5. >> %Location%\Logs
echo   %C%[96mSistem geri yükleme hizmeti %5 ...%C%[0m
:: Windows Yedekleme ve Geri Yükleme hizmeti | Birim Gölge kopyası | Microsoft Yazılımı Gölge Kopya Sağlayıcısı | Blok Düzeyinde Yedekleme Altyapı Hizmeti | Dosya geçmişi hizmeti
FOR %%a in (SDRSVC VSS swprv wbengine fhsvc) do (
	sc config %%a start= %2 > NUL 2>&1
	sc %1 %%a > NUL 2>&1)
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /%3 > NUL 2>&1
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableSR" "%~4"
::-------------------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : ENABLE  | %~4 : 0 | %5 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %~4 : 1 | %5 : kapatılıyor
::-------------------------------------------------------------------------------
goto :eof

:serv.16.sysmain
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Hızlı Getir^(Sysmain^) hizmeti %3. >> %Location%\Logs
echo   %C%[96mHızlı Getir hizmeti %3 ...%C%[0m
sc config SysMain start= %2 > NUL 2>&1
sc %1 SysMain > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.17.hibernate
::Hızlı başlangıç
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Hızlı başlangıç^(Hibernate^) hizmeti %3. >> %Location%\Logs
echo   %C%[96mHızlı başlat %3 ...%C%[0m
powercfg /hibernate %1
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" "%~2"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" "%~2"
::-------------------------------------------------------
::    Aç = %1 : On  | %~2 : 1  | %3 : açılıyor
:: Kapat = %1 : Off | %~2 : 0  | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.18.Location
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Konum hizmeti %7. >> %Location%\Logs
echo   %C%[96mKonum hizmeti %7 ...%C%[0m
%~5 "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" %~6 > NUL 2>&1
Call :sz "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\Location" "Value" "%~3"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowLocation" "%~4" 
:: Natural Kimlik Doğrulama
sc config NaturalAuthentication start= %2 > NUL 2>&1
sc %1 NaturalAuthentication > NUL 2>&1
:: Coğrafi Konum Hizmeti
sc config lfsvc start= %2 > NUL 2>&1
sc %1 lfsvc > NUL 2>&1
::----------------------------------------------------------------------------------------------------------------------------------------------
::    Aç = %1 : start  | %2 : demand    | %~3 : Allow |  %~4 : 1 | %5 : Call :delete2  | %~6 : "DisableLocation"     | %7 : açılıyor
:: Kapat = %1 : stop   | %2 : disabled  | %~3 : Deny  |  %~4 : 0 | %5 : Call :dword    | %~6 : "DisableLocation 1"   | %7 : kapatılıyor
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

::serv.19.mediaplayer
echo [%date% - %time%] ^| Hizmetleri Yönet ^| MediaPlayer hizmeti %4. >> %Location%\Logs
:: Windows Media Player
echo   %C%[96mWindows Media Player %4 ...%C%[0m
Dism /Online /%3-Feature /FeatureName:MediaPlayback /Quiet /NoRestart
Dism /online /%3-Feature /FeatureName:WindowsMediaPlayer /Quiet /NoRestart
:: Windows Media Player Ağ Paylaşım Hizmeti
sc config WMPNetworkSvc start= %2 > NUL 2>&1
sc %1 WMPNetworkSvc > NUL 2>&1
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : ENABLE  | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %4 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:serv.19.hyperv
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Hyper-V hizmeti %6. >> %Location%\Logs
echo   %C%[96mHyper-V hizmeti %6 ...%C%[0m
%~3 /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-All /Quiet /NoRestart
FOR %%a in (HvHost vmicvss vmicguestinterface vmicshutdown vmicvmsession vmicheartbeat vmicrdv vmickvpexchange vmictimesync vmms vmcompute) do (
	sc config %%a start= %1 > NUL 2>&1)
	
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" "Enabled" "%~4"
bcdedit /set hypervisorlaunchtype %5
::------------------------------------------
::    Aç = %1 : demand    | %2 : Enable  | %~3 : For  | %~4: 1  | %5 : on   | %6 : açılıyor   
:: Kapat = %1 : disabled  | %2 : Disable | %~3 : ::   | %~4: 0  | %5 : off  | %6 : kapatılıyor
::------------------------------------------
goto :eof

:serv.20.xbox
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Xbox hizmeti %6. >> %Location%\Logs
echo   %C%[96mXbox hizmeti %6 ...%C%[0m
:: Oyun DVR ve Yayın kullanıcı hizmeti | Xbox Accessory Management Service | Xbox Live Ağ Hizmeti | Xbox Live Kimlik Doğrulama Yöneticisi | Xbox Live Oyun Kaydetme | Teslimat optimizasyonu
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
::    Aç = %1 : start  | %2 : demand    | %3 : 1  |  %4 : 0  | %~5 : Call :delete2 | %6 : açılıyor
:: Kapat = %1 : stop   | %2 : disabled  | %3 : 0  |  %4 : 2  | %~5 : Call :dword   | %6 : kapatılıyor
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

:serv.21.bitlocker
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Bitlocker hizmeti %3. >> %Location%\Logs
echo   %C%[96mBitlocker hizmeti %3 ...%C%[0m
:: Bitlocker sürücü şifreleme hizmeti
sc config BDESVC start= %2 > NUL 2>&1
sc %1 BDESVC > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::------------------------------------------------------
goto :eof

:serv.22.mixedreality
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Karma Gerçeklik hizmeti %2. >> %Location%\Logs
echo   %C%[96mKarma Gerçeklik hizmeti %2 ...%C%[0m
:: Uzlamsal veri hizmeti | Volumetrik ses oluşturucu hizmeti | Windows algılama benzetimi hizmeti | Windows Algılama Hizmeti | Windows Mixed Reality OpenXR Service
FOR %%a in (SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc) do (
	sc config %%a start= %1 > NUL 2>&1)
::------------------------------------------
::    Aç = %1 : demand    | %2 : açılıyor   
:: Kapat = %1 : disabled  | %2 : kapatılıyor
::------------------------------------------
goto :eof

:serv.23.driverupdate
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Driver Güncelle / Yükle %3. >> %Location%\Logs
echo   %C%[96mDriver Yükle/Güncelle hizmeti %3 ...%C%[0m
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Update" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update\ExcludeWUDriversInQualityUpdate" "value" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" "%~2"
gpupdate /force > NUL 2>&1
::-------------------------------------
::    Aç = %~1 : 0  | %~2: 1  | %3 : açılıyor   
:: Kapat = %~1 : 1  | %~2: 0  | %3 : kapatılıyor
::-------------------------------------
goto :eof

:serv.24.memorycompression
echo [%date% - %time%] ^| Hizmetleri Yönet ^| Bellek sıkıştırma %2. >> %Location%\Logs
echo   %C%[96mBellek sıkıştırma hizmeti %2 ...%C%[0m
powershell -command "%~1-MMAgent -mc"
::-------------------------------------
::    Aç = %~1 : Enable   | %~2: açılıyor   
:: Kapat = %~1 : Disable  | %~2: kapatılıyor
::-------------------------------------
goto :eof

:serv.25.coreparking
echo [%date% - %time%] ^| Hizmetleri Yönet ^| İşlemci çekirdek bekleme hizmeti %4. >> %Location%\Logs
echo   %C%[96mİşlemci çekirdek bekleme hizmeti %4 ...%C%[0m
Call :dword "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
Call :dword "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
%~2 "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
%~2 "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
%~3 "HKLM\SYSTEM\CurrentControlSet\Control\Power" "CoreParkingDisabled" "0"
::-------------------------------------
::    Aç = %~1 : 100  |  %~2: Call :delete |  %~3: Call :delete2  | %4: açılıyor
:: Kapat = %~1 : 0    |  %~2: Call :dword  |  %~3: Call :dword    | %4: kapatılıyor
::-------------------------------------
goto :eof
:stop

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:wificrackarchley
:: Bu bölüm "ARCHLEY" kullanıcısı tarafından eklenmiştir. 
mode con cols=65 lines=45
title Wireless Password Cracker / (Archley)
echo [%date% - %time%] ^| WifiCrack ^| Wifi Crack bölümü açıldı. >> %Location%\Logs
echo  %R%[90m╔═════════════════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m                   Wireless Password Cracker                 %R%[0m%R%[90m║%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m                          (Archley)                          %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═════════════════════════════════════════════════════════════╣%R%[0m
FOR /F "tokens=5" %%a in ('netsh wlan show profil ^| find "All"') do (
	FOR /F "tokens=4" %%b in ('netsh wlan show profile "%%a" key^=clear ^| find "Content"') do (
		echo    %R%[36m%%a :%R%[33m %%b%R%[0m
		echo   
		)
	)
)
echo  %R%[90m╚═════════════════════════════════════════════════════════════╝%R%[0m
echo %R%[32m  Menüye dönmek için herhangi bir tuşa basınız.%R%[0m
pause > NUL
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:stop
:WinSahiplik
cls
mode con cols=55 lines=15
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m               Sağ-Tık Sahiplik Al                 %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Ekle%C%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 2.%C%[33m Kaldır%C%[0m                                      %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value= %R%[92m  İşlem : %R%[0m
	if %value%==1 (title Sahiplik al ekleniyor... / OgnitorenKs
				   echo [%date% - %time%] ^| WinSahiplik ^| Sağ-tık "Sahiplik Al" eklendi. >> %Location%\Logs
				   Call :vesz "HKCR\*\shell\runas" "Sahipliği Al" 
				   Call :sz "HKCR\*\shell\runas" "Icon" "imageres.dll,73" 
				   Call :sz "HKCR\*\shell\runas" "NoWorkingDirectory" "" 
				   Call :vesz "HKCR\*\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F" 
				   Call :sz "HKCR\*\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F" 
				   Call :vesz "HKCR\Directory\shell\runas" "Sahipliği Al" 
				   Call :sz "HKCR\Directory\shell\runas" "Icon" "imageres.dll,73" 
				   Call :sz "HKCR\Directory\shell\runas" "NoWorkingDirectory" "" 
				   Call :vesz "HKCR\Directory\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t" 
				   Call :sz "HKCR\Directory\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t" 
				   echo %R%[92m İşlem tamamlandı%R%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %value%==2 (title Sahiplik al kaldırılıyor... / OgnitorenKs
				   echo [%date% - %time%] ^| WinSahiplik ^| Sağ-tık "Sahiplik Al" kaldırıldı. >> %Location%\Logs
				   Call :delete "HKCR\*\shell\runas"
				   Call :delete "HKCR\Directory\shell\runas"
				   echo %R%[92m İşlem tamamlandı%R%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %value%==x GOTO kontroll
	if %value%==X GOTO kontroll
) else
	goto WinSahiplik

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:stop
:WinCompactOS
cls
mode con cols=55 lines=15
echo 
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m           CompactOS (Windows Sıkıştırma)          %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m CompactOS %C%[90m[AÇ]                              ║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 2.%C%[33m CompactOS %C%[90m[KAPAT]                           ║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value= %C%[92m İşlem :%C%[0m
	if %value%==1 (Call :CompactOn)
	if %value%==2 (Call :CompactOff)
	if %value%==x GOTO kontroll
	if %value%==X GOTO kontroll
) else
	GOTO WinCompactOS

:CompactOn
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS sıkıştırma işlemi uygulandı. >> %Location%\Logs
echo %C%[96m CompactOS sıkıştırma işlemi uygulanıyor...%C%[0m
Compact.exe /CompactOS:always
goto :eof

:CompactOff
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS sıkıştırma işlemi kapatıldı. >> %Location%\Logs
echo %C%[96m CompactOS sıkıştırma işlemi devre dışı bırakılıyor...%C%[0m
Compact.exe /CompactOS:never
goto :eof
:stop

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:gpedit
Call :Logs
echo [%date% - %time%] ^| Gpedit ^| Gpedit.msc eklendi. >> %Location%\Logs
echo %C%[96m Gpedit.msc (Yerel Grup ilkesi) aktifleştiriliyor...%C%[0m
FOR /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
FOR /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:update2050
echo %C%[96m Güncelleştirmeler 2050 yılına erteleniyor...%C%[0m
echo [%date% - %time%] ^| update2050 ^| Güncelleştirmeler 2050 yılına ertelendi. >> %Location%\Logs
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

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
::  WİNDOWS 11 BÖLÜMÜ 

:stop
:Win11SettingsMenu
cls
call :Location
call :PowerRun
mode con cols=55 lines=18
title Windows 11 Özelleştir / OgnitorenKs
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m              Windows 11 Özelleştirme              %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Taskbar Boyut %C%[90m[KÜÇÜK/BÜYÜK]%C%[0m                 %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 2.%C%[33m Taskbar Konumu %C%[90m[ALT/ÜST]%C%[0m                    %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 3.%C%[33m Taskbar Simge Konumu %C%[90m[SOL/ORTA]%C%[0m             %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 4.%C%[33m Sağ-Tık Menü %C%[90m[ESKİ/YENİ]%C%[0m                    %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 5.%C%[33m Sağ-Tık Terminal %C%[90m[EKLE/KALDIR]%C%[0m              %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 6.%C%[33m Sahiplik Al %C%[90m[EKLE/KALDIR]%C%[0m                   %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 7.%C%[33m Compact OS (Windows Sıkıştırma) %C%[90m[AÇ/KAPAT]%C%[0m  %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 8.%C%[33m Gpedit.msc (Yerel Grup ilkesi)%C%[90m[EKLE]%C%[0m        %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 9.%C%[33m Güncelleştirmeleri 2050 yılına ertele%C%[0m       %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
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
title Görev çubuğu boyut ayarı / OgnitorenKs
echo 
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m             Görev Çubuğu Boyut Ayarı              %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 0.%C%[33m Küçük %C%[0m                                      %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Varsayılan %C%[0m                                 %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 2.%C%[33m Büyük %C%[0m                                      %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuChange ^| Taskbar boyut ayarı "%value%" olarak ayarlandı. >> %Location%\Logs	
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarSi" "%value%"
Call :ExplorerReset
echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11MenuLocation
cls
mode con cols=55 lines=15
title Görev çubuğu Location ayarı / OgnitorenKs
echo 
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m                Görev Çubuğu Konumu                %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Üst%C%[0m                                         %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 3.%C%[33m Alt %C%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==x goto win11settingsmenu
	if %value%==X goto win11settingsmenu

echo [%date% - %time%] ^| Win11MenuLocation ^| Taskbar Location ayarı "%value%" olarak ayarlandı. >> %Location%\Logs
Call :binary "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3" "Settings" "30000000feffffff7af400000%value%0000003000000030000000000000000804000080070000380400006000000001000000"
Call :ExplorerReset
echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof


:Win11MenuOld
cls
mode con cols=55 lines=15
title Görev çubuğu simge Locationu ayarı / OgnitorenKs
echo 
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m            Görev Çubuğu Simge Konumu              %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 0.%C%[33m Sol%C%[0m                                         %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Orta%C%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuOld ^| Taskbar simge Locationu "%value%" olarak ayarlandı. >> %Location%\Logs
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAl" "%value%"
Call :ExplorerReset
echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11RightClick
cls
mode con cols=55 lines=15
title Sağ tık seçenek ayarı / OgnitorenKs
echo 
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m                 Sağ-Tık Menü Ayarı                %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Eski%C%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 2.%C%[33m Yeni%C%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==1 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 sağ-tık ayarı eski haline getirildi.. >> %Location%\Logs
				   Call :key "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"
				   Call :ExplorerReset)
	if %value%==2 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 sağ-tık ayarı yeni haline getirildi.. >> %Location%\Logs
				   Call :delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f)
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu
goto Win11RightClick

:Win11RightMenuTerminal
cls
mode con cols=55 lines=15
title Sağ-tık Terminal ayarı / OgnitorenKs
echo 
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m              Sağ-Tık Terminal Ayarı               %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Terminal%C%[90m [KALDIR]%C%[0m                           %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 2.%C%[33m Terminal%C%[90m [EKLE]%C%[0m                             %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==1 (echo [%date% - %time%] ^| Win11RightMenuTerminal ^| Windows 11 sağ-tık bölümünden terminal kaldırıldı. >> %Location%\Logs
				   Call :sz "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" "{9F156763-7844-4DC4-B2B1-901F640F5155}" ""
				   Call :ExplorerReset)
	if %value%==2 (echo [%date% - %time%] ^| Win11RightMenuTerminal ^| Windows 11 sağ-tık bölümüne terminal eklendi. >> %Location%\Logs
				   Call :delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked")
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu
goto Win11RightMenuTerminal

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:stop
:Win10SettingsMenu
cls
mode con cols=55 lines=18
title Windows 10 Özelleştir / OgnitorenKs
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m              Windows 10 Özelleştirme              %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Taskbar saat yanı simge ayarı%C%[90m [GÖSTER/GİZLE]%C%[0m%R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 2.%C%[33m Bildirim Alanı%C%[90m [AÇ/KAPAT]%C%[0m                   %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 3.%C%[33m Sahiplik Al%C%[90m [EKLE/KALDIR]%C%[0m                   %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 4.%C%[33m Taskbar Hava Durumu%C%[90m [AÇ/KAPAT]%C%[0m              %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 5.%C%[33m Microsoft Store%C%[90m [YÜKLE/KALDIR]%C%[0m              %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 6.%C%[33m Compact OS (Windows Sıkıştırma)%C%[90m [AÇ/KAPAT]%C%[0m  %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 7.%C%[33m Gpedit.msc (Yerel Grup ilkesi)%C%[90m [EKLE]%C%[0m       %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 8.%C%[33m Simgeleri Değiştir%C%[90m [ESKİ/YENİ]%C%[0m              %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 9.%C%[33m Güncelleştirmeleri 2050 yılına ertele%C%[0m       %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
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
title Görev çubuğu düzenleniyor... / OgnitorenKs
echo 
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m               Saat Yanı Simge Ayarı               %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 0.%C%[33m Hepsini Göster%C%[90m [AÇ]%C%[0m                         %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Hepsini Gizle%C%[90m [KAPAT]%C%[0m                       %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10EkranTepsi ^| Windows 10 Saat yanı simgeri ayarı "%value%" olarak ayarlandı. >> %Location%\Logs
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "EnableAutoTray" "%value%"
Call :ExplorerReset
echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:Win10Bildirim
cls
mode con cols=55 lines=15
title Bildirim alanı düzenleniyor... / OgnitorenKs
echo 
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m               Bildirim Alanı Ayarı                %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 0.%C%[33m Açık%C%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Kapalı%C%[0m                                      %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value= %C%[92m  İşlem : %C%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10Bildirim ^| Windows 10 Bildirim alanı ayarı "%value%" olarak ayarlandı. >> %Location%\Logs
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "%value%"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "%value%"
Call :ExplorerReset
echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:Win10HavaDurumu
cls
mode con cols=55 lines=15
title Taskbar Hava Durumu düzenleniyor... / OgnitorenKs
echo 
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m         Görev Çubuğu Hava Durumu Ayarı            %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 0.%C%[33m Kapat%C%[0m                                       %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Aç%C%[0m                                          %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value= %C%[92m  İşlem : %C%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu
	
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" "EnableFeeds" "%value%"
Call :ExplorerReset
echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:Win10StoreDelIns
cls
mode con cols=55 lines=15
title Market Yöneticisi / OgnitorenKs
echo 
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m                   Market Yönetici                 %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Market%C%[90m [KALDIR]%C%[0m                             %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 2.%C%[33m Market%C%[90m [YÜKLE]%C%[0m                              %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
	if %value%==1 (Call :Win10StoreDel)
	if %value%==2 (Call :Win10StoreIns)
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu
) else
	goto Win10.Store.Del.Ins

:Win10StoreDel
cls
mode con cols=109 lines=35
title Microsoft Store kaldırılıyor / OgnitorenKs

echo %R%[92m Microsoft Store ve bağlı tüm uygulamalar kaldırılacak%R%[0m
set /p value=%R%[92m Menü için%R%[96m "X"%R%[92m Devam etmek için%R%[96m "Y"%R%[92m tuşlayın : %R%[0m
	if %value%==Y goto Win10StoreDelGo
	if %value%==y goto Win10StoreDelGo
	if %value%==x goto menu
	if %value%==X goto menu
) else 
	goto Win10StoreDel
	
:Win10StoreDelGo	
cls
echo [%date% - %time%] ^| Win10StoreDelIns ^| Windows 10 market uygulamaları kaldırıldı. >> %Location%\Logs
echo %R%[92m Microsoft Store siliniyor...%R%[0m

powershell -command "Get-AppXPackage | Remove-AppxPackage"

echo %R%[92m Hizmetler durduruluyor...%R%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution" > NUL 2>&1
net start wuauserv > NUL 2>&1
:: AppX Dağıtım Hizmeti
%PowerRun% sc config AppXSvc start= disabled
%PowerRun% net stop AppXSvc
:: Yetenek erişim yönetim istemcisi
%PowerRun% sc config camsvc start= disabled
%PowerRun% net stop camsvc
:: Depolama hizmeti
%PowerRun% sc config StorSvc start= disabled
%PowerRun% net stop StorSvc
:: İstemci Lisans Hizmeti
%PowerRun% sc config ClipSVC start= disabled
%PowerRun% net stop ClipSVC

echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 3 /nobreak
goto :eof

:Win10StoreIns
cls
mode con cols=109 lines=35
title Market yükleniyor... / OgnitorenKs
echo [%date% - %time%] ^| Win10StoreDelIns ^| Windows 10 Market uygulaması yeniden yüklendi. >> %Location%\Logs
echo %R%[92m Microsoft Store yükleniyor...%R%[0m
powershell -command "Add-AppxPackage -DisableDevelopmentMode -Register $Env:%windir%\SystemApps\*\AppxManifest.xml"

Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "DisableSubscription" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "InactivityShutdownDelay" "0x0000012c"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ProcessBiosKey" "1
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" RefreshRequired" "1"
Call :expandsz "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ServiceDll" "%SystemRoot%\System32\ClipSVC.dll"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ServiceDllUnloadOnStop" "1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "RemoveWindowsStore" "0"
:: echo %R%[92m Hizmetler başlatılıyor...%R%[0m
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
:: DLL dosyaları kontrol ediliyor...
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
echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 3 /nobreak
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:stop
:icochangemenu
cls
mode con cols=55 lines=15
title ICO Yöneticisi / OgnitorenKs
echo 
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m                    ICO Yönetici                   %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Eski Simge%C%[90m [YÜKLE]%C%[0m                          %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 2.%C%[33m Yeni Simge%C%[90m [YÜKLE]%C%[0m                          %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
	if %value%==1 (Call :icochange Oldico)
	if %value%==2 (Call :icochange Newico)
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu
) else
	goto icochange

:icochange
cls
echo [%date% - %time%] ^| icochangemenu ^| "%~1" simge dosyası yüklendi. >> %Location%\Logs
Call :PowerRun

dir /b %Location%\Files\Oldico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :oldicodown)

dir /b %Location%\Files\Newico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :oldicodown)

title ICO Ayarları yapılıyor / OgnitorenKs
echo %R%[1;97m%R%[42m %1 simgeler yükleniyor...%R%[0m

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
echo %R%[96m Simge dosyaları indiriliyor...%R%[0m
FOR /F "tokens=1" %%i in ('FIND "Oldico.zip" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "%Location%\Files\Oldico.zip"
FOR /F "tokens=1" %%i in ('FIND "Newico.zip" %Location%\Extra\Links.txt') do set link=%%i
Call :wget3 "%link%" "%Location%\Files\Newico.zip"
goto :eof


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:stop
:AdminMenu
cls
mode con cols=55 lines=17
title Kullanıcı İşlemleri \ OgnitorenKs
echo 
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m              Kullanıcı Hesap Yönetimi             %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 1.%C%[33m Administrator%C%[90m [AKTİF]%C%[0m                       %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 2.%C%[33m Administrator%C%[90m [PASİF]%C%[0m                       %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 3.%C%[33m Admin grubuna kullanıcı ekle%C%[0m                %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 4.%C%[33m Kullanıcı%C%[90m [EKLE]%C%[0m                            %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 5.%C%[33m Kullanıcı%C%[90m [SİL]%C%[0m                             %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 6.%C%[33m Şifremi unuttum%C%[0m                             %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m 7.%C%[33m Mevcut Kullanıcıları Göster%C%[90m [*]%C%[0m             %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m   %R%[32m X.%R%[36m Menü%R%[0m                                        %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m İşlem : %C%[0m
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
title Administrator Aç \ OgnitorenKs
echo 
echo   %R%[90m╔═════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m        Administrator Aktifleştiriliyor...       %R%[0m%R%[90m║%R%[0m
echo   %R%[90m╚═════════════════════════════════════════════════╝%R%[0m
echo [%date% - %time%] ^| AdminMenu ^| Administrator aktifleştirildi. >> %Location%\Logs
net user administrator /active:yes
net user administrator *
echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 1 /nobreak > NUL
goto AdminMenu

:Tweak2AdminPasif
cls
mode con cols=55 lines=20
title Administrator kapat \ OgnitorenKs
echo 
echo   %R%[90m╔═════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m           Administrator Kapatılıyor...          %R%[0m%R%[90m║%R%[0m
echo   %R%[90m╚═════════════════════════════════════════════════╝%R%[0m
echo [%date% - %time%] ^| AdminMenu ^| Administrator kapatıldı. >> %Location%\Logs
net user Administrator /active:no
echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 1 /nobreak > NUL
goto AdminMenu

:Tweak3GrupAdmin
cls
mode con cols=55 lines=20
title Admin Grubuna Kullanıcı ekle \ OgnitorenKs
echo 
echo   %R%[90m╔═════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m          Admin Grubuna Kullanıcı Ekle           %R%[0m%R%[90m║%R%[0m
echo   %R%[90m╚═════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  Kullancı Adı : %C%[0m  
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Admin grubuna %value% kullanıcısı eklendi. >> %Location%\Logs
net localgroup Administrators %value% /add 
echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak4NewUsers
cls
mode con cols=55 lines=20
title Yeni Kullanıcı ekle \ OgnitorenKs
echo 
echo   %R%[90m╔═════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m               Yeni Kullanıcı Ekle               %R%[0m%R%[90m║%R%[0m
echo   %R%[90m╚═════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  Kullancı Adı : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Yeni kullanıcı "%value%" oluşturuldu. >> %Location%\Logs
net user %value% * /add

echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak5DelUsers
cls
mode con cols=55 lines=20
title Kullanıcı Sil \ OgnitorenKs
echo 
echo   %R%[90m╔═════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m                  Kullanıcı Sil                  %R%[0m%R%[90m║%R%[0m
echo   %R%[90m╚═════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  Kullancı Adı : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Kullanıcı "%value%" silindi. >> %Location%\Logs
net user %value% /delete

echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak6UsersKey
cls
mode con cols=55 lines=20
title Şifremi Unuttum / Değiştir \ OgnitorenKs
echo 
echo   %R%[90m╔═════════════════════════════════════════════════╗%R%[0m
echo   %R%[90m║%R%[1;97m%R%[100m             Şifremi Unuttum / Değiştir          %R%[0m%R%[90m║%R%[0m
echo   %R%[90m╚═════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  Kullancı Adı : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
echo [%date% - %time%] ^| AdminMenu ^| Kullanıcı "%value%" şifre değiştirildi. >> %Location%\Logs
net user %value% *

echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:shutdownpc
cls
mode con cols=55 lines=18
title ShutDown / OgnitorenKs
echo  %R%[90m╔═══════════════════════════════════════════════════╗%R%[0m
echo  %R%[90m║%R%[1;97m%R%[100m            Otomatik Bilgisayar Kapatma            %R%[0m%R%[90m║%R%[0m
echo  %R%[90m╠═══════════════════════════════════════════════════╣%R%[0m
echo  %R%[90m║%R%[0m                 %R%[32m 0.%C%[33m 30%C%[90m [Dakika]%C%[0m                   %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m                 %R%[32m 1.%C%[33m  1%C%[90m [Saat]%C%[0m                     %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m                 %R%[32m 2.%C%[33m  2%C%[90m [Saat]%C%[0m                     %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m                 %R%[32m 3.%C%[33m  3%C%[90m [Saat]%C%[0m                     %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m                 %R%[32m 4.%C%[33m  4%C%[90m [Saat]%C%[0m                     %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m                 %R%[32m 5.%C%[33m  5%C%[90m [Saat]%C%[0m                     %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m                 %R%[32m 6.%C%[33m  6%C%[90m [Saat]%C%[0m                     %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m                 %R%[32m 7.%C%[33m  7%C%[90m [Saat]%C%[0m                     %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m                 %R%[32m 8.%C%[33m  8%C%[90m [Saat]%C%[0m                     %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m                 %R%[32m 9.%R%[33m İptal et%R%[0m                      %R%[90m║%R%[0m
echo  %R%[90m║%R%[0m                 %R%[32m X.%R%[36m Menüye dön%R%[0m                    %R%[90m║%R%[0m
echo  %R%[90m╚═══════════════════════════════════════════════════╝%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
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
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:stop
:UpdateAfter
cls
Call :PowerRun
echo [%date% - %time%] ^| UpdateAfter ^| Güncelleme sonrası temizlik bölümü çalıştırıldı. >> %Location%\Logs

echo %R%[92m Güncelleme sonrası temizlik işlemi yapılıyor.%R%[0m
echo %R%[92m Defender kalıntıları temizleniyor.%R%[0m
echo %R%[92m Hizmetler düzenleniyor...%R%[0m

%PowerRun% %Location%\Extra\Update.After.bat
timeout /t 7 /nobreak > NUL

echo %R%[92m Regedit kayıtları düzenleniyor.%R%[0m
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
Call :dword "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "IsExpedited" 0 & :: Güncellemenin yüklenmesi gerektiğinde bilgisayarı mümkün olan en kısa sürede devre dışı bırak
Call :dword "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "RestartNotificationsAllowed2" 0 & :: Güncelleme sonrası yeniden başlatma bildirimi devre dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "ModelDownloadAllowed" 0 & :: Konuşma modellerinin günceleştirmeleri devre dışı bırakılıyor...
:: Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" "DODownloadMode" "100" & :: Teslimat Optimizasyonu BITS hizmeti olarak ayarlanıyor...
:: Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" 2 & :: Driverlar kurulu değil ise kurulması için ayarlanıyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "NoAutoUpdate" "0" & :: Update Manuel
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "AUOptions" "2" & :: Update Manuel
:: Cortana
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" "0"
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" "0" & :: Cortana - Oturum açtığım cihazlar geçmişimi kullan
Call :dword "HKU\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" "0" & :: Cortana - Cihaz değiştirirken etkinlik önerileri
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
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowTaskViewButton" 0 & :: Görev Görünümü Simgesi Kaldırılıyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "MMTaskbarEnabled" 1 & :: Görev Çubuğu ve bütün simgeleri tüm monitörlerde göster
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "MMTaskbarMode" 0 & :: Görev Çubuğu ve bütün simgeleri tüm monitörlerde göster
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" "EnableTransparency" 0 & :: Görev çubuğu transparan özelliği devre dışı bırakılıyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowCortanaButton" 0 & :: Cortana Butonu kaldırılıyor...
:: Explorer
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "LaunchTo" 1 & :: Explorer "Bu Bilgisayar" olarak ayarlanıyor...
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" "EnthusiastMode" 1 & :: Dosya kopyalama iletişim kutusuda daha fazla detay göster olarak ayarlanıyor...
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "HideFileExt" 0 & :: Dosya uzantıları aktifleştiriliyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" "DisableAutoplay" 1 & :: Otomatik oynatma kapatılıyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoRecentDocsHistory" 0 & :: Son açılan belgelerin geçmişi kapatılıyor...
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "ClearRecentDocsOnExit" 1 & :: Windows'u kapatırken yeni açılan belgelerin geçmişini temizle aktifleştiriliyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowRecent" 0 & :: Son kullanılan dosyaların hızlı erişimde görüntülenmesi engelleniyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowFrequent" 0 & :: Hızlı Erişimden Sık Kullanılan klasörler kaldırılıyor
:: Call :binary "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "Link" "00000000" & :: Kısayol yazısı kaldırılıyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoInternetOpenWith" 1 & :: Birlikte aç seçeneğinden internette ara seçeneği kaldırılıyor...
:: Search
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" 1 & :: Arama bölümü simge haline getiriliyor
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" 1 & :: Web araması kapatılıyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" 0 & :: Web'de arama yapmayın veya Arama'da web sonuçlarını görüntülemeyin
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowIndexingEncryptedStoresOrItems" 0 & :: Şifrelenmiş dosyaların indekslenme izni kaldırılıyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" 0 & :: Arama ve Cortana'nın Locationu kullanma izni kapatılıyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AlwaysUseAutoLangDetection" 0 & :: İçeriği ve özellikleri dizine eklerken her zaman otomatik dil algılamayı kullanın kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaConsent" 0 & :: Cortana izni kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaInAmbientMode" 0 & :: Cortana Ortam modu kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "AllowSearchToUseLocation" 0 & :: Arama bölümünün Locationu kullanması engelleniyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" "SafeSearchMode" 0 & :: Güvenli arama modu kapatılıyor.
Call :dword "HKCU\Software\Policies\Microsoft\Windows\Explorer" "DisableSearchBoxSuggestions" 1 & :: Dosya Gezgini arama kutusundaki son arama girişlerinin görüntülenmesini kapatın
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" 1 & :: Web araması kapatılıyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" 0 & :: Tarifeli bağlantılar üzerinden aramada web'de arama yapmayın veya web sonuçlarını görüntülemeyin
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCloudSearch" 0 & :: Bulut arama kapatılıyor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "AcceptedPrivacyPolicy" 0 & :: Gizlilik politikası devre dışı bırakılıyor.
Call :dword "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "VoiceActivationDefaultOn" 0 & :: Sesle etkinleştirme kapatılıyor.
Call :dword "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "VoiceActivationEnableAboveLockscreen" 0 & :: Kilit Ekranının Üstünde Sesle Etkinleştirme kapatılıyor.
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" "DisableVoice" 1 & :: Ses etkinleştirme kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "BingSearchEnabled" 0 & :: Arama - Bing web sonuçlarını dahil et kapatılıyor...
:: Optimizasyon
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" 0 & :: Hiberboot Devre Dışı bırakılıyor
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" 0 & :: Hazırda bekletme özelliği devre dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" "ShowHibernateOption" 0 & :: Kapatma menüsü - Hibernate kapatılıyor.
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" "ShippedWithReserves" 0 & :: Ayrılmış depolama alanı devre dışı bırakılıyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" 0 & :: Prefetch devre dışı bırakılıyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" 0 & :: Prefetch devre dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" 0 & :: Startup Delay (Başlangıç Gecikmesi) devre dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" 0 & :: Qos Limiti Devre Dışı bırakılıyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" "LongPathsEnabled" 1 & :: Windows 255 Karakter Sınırı devre dışı bırakılıyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" 0 & :: DiagTrack Devre Dışı bırakılıyor...
:: Call :dword "HKCU\Software\Microsoft\Narrator\QuickStart" "SkipQuickStart" 1 & :: Narrator QuickStart kapatılıyor.
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SoftLandingEnabled" 0 & :: Windows önerileri devre dışı bırakılıyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-310093Enabled" 0 & :: Windows karşılama deneyimi kapatılıyor...
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisablePCA" 1 & :: Program uyumluluk yardımcısı devre dışı bırakılıyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "HwSchMode" 2 & :: Donanım hızlandırmalı GPU Planlaması aktifleştiriliyor...
:: Call :sz "HKCU\Control Panel\Mouse" "MouseSpeed" 0 & :: İşaretçi hassasiyeti devre dışı bırakılıyor...
Call :sz "HKCU\Control Panel\Desktop" "AutoEndTasks" 1 & :: Kapatma işleminde uygulamalar açık ise otomatik kapat ve bekleme süresi azaltılıyor
Call :sz "HKCU\Control Panel\Desktop" "HungAppTimeout" "1000" & :: Uygulamalar cevap vermediği zaman görevi sonlandır seçeneğine basılmadan önceki bekleme süresini kısaltır.
Call :sz "HKCU\Control Panel\Desktop" "WaitToKillAppTime" "2000" & :: Bilgisayar kapatılırken ya da oturumdan çıkılırken kullanıcı uygulamalarının kapatılması için sistem bekleme süresini kısaltır.
Call :sz "HKCU\Control Panel\Desktop" "LowLevelHooksTimeout" "1000" & :: Cevap vermeyen hizmetlerin kapatılmasından önceki sistem bekleme süresini kısaltır.
Call :sz "HKLM\SYSTEM\CurrentControlSet\Control" "WaitToKillServiceTimeout" "2000" & :: Bilgisayarın kapatılması sırasında durdurulacak hizmetler uyarısı geldiğinde, uygulamaların kapanması için beklenen süreyi kısaltır.
Call :sz "HKCU\Control Panel\Desktop" "MenuShowDelay" "8" & :: Menü gösterimi bekleme süresini azaltır. Böylelikle tıklandığı zaman menüler daha hızlı gelecek.
Call :sz "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoLowDiskSpaceChecks" 1 & :: Düşük Depolama alanı uyarısı devre dışı bırakılıyor...
Call :sz "HKCU\Control Panel\Mouse" "MouseHoverTime" 8 & :: Farenizle birlikte bir nesnenin üzerine geldiğinizde görülen açıklamanın çıkış süresini kısaltır
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "LinkResolveIgnoreLinkInfo" 1 & :: Bilgisayarınızda mevcut olmayan programlara ait kısayolların bağlantısının Windows tarafından boşa vakit harcanarak aranmasını önler
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveSearch" 1 & :: Kısayol bağlantı sorununu çözmek için Windows'un diski aramasını önler
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveTrack" 1 & :: Kısayol bağlantı sorununu çözmek için Windows'un NTFS dosya sisteminin izleme özelliğini kullanmasını engeller
:: Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours" "Enable" 1 & :: Odak Yardımı aktifleştiriliyor
:: Store
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "ContentDeliveryAllowed" 0 & :: 3.Parti Market uygulamalarının yeniden yüklenmesi engelleyen bölüm
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "FeatureManagementEnabled" 0 & :: 3.Parti Market uygulamalarının yeniden yüklenmesi engelleyen bölüm
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEverEnabled" 0 & :: 3.Parti Market uygulamalarının yeniden yüklenmesi engelleyen bölüm
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "OemPreInstalledAppsEnabled" 0 & :: Önceden yüklenmiş OEM uygulamalar devre dışı bırakılıyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEnabled" 0 & :: Önceden yüklenmiş OEM uygulamalar (Minecraft, CandyCrush, Flipboard) kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SilentInstalledAppsEnabled" 0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-314559Enabled" 0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338387Enabled" 0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338388Enabled" 0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338389Enabled" 0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" 0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContentEnabled" 0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPane RecommendionsEnabled" 0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "AutoDownload" 2 & :: Market otomatik güncelleştirme kapatır.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" 1 & :: Market otomatik güncelleştirme kapatır.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "Migrated" 4 & :: Uygulamaların arka planda çalışması engelleniyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "GlobalUserDisabled" 1 & :: Uygulamaların arka planda çalışması engelleniyor...
:: Gizlilik
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" 0 & :: Ayarlar uygulamasın önerilen içeriği göstermesi kapatılıyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353694Enabled" 0 & :: Ayarlar uygulamasın önerilen içeriği göstermesi kapatılıyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353696Enabled" 0 & :: Ayarlar uygulamasın önerilen içeriği göstermesi kapatılıyor...
Call :dword "HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache" "OsuRegistrationStatus" 0 & :: Bağlanmak için Hotspot 2.0 Çevrimiçi kaydolmayı kullanın kapatılıyor
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackProgs" 0 & :: Başlangıç ve arama sonuçlarını iyileştirmek için Windows izleme uygulamasının başlatılmasına izin verin kapatılıyor
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPaneSuggestionsEnabled" 0 & :: Başlangıçtaki ara sıra öneriler kapatılıyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" "ScoobeSystemSettingEnabled" 0 & :: Cihazımın kurulumunu çevrimiçi olarak tamamlayabileceğim yollar öner kapatılıyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableCloudOptimizedContent" 1 & :: Programlanabilir Görev Çubuğu özelliği devre dışı bırakılıyor.
Call :dword "HKCU\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" "OptInOrOutPreference" 0 & :: Deneyim geliştirme programına izin ver(NVIDIA Sürücüsü) kapatılıyor...
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowExperimentation" 0 & :: Deneylere izin ver kapatılıyor
Call :dword "HKCU\SOFTWARE\Microsoft\Input\TIPC" "Enabled" 0 & :: Gelecekte yazmayı iyileştirmenize yardımcı olması için nasıl yazdığım hakkında Microsoft'a bilgi gönderme kapatılıyor.
Call :dword "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" 0 & :: Geri Bildirim frekansı kapatılıyor.
Call :dword "HKCU\Software\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" 0 & :: Giriş verilerinizi Microsoft'a göndererek konuşma, yazma ve mürekkepleme girişinizi kişiselleştirin kapatılıyor
Call :dword "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts " 0 & :: Giriş verilerinizi Microsoft'a göndererek konuşma, yazma ve mürekkepleme girişinizi kişiselleştirin kapatılıyor
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowLocation" 0 & :: Konum Hizmetlerini kapatılıyor...
Call :dword "HKCU\Control Panel\International\User Profile" "HttpAcceptLanguageOptOut" 1 & :: Kullanıcı dil listesine erişerek web sitelerinin yerel olarak alakalı içerik sağlaması engelleniyor.
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" "UserAuthPolicy" 0 & :: Kullanıcının diğer cihazlardaki uygulamaları açması engelleniyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" "FPEnabled" 0 & :: Okumayı iyileştirmek, taramayı hızlandırmak için sayfa tahminini kullanın. Göz Atma Verilerinin Microsoft'a Gönderilmesi engelleniyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" "Skype-UserConsentAccepted" 0 & :: Skype Kişiler bağlantısı devre dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" 1 & :: Sponsorlu uygulamaların otomatik kurulumu (Tüketici Deneyimi)
Call :dword "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" 1 & :: Sponsorlu uygulamaların otomatik kurulumu (Tüketici Deneyimi)
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" 0 & :: Tanılama verilerinizi kullanarak Microsoft'un ilgili ipuçları ve önerilerle daha özel deneyimler sunmasına izin verin.
Call :dword "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" 0 & :: Tanılama verilerinizi kullanarak Microsoft'un ilgili ipuçları ve önerilerle daha özel deneyimler sunmasına izin verin.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" 0 & :: Telemetry Devre Dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy" 1 & :: Uygulamaların uygulamalardaki deneyimler için kullanıcı reklam kimliğini kullanması engelleniyor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" 0 & :: Windows ve Cortana'nın sizi daha iyi anlamasına izin vermek için kişileri toplama kapatılıyor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" 1 & :: Windows ve Cortana'nın sizi daha iyi anlamasına izin vermek için yazılı metin (mürekkep) toplayın kapatılıyor.
Call :dword "HKCU\Software\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" 1 & :: Windows ve Cortana'nın sizi daha iyi anlamasına izin vermek için yazılı metni toplayın.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "EnableActivityFeed" 0 & :: Windows'un bu bilgisayardan etkinliklerimi toplamasına izin ver (Zaman çizelgesi)
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackDocs" 0 & :: Windows'un sıçrama listelerini doldurmak için açılan belgeleri izlemesi kapatılıyor.
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" "AllowInputPersonalization" 0 & :: Çevrimiçi konuşma hizmetleri devre dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" "WiFiSenseOpen" 0 & :: Önerilen açık sıcak noktalara otomatik bağlan kapatılıyor.
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" "value" 0 :: Önerilen açık sıcak noktalara otomatik bağlan kapatılıyor.
Call :dword "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" "PaidWifi" 0 & :: Ücretli ağ hizmetlerinin mevcut olup olmadığını görmek için geçici olarak erişim noktalarına otomatik olarak bağlanma kapatılıyor.
Call :dword "HKCU\SOFTWARE\Microsoft\Input\Settings" "InsightsEnabled" 0 & :: İçgörüsel yazma engelleniyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" "DisableFileSyncNGSC" 1 & :: OneDrive Eşitlemesi devre dışı bırakılıyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" "Start" 0 & :: AutoLogger devre dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" 1 & :: Windows Hata Raporlama devre dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" 0 & :: Wifi Hotspot Raporlama devre dışı bırakılıyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" 0 & :: Windows Reklam Kimliğini devre dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" 0 & :: Müşteri Deneyim Programı devre dışı bırakırılıyor...
Call :delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" & ::Metadata izleme dosyaları kaldırılıyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "PublishUserActivities" 0 & :: Windows'un bilgisayardaki etkinlikleri toplaması engelleniyor...
Call :dword "HKLM\Software\Policies\Microsoft\Windows\System" "EnableActivityFeed" 0 & :: Windows'un bilgisayardaki etkinlikleri toplaması engelleniyor...
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Start" "HideRecentJumplists" 1 & :: Atlama Listelerinde en son açılan öğeler engelleniyor...
Call :dword "HKCU\Software\Policies\Microsoft\Windows\Explorer\NoBalloonFeatureAdvertisements" "NoBalloonFeatureAdvertisements" 1 & :: Özellik reklam balonu bildirimlerini kapatılıyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" "PreventHandwritingErrorReports" 1 & :: El yazısı hata raporlarının paylaşımını devre dışı bırak 
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" "PreventHandwritingDataSharing" 1 & :: El yazısı verilerinin paylaşımını devre dışı bırak
:: Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableInventory" 1 & :: Envanter Toplayıcıyı Devre Dışı Bırak
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "01" "0" & :: Depolama algısı
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "04" "0" & :: Depolama algısı - Uygulamaların kullanmadığı geçici dosyaları sil
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "256" "0" & :: Geri dönüşüm kutusu uzun süre doluysa temizle
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "512" "0" & :: Depolama algısı
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "2048" "0" & :: İndirilen klasöründe uzun süre duran dosyaları sil

bcdedit /deletevalue useplatformclock > NUL 2>&1
bcdedit /set {current} recoveryenabled no > NUL 2>&1
powercfg /h off > NUL 2>&1
bcdedit /set useplatformtick yes > NUL 2>&1
bcdedit /set disabledynamictick yes > NUL 2>&1

echo %R%[92m Görev zamanlayıcısında düzenlemeler yapılıyor.%R%[0m
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
echo %R%[92m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto menu

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:PingMeter
Call :Location
echo [%date% - %time%] ^| UpdateAfter ^| Ping ölçer çalıştırıldı. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Extra\Pingolc.bat'"
goto :eof

:: ========================================================================================================

:SistemHakkinda
Call :Location
echo [%date% - %time%] ^| SistemHakkinda ^| Sistem hakkında bölümü çalıştırıldı. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Extra\Sistem.Hakkinda.bat'"
goto :eof

:: ========================================================================================================

:FoldertoISO
Call :Location
echo [%date% - %time%] ^| FoldertoISO ^| Folder to ISO yazılımı çalıştırıldı. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Files\Folder2Iso\Folder2Iso.exe'"
goto :eof

:: ========================================================================================================

:WindowsEditor
Call :Location
echo [%date% - %time%] ^| WindowsEditor ^| Windows Düzenleme bölümü çalıştırıldı. >> %Location%\Logs
powershell -command "Start-Process '%Location%\Extra\Windows.Editor.bat'
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:PowerRun
Call :Location
dir /b "%Location%\Files\PowerRun.exe" > NUL 2>&1
	if %errorlevel%==1 (:: echo %R%[1;97m%R%[41m HATA! PowerRun.exe dosyası bulunamadı. Yeniden indiriliyor... %R%[0m
						Call :Logss "PowerRun indiriliyor" "PowerRun.exe dosyası bulunamadı. Yeniden indirildi."
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
:: %~1: Bölüm adı | %~2: Bilgi kısmı
:: --------------------------------------------------------------------------------------------

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: --------------------------------------------------------------------------------------------
:: İlerleme çubuğu konusunda yardımcı olan KaanBeyhan'a teşekkür ederim.
:: --------------------------------------------------------------------------------------------
:wget
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                  İnternet bağlantısı yok                                   %R%[0m
						echo [%date% - %time%] ^| wget ^| HATA! İnternet bağlantısı yok. "%~2" / "%~1" / "%download%" >> %Location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget ^| "%~2" indirildi. "%~1" / "%download%" >> %Location%\Logs
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%~1" -O %download%\%~2"
"%download%\%~2" %~3
goto :eof

:: ========================================================================================================
:: %~1= Link | %~2= İndirme ismi  | %~3= Sessiz kurulum parametresi
:: ========================================================================================================

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:wget2
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                  İnternet bağlantısı yok                                   %R%[0m
						echo [%date% - %time%] ^| wget2 ^| HATA! İnternet bağlantısı yok. "%~2" / "%~1" / "%download%" >> %Location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget2 ^| "%~2" indirildi. "%~1" / "%download%" >> %Location%\Logs
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%~1" -O %download%\%~2
goto :eof

:: ========================================================================================================
:: %~1= Link | %~2= İndirme ismi 
:: ========================================================================================================

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:wget3
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                  İnternet bağlantısı yok                                   %R%[0m
						echo [%date% - %time%] ^| wget3 ^| HATA! İnternet bağlantısı yok. "%~2" / "%~1" >> %Location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget3 ^| "%~2" indirildi. "%~1" >> %Location%\Logs
%Location%\Files\wget -c -q --no-check-certificate --show-progress "%~1" -O %~2
goto :eof

:: ========================================================================================================
:: %~1= Link | %~2= Masaüstü Locationu ve ismi
:: ========================================================================================================

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:ZipExport
echo [%date% - %time%] ^| ZipExport ^| "%~1" dosyası "%download%\%~n1" çıkarıldı.  >> %Location%\Logs
powershell -command "Expand-Archive -Force '%download%\%~1' '%download%\%~n1'" 
goto :eof

:: ========================================================================================================
:: %~1= Dosya yolu | %~n1= Dosya ismi
:: ========================================================================================================
 
 :: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
 
:netkontrol
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                  İnternet bağlantısı yok                                   %R%[0m
						echo   %R%[1;97m%R%[41m               Wget.exe indirilemedi, indirme işlemlerinde hata alacaksınız                 %R%[0m
						Call :Logss "wgetyok" "HATA! İnternet bağlantısı olmadığı için wget.exe indirilemedi."
						timeout /t 5 /nobreak > NUL
						goto :eof)
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

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

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

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

