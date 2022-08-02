:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
::
::       ██████   ██████   ██    ██ ████ ████████  ██████  ████████  ████████ ██    ██ ██    ██  ██████
::      ██    ██ ██    ██  ███   ██  ██     ██    ██    ██ ██     ██ ██       ███   ██ ██   ██  ██    █
::      ██    ██ ██        ████  ██  ██     ██    ██    ██ ██     ██ ██       ████  ██ ██  ██   ██
::      ██    ██ ██   ████ ██ ██ ██  ██     ██    ██    ██ ████████  ██████   ██ ██ ██ █████      ██████ 
::      ██    ██ ██    ██  ██  ████  ██     ██    ██    ██ ██   ██   ██       ██  ████ ██  ██         ██
::      ██    ██ ██    ██  ██   ███  ██     ██    ██    ██ ██    ██  ██       ██   ███ ██   ██  ██    ██
::       ██████   ██████   ██    ██ ████    ██     ██████  ██     ██ ████████ ██    ██ ██    ██  ██████ 
::
::                    ████████ ███████ ███████ ██      ██████  ███████  ██    ██
::                       ██    ██   ██ ██   ██ ██      ██   ██ ██   ██   ██  ██  
::                       ██    ██   ██ ██   ██ ██      ██████  ██   ██     ██   
::                       ██    ██   ██ ██   ██ ██      ██   ██ ██   ██   ██  ██
::                       ██    ███████ ███████ ███████ ██████  ███████  ██    ██
::
::  ► Hazırlayan: Hüseyin UZUNYAYLA / OgnitorenKs
::
::  ► İletişim - Contact;
::  --------------------------------------
::  • Discord: OgnitorenKs#2737 
::  •    Mail: ognitorenks@gmail.com
::  •    Site: https://ognitorenks.blogspot.com/
::
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
::  Projeye katkıda bulunanlar;
::  ---------------------------
::  ► Eray Türkay
::    • Sistem Hakkında - RAM soket yapısının eklenmesi.
::    • Sistem Hakkında - Sistem format tarihinin eklenmesi
::  ----------------------
::  ► KaanBeyhan [Denizlili]
::    • İndirme işlemlerinde ilerleme çubuğunun eklenmesi
::  ---------
::  ► Archley
:: 	  • Kayıtlı Wifi Bilgileri çalışmasının toolbox'a eklenmesi.
::    • İşlem tamamlandı ekranının eklenmesi.
::  ----------
::  ► maskem76
:: 	  • Hyper-V bölümündeki hatanın giderilmesi.
::  ----------
::  ► Legnica
:: 	  • Windows Search önbelliğinin temizlenmesiyle ilgili komutların eklenmesi.
::  ----------
::  ► Finch
::    • Yönetici yetkili kısayol simgesi oluşturulması.
::
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: Toolbox içinde kullanılan yazılımlar;
:: ------------------------------------
:: >> wget        > https://eternallybored.org/misc/wget/
::   • Download işlemlerinin yapıldığı uygulamadır. Komut istemiyle çalışır.
::
:: >> NSudo       > https://nsudo.m2team.org/en-us/
::   • Üst düzey yetki ile işlem yapma izni veren yazılım. 
::
:: >> oscdimg     > https://api.256file.com/oscdimg.exe/tr-download-87465.html
::   • ISO dosyası oluşturmaya yarayan yazılıım.
::
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
echo off
cls
chcp 65001 > NUL 2>&1
mode con cols=61 lines=20

setlocal
Call :ColorEnd
Call :ColorEnd2

cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Logs=%Location%\Edit\Logs
set download=%Location%\Download
Call :NSudo
set version=3.5

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:T.Settings
FOR /F "tokens=2" %%a in ('findstr /C:"LogsSettings" %Location%\Settings.ini') do set LogsSettings=%%a
FOR /F "tokens=2" %%a in ('findstr /C:"Chocolatey" %Location%\Settings.ini') do set Chocolatey=%%a

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:AdminManuel
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo.
echo.
echo.
echo  %R%[90m┌─────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│                                                         │%R%[0m
echo  %R%[90m│%R%[1;97m%R%[41m               ! UYARI !          ! UYARI !              %R%[0m%R%[90m│%R%[0m
echo  %R%[90m│                                                         │%R%[0m
echo  %R%[90m│%R%[1;97m%R%[41m            Sağ-Tık Yönetici olarak çalıştırın           %R%[0m%R%[90m│%R%[0m
echo  %R%[90m│                                                         │%R%[0m
echo  %R%[90m└─────────────────────────────────────────────────────────┘%R%[0m
echo.
echo              %R%[97mKapatmak için herhangi bir tuşa basınız%R%[0m
pause > nul
exit
)

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:NeedFiles
:: Toolbox için gerekli klasörler oluşturuluyor.
mkdir "%Location%\Download" > NUL 2>&1
mkdir "%Location%\Files\Yedek" > NUL 2>&1
mkdir "%Location%\Edit\Appx" > NUL 2>&1
mkdir "%Location%\Edit\Desktop" > NUL 2>&1
mkdir "%Location%\Edit\Driver" > NUL 2>&1
mkdir "%Location%\Edit\Logs" > NUL 2>&1
mkdir "%Location%\Edit\Mount" > NUL 2>&1
mkdir "%Location%\Edit\Update" > NUL 2>&1
:: Wget dosyası kontrol ediliyor.
dir /b "%Location%\Files\wget.exe" > NUL 2>&1
	if %errorlevel%==1 (Call :LogSave "Wget indiriliyor" "Wget.exe dosyası bulunamadı. Yeniden indirildi."
						echo   %R%[1;97m%R%[41m Wget.exe dosyası bulunamadı %R%[0m
						Call :InternetControl
						Call :Powershell "& { iwr https://eternallybored.org/misc/wget/1.21.3/64/wget.exe -OutFile %Location%\Files\wget.exe }")
						

:NetCheck
ping -n 1 google.com > NUL
	if %errorlevel%==1 goto NoInternet
	
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:AutoToolboxUpdate
FOR /F "tokens=2" %%a in ('findstr /C:"AutoUpdate" %Location%\Settings.ini') do set autoupdate=%%a
	if %autoupdate%==0 goto AutoUpdate
	if %autoupdate%==1 goto NoInternet
) else
	goto AutoUpdate
	
:AutoUpdate
mode con cols=80 lines=30
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %R%[92m Güncelleştirmeler kontrol ediliyor...%R%[0m
echo.
echo              %R%[33m████ ████ █   █ █ █████ ████ ████ ███ █   █ █  █ ████%R%[0m
echo              %R%[33m█  █ █    ██  █ █   █   █  █ █  █ █   ██  █ █ █  █   %R%[0m
echo              %R%[33m█  █ █ ██ █ █ █ █   █   █  █ ████ ██  █ █ █ ██   ████%R%[0m
echo              %R%[33m█  █ █  █ █  ██ █   █   █  █ █ █  █   █  ██ █ █     █%R%[0m
echo              %R%[33m████ ████ █   █ █   █   ████ █  █ ███ █   █ █  █ ████%R%[0m


:: Tarih bilgisi alınır
for /f "tokens=2" %%a in ('echo %date%') do set timeupdate=%%a
set TimeUpdateDate=%timeupdate:~0,-8%.%timeupdate:~3,-5%.%timeupdate:~6%

:: Settings.ini dosyasına kaydedilen tarih ile güncel tarih verisi karşılaştırılır. Tarihler farklı ise güncellemeler kontrol edilir.
For /f "tokens=2" %%b in ('findstr /C:"TimeUpdate" %Location%\Settings.ini') do set logstime=%%b
if %logstime% equ %TimeUpdateDate% (
  goto NoInternet
) else (
	goto AU2
)

:AU2
:: Güncel tarih verisi Settings.ini dosyasını işlenir.
for /f "tokens=2" %%a in ('findstr /i "TimeUpdate" %Location%\Settings.ini') do (
	Call :Powershell "(Get-Content %Location%\Settings.ini) | ForEach-Object { $_ -replace '%%a', '%TimeUpdateDate%' } | Set-Content '%Location%\Settings.ini'"
)
:: Links.txt dosyasının indirme linki alınır.
FOR /F "tokens=1" %%i in ('FIND "Links.txt" %Location%\Extra\Links.txt') do set link=%%i
:: Links.txt dosyası indirilir.
%Location%\Files\wget --no-check-certificate "%link%" -O %Location%\Extra\Links.txt > NUL 2>&1
:: İndirilen Links.txt dosyasından version durumları karşılaştırılır. Farklı ise Toolbox.Update.bat çalıştırılır.
FOR /F "delims=':' tokens=2" %%b in ('Find "VersionCheck" %Location%\Extra\Links.txt') do set versioncheck=%%b
if %version% equ %versioncheck% (
  goto NoInternet
) else (
	cls
	echo.
	echo.
	echo.
	echo.
	echo.
	echo.
	echo.
	echo.
	echo                     %R%[33m OgnitorenKs Toolbox güncelleme mevcut%R%[0m
	echo.
	echo                            • %R%[32m Yüklü Sürüm:%R%[37m %version%%R%[0m
	echo                            •%R%[32m Güncel Sürüm:%R%[37m %versioncheck%%R%[0m
	echo.
	echo                        %R%[1;97m%R%[42m Güncelleme işlemi başlıyor...%R%[0m
	timeout /t 5 /nobreak > NUL
	%Location%\Files\wget.exe --no-check-certificate "https://docs.google.com/uc?export=download&id=1VWcLahOUlV9vRikCC3IkWJnhEG003cfc" -O %temp%\Toolbox.Update.txt > NUL 2>&1
	rename "%temp%\Toolbox.Update.txt" "Toolbox.Update.bat" > NUL 2>&1
	Call :Powershell "Start-Process '%temp%\Toolbox.Update.bat'"
)

:NoInternet
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:: Ana ekranda yer alan Kullanıcı adı, işletim sistemi gibi bilgiler alınır. 
Call :Powershell "Get-CimInstance Win32_OperatingSystem | Select-Object Caption,InstallDate,OSArchitecture,RegisteredUser,CSName | FL" > %Logs%\OS.txt
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

FOR /F "tokens=5" %%a in ('FIND "Caption" %Logs%\OS.txt') do set OSCheck=%%a
FOR /F "skip=1 tokens=3" %%b in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" 2^>NUL') do (set OSVersion=%%b)
:: ------------------------------------------------------------------------------------------------------------------------------

:: Menü içinde sisteme göre ayarlama yapıyorum
if %OSCheck%==10 (set xxxxxeditmenu=Windows 10 Edit
				  set editmenugo=Win10SettingsMenu)
if %OSCheck%==11 (set xxxxxeditmenu=Windows 11 Edit
			      set editmenugo=Win11SettingsMenu)
	
:: ==============================================================================================================================
if %LogsSettings%==1 goto menu
Find "OGNITORENKS TOOLBOX %version%" %Location%\Logs > NUL 2>&1
	if %errorlevel%==1 ((
					    echo.
						echo ---------------------------------------------------------------------------------------------------------------------------
						echo [%date% - %time%] OgnitorenKs Toolbox başlatıldı.
						echo  ┌──────────────────────────────────────────────────────────────────────────────────────────┐
						echo  │ OGNITORENKS TOOLBOX %version% ^| USER:%registereduser% ^| PC-Name:%pcname%
						echo  │ OS: %caption% ^| x%osarch% ^| %ImageBuild% ^| %isderleme% ^| Power: %powerr%
						echo  └──────────────────────────────────────────────────────────────────────────────────────────┘
						echo ---------------------------------------------------------------------------------------------------------------------------
						) >> %Location%\Logs
						)
						
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:menu
mode con cols=100 lines=32
title               O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X
echo.
echo    %R%[90m████ ████ █   █ ███ █████ ████ ████ ███ █   █ █  █ ████    %R%[90m█████ ████ ████ █   ███  ████ █   █%R%[0m
echo    %R%[90m█  █ █    ██  █  █    █   █  █ █  █ █   ██  █ █ █  █       %R%[90m  █   █  █ █  █ █   █  █ █  █  █ █ %R%[0m 
echo    %R%[90m█  █ █ ██ █ █ █  █    █   █  █ ████ ██  █ █ █ ██   ████    %R%[90m  █   █  █ █  █ █   ███  █  █   █  %R%[0m	
echo    %R%[90m█  █ █  █ █  ██  █    █   █  █ █ █  █   █  ██ █ █     █    %R%[90m  █   █  █ █  █ █   █  █ █  █  █ █ %R%[0m
echo    %R%[90m████ ████ █   █ ███   █   ████ █  █ ███ █   █ █  █ ████    %R%[90m  █   ████ ████ ███ ███  ████ █   █%R%[0m
echo    %R%[90mognitorenks.blogspot.com                                                                   %R%[90m%version%%R%[0m
echo.
echo               %R%[90m %caption% %R%[90m^|%R%[90m x%osarch% %R%[90m^|%R%[90m %ImageBuild% %R%[0m%R%[90m^|%R%[90m %isderleme%%R%[0m
echo               %R%[90m┌──────────────────────────────────────────────────────────────────────┐%R%[0m
echo                %R%[33m Hoşgeldin,%R%[90m%registereduser%%R%[0m
echo               %R%[90m├──────────────────────────────────────────────────────────────────────┤%R%[0m
echo               %R%[90m│%R%[32m  1-%R%[36m Uygulama Yükleyici %R%[90m[M]      │%R%[32m   2-%R%[36m Araç Yükleyici%R%[90m [M]            │%R%[0m
echo               %R%[90m├─────────────────────────────────┬────────────────────────────────────┤
echo               %R%[90m│%R%[32m  3-%R%[33m %xxxxxeditmenu%%R%[90m [M]         │%R%[32m  13-%R%[33m Simge Hatalarını Onar         %R%[90m│%R%[0m
echo               %R%[90m│%R%[32m  4-%R%[33m Hizmetleri Yönet%R%[90m [M]        │%R%[32m  14-%R%[33m Ping Ölçer %R%[90m [*]               │%R%[0m
echo               %R%[90m│%R%[32m  5-%R%[37m Windows Editör%R%[90m [M]          │%R%[32m  15-%R%[33m Fat32 to NTFS%R%[90m [M]             │%R%[0m
echo               %R%[90m│%R%[32m  6-%R%[33m Kullancı Hesap Yönetimi%R%[90m[M]  │%R%[32m  16-%R%[33m Kayıtlı Wifi Bilgileri        %R%[90m│%R%[0m
echo               %R%[90m│%R%[32m  7-%R%[33m Lisans Yönetimi%R%[90m [M]         │%R%[32m  17-%R%[33m Zaman Ayarlı PC Kapat%R%[90m [M]     │%R%[0m
echo               %R%[90m│%R%[32m  8-%R%[33m Sistem Hakkında%R%[90m [*]         │%R%[32m  18-%R%[33m Appx - Güncelleme Yükleyici   %R%[90m│%R%[0m
echo               %R%[90m│%R%[32m  9-%R%[33m Güncelleme Sonrası Temizlik %R%[90m│%R%[32m  19-%R%[33m Hash Karşılaştırıcı%R%[90m [SHA-256] │%R%[0m
echo               %R%[90m│%R%[32m 10-%R%[33m Windows - Market Onar       %R%[90m│%R%[32m  20-%R%[33m Kaldırılamayan Uygulamalar%R%[90m [M]│%R%[0m
echo               %R%[90m│%R%[32m 11-%R%[33m PC Temizle                  %R%[90m│%R%[32m  21-%R%[37m Performans Optimizasyonu%R%[90m [M]  │%R%[0m
echo               %R%[90m│%R%[32m 12-%R%[33m İnternet Önbellek Temizle   %R%[90m│%R%[32m%R%[37m                                    %R%[90m│%R%[0m
echo               %R%[90m├─────────────────────────────────┼────────────────────────────────────┤%R%[0m
echo               %R%[90m│%R%[32m  Z-%R%[37m Toolbox Ayarları            %R%[90m│%R%[32m   X-%R%[37m Temizle ve Kapat              %R%[90m│%R%[0m
echo               %R%[90m└─────────────────────────────────┴────────────────────────────────────┘%R%[0m
set /p menu=%R%[32m               İşlem: %R%[0m
	if %menu%==1 goto menu2
	if %menu%==2 goto menu3
	if %menu%==3 goto %editmenugo%
	if %menu%==4 goto servicesmanagement
	if %menu%==5 (Call :WindowsEditor)
	if %menu%==6 goto AdminMenu
	if %menu%==7 goto Slmgrvbs
	if %menu%==8 (Call :SistemHakkinda)
	if %menu%==9 goto UpdateAfter
	if %menu%==10 goto WindowsRepair
	if %menu%==11 (Call :PC.Temizle)
	if %menu%==12 (Call :InternetCacheClear)
	if %menu%==13 (Call :IconFix)
	if %menu%==14 (Call :PingMeter)
	if %menu%==15 (Call :Fat32toNTFS)
	if %menu%==16 (Call :wifiinfoarchley)
	if %menu%==17 goto shutdownpc
	if %menu%==18 (Call :Update.Appx.Installer)
	if %menu%==19 (Call :HashChecker)
	if %menu%==20 goto NonRemovalMenu
	if %menu%==21 (Call :Optimizer)
	if %menu%==Win11 goto Windows11
	if %menu%==win11 goto Windows11
	if %menu%==Win10 goto Windows10
	if %menu%==win10 goto Windows10
	if %menu%==Res goto T.Settings
	if %menu%==res goto T.Settings
	if %menu%==reset goto T.Settings
	if %menu%==Reset goto T.Settings
	if %menu%==Z goto ToolboxSettings
	if %menu%==z goto ToolboxSettings
	if %menu%==x (Call :LogSave "Kalıntıları.Temizle" "Download klasörü temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
	if %menu%==X (Call :LogSave "Kalıntıları.Temizle" "Download klasörü temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
)
goto menu

:: ==============================================================================================================================

:aiomenu
cls
mode con cols=55 lines=22
title All In One Runtimes \ OgnitorenKs
Dism /Online /Get-Capabilities /format:table > %Logs%\Capabilities.aio.txt
Dism /Online /Get-Features /format:table > %Logs%\Features.aio.txt
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                All In One Runtimes                %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
set aioserv=%R%[100m %R%[0m
FOR /F "tokens=3" %%a in ('findstr /C:"NetFX3~~~~" %Logs%\Capabilities.aio.txt') do set aiokontrol=%%a
echo %aiokontrol% | findstr /C:"Installed" > NUL 2>&1
	if %errorlevel%==0 (set aioserv=%R%[32m♦%R%[0m)
echo  %R%[90m│   %R%[36m 1 %aioserv%%R%[90m -%C%[33m Net Framework 3.5                        %R%[90m│%R%[0m
set aioserv=%R%[100m %R%[0m
FOR /F "tokens=3" %%b in ('findstr /C:"IIS-ASPNET45" %Logs%\Features.aio.txt') do set aiokontrol=%%b
echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
	if %errorlevel%==0 (set aioserv=%R%[32m♦%R%[0m)
echo  %R%[90m│   %R%[36m 2 %aioserv%%R%[90m -%C%[33m Net Net Framework 4.5                    %R%[90m│%R%[0m
set aioserv=%R%[100m %R%[0m
FOR /F "tokens=3" %%b in ('findstr /C:"DirectPlay" %Logs%\Features.aio.txt') do set aiokontrol=%%b
echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
	if %errorlevel%==0 (set aioserv=%R%[32m♦%R%[0m)
echo  %R%[90m│   %R%[36m 3 %aioserv%%R%[90m -%C%[33m DirectPlay                               %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 4  %R%[90m -%C%[33m Microsoft C++ 2005                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 5  %R%[90m -%C%[33m Microsoft C++ 2008                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 6  %R%[90m -%C%[33m Microsoft C++ 2010                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 7  %R%[90m -%C%[33m Microsoft C++ 2012                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 8  %R%[90m -%C%[33m Microsoft C++ 2013                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 9  %R%[90m -%C%[33m Microsoft C++ 2015-2022                  %R%[90m│%R%[0m
echo  %R%[90m│  %R%[36m 10  %R%[90m -%C%[33m Desktop Runtime 6                        %R%[90m│%R%[0m
echo  %R%[90m│  %R%[36m 11  %R%[90m -%C%[33m XNA Framework 4.0                        %R%[90m│%R%[0m
echo  %R%[90m│  %R%[36m 12  %R%[90m -%C%[33m Java                                     %R%[90m│%R%[0m
echo  %R%[90m│  %R%[36m 13  %R%[90m -%C%[33m OpenAL                                   %R%[90m│%R%[0m
echo  %R%[90m│  %R%[36m 14  %R%[90m -%C%[33m DirectX                                  %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m X  %R%[90m -%R%[36m Menü                                     %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p $aioselect=%R%[32m  Çoklu Seçim %R%[90mx,y: %R%[0m

echo %$aioselect% | findstr /i "x" > NUL 2>&1
	if %errorlevel%==0 goto menu2

Call :LostMenu
echo    →%C%[96m Seçilenler: %$aioselect%%C%[0m
echo.
FOR %%a in (%$aioselect%) do (
	if %%a EQU 1 (FOR /F "tokens=3" %%a in ('findstr /C:"NetFX3~~~~" %Logs%\Capabilities.aio.txt') do set aiokontrol=%%a
				  echo %aiokontrol% | findstr /C:"Installed" > NUL 2>&1
				     if %errorlevel%==0 (Call :LogSave AIO "Net Framework 3.5 yüklü"
										 echo    ►%R%[31m Net Framework 3.5%R%[0m yüklü)
				     if %errorlevel%==1 (Call :LogSave AIO "Net Framework 3.5 yüklendi"
										 echo    ►%R%[33m Net Framework 3.5%R%[0m yükleniyor...
										 Dism /Online /Enable-Feature /Featurename:NetFx3 /All /Quiet /NoRestart))
	if %%a EQU 2 (FOR /F "tokens=3" %%b in ('findstr /C:"IIS-ASPNET45" %Logs%\Features.aio.txt') do set aiokontrol=%%b
				  echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
				     if %errorlevel%==0 (Call :LogSave AIO "Net Framework 4.5 yüklü"
										 echo    ►%R%[31m Net Framework 4.5%R%[0m yüklü)
				     if %errorlevel%==1 (Call :LogSave AIO "Net Framework 4.5 yüklendi"
										 echo    ►%R%[33m Net Framework 4.5%R%[0m yükleniyor...
										 Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All /Quiet /NoRestart))
	if %%a EQU 3 (FOR /F "tokens=3" %%b in ('findstr /C:"DirectPlay" %Logs%\Features.aio.txt') do set aiokontrol=%%b
				  echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
				     if %errorlevel%==0 (Call :LogSave AIO "DirectPlay yüklü"
										 echo    ►%R%[31m DirectPlay%R%[0m yüklü)
				     if %errorlevel%==1 (Call :LogSave AIO "DirectPlay yüklendi"
										 echo    ►%R%[33m DirectPlay%R%[0m yükleniyor...
									 Dism /Online /Enable-Feature /FeatureName:DirectPlay /All /Quiet /NoRestart))
	if %%a EQU 4 (Call :wget1 M.Visual.C++2005-x86.exe /Q
				  Call :wget1 M.Visual.C++2005-x64.exe /Q)
	if %%a EQU 5 (Call :wget1 M.Visual.C++2008-x86.exe /q
				  Call :wget1 M.Visual.C++2008-x64.exe /q)
	if %%a EQU 6 (Call :wget1 M.Visual.C++2010-x86.exe "/q /norestart"
				  Call :wget1 M.Visual.C++2010-x64.exe "/q /norestart")
	if %%a EQU 7 (Call :wget1 M.Visual.C++2012-x86.exe "/install /quiet /norestart"
				  Call :wget1 M.Visual.C++2012-x64.exe "/install /quiet /norestart")
	if %%a EQU 8 (Call :wget1 M.Visual.C++2013-x86.exe "/install /quiet /norestart"
				  Call :wget1 M.Visual.C++2013-x64.exe "/install /quiet /norestart")
	if %%a EQU 9 (Call :wget1 M.Visual.C++2015-x86.exe "/install /quiet /norestart"
				  Call :wget1 M.Visual.C++2015-x64.exe "/install /quiet /norestart")
	if %%a EQU 10 (Call :wget1 DesktopRuntime.6-x64.exe "/install /quiet /norestart"
				   Call :wget1 DesktopRuntime.6-x86.exe "/install /quiet /norestart")
	if %%a EQU 11 (Call :wget1 XNA.Framework.4.0.msi /qn)
	if %%a EQU 12 (Call :wget1 Java.exe "INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable REMOVEOUTOFDATEJRES=1")
	if %%a EQU 13 (Call :wget2 OpenAL.zip 
				   Call :Powershell "Expand-Archive -Force '%download%\OpenAL.zip' '%download%\OpenAL'"
				   "%download%\OpenAL\oalinst.exe" /SILENT)
	if %%a EQU 14 (Call :wget2 DirectX.exe
				   %download%\DirectX.exe /Q /C /T:"%download%\DirectX\"
				   "%download%\DirectX\DXSETUP.exe" /silent)
)
goto aiomenu

:: ==============================================================================================================================

:menu2
mode con cols=100 lines=39
title               O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X
set xognitorenksx=%R%[90m►
set yognitorenksyyyyyyy=%R%[32m    1%R%[37mM%R%[90m-%R%[36m
echo   %R%[90m┌──────────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                             Online Katılımsız Uygulama Yükleyici                             %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├────────────────────────────┬──────────────────────────────┬──────────────────────────────────┤%R%[0m
echo   %R%[90m│%yognitorenksyyyyyyy% All in One Runtimes %R%[90m│%R%[32m   26-%R%[33m Gimp                   %R%[90m│%xognitorenksx% Uzak Bağlantı                   %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Mesaj                     %R%[90m│%R%[32m   27-%R%[33m OBS Studio             %R%[90m│%R%[32m   53-%R%[36m  Teamviewer                %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    2-%R%[33m Discord              %R%[90m│%R%[32m   28-%R%[33m ShareX                 %R%[90m│%R%[32m   54-%R%[36m  AnyDesk                   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    3-%R%[33m Whatsapp             %R%[90m│%R%[32m   29-%R%[33m Audacity               %R%[90m│%xognitorenksx% Temizlik                        %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    4-%R%[33m Signal               %R%[90m│%R%[32m   30-%R%[33m JPEGView               %R%[90m│%R%[32m   55-%R%[33m  Hibit Uninstaller         %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    5-%R%[33m Telegram             %R%[90m│%R%[32m   31-%R%[33m HandBrake              %R%[90m│%R%[32m   56-%R%[33m  Revo Uninstaller          %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    6-%R%[33m Zoom                 %R%[90m│%R%[32m   32-%R%[33m FileConverter          %R%[90m│%R%[32m   57-%R%[33m  Wise Care 365             %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Oyun Kütüphane            %R%[90m│%xognitorenksx% Video-Ses Oynatıcı          %R%[90m│%R%[32m   58-%R%[33m  Unlocker                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    7-%R%[36m Epic Games           %R%[90m│%R%[32m   33-%R%[36m K-Lite Codec           %R%[90m│%xognitorenksx% Oyunlar                         %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    8-%R%[36m Steam                %R%[90m│%R%[32m   34-%R%[36m VLC Media Player       %R%[90m│%R%[32m   59-%R%[37m  OSU!                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    9-%R%[36m GOG Galaxy           %R%[90m│%R%[32m   35-%R%[36m PotPlayer              %R%[90m│%R%[32m   60-%R%[37m  World Of Tanks            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   10-%R%[36m Uplay                %R%[90m│%R%[32m   36-%R%[36m Aimp                   %R%[90m│%R%[32m   61-%R%[37m  Genshin Impact            %R%[90m│%R%[0m 
echo   %R%[90m│%R%[32m   11-%R%[36m Origin               %R%[90m│%R%[32m   37-%R%[36m Spotify                %R%[90m│%R%[32m   62-%R%[37m  League of Legends%R%[90m TR      │%R%[0m
echo   %R%[90m│%R%[32m   12-%R%[33m Wemod                %R%[90m│%xognitorenksx% İndirme Araçları            %R%[90m│%R%[32m   63-%R%[37m  League of Legends%R%[90m EUW     │%R%[0m
echo   %R%[90m│%xognitorenksx% Ram Temizleyici           %R%[90m│%R%[32m   38-%R%[33m Internet Download Man. %R%[90m│%R%[32m   64-%R%[37m  Valorant                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   13-%R%[37m ISLC                 %R%[90m│%R%[32m   39-%R%[33m Free Download Manager  %R%[90m│%xognitorenksx% Görev Çubuğu / Başlat Menüsü    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   14-%R%[37m Mem Reduct           %R%[90m│%R%[32m   40-%R%[33m EagleGet               %R%[90m│%R%[32m   65-%R%[36m  OpenShell                 %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Tarayıcı                  %R%[90m│%R%[32m   41-%R%[33m ByClick Downloader     %R%[90m│%R%[32m   66-%R%[36m  TaskbarX                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   15-%R%[33m Google Chrome        %R%[90m│%R%[32m   42-%R%[33m Qbittorrent            %R%[90m│%xognitorenksx% Diğer                           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   16-%R%[33m Mozilla Firefox      %R%[90m│%xognitorenksx% Belgeler                    %R%[90m│%R%[32m   67-%R%[33m  MSI Afterburner           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   17-%R%[33m Brave                %R%[90m│%R%[32m   43-%R%[36m Libre Office           %R%[90m│%R%[32m   68-%R%[33m  Everything                %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   18-%R%[33m Microsoft Edge       %R%[90m│%R%[32m   44-%R%[36m Adobe Reader           %R%[90m│%R%[32m   69-%R%[33m  Hamachi                   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   19-%R%[33m OperaGX              %R%[90m│%R%[32m   45-%R%[36m PDF X-Change           %R%[90m│%R%[32m   70-%R%[33m  Glasswire                 %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Sıkıştırma                %R%[90m│%R%[32m   46-%R%[36m Calibre                %R%[90m│%R%[32m   71-%R%[33m  WARP                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   20-%R%[36m 7-Zip                %R%[90m│%xognitorenksx% Geliştirme / Developer      %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   21-%R%[36m Winrar               %R%[90m│%R%[32m   47-%R%[36m Notepad++              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Multimedya                %R%[90m│%R%[32m   48-%R%[33m Python                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   22-%R%[33m Kdenlive             %R%[90m│%R%[32m   49-%R%[33m Visual Studio Code     %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   23-%R%[33m Openshout            %R%[90m│%R%[32m   50-%R%[33m Github                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m 
echo   %R%[90m│%R%[32m   24-%R%[33m Shoutcut             %R%[90m│%R%[32m   51-%R%[33m Git                    %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   25-%R%[33m Krita                %R%[90m│%R%[32m   52-%R%[33m Blender                %R%[90m│%R%[32m    X-%R%[37m  Menü                      %R%[90m│%R%[0m
echo   %R%[90m└────────────────────────────┴──────────────────────────────┴──────────────────────────────────┘
set /p $multi=%R%[32m  Çoklu Seçim %R%[90mx,y: %R%[0m 

echo %$multi% | findstr /i "x" > NUL 2>&1
	if %errorlevel%==0 goto menu
echo %$multi% | findstr /i "m" > NUL 2>&1
	if %errorlevel%==0 goto aiomenu

Call :LostMenu
echo    →%C%[96m Seçilenler: %$multi%%C%[0m
echo.
:: Sessiz kurulum parametler konusunda sunduğu eşsiz hizmetten ötürü "silentinstallhq" kurucusu Jason Bergner'e sonsuz teşekkürlerimi sunuyorum.
:: https://silentinstallhq.com/
FOR %%a in (%$multi%) do (
	if %%a==1 (Call :AIO.Runtimes)
	if %%a==2 if %Chocolatey%==0 (Call :Choco discord) else (Call :wget1 Discord.exe -s)
	if %%a==3 if %Chocolatey%==0 (Call :Choco whatsapp) else (Call :wget1 WhatsApp.exe --silent)
	if %%a==4 if %Chocolatey%==0 (Call :Choco signal) else (Call :wget1 Signal.exe /S)
	if %%a==5 if %Chocolatey%==0 (Call :Choco telegram) else (Call :wget1 Telegram.exe "/VERYSILENT /NORESTART")
	if %%a==6 if %Chocolatey%==0 (Call :Choco zoom) else (Call :wget1 Zoom.msi /qn)
	if %%a==7 if %Chocolatey%==0 (Call :Choco epicgameslauncher) else (Call :wget1 EpicGames.msi "/qn /norestart")
	if %%a==8 if %Chocolatey%==0 (Call :Choco steam) else (Call :wget1 Steam.exe /S)
	if %%a==9 if %Chocolatey%==0 (Call :Choco goggalaxy) else (Call :wget1 GOG.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==10 if %Chocolatey%==0 (Call :Choco uplay) else (Call :wget1 Uplay.exe /S)
	if %%a==11 if %Chocolatey%==0 (Call :Choco origin) else (Call :wget1 Origin.exe /SILENT)
	if %%a==12 (Call :wget1 Wemod.exe --silent)
	if %%a==13 (Call :wget2 ISLC.zip
				Call :Powershell "Expand-Archive -Force '%download%\ISLC.zip' 'C:\'"
				copy /y "C:\ISLC\ISLC.lnk" "C:\Users\%username%\Desktop" > NUL 2>&1)
	if %%a==14 if %Chocolatey%==0 (Call :Choco memreduct) else (Call :wget1 MemReduct.exe /S)
	if %%a==15 if %Chocolatey%==0 (Call :Choco googlechrome&Call :Plugins "Google\Chrome") else (Call :wget1 GoogleChrome.msi /qn&Call :Plugins "Google\Chrome")
	if %%a==16 if %Chocolatey%==0 (Call :Choco firefox) else (Call :wget1 Firefox.exe /S)
	if %%a==17 if %Chocolatey%==0 (Call :Choco brave&Call :Plugins "Google\Chrome") else (Call :wget1 Brave.exe "--install --silent --system-level"&Call :Plugins "Google\Chrome")			
	if %%a==18 if %Chocolatey%==0 (Call :Choco microsoft-edge&Call :Plugins "Microsoft\Edge") else (Call :wget1 Edge.msi /qn&Call :Plugins "Microsoft\Edge"
																									Call :Powershell "Start-Process '%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe'")
	if %%a==19 if %Chocolatey%==0 (Call :Choco opera-gx) else (Call :wget1 OperaGX.exe "/silent /allusers=1 /launchopera=0 /setdefaultbrowser=0")
	if %%a==20 if %Chocolatey%==0 (Call :Choco 7zip) else (Call :wget1 7-Zip.msi /qn)
	if %%a==21 if %Chocolatey%==0 (Call :Choco winrar) else (Call :wget1 Winrar.exe /S)
	if %%a==22 if %Chocolatey%==0 (Call :Choco kdenlive) else (Call :wget1 Kdenlive.exe /S)
	if %%a==23 if %Chocolatey%==0 (Call :Choco openshot) else (Call :wget1 Openshot.exe "/VERYSILENT /NORESTART")
	if %%a==24 if %Chocolatey%==0 (Call :Choco shotcut) else (Call :wget1 Shotcut.exe /S)
	if %%a==25 if %Chocolatey%==0 (Call :Choco krita) else (Call :wget1 Krita.exe /S)
	if %%a==26 if %Chocolatey%==0 (Call :Choco gimp) else (Call :wget1 Gimp.exe "/VERYSILENT /NORESTART /MERGETASKS=desktopicon /ALLUSERS")
	if %%a==27 if %Chocolatey%==0 (Call :Choco obs-studio) else (Call :wget1 OBS.exe /S)
	if %%a==28 if %Chocolatey%==0 (Call :Choco sharex) else (Call :wget1 ShareX.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==29 if %Chocolatey%==0 (Call :Choco audacity) else (Call :wget1 Audacity.exe "/VERYSILENT /NORESTART")
	if %%a==30 if %Chocolatey%==0 (Call :Choco jpegview&mkdir "%AppData%\JPEGView" > NUL 2>&1&Call :wget3 "%AppData%\JPEGView\JPEGView.ini") else (Call :wget1 JPEGView.msi /qn&mkdir "%AppData%\JPEGView" > NUL 2>&1&Call :wget3 "%AppData%\JPEGView\JPEGView.ini")
	if %%a==31 if %Chocolatey%==0 (Call :Choco handbrake) else (Call :wget1 HandBrake.exe /S)
	if %%a==32 if %Chocolatey%==0 (Call :Choco file-converter) else (Call :wget1 FileConverter.msi /qn)
	if %%a==33 if %Chocolatey%==0 (Call :Choco k-litecodecpackmega) else (Call :wget1 Klite.exe /verysilent)
	if %%a==34 if %Chocolatey%==0 (Call :Choco vlc) else (Call :wget1 VLCMediaPlayer.exe "/L=1055 /S")
	if %%a==35 if %Chocolatey%==0 (Call :Choco potplayer) else (Call :wget1 PotPlayer.exe /S)
	if %%a==36 if %Chocolatey%==0 (Call :Choco aimp) else (Call :wget1 Aimp.exe "/AUTO /SILENT")
	if %%a==37 (Call :wget2 Spotify.exe&%NSudo2% "%download%\Spotify.exe" /silent)
	if %%a==38 if %Chocolatey%==0 (Call :Choco internet-download-manager) else (Call :wget1 InternetDownloadManager.exe /skipdlgs)
	if %%a==39 if %Chocolatey%==0 (Call :Choco freedownloadmanager) else (Call :wget1 FreeDownloadManager.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==40 if %Chocolatey%==0 (Call :Choco eagleget) else (Call :wget2 EagleGet.zip
															   Call :Powershell "Expand-Archive -Force '%download%\EagleGet.zip' '%download%'"
															   "%download%\EagleGet.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-)
	if %%a==41 (Call :wget1 ByClick.exe /q)
	if %%a==42 if %Choc	olatey%==0 (Call :Choco qbittorrent) else (Call :wget1 Qbittorrent.exe /S)
	if %%a==43 if %Chocolatey%==0 (Call :Choco libreoffice-fresh) else (Call :wget1 LibreOffice.msi "/qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL")
	if %%a==44 if %Chocolatey%==0 (Call :Choco adobereader) else (Call :wget1 AdobeReader.exe "/sPB /rs /msi")
	if %%a==45 if %Chocolatey%==0 (Call :Choco pdfxchangeeditor) else (Call :wget1 PdfXchange.msi "/quiet /norestart")
	if %%a==46 if %Chocolatey%==0 (Call :Choco calibre) else (Call :wget1 Calibre.msi /qn)
	if %%a==47 if %Chocolatey%==0 (Call :Choco notepadplusplus) else (Call :wget1 Notepad.exe /S)
	if %%a==48 if %Chocolatey%==0 (Call :Choco python) else (Call :wget1 Python.exe "/quiet InstallAllUsers=1 PrependPath=1")
	if %%a==49 if %Chocolatey%==0 (Call :Choco visualstudiocode) else (Call :wget1 VisualStudioCode.exe "/VERYSILENT /NORESTART /MERGETASKS=!runcode")
	if %%a==50 if %Chocolatey%==0 (Call :Choco github-desktop) else (Call :wget1 Github.exe -s)
	if %%a==51 if %Chocolatey%==0 (Call :Choco git) else (Call :wget1 Git.exe "/VERYSILENT /NORESTART")
	if %%a==52 if %Chocolatey%==0 (Call :Choco blender) else (Call :wget1 Blender.msi "ALLUSERS=1 /qn")
	if %%a==53 if %Chocolatey%==0 (Call :Choco teamviewer) else (Call :wget1 TeamViewer.exe /S)
	if %%a==54 if %Chocolatey%==0 (Call :Choco anydesk) else (Call :wget1 AnyDesk.exe "--install %programfiles(x86)%\AnyDesk --start-with-win --create-shortcuts --create-desktop-icon --silent")
	if %%a==55 (Call :wget1 HibitUninstaller.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==56 if %Chocolatey%==0 (Call :Choco revo-uninstaller) else (Call :wget1 RevoUninstaller.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==57 (Call :wget2 WiseCare365.zip
			    Call :Powershell "Expand-Archive -Force '%download%\WiseCare365.zip' '%download%'"
				"%download%\WiseCare365.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-)
	if %%a==58 if %Chocolatey%==0 (Call :Choco io-unlocker) else (Call :wget1 Unlocker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==59 (Call :wget3 "C:\users\%username%\Desktop\osu.exe")
	if %%a==60 (Call :wget3 "C:\users\%username%\Desktop\WorldOfTanks.exe")
	if %%a==61 (Call :wget3 "C:\users\%username%\Desktop\GenshinImpact.exe")
	if %%a==62 (Call :wget3 "C:\users\%username%\Desktop\LeagueOfLegendsTR.exe")
	if %%a==63 (Call :wget3 "C:\users\%username%\Desktop\LeagueOfLegendsEUW.exe")
	if %%a==64 (Call :wget3 "C:\users\%username%\Desktop\Valorant.exe")
	if %%a==65 if %Chocolatey%==0 (Call :Choco open-shell) else (Call :wget1 OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu")
	if %%a==66 if %Chocolatey%==0 (Call :Choco taskbarx) else (Call :wget2 TaskbarX.zip
															   Call :Powershell "Expand-Archive -Force '%download%\TaskbarX.zip' 'C:\Users\%username%\Desktop\TaskbarX'"
															   Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX Configurator.exe'"
															   Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX.exe'")
	if %%a==67 if %Chocolatey%==0 (Call :Choco msiafterburner) else (Call :wget1 MSIAfterburner.exe /S)
	if %%a==68 if %Chocolatey%==0 (Call :Choco everything) else (Call :wget1 Everything.exe /S)
	if %%a==69 if %Chocolatey%==0 (Call :Choco hamachi) else (Call :wget1 Hamachi.msi /q)
	if %%a==70 if %Chocolatey%==0 (Call :Choco glasswire) else (Call :wget1 GlassWire.exe /S)
	if %%a==71 if %Chocolatey%==0 (Call :Choco warp) else (Call :wget1 WARP.msi "/qn /norestart")
)
goto menu2

:: ==============================================================================================================================

:menu3
mode con cols=69 lines=35
title               O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X
set xognitorenksx=%R%[90m►
echo   %R%[90m┌───────────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                  Araçlar Katılımsız Yükleyici                 %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├────────────────────────────┬──────────────────────────────────┤%R%[0m
echo   %R%[90m│%xognitorenksx% Windows Düzenleme         %R%[90m│%xognitorenksx% GPU / Driver Araçları           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    1-%R%[33m NTLite               %R%[90m│%R%[32m   22-%R%[36m Display Driver Uninstaller %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    2-%R%[33m Dism++               %R%[90m│%R%[32m   23-%R%[36m Nvidia Profile Inspector   %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% USB Hazırlayıcı           %R%[90m│%R%[32m   24-%R%[36m RadeonMod                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    3-%R%[36m Rufus                %R%[90m│%R%[32m   25-%R%[36m Radeon Software Slimmer    %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Donanım Bilgisi           %R%[90m│%R%[32m   26-%R%[36m NVCleanstall               %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    4-%R%[33m Aida64               %R%[90m│%R%[32m   27-%R%[36m Snappy Driver Installer    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    5-%R%[33m CPU-Z                %R%[90m│%xognitorenksx% Diğer                           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    6-%R%[33m GPU-Z                %R%[90m│%R%[32m   28-%R%[33m SSD Booster                %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    7-%R%[33m HW Info              %R%[90m│%R%[32m   29-%R%[33m Folder2ISO                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    8-%R%[33m CrystalDiskInfo      %R%[90m│%R%[32m   30-%R%[33m Process Monitor            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    9-%R%[33m HD Sentinel          %R%[90m│%R%[32m   31-%R%[33m AOMEI Partition Assistans  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   10-%R%[33m Core Temp            %R%[90m│%R%[32m   32-%R%[33m Spotify Adblocker          %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Test Araçları             %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   11-%R%[36m CrystalDiskMark      %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   12-%R%[36m Prime95              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   13-%R%[36m OCCT                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   14-%R%[36m FurMark              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Sanal Makine              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   15-%R%[33m Virtual Box          %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Simge Düzenleme           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   16-%R%[36m GreenFish            %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   17-%R%[36m Thumbico             %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   18-%R%[36m Quick Any 2 Ico      %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   19-%R%[36m Resource Hacker      %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Sistem Araçları           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   20-%R%[33m NSudo                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   21-%R%[33m Explorer++           %R%[90m│%R%[32m    X-%R%[33m Menü                       %R%[90m│%R%[0m
echo   %R%[90m└────────────────────────────┴──────────────────────────────────┘
set /p $multi=%R%[32m  Çoklu Seçim %R%[90mx,y: %R%[0m 

echo %$multi% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto menu
echo %$multi% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto menu		

Call :LostMenu
echo    →%C%[96m Seçilenler: %$multi%%C%[0m
echo.
mkdir C:\Users\%username%\Desktop\OgnitorenKs > NUL 2>&1
FOR %%a in (%$multi%) do (
	if %%a==1 if %Chocolatey%==0 (Call :Choco ntlite-free) else (Call :wget1 NTLite.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==2 if %Chocolatey%==0 (Call :Choco dismplusplus) else (Call :wget2 Dism++.zip
				Call :Powershell "Expand-Archive -Force '%download%\Dism++.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\Dism++'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Dism++\Dism++x64.exe'")
	if %%a==3 if %Chocolatey%==0 (Call :Choco rufus) else (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\Rufus.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Rufus.exe'")
	if %%a==4 if %Chocolatey%==0 (Call :Choco aida64-extreme) else (Call :wget2 AIDA64.zip
				Call :Powershell "Expand-Archive -Force '%download%\AIDA64.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\AIDA64'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\AIDA64\aida64.exe'")
	if %%a==5 if %Chocolatey%==0 (Call :Choco cpu-z) else (Call :wget2 CPU-Z.zip
				Call :Powershell "Expand-Archive -Force '%download%\CPU-Z.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\CPU-Z'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\CPU-Z\cpuz_x64.exe'")
	if %%a==6 if %Chocolatey%==0 (Call :Choco gpu-z) else (Call :wget2 GPU-Z.zip
				Call :Powershell "Expand-Archive -Force '%download%\GPU-Z.zip' 'C:\Users\%username%\Desktop\OgnitorenKs'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\GPU-Z.exe'")
	if %%a==7 if %Chocolatey%==0 (Call :Choco hwinfo) else (Call :wget2 HWInfo.zip
				Call :Powershell "Expand-Archive -Force '%download%\HWInfo.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\HWInfo'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\HWInfo\HWiNFO64.exe'")
	if %%a==8 if %Chocolatey%==0 (Call :Choco crystaldiskinfo) else (Call :wget2 CrystalDiskInfo.zip
				Call :Powershell "Expand-Archive -Force '%download%\CrystalDiskInfo.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\CrystalDiskInfo'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\CrystalDiskInfo\DiskInfo64.exe'")
	if %%a==9 if %Chocolatey%==0 (Call :Choco hdsentinel) else (Call :wget2 HDSentinel.zip
				Call :Powershell "Expand-Archive -Force '%download%\HDSentinel.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\HDSentinel'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\HDSentinel\HDSentinel.exe'")
	if %%a==10 if %Chocolatey%==0 (Call :Choco coretemp) else (Call :wget2 CoreTemp.zip
				Call :Powershell "Expand-Archive -Force '%download%\CoreTemp.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\CoreTemp'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\CoreTemp\Core Temp.exe'")
	if %%a==11 if %Chocolatey%==0 (Call :Choco crystaldiskmark) else (Call :wget2 CrystalDiskMark.zip
				Call :Powershell "Expand-Archive -Force '%download%\CrystalDiskMark.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\CrystalDiskMark'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\CrystalDiskMark\DiskMark64.exe'")
	if %%a==12 if %Chocolatey%==0 (Call :Choco prime95) else (Call :wget2 Prime95.zip
				Call :Powershell "Expand-Archive -Force '%download%\Prime95.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\Prime95'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Prime95\prime95.exe'")
	if %%a==13 if %Chocolatey%==0 (Call :Choco occt) else (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\OCCT.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\OCCT.exe'")
	if %%a==14 if %Chocolatey%==0 (Call :Choco furmark) else (Call :wget2 FurMark.zip
				Call :Powershell "Expand-Archive -Force '%download%\FurMark.zip' '%download%'"
				"%download%\FurMark.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-)
	if %%a==15 if %Chocolatey%==0 (Call :Choco virtualbox) else (Call :wget1 VirtualBox.exe "--silent --ignore-reboot")
	if %%a==16 (Call :wget1 GreenFish.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==17 if %Chocolatey%==0 (Call :Choco thumbico) else (Call :wget1 Thumbico.exe /S)
	if %%a==18 if %Chocolatey%==0 (Call :Choco any2ico) else (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\Quick_Any2Ico.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Quick_Any2Ico.exe'")
	if %%a==19 if %Chocolatey%==0 (Call :Choco reshack) else (Call :wget2 ResourceHacker.zip
				Call :Powershell "Expand-Archive -Force '%download%\ResourceHacker.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\ResourceHacker'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\ResourceHacker\ResourceHacker.exe'")
	if %%a==20 (Call :Powershell "Start-Process '%Location%\Files\NSudo.exe'")
	if %%a==21 if %Chocolatey%==0 (Call :Choco explorerplusplus) else (Call :wget2 Explorer++.zip
				Call :Powershell "Expand-Archive -Force '%download%\Explorer++.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\Explorer++'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Explorer++\Explorer++.exe'")
	if %%a==22 if %Chocolatey%==0 (Call :Choco ddu) else (Call :wget2 DDU.zip
				Call :Powershell "Expand-Archive -Force '%download%\DDU.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\DDU'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\DDU\Display Driver Uninstaller.exe'")
	if %%a==23 if %Chocolatey%==0 (Call :Choco nvidia-profile-inspector) else (Call :wget2 NvidiaProfileInspector.zip
				Call :Powershell "Expand-Archive -Force '%download%\NvidiaProfileInspector.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\NvidiaProfileInspector'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\NvidiaProfileInspector\nvidiaProfileInspector.exe'")
	if %%a==24 (Call :wget2 RadeonMod.zip
				Call :Powershell "Expand-Archive -Force '%download%\RadeonMod.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\RadeonMod'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\RadeonMod\RadeonMod.exe'")
	if %%a==25 (Call :wget2 RadeonSoftwareSlimmer.zip
				Call :Powershell "Expand-Archive -Force '%download%\RadeonSoftwareSlimmer.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\RadeonSoftwareSlimmer'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\RadeonSoftwareSlimmer\RadeonSoftwareSlimmer.exe'")
	if %%a==26 (Call :wget2 NVCleanstall.zip
				Call :Powershell "Expand-Archive -Force '%download%\NVCleanstall.zip' 'C:\Users\%username%\Desktop\OgnitorenKs'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\NVCleanstall.exe'")
	if %%a==27 if %Chocolatey%==0 (Call :Choco sdio) else (Call :wget2 Snappy.Driver.Installer.zip
				Call :Powershell "Expand-Archive -Force '%download%\Snappy.Driver.Installer.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\Snappy.Driver.Installer'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Snappy.Driver.Installer\SDIO_x64.exe'")
	if %%a==28 (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\SSDBooster.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\SSDBooster.exe'")
	if %%a==29 (Call :wget2 Folder2ISO.zip
				Call :Powershell "Expand-Archive -Force '%download%\Folder2ISO.zip' 'C:\Users\%username%\Desktop\OgnitorenKs'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Folder2ISO\Folder2Iso.exe'")
	if %%a==30 if %Chocolatey%==0 (Call :Choco procmon) else (Call :wget2 ProcessMonitor.zip
				Call :Powershell "Expand-Archive -Force '%download%\ProcessMonitor.zip' 'C:\Users\%username%\Desktop\OgnitorenKs\ProcessMonitor'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\ProcessMonitor\Procmon64.exe'")
	if %%a==31 if %Chocolatey%==0 (Call :Choco partition-assistant-standard) else (Call :wget1 AOEMI.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==32 (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\Spotify.Adblocker.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Spotify.Adblocker.exe'")
)
goto menu3
:: ==============================================================================================================================

:AIO.Runtimes
echo    %R%[1;97m%R%[42m All in One Runtimes yükleniyor... %R%[0m
Dism /Online /Get-Capabilities /format:table > %Logs%\Capabilities.aio.txt
Dism /Online /Get-Features /format:table > %Logs%\Features.aio.txt
FOR /F "tokens=3" %%a in ('findstr /C:"NetFX3~~~~" %Logs%\Capabilities.aio.txt') do set aiokontrol=%%a
echo %aiokontrol% | findstr /C:"Installed" > NUL 2>&1
	if %errorlevel%==1 (Call :LogSave AIO "Net Framework 3.5 yüklendi"
						echo    ►%R%[33m Net Framework 3.5%R%[0m yükleniyor...
						Dism /Online /Enable-Feature /Featurename:NetFx3 /All /Quiet /NoRestart)
FOR /F "tokens=3" %%b in ('findstr /C:"IIS-ASPNET45" %Logs%\Features.aio.txt') do set aiokontrol=%%b
echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
	if %errorlevel%==1 (Call :LogSave AIO "Net Framework 4.5 yüklendi"
						echo    ►%R%[33m Net Framework 4.5%R%[0m yükleniyor...
						Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All /Quiet /NoRestart)
FOR /F "tokens=3" %%b in ('findstr /C:"DirectPlay" %Logs%\Features.aio.txt') do set aiokontrol=%%b
echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
	if %errorlevel%==1 (Call :LogSave AIO "DirectPlay yüklendi"
						echo    ►%R%[33m DirectPlay%R%[0m yükleniyor...
						Dism /Online /Enable-Feature /FeatureName:DirectPlay /All /Quiet /NoRestart)
						
Call :wget1 M.Visual.C++2005-x86.exe /Q
Call :wget1 M.Visual.C++2005-x64.exe /Q
Call :wget1 M.Visual.C++2008-x86.exe /q
Call :wget1 M.Visual.C++2008-x64.exe /q
Call :wget1 M.Visual.C++2010-x86.exe "/q /norestart"
Call :wget1 M.Visual.C++2010-x64.exe "/q /norestart"
Call :wget1 M.Visual.C++2012-x86.exe "/install /quiet /norestart"
Call :wget1 M.Visual.C++2012-x64.exe "/install /quiet /norestart"
Call :wget1 M.Visual.C++2013-x86.exe "/install /quiet /norestart"
Call :wget1 M.Visual.C++2013-x64.exe "/install /quiet /norestart"
Call :wget1 M.Visual.C++2015-x86.exe "/install /quiet /norestart"
Call :wget1 M.Visual.C++2015-x64.exe "/install /quiet /norestart" 
Call :wget1 Java.exe "INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable REMOVEOUTOFDATEJRES=1"
Call :wget1 XNA.Framework.4.0.msi /qn
Call :wget1 DesktopRuntime.6-x64.exe "/install /quiet /norestart"
Call :wget1 DesktopRuntime.6-x86.exe "/install /quiet /norestart"
::
Call :wget2 OpenAL.zip 
Call :Powershell "Expand-Archive -Force '%download%\OpenAL.zip' '%download%\OpenAL'"
"%download%\OpenAL\oalinst.exe" /SILENT
::
Call :wget2 DirectX.exe
%download%\DirectX.exe /Q /C /T:"%download%\DirectX\"
"%download%\DirectX\DXSETUP.exe" /silent
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:IconFix
Call :LogSave "IconFix" "Simge önbelliğini temizle çalıştırıldı"
ie4uinit.exe -show
ie4uinit.exe -ClearIconCache
taskkill /f /im explorer.exe > NUL 2>&1
Call :sz "HKCU\Control Panel\Desktop" "WaitToKillAppTimeout" "10000"
Call :sz "HKCU\Control Panel\Desktop" "HungAppTimeout" "3000"
DEL /F /Q /A "%localappdata%\IconCache.db" > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\IconCacheToDelete\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\NotifyIcon\* > NUL 2>&1
RD /S /Q "%localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\AppIconCache" > NUL 2>&1
mkdir "%localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\AppIconCache" > NUL 2>&1
DEL /F /Q /A %localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\TempState\* > NUL 2>&1
Call :delete2 "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" IconStreams
Call :delete2 "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" PastIconsStream
Call :Powershell "Start-Process 'C:\Windows\explorer.exe'"
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:InternetCacheClear
Call :LogSave "InternetCacheClear" "İnternet önbelliği temizle çalıştırıldı"
echo %R%[32m              %R%[96m İnternet önbelleği temizleniyor...%R%[0m
netsh int ip reset > NUL 2>&1
netsh winsock reset > NUL 2>&1
netsh winhttp reset proxy > NUL 2>&1
netsh advfirewall reset > NUL 2>&1
ipconfig /flushdns > NUL 2>&1
ipconfig /release > NUL 2>&1
ipconfig /renew > NUL 2>&1
Call :ProcessCompletedReset
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:WindowsRepair
cls
mode con cols=100 lines=45
echo  %R%[90m┌────────────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                                     Windows / Store Onar                                       %R%[0m%R%[90m│%R%[0m
echo  %R%[90m└────────────────────────────────────────────────────────────────────────────────────────────────┘%R%[0m
Call :LogSave "WindowsRepair" "Windows / Store onar çalıştırıldı."
echo %R%[92m   Simge hataları onarılıyor...%R%[0m
ie4uinit.exe -show
ie4uinit.exe -ClearIconCache
taskkill /f /im explorer.exe > NUL 2>&1
Call :sz "HKCU\Control Panel\Desktop" "WaitToKillAppTimeout" "10000"
Call :sz "HKCU\Control Panel\Desktop" "HungAppTimeout" "3000"
DEL /F /Q /A "%localappdata%\IconCache.db" > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\IconCacheToDelete\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\NotifyIcon\* > NUL 2>&1
RD /S /Q "%localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\AppIconCache" > NUL 2>&1
mkdir "%localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\AppIconCache" > NUL 2>&1
DEL /F /Q /A %localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\TempState\* > NUL 2>&1
Call :delete2 "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" IconStreams
Call :delete2 "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" PastIconsStream
Call :Powershell "Start-Process 'C:\Windows\explorer.exe'"

echo %R%[92m   Sfc /scannow komutu çalışıyor...%R%[0m
sfc /scannow
cls
echo %R%[92m   DISM /Online /Cleanup-Image /RestoreHealth komutu çalıştırılıyor...%R%[0m
DISM /Online /Cleanup-Image /RestoreHealth

echo %R%[92m   WinSxS Temizleniyor...%R%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup 
cls
echo %R%[92m   SoftwareDistribution temizleniyor...%R%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1

echo %R%[92m   Microsoft Store onarılıyor...%R%[0m
:: Market bölümününün sorunsuz çalışması için reg kayıtlarını düzenler
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "RemoveWindowsStore" "0"
Call :delete2 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" "DODownloadMode" & :: BITS hizmeti varsayılan hale getiriliyor.
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "DisableSubscription" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "InactivityShutdownDelay" "0x0000012c"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ProcessBiosKey" "1"
Call :expandsz "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ServiceDll" "%windir%\System32\ClipSVC.dll"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ServiceDllUnloadOnStop" "1"
:: AppX Deployment Service (Dağıtım Hizmeti)
sc config AppXSvc start= demand > NUL 2>&1
net start AppXSvc /y > NUL 2>&1
:: Yetenek Erişim Yöneticisi Hizmeti
sc config camsvc start= demand > NUL 2>&1
net start camsvc /y > NUL 2>&1
:: Şifreleme Hizmetleri
sc config cryptsvc start= auto > NUL 2>&1
net start cryptsvc /y > NUL 2>&1
:: Windows Update
sc config wuauserv start= demand > NUL 2>&1
net start wuauserv /y > NUL 2>&1
:: Depolama Hizmeti
sc config StorSvc start= demand > NUL 2>&1
net start StorSvc /y > NUL 2>&1
:: Arka Plan Akıllı Aktarım Hizmeti
sc config bits start= auto > NUL 2>&1
net start bits /y > NUL 2>&1
::Windows Lisans Yöneticisi Hizmeti
sc config LicenseManager start= demand > NUL 2>&1
net start LicenseManager /y > NUL 2>&1
:: Windows Modül Yükleyici
sc config trustedinstaller start= demand > NUL 2>&1
net start trustedinstaller /y > NUL 2>&1

%NSudo% sc config ClipSVC start= demand
%NSudo% net start ClipSVC /y > NUL 2>&1

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

echo %R%[92m   Mağaza resetleniyor...%R%[0m
wsreset
echo %R%[92m   Genel Onarım yapılıyor...%R%[0m
:: Genel hata onarımı
Call :key "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore" & :: Ses düzeylerinin kaydedilmeme sorunu onarır.
Call :delete2 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoTrayItemsDisplay" & :: Görev çubuğunda ekran tepsisi simgelerini açar
Call :Powershell "Start-Process '%windir%\System32\ctfmon.exe'"
Call :ProcessCompletedReset
goto menu

:PC.Temizle
cls
mode con cols=64 lines=30
echo  %R%[90m┌────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                       PC Temizleniyor                      %R%[0m%R%[90m│%R%[0m
echo  %R%[90m└────────────────────────────────────────────────────────────┘%R%[0m
Call :LogSave "PCTemizle" "PC Temizle seçeği çalıştırıldı."
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

Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:Update.Appx.Installer
cls
mode con cols=70 lines=40
echo  %R%[90m┌──────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                     Appx - Güncelleme Yükleyici                  %R%[0m%R%[90m│%R%[0m
echo  %R%[90m└──────────────────────────────────────────────────────────────────┘%R%[0m
echo.
echo   %R%[37m Açılan klasör penceresinden%R%[0m
echo.
echo    •%R%[37m Güncelleme dosyalarını %R%[33m'Update'%R%[37m klasörüne%R%[0m
echo    •%R%[37m Appx dosyalarını %R%[33m'Appx'%R%[37m klasörüne atın%R%[0m
echo.
echo   %R%[32m İşleme devam etmek için herhangi bir tuşa basın%R%[0m
timeout /t 1 /nobreak > NUL
Call :Powershell "Start-Process '%Location%\Edit'"
pause > NUL

:: Güncelleme yükleyici
for /f %%a in ('"dir /b %Location%\Edit\Update\*"') do (
	Call :LogSave "Update.Appx.Installer" "'%Location%\Edit\Update\%%a' update dosyası yüklendi"
	DISM /Online /add-package /packagepath=%Location%\Edit\Update\%%a /norestart
)
:: Appx yükleyici
for /f %%b in ('"dir /b %Location%\Edit\Appx\*"') do (
	Call :LogSave "Update.Appx.Installer" "'%Location%\Edit\Appx\%%b' appx dosyası yüklendi"
	Call :Powershell "Add-AppxPackage -Path %Location%\Edit\Appx\%%b"
)
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Fat32toNTFS
mode con cols=63 lines=25
title Fat32 to NTFS dönüştürme / OgnitorenKs
echo   %R%[90m┌──────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                      Fat32 to NTFS                       %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├──────────────────────────────────────────────────────────┤%R%[0m
	echo       %C%[32mHarf      İsim%C%[0m
chcp 437 > NUL 2>&1
for /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property DeviceID,VolumeName"') do (
   echo     -  %%a)
chcp 65001 > NUL 2>&1
   echo       %R%[32m X.%R%[36m Menü%R%[0m
echo   %R%[90m└──────────────────────────────────────────────────────────┘%R%[0m
set /p value=%C%[92m  Dönüştürülecek Disk Harfi:%C%[0m
	if %value%==X GOTO menu
	if %value%==x GOTO menu
Call :LogSave "Fat32toNTFS" "%value% diski NTFS'ye dönüştürüldü."
convert %value%: /fs:NTFS /v
Call :ProcessCompleted
goto :eof


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:Slmgrvbs
cls
mode con cols=55 lines=16
title Lisans Yönetimi \ OgnitorenKs
echo.
echo   %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m          Lisans Yönetimi / SLMGR.VBS            %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo   %R%[90m│  %R%[32m 1.%C%[33m Lisans Gir%C%[90m [ipk]                           │%R%[0m
echo   %R%[90m│  %R%[32m 2.%C%[33m Lisans Durumu%C%[90m [dli]                        │%R%[0m
echo   %R%[90m│  %R%[32m 3.%C%[33m Lisans Durumu Detaylı%C%[90m [dlv]                │%R%[0m
echo   %R%[90m│  %R%[32m 4.%C%[33m Lisans Süresini Öğren%C%[90m [xpr]                │%R%[0m
echo   %R%[90m│  %R%[32m 5.%C%[33m Lisans Sil%C%[90m [upk]                           │%R%[0m
echo   %R%[90m│  %R%[32m 6.%C%[33m Lisans Süre Sıfırla%C%[90m [rearm]                │%R%[0m
echo   %R%[90m│  %R%[32m X.%R%[36m Menü                                       %R%[90m│%R%[0m
echo   %R%[90m└─────────────────────────────────────────────────┘%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
	if %value%==1 (Call :slmgrlisans)
	if %value%==2 (Call :LogSave "SLMGR.VBS" "Lisans Durumu, kontrol edildi."
				   slmgr /dli)		   
	if %value%==3 (Call :LogSave "SLMGR.VBS" "Lisans Durumu Detaylı, kontrol edildi."
				   slmgr /dlv)
	if %value%==4 (Call :LogSave "SLMGR.VBS" "Lisans Süresini Öğren, çalıştırıldı."
				   slmgr /xpr)
	if %value%==5 (Call :LogSave "SLMGR.VBS" "Lisans Sil, çalıştırıldı."
				   slmgr /upk)
	if %value%==6 (Call :LogSave "SLMGR.VBS" "Lisans Süre Sıfırla, çalıştırıldı."
				   slmgr /rearm)
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto Slmgrvbs
goto Slmgrvbs

:slmgrlisans
cls
echo   %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m            Manuel Lisanslama Hizmeti            %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├─────────────────────────────────────────────────┤%R%[0m
set /p value= %R%[92m   Lisans : %R%[0m
	if %value%==X (goto :eof)
	if %value%==x (goto :eof)
Call :LogSave "Slmgr.vbs" "Slmgr Lisans^(ipk^), Windows lisanslandı"
slmgr /ipk %value%
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:servicesmanagement
cls
mode con cols=55 lines=40
title Hizmet Yönetimi / OgnitorenKs
Dism /Online /Get-Features /format:table > %Logs%\servvalue.txt
DISM /Online /Get-Capabilities /format:table > %Logs%\servvalue2.txt
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" > NUL 2>&1
	if %errorlevel%==1 (Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" HibernateEnabled 1)
reg query "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" /v "SearchOrderConfig" > NUL 2>&1
	if %errorlevel%==1 (Call :dword "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" 1)
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                  Hizmet Yönetimi                  %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
set services=%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (BthAvctpSvc bthserv BluetoothUserService BTAGService CDPUserSvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m   %R%[32m 1%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Bluetooth hizmeti                    %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "Spooler"
echo  %R%[90m│%R%[0m   %R%[32m 2%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Yazıcı hizmeti                       %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (TapiSrv PhoneSvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m   %R%[32m 3%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Telefon hizmeti                      %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "DusmSvc"
echo  %R%[90m│%R%[0m   %R%[32m 4%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Tarifeli ağlar hizmeti               %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (iphlpsvc IpxlatCfgSvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m   %R%[32m 5%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m IP yardımcısı (IPv6)                 %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (icssvc SharedAccess ALG) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m   %R%[32m 6%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Mobil Etkin Nokta (Hotspot)          %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "RMSvc"
echo  %R%[90m│%R%[0m   %R%[32m 7%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Radyo ve Uçak modu hizmeti           %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (ConsentUxUserSvc DevicePickerUserSvc DevicesFlowUserSvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m   %R%[32m 8%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Miracast Hizmeti                     %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (PNRPAutoReg PNRPsvc p2psvc p2pimsvc upnphost SSDPSRV) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m   %R%[32m 9%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Akış Hizmeti%R%[90m o                       │%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (TermService UmRdpService SessionEnv RasAuto RasMan RpcLocator) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 10%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Uzak Masaüstü Hizmeti                %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "WSearch"
echo  %R%[90m│%R%[0m  %R%[32m 11%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Windows Search                       %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "wcncsvc"
echo  %R%[90m│%R%[0m  %R%[32m 12%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Windows Şimdi Bağlan(WPS) hizmeti    %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (FrameServer WiaRpc StiSvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 13%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Tarayıcı ve Kamera hizmetleri        %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "wisvc"
echo  %R%[90m│%R%[0m  %R%[32m 14%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Insider hizmeti                      %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "WbioSrvc"
echo  %R%[90m│%R%[0m  %R%[32m 15%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Biyometrik hizmeti                   %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m
if %OSCheck%==11 (Call :serv.check "PenService")
if %OSCheck%==10 (Call :serv.check "TabletInputService")
echo  %R%[90m│%R%[0m  %R%[32m 16%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Kalem ve Dokunmatik hizmeti          %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (SDRSVC VSS swprv wbengine fhsvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 17%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Sistem Geri yükleme hizmeti          %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "SysMain"
echo  %R%[90m│%R%[0m  %R%[32m 18%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Sysmain (Hızlı Getir)                %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m  %R%[32m 19%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Hızlı Başlat (Hibernate)             %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (lfsvc NaturalAuthentication) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 20%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Konum hizmeti                        %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "HvHost"
echo  %R%[90m│%R%[0m  %R%[32m 21%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Hyper-V hizmeti                      %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (BcastDVRUserService XboxGipSvc XboxNetApiSvc XblAuthManager XblGameSave DoSvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 22%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Xbox hizmeti                         %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "BDESVC"
echo  %R%[90m│%R%[0m  %R%[32m 23%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Bitlocker Sürücü şifreleme hizmeti   %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 24%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Karma Gerçeklik hizmeti (VR)         %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&reg query "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" /v "SearchOrderConfig" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m  %R%[32m 25%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Driver Yükle/Güncelle hizmeti        %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :Powershell "Get-MMAgent | Select-Object MemoryCompression| FL" > %Logs%\mc
findstr /i "False" %Logs%\mc > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m  %R%[32m 26%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Bellek Sıkıştırma hizmeti            %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m
reg query "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v  "ValueMax" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m  %R%[32m 27%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Core Parking (CPU Çekirdek Uyku Modu)%R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (WwanSvc WlanSvc wcncsvc lmhosts vwifibus NativeWifiP Ndisuio vwififlt) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 28%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Wifi hizmeti                         %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m
findstr /i "fax" %Logs%\servvalue2.txt | find /C /I "installed" > NUL 2>&1
	if %errorlevel%==0 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m  %R%[32m 29%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Fax hizmeti                          %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (FontCache FontCache3.0.0.0) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 30%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Yazı Tipi Önbellek hizmeti           %R%[90m│%R%[0m
set servalue=%R%[100m %R%[0m&Call :serv.check "seclogon"
echo  %R%[90m│%R%[0m  %R%[32m 31%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Hızlı Kullanıcı Değiştirme hizmeti   %R%[90m│%R%[0m
echo  %R%[90m│%R%[0m         %R%[32m X -%R%[36m Menü%R%[0m                                 %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p $value=%R%[32m  Çoklu Seçim %R%[90mxa,yk: %R%[0m 

echo %$value% | findstr /i "x" > NUL 2>&1
	if %errorlevel%==0 goto menu
cls
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                  Hizmet Yönetimi                  %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m

FOR %%a in (%$value%) do (
	if %%a==1a (Call :serv.1.bluetooth start demand auto açılıyor)
	if %%a==1A (Call :serv.1.bluetooth start demand auto açılıyor)
	if %%a==1K (Call :serv.1.bluetooth stop disabled disabled kapatılıyor)
	if %%a==1k (Call :serv.1.bluetooth stop disabled disabled kapatılıyor)
	if %%a==2a (Call :serv.2.yazici start demand auto açılıyor)
	if %%a==2A (Call :serv.2.yazici start demand auto açılıyor)
	if %%a==2K (Call :serv.2.yazici stop disabled disabled kapatılıyor)
	if %%a==2k (Call :serv.2.yazici stop disabled disabled kapatılıyor)
	if %%a==3a (Call :serv.3.phone start demand demand açılıyor)
	if %%a==3A (Call :serv.3.phone start demand demand açılıyor)
	if %%a==3K (Call :serv.3.phone stop disabled demand kapatılıyor)
	if %%a==3k (Call :serv.3.phone stop disabled demand kapatılıyor)
	if %%a==4a (Call :serv.4.tarifeli start auto açılıyor)
	if %%a==4A (Call :serv.4.tarifeli start auto açılıyor)
	if %%a==4K (Call :serv.4.tarifeli stop disabled kapatılıyor)
	if %%a==4k (Call :serv.4.tarifeli stop disabled kapatılıyor)
	if %%a==5a (Call :serv.5.ipyardimci start demand auto açılıyor)
	if %%a==5A (Call :serv.5.ipyardimci start demand auto açılıyor)
	if %%a==5K (Call :serv.5.ipyardimci stop disabled disabled kapatılıyor)
	if %%a==5k (Call :serv.5.ipyardimci stop disabled disabled kapatılıyor)
	if %%a==6a (Call :serv.6.hotspot start demand açılıyor)
	if %%a==6A (Call :serv.6.hotspot start demand açılıyor)
	if %%a==6K (Call :serv.6.hotspot stop disabled kapatılıyor)
	if %%a==6k (Call :serv.6.hotspot stop disabled kapatılıyor)
	if %%a==7a (Call :serv.7.ucakmodu start demand açılıyor)
	if %%a==7A (Call :serv.7.ucakmodu start demand açılıyor)
	if %%a==7K (Call :serv.7.ucakmodu stop disabled kapatılıyor)
	if %%a==7k (Call :serv.7.ucakmodu stop disabled kapatılıyor)
	if %%a==8a (Call :serv.8.miracast start demand açılıyor)
	if %%a==8A (Call :serv.8.miracast start demand açılıyor)
	if %%a==8K (Call :serv.8.miracast stop disabled kapatılıyor)
	if %%a==8k (Call :serv.8.miracast stop disabled kapatılıyor)
	if %%a==9o (Call :serv.9.akisozel)
	if %%a==9a (Call :serv.9.akis start demand açılıyor)
	if %%a==9A (Call :serv.9.akis start demand açılıyor)
	if %%a==9K (Call :serv.9.akis stop disabled kapatılıyor)
	if %%a==9k (Call :serv.9.akis stop disabled kapatılıyor)
	if %%a==10a (Call :serv.10.uzakmasaustu start demand açılıyor)
	if %%a==10A (Call :serv.10.uzakmasaustu start demand açılıyor)
	if %%a==10K (Call :serv.10.uzakmasaustu stop disabled kapatılıyor)
	if %%a==10k (Call :serv.10.uzakmasaustu stop disabled kapatılıyor)
	if %%a==11a (Call :serv.11.wsearch start auto açılıyor)
	if %%a==11A (Call :serv.11.wsearch start auto açılıyor)
	if %%a==11K (Call :serv.11.wsearch stop disabled kapatılıyor)
	if %%a==11k (Call :serv.11.wsearch stop disabled kapatılıyor)
	if %%a==12a (Call :serv.12.wps start demand açılıyor)
	if %%a==12A (Call :serv.12.wps start demand açılıyor)
	if %%a==12K (Call :serv.12.wps stop disabled kapatılıyor)
	if %%a==12k (Call :serv.12.wps stop disabled kapatılıyor)
	if %%a==13a (Call :serv.13.camera start demand açılıyor)
	if %%a==13A (Call :serv.13.camera start demand açılıyor)
	if %%a==13K (Call :serv.13.camera stop disabled kapatılıyor)
	if %%a==13k (Call :serv.13.camera stop disabled kapatılıyor)
	if %%a==14a (Call :serv.14.insider start demand açılıyor)
	if %%a==14A (Call :serv.14.insider start demand açılıyor)
	if %%a==14K (Call :serv.14.insider stop disabled kapatılıyor)
	if %%a==14k (Call :serv.14.insider stop disabled kapatılıyor)
	if %%a==15a (Call :serv.15.biyometrik start demand açılıyor)
	if %%a==15A (Call :serv.15.biyometrik start demand açılıyor)
	if %%a==15K (Call :serv.15.biyometrik stop disabled kapatılıyor)
	if %%a==15k (Call :serv.15.biyometrik stop disabled kapatılıyor)
	if %%a==16a (Call :serv.16.dokunmatik start demand açılıyor)
	if %%a==16A (Call :serv.16.dokunmatik start demand açılıyor)
	if %%a==16K (Call :serv.16.dokunmatik stop disabled kapatılıyor)
	if %%a==16k (Call :serv.16.dokunmatik stop disabled kapatılıyor)
	if %%a==17a (Call :serv.17.sistemgeriyukleme start demand ENABLE 0 boot açılıyor)
	if %%a==17A (Call :serv.17.sistemgeriyukleme start demand ENABLE 0 boot açılıyor)
	if %%a==17K (Call :serv.17.sistemgeriyukleme stop disabled DISABLE 1 disabled kapatılıyor)
	if %%a==17k (Call :serv.17.sistemgeriyukleme stop disabled DISABLE 1 disabled kapatılıyor)
	if %%a==18a (Call :serv.18.sysmain start auto açılıyor)
	if %%a==18A (Call :serv.18.sysmain start auto açılıyor)
	if %%a==18K (Call :serv.18.sysmain stop disabled kapatılıyor)
	if %%a==18k (Call :serv.18.sysmain stop disabled kapatılıyor)
	if %%a==19a (Call :serv.19.hibernate on 1 açılıyor)
	if %%a==19A (Call :serv.19.hibernate on 1 açılıyor)
	if %%a==19K (Call :serv.19.hibernate off 0 kapatılıyor)
	if %%a==19k (Call :serv.19.hibernate off 0 kapatılıyor)
	if %%a==20a (Call :serv.20.Location start demand Allow 1 "Call :delete2" "DisableLocation" açılıyor)
	if %%a==20A (Call :serv.20.Location start demand Allow 1 "Call :delete2" "DisableLocation" açılıyor)
	if %%a==20K (Call :serv.20.Location stop disabled Deny 0 "Call :dword" "DisableLocation 1" kapıtılıyor)
	if %%a==20k (Call :serv.20.Location stop disabled Deny 0 "Call :dword" "DisableLocation 1" kapıtılıyor)
	if %%a==21a (Call :serv.21.hyperv demand Enable For 1 on açılıyor)
	if %%a==21A (Call :serv.21.hyperv demand Enable For 1 on açılıyor)
	if %%a==21K (Call :serv.21.hyperv disabled Disable "::" 0 off kapatılıyor)
	if %%a==21k (Call :serv.21.hyperv disabled Disable "::" 0 off kapatılıyor)
	if %%a==22a (Call :serv.22.xbox start demand 1 0 "Call :delete2" açılıyor)
	if %%a==22A (Call :serv.22.xbox start demand 1 0 "Call :delete2" açılıyor)
	if %%a==22K (Call :serv.22.xbox stop disabled 0 2 "Call :dword" kapatılıyor)
	if %%a==22k (Call :serv.22.xbox stop disabled 0 2 "Call :dword" kapatılıyor)
	if %%a==23a (Call :serv.23.bitlocker start demand boot açılıyor)
	if %%a==23A (Call :serv.23.bitlocker start demand boot açılıyor)
	if %%a==23K (Call :serv.23.bitlocker stop disabled disabled kapatılıyor)
	if %%a==23k (Call :serv.23.bitlocker stop disabled disabled kapatılıyor)
	if %%a==24a (Call :serv.24.mixedreality demand açılıyor)
	if %%a==24A (Call :serv.24.mixedreality demand açılıyor)
	if %%a==24K (Call :serv.24.mixedreality disabled kapatılıyor)
	if %%a==24k (Call :serv.24.mixedreality disabled kapatılıyor)
	if %%a==25a (Call :serv.25.driverupdate 0 1 açılıyor)
	if %%a==25A (Call :serv.25.driverupdate 0 1 açılıyor)
	if %%a==25K (Call :serv.25.driverupdate 1 0 kapatılıyor)
	if %%a==25k (Call :serv.25.driverupdate 1 0 kapatılıyor)
	if %%a==26a (Call :serv.26.memorycompression Enable açılıyor)
	if %%a==26A (Call :serv.26.memorycompression Enable açılıyor)
	if %%a==26K (Call :serv.26.memorycompression Disable kapatılıyor)
	if %%a==26k (Call :serv.26.memorycompression Disable kapatılıyor)
	if %%a==27a (Call :serv.27.coreparking 100 "Call :delete" "Call :delete2" açılıyor)
	if %%a==27A (Call :serv.27.coreparking 100 "Call :delete" "Call :delete2" açılıyor)
	if %%a==27K (Call :serv.27.coreparking 0 "Call :dword" "Call :dword" kapatılıyor)
	if %%a==27k (Call :serv.27.coreparking 0 "Call :dword" "Call :dword" kapatılıyor)
	if %%a==28a (Call :serv.28.wifi start demand system açılıyor)
	if %%a==28A (Call :serv.28.wifi start demand system açılıyor)
	if %%a==28K (Call :serv.28.wifi stop disabled disabled kapatılıyor)
	if %%a==28k (Call :serv.28.wifi stop disabled disabled kapatılıyor)
	if %%a==29a (Call :serv.29.fax start demand add açılıyor)
	if %%a==29A (Call :serv.29.fax start demand add açılıyor)
	if %%a==29K (Call :serv.29.fax stop disabled remove kapatılıyor)
	if %%a==29k (Call :serv.29.fax stop disabled remove kapatılıyor)
	if %%a==30a (Call :serv.30.fontcache start demand açılıyor)
	if %%a==28A (Call :serv.30.fontcache start demand açılıyor)
	if %%a==30K (Call :serv.30.fontcache stop disabled kapatılıyor)
	if %%a==30k (Call :serv.30.fontcache stop disabled kapatılıyor)
	if %%a==31a (Call :serv.31.hizlikullanici start demand 0 açılıyor)
	if %%a==31A (Call :serv.31.hizlikullanici start demand 0 açılıyor)
	if %%a==31K (Call :serv.31.hizlikullanici stop disabled 1 kapatılıyor)
	if %%a==31k (Call :serv.31.hizlikullanici stop disabled 1 kapatılıyor)
)
Call :ProcessCompleted
goto servicesmanagement

:serv.check
FOR %%a in (%~1) do (reg query "HKLM\SYSTEM\CurrentControlSet\Services\%%a" /v "Start" | Findstr /i 4 > NUL 2>&1)
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
goto :eof

:serv.1.bluetooth
Call :LogSave "Hizmetleri Yönet" "Bluetooth hizmeti %4"
echo  ► %C%[96mBluetooth hizmeti %4 ...%C%[0m
:: Bluetooth (AVCTP hizmeti) | Bluetooth destek hizmeti | Bluetooth kullanıcı desteği hizmeti \ Ses ağ geçidi hizmeti
FOR %%a in (BthAvctpSvc bthserv BluetoothUserService BTAGService) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
sc config CDPUserSvc start= %3 > NUL 2>&1
net %1 CDPUserSvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : auto     | %4: açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled | %4: kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.2.yazici
Call :LogSave "Hizmetleri Yönet" "Yazıcı hizmeti %4"
echo  ► %C%[96mYazıcı hizmetleri %4 ...%C%[0m
sc config Spooler start= %3 > NUL 2>&1
net %1 Spooler /y > NUL 2>&1
:: Uzak Masaüstü Hizmetleri Kullanıcı Modu Bağlantı Noktası Yeniden Yönlendiricisi
sc config UmRdpService start= %2 > NUL 2>&1
net %1 UmRdpService /y > NUL 2>&1
DEL /F /Q /A %windir%\System32\spool\PRINTERS\* > NUL 2>&1
::----------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : auto     | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled | %4 : kapatılıyor
::----------------------------------------------------------------------
goto :eof

:serv.3.phone
Call :LogSave "Hizmetleri Yönet" "Telefon hizmeti %4"
echo  ► %C%[96mTelefon hizmeti %4 ...%C%[0m
:: Telefon | Telefon Hizmeti
FOR %%a in (TapiSrv PhoneSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
:: Bluetooth (AVCTP hizmeti) | Bluetooth destek hizmeti | Bluetooth kullanıcı desteği hizmeti | Ses ağ geçidi hizmeti
FOR %%a in (BthAvctpSvc bthserv BluetoothUserService BTAGService) do (sc config %%a start= %3 > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : demand  | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : demand  | %4 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.4.tarifeli
Call :LogSave "Hizmetleri Yönet" "Tarifeli ağlar hizmeti %3"
echo  ► %C%[96mTarifeli ağlar hizmeti %3 ...%C%[0m
:: Veri kullanımı
sc config DusmSvc start= %2 > NUL 2>&1
net %1 DusmSvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto     | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.5.ipyardimci
Call :LogSave "Hizmetleri Yönet" "IP yardımcı hizmeti %4"
echo  ► %C%[96mIP yardımcısı hizmeti %4 ...%C%[0m
:: IP Yardımcısı | IP Çeviri Yapılandırma Hizmeti
sc config iphlpsvc start= %3 > NUL 2>&1
net %1 iphlpsvc /y > NUL 2>&1
sc config IpxlatCfgSvc start= %2 > NUL 2>&1
net %1 IpxlatCfgSvc /y > NUL 2>&1
::----------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : auto     | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled | %4 : kapatılıyor
::----------------------------------------------------------------------
goto :eof

:serv.6.hotspot
Call :LogSave "Hizmetleri Yönet" "Mobil Etkin Nokta hizmeti %3"
echo  ► %C%[96mMobil etkin nokta hizmeti %3 ...%C%[0m
:: Windows Mobil Etkin Nokta Hizmeti | Internet Bağlantısı Paylaşımı (ICS) | Uygulama katmanı ağ geçidi hizmeti
FOR %%a in (icssvc SharedAccess ALG) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.7.ucakmodu
:: Windows 11'de ağ simgesinde sorun yaşanmaması için hizmetin kapatılması engellendi.
echo %~3 | Findstr /i "kapatılıyor" > NUL 2>&1
	if %errorlevel% EQU 0 if %OSCheck% EQU 11 (echo  ►%C%[31m Windows 11'de bu hizmet kapatılamaz.%C%[0m
											   timeout /t 3 /nobreak > NUL
					                           goto :eof)
Call :LogSave "Hizmetleri Yönet" "Radyo ve Uçak Modu hizmeti %3"dfr
echo  ► %C%[96mRadyo yönetim ve uçak modu hizmeti %3 ...%C%[0m
:: Radyo yönetimi ve uçak modu hizmeti
sc config RMSvc start= %2 > NUL 2>&1
net %1 RMSvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor   
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.8.miracast
echo  ► %C%[96mMiracast hizmeti %3 ...%C%[0m
echo %~3 | FIND /C /I "kapatılıyor" > NUL 2>&1
	if %errorlevel%==0 (Call :serv.8.miracast.warning)
Call :LogSave "Hizmetleri Yönet" "Miracast hizmeti %3"
:: ConsentUx kullanıcı hizmeti | Miracast, DLNA kullanıcı arabirimini | Cihaz Akışı
FOR %%a in (ConsentUxUserSvc DevicePickerUserSvc DevicesFlowUserSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand    | %3 : açılıyor    
:: Kapat = %1 : stop  | %2 : disabled  | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.8.miracast.warning
echo.
echo  ►%C%[33m Ayarlar/Cihazlar bölümü açılmayacaktır.%C%[0m
echo.
set /p Warning=%C%[32m  Devam etmek için%C%[33m 'E'%C%[32m, Menü için%C%[33m 'X'%C%[32m tuşlayın: %C%[0m
	if %Warning%==x (goto :eof)
	if %Warning%==X (goto :eof)
goto :eof

:serv.9.akis
Call :LogSave "Hizmetleri Yönet" "Akış deneyimi hizmeti %3"
echo  ► %C%[96mMedya Akış hizmeti %3 ...%C%[0m
::PNRP Makine adı yayın hizmeti | Eş adı çözümleme protokolü | Eş ağ gruplandırma | Eşler arası ağ oluşturma kimlik yöneticisi | UPNP aygıt ana makinesi | Upnp Aygıt ana bilgisyarı (Ağdaki cihazları bulur)
FOR %%a in (PNRPAutoReg PNRPsvc p2psvc p2pimsvc upnphost SSDPSRV) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand    | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled  | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.9.akisozel
Call :LogSave "Hizmetleri Yönet" "Akış deneyimi hizmeti özel açılıyor"
echo  ► %C%[96mMedya Akış hizmeti özel açılıyor ...%C%[0m
::PNRP Makine adı yayın hizmeti | Eş adı çözümleme protokolü | Eş ağ gruplandırma | Eşler arası ağ oluşturma kimlik yöneticisi | UPNP aygıt ana makinesi | Upnp Aygıt ana bilgisyarı (Ağdaki cihazları bulur)
FOR %%a in (PNRPAutoReg PNRPsvc p2psvc p2pimsvc upnphost) do (
	sc config %%a start= disabled > NUL 2>&1
	net stop %%a /y > NUL 2>&1)
sc config SSDPSRV start= demand > NUL 2>&1
net start SSDPSRV /y > NUL 2>&1
timeout /t 2 /nobreak > NUL
goto :eof

:serv.10.uzakmasaustu
Call :LogSave "Hizmetleri Yönet" "Uzak Masaüstü hizmeti %4"
echo  ► %C%[96mUzak Masaüstü hizmetleri %4 ...%C%[0m
:: Uzak masaüstü hizmetleri | Uzak Masaüstü Hizmetleri Kullanıcı Modu Bağlantı Noktası Yeniden Yönlendiricisi | Uzak Masaüstü Yapılandırması | Uzaktan Erişim Otomatik Bağlantı Yöneticisi | Uzaktan Erişim Bağlantı Yöneticisi | Uzaktan yordam çağrısı (RPC) bulucu
FOR %%a in (TermService UmRdpService SessionEnv RasAuto RasMan RpcLocator) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand    | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled  | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.11.wsearch
Call :LogSave "Hizmetleri Yönet" "Wsearch hizmeti %3"
echo  ► %C%[96mWindows Search hizmeti %3 ...%C%[0m
:: Windows Search
sc config WSearch start= %2 > NUL 2>&1
net %1 WSearch /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto     | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.12.wps
Call :LogSave "Hizmetleri Yönet" "WPS hizmeti %3"
echo  ► %C%[96mWindows Şimdi Bağlan hizmeti %3 ...%C%[0m
:: Windows Şimdi Bağlan - Yapılandırma Dosyası Kaydedici
::  WPS protokolünün uygulanmasını sağlar.
sc config wcncsvc start= %2 > NUL 2>&1
net %1 wcncsvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.13.camera
Call :LogSave "Hizmetleri Yönet" "Tarayıcı ve Kamera hizmeti %3"
echo  ► %C%[96mTarayıcı ve Kamera hizmetleri %3 ...%C%[0m
:: Windows Kamera çerçeve sunucusu | Windows Kamera Çerçeve Sunucusu | Resim alma olayları (Windows Görüntü Alma-WIA) | Windows Resim Alma (Windows Görüntü Alma (WIA))
FOR %%a in (FrameServer FrameServerMonitor WiaRpc StiSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.14.insider
Call :LogSave "Hizmetleri Yönet" "Insider hizmeti %3"
echo  ► %C%[96mWindows Insider hizmeti %3 ...%C%[0m
:: Windows Insider Hizmeti
sc config wisvc start= %2 > NUL 2>&1
net %1 wisvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.15.biyometrik
Call :LogSave "Hizmetleri Yönet" ^| "Biyometrik hizmeti %3"
echo  ► %C%[96mWindows Biyometrik hizmeti %3 ...%C%[0m
:: Windows Biyometrik Hizmeti
sc config WbioSrvc start= %2 > NUL 2>&1
net %1 WbioSrvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.16.dokunmatik
Call :LogSave "Hizmetleri Yönet" "Dokunmatik Klavye ve Kalem hizmeti %3"
echo  ► %C%[96mDokunmatik Klavye ve Kalem hizmeti %3 ...%C%[0m
:: Kalem servisi
sc config PenService start= %2 > NUL 2>&1
net %1 PenService /y > NUL 2>&1
::Dokunmatik Klavyeyi ve el yazısı paneli hizmeit
sc config TabletInputService start= %2 > NUL 2>&1
net %1 TabletInputService /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.17.sistemgeriyukleme
Call :LogSave "Hizmetleri Yönet" "Sistem Geri yükleme hizmeti %6"
echo  ► %C%[96mSistem geri yükleme hizmeti %6 ...%C%[0m
:: Windows Yedekleme ve Geri Yükleme hizmeti | Birim Gölge kopyası | Microsoft Yazılımı Gölge Kopya Sağlayıcısı | Blok Düzeyinde Yedekleme Altyapı Hizmeti | Dosya geçmişi hizmeti
FOR %%a in (SDRSVC VSS swprv wbengine fhsvc) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /%3 > NUL 2>&1
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableConfig" "%~4"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableSR" "%~4"
::-------------------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : ENABLE  | %~4 : 0  | %5 : boot      | %~6: açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %~4 : 1  | %5 : disabled  | %~6: kapatılıyor
::-------------------------------------------------------------------------------
goto :eof

:serv.18.sysmain
Call :LogSave "Hizmetleri Yönet" "Hızlı Getir^(Sysmain^) hizmeti %3"
echo  ► %C%[96mHızlı Getir hizmeti %3 ...%C%[0m
sc config SysMain start= %2 > NUL 2>&1
net %1 SysMain /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.19.hibernate
::Hızlı başlangıç
Call :LogSave "Hizmetleri Yönet" "Hızlı başlangıç^(Hibernate^) hizmeti %3"
echo  ► %C%[96mHızlı başlat %3 ...%C%[0m
powercfg /hibernate %1
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" "%~2"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" "%~2"
::-------------------------------------------------------
::    Aç = %1 : On  | %~2 : 1  | %3 : açılıyor
:: Kapat = %1 : Off | %~2 : 0  | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.20.Location
Call :LogSave "Hizmetleri Yönet" "Konum hizmeti %7"
echo  ► %C%[96mKonum hizmeti %7 ...%C%[0m
%~5 "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" %~6 > NUL 2>&1
Call :sz "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\Location" "Value" "%~3"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowLocation" "%~4" 
:: Natural Kimlik Doğrulama
sc config NaturalAuthentication start= %2 > NUL 2>&1
net %1 NaturalAuthentication /y > NUL 2>&1
:: Coğrafi Konum Hizmeti
sc config lfsvc start= %2 > NUL 2>&1
net %1 lfsvc /y > NUL 2>&1
::----------------------------------------------------------------------------------------------------------------------------------------------
::    Aç = %1 : start  | %2 : demand    | %~3 : Allow |  %~4 : 1 | %5 : Call :delete2  | %~6 : "DisableLocation"     | %7 : açılıyor
:: Kapat = %1 : stop   | %2 : disabled  | %~3 : Deny  |  %~4 : 0 | %5 : Call :dword    | %~6 : "DisableLocation 1"   | %7 : kapatılıyor
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

::serv.19.mediaplayer
Call :LogSave "Hizmetleri Yönet" "MediaPlayer hizmeti %4"
:: Windows Media Player
echo  ► %C%[96mWindows Media Player %4 ...%C%[0m
Dism /Online /%3-Feature /FeatureName:MediaPlayback /Quiet /NoRestart
Dism /online /%3-Feature /FeatureName:WindowsMediaPlayer /Quiet /NoRestart
:: Windows Media Player Ağ Paylaşım Hizmeti
sc config WMPNetworkSvc start= %2 > NUL 2>&1
net %1 WMPNetworkSvc /y > NUL 2>&1
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : ENABLE  | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %4 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:serv.21.hyperv
Call :LogSave "Hizmetleri Yönet" "Hyper-V hizmeti %6"
echo  ► %C%[96mHyper-V hizmeti %6 ...%C%[0m
:: %~3 /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
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

:serv.22.xbox
Call :LogSave "Hizmetleri Yönet" "Xbox hizmeti %6"
echo  ► %C%[96mXbox hizmeti %6 ...%C%[0m
:: Oyun DVR ve Yayın kullanıcı hizmeti | Xbox Accessory Management Service | Xbox Live Ağ Hizmeti | Xbox Live Kimlik Doğrulama Yöneticisi | Xbox Live Oyun Kaydetme | Teslimat optimizasyonu
FOR %%a in (BcastDVRUserService XboxGipSvc XboxNetApiSvc XblAuthManager XblGameSave) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
%NSudo% sc config DoSvc start= %2
%NSudo% net %1 DoSvc /y
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

:serv.23.bitlocker
Call :LogSave "Hizmetleri Yönet" "Bitlocker hizmeti %4"
echo  ► %C%[96mBitlocker hizmeti %4 ...%C%[0m
:: Bitlocker sürücü şifreleme hizmeti
sc config BDESVC start= %2 > NUL 2>&1
net %1 BDESVC /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : boot      | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled  | %4 : kapatılıyor
::------------------------------------------------------
goto :eof

:serv.24.mixedreality
Call :LogSave "Hizmetleri Yönet" "Karma Gerçeklik hizmeti %2"
echo  ► %C%[96mKarma Gerçeklik hizmeti %2 ...%C%[0m
:: Uzlamsal veri hizmeti | Volumetrik ses oluşturucu hizmeti | Windows algılama benzetimi hizmeti | Windows Algılama Hizmeti | Windows Mixed Reality OpenXR Service
FOR %%a in (SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc) do (
	sc config %%a start= %1 > NUL 2>&1)
::------------------------------------------
::    Aç = %1 : demand    | %2 : açılıyor   
:: Kapat = %1 : disabled  | %2 : kapatılıyor
::------------------------------------------
goto :eof

:serv.25.driverupdate
Call :LogSave "Hizmetleri Yönet"  "Driver Güncelle / Yükle %3"
echo  ► %C%[96mDriver Yükle/Güncelle hizmeti %3 ...%C%[0m
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

:serv.26.memorycompression
Call :LogSave "Hizmetleri Yönet" "Bellek sıkıştırma %2"
echo  ► %C%[96mBellek sıkıştırma hizmeti %2 ...%C%[0m
Call :Powershell "%~1-MMAgent -mc"
::-------------------------------------
::    Aç = %~1 : Enable   | %~2: açılıyor   
:: Kapat = %~1 : Disable  | %~2: kapatılıyor
::-------------------------------------
goto :eof

:serv.27.coreparking
Call :LogSave "Hizmetleri Yönet" "İşlemci çekirdek bekleme hizmeti %4."
echo  ► %C%[96mİşlemci çekirdek bekleme hizmeti %4 ...%C%[0m
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

:serv.28.wifi
Call :LogSave "Hizmetleri Yönet" "Wifi hizmeti %4"
echo  ►%C%[96m Wifi hizmeti %4 ...%C%[0m
:: WWAN Otomatik Yapılandırma | Kablosuz Yerel Ağ Otomatik Yapılandırma | Windows Şimdi Bağlan | TCP/IP NetBIOS Yardımcısı | 
FOR %%a in (WwanSvc WlanSvc wcncsvc lmhosts vwifibus NativeWifiP Ndisuio) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
sc config vwififlt start= %~3 > NUL 2>&1
net %1 vwififlt /y > NUL 2>&1
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : System   | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : Disabled | %4 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:serv.29.fax
Call :LogSave "Hizmetleri Yönet" "Fax hizmeti %4"
echo  ►%C%[96m Fax hizmeti %4 ...%C%[0m
Dism /Online /NoRestart /%~3-Capability /CapabilityName:Print.Fax.Scan~~~~0.0.1.0 > NUL 2>&1
sc config fax start= %~2 > NUL 2>&1
net %1 fax /y > NUL 2>&1
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : Add      | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : Remove   | %4 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:serv.30.fontcache
Call :LogSave "Hizmetleri Yönet" "FontCache hizmeti %3"
echo  ►%C%[96m Yazı Tipi Önbellek hizmeti %3 ...%C%[0m
For %%a in (FontCache FontCache3.0.0.0) do (
	sc config %%a start= %~2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1
)
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:serv.31.hizlikullanici
Call :LogSave "Hizmetleri Yönet" "Hızlı Kullanıcı değiştirme hizmeti %4"
echo  ►%C%[96m Hızlı Kullanıcı Değiştirme hizmeti %4 ...%C%[0m
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" "HideFastUserSwitching" %3
Call :dword "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\System" "HideFastUserSwitching" %3
sc config seclogon start= %2 > NUL 2>&1
net %1 seclogon /y > NUL 2>&1
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : 0  | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : 1  | %4 : kapatılıyor
::---------------------------------------------------------------------

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:wifiinfoarchley
:: Bu bölüm "ARCHLEY" tarafından eklenmiştir. 
mode con cols=65 lines=45
title Wifi bilgileri / (Archley)
Call :LogSave WifiInfo "Wifi Info bölümü açıldı"
echo  %R%[90m┌─────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                    Kayıtlı Wifi Bilgileri                   %R%[0m%R%[90m│%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                          (Archley)                          %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────────────────┤%R%[0m
FOR /F "tokens=5" %%a in ('netsh wlan show profil ^| find "All"') do (
	FOR /F "tokens=4" %%b in ('netsh wlan show profile "%%a" key^=clear ^| find "Content"') do (
		echo   ► %R%[36m%%a :%R%[33m %%b%R%[0m
		echo.
		)
	)
)
echo  %R%[90m└─────────────────────────────────────────────────────────────┘%R%[0m
echo %R%[32m  Menüye dönmek için herhangi bir tuşa basınız.%R%[0m
pause > NUL
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:WinSahiplik
cls
mode con cols=55 lines=15
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m               Sağ-Tık Sahiplik Al                 %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Ekle                                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Kaldır                                      %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %R%[92m  İşlem : %R%[0m
	if %value%==1 (Call :LogSave "WinSahiplik" "Sağ-tık 'Sahiplik Al' eklendi"
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
				   Call :ProcessCompleted
				   goto :eof)
	if %value%==2 (Call :LogSave "WinSahiplik" "Sağ-tık 'Sahiplik Al' kaldırıldı"
				   Call :delete "HKCR\*\shell\runas"
				   Call :delete "HKCR\Directory\shell\runas"
				   Call :ProcessCompleted
				   goto :eof)
	if %value%==x GOTO OSfind
	if %value%==X GOTO OSfind
) else
	goto WinSahiplik

:: ====================================================================

:WinCompactOS
cls
mode con cols=55 lines=15
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m           CompactOS (Windows Sıkıştırma)          %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m CompactOS Aç                                %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m CompactOS Kapat                             %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %C%[92m İşlem :%C%[0m
	if %value%==1 (Call :CompactOS always açılıyor)
	if %value%==2 (Call :CompactOS never kapatılıyor)
	if %value%==x GOTO OSfind
	if %value%==X GOTO OSfind
) else
	GOTO WinCompactOS

:CompactOS
Call :LogSave "CompactOS" "CompactOS %~2"
echo %C%[96m CompactOS sıkıştırma işlemi %~2 ...%C%[0m
Compact.exe /CompactOS:%~1
Call :ProcessCompleted
goto :eof

:: ====================================================================

:gpedit
Call :Location
Call :LogSave "Gpedit" "Gpedit.msc eklendi"
echo %C%[96m Gpedit.msc (Yerel Grup ilkesi) aktifleştiriliyor...%C%[0m
FOR /f %%a IN ('"dir /b /s %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%%a" > NUL 2>&1)
FOR /f %%a IN ('"dir /b /s %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%%a" > NUL 2>&1)
Call :ProcessCompleted
goto :eof

:: ====================================================================

:update2050
echo %C%[96m Güncelleştirmeler 2050 yılına erteleniyor...%C%[0m
Call :LogSave "update2050" "Güncelleştirmeler 2050 yılına ertelendi"
for /f "tokens=2" %%a in ('echo %date%') do set timeupdate=%%a
set TU=%timeupdate:~6%-%timeupdate:~3,-5%-%timeupdate:~0,-8%
for /f "tokens=1" %%a in ('echo %time%') do set tutime=%%a
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesStartTime" "%TU%T%tutime%Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesStartTime" "%TU%T%tutime%Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseUpdatesExpiryTime" "2050-12-29T%tutime%Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesEndTime" "2050-12-29T%tutime%Z"
Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesEndTime" "2050-12-29T%tutime%Z"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "NoAutoUpdate" "0" & :: Update Manuel
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "AUOptions" "2" & :: Update Manuel
Call :ProcessCompleted
goto OSfind

:: ====================================================================

:AltTab
cls
mode con cols=55 lines=15
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                    Alt + Tab  Menü                %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Eski                                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Yeni (Varsayılan)                           %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %C%[92m İşlem :%C%[0m
	if %value%==1 (Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "AltTabSettings" 1)
	if %value%==2 (Call :delete2 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "AltTabSettings")
	if %value%==x GOTO OSfind
	if %value%==X GOTO OSfind
) else
	goto AltTab
Call :ExplorerReset
Call :ProcessCompletedReset
goto OSfind

:: ====================================================================

:WinPhotoViewer
cls
mode con cols=55 lines=15
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m       Windows Fotoğraf Görüntüleyici Menü        %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Ekle                                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Kaldır (Varsayılan)                         %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %C%[92m İşlem :%C%[0m
	if %value%==1 (Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".tif" "PhotoViewer.FileAssoc.Tiff"
				   Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".tiff" "PhotoViewer.FileAssoc.Tiff"
				   Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".png" "PhotoViewer.FileAssoc.Tiff"
				   Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".bmp" "PhotoViewer.FileAssoc.Tiff"
				   Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".jpg" "PhotoViewer.FileAssoc.Tiff"
				   Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".jpeg" "PhotoViewer.FileAssoc.Tiff"
				   Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".ico" "PhotoViewer.FileAssoc.Tiff")
	if %value%==2 (Call :delete "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer")
	if %value%==x GOTO OSfind
	if %value%==X GOTO OSfind
) else
	goto WinPhotoViewer
Call :ExplorerReset
Call :ProcessCompleted
goto OSfind

:: ====================================================================

:RightClickYonet
cls
mode con cols=55 lines=15
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                 Sağ-Tık Yönet Menü                %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Ekle                                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Kaldır (Varsayılan)                         %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %C%[92m İşlem :%C%[0m
	if %value%==1 (Call :expandsz "HKCR\Directory\background\shell\Yonet" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\1.ico"
				   Call :sz "HKCR\Directory\background\shell\Yonet" "MUIVerb" "Yönet"
				   Call :sz "HKCR\Directory\background\shell\Yonet" "Position" "Top"
				   Call :sz "HKCR\Directory\background\shell\Yonet" "SubCommands" ""
				   ::
				   Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\1Control" "Icon" "%%%%SystemRoot%%%%\system32\shell32.dll,21"
				   Call :sz "HKCR\Directory\background\shell\Yonet\shell\1Control" "MUIVerb" "Denetim Masası"
				   Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\1Control\command"  "%%%%SystemRoot%%%%\system32\control.exe"
				   ::
				   Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\2Ayarlar" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\5.ico"
				   Call :sz "HKCR\Directory\background\shell\Yonet\shell\2Ayarlar" "MUIVerb" "Ayarlar"
				   Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\2Ayarlar\command" "%%%%SystemRoot%%%%\NSudo.exe -U:E -P:E -ShowWindowMode:hide cmd /c start ms-settings:"
				   ::
				   Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\3powercfg" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\4.ico"
				   Call :sz "HKCR\Directory\background\shell\Yonet\shell\3powercfg" "MUIVerb" "Güç Yönetimi"
				   Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\3powercfg\command"  "%%%%SystemRoot%%%%\system32\control.exe powercfg.cpl"
				   ::
				   Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\4Taskmgr" "Icon" "%%%%SystemRoot%%%%\system32\taskmgr.exe"
				   Call :sz "HKCR\Directory\background\shell\Yonet\shell\4Taskmgr" "MUIVerb" "Görev Yöneticisi"
				   Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\4Taskmgr\command"  "%%%%SystemRoot%%%%\system32\taskmgr.exe"
				   ::
				   Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\5CMD" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\2.ico"
				   Call :sz "HKCR\Directory\background\shell\Yonet\shell\5CMD" "MUIVerb" "Komut İstemi"
				   Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\5CMD\command"  "%%%%SystemRoot%%%%\NSudo.exe -U:T -P:E cmd.exe /k title Trusted Installer / OgnitorenKs"
				   ::
				   Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\6Regedit" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\3.ico"
				   Call :sz "HKCR\Directory\background\shell\Yonet\shell\6Regedit" "MUIVerb" "Regedit"
				   Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\6Regedit\command"  "%%%%SystemRoot%%%%\NSudo.exe -U:T -P:E regedit.exe"
				   ::
				   Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\7ExplorerRestart" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\6.ico"
				   Call :sz "HKCR\Directory\background\shell\Yonet\shell\7ExplorerRestart" "MUIVerb" "Explorer Reset"
				   Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\7ExplorerRestart\command" "%%%%SystemRoot%%%%\NSudo.exe -U:E -P:E -ShowWindowMode:hide cmd /c taskkill /f /im explorer.exe&&start explorer"
				   ::
				   Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\8TempClear" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\7.ico"
				   Call :sz "HKCR\Directory\background\shell\Yonet\shell\8TempClear" "MUIVerb" "Temp Temizle"
				   Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\8TempClear\command" "%%%%SystemRoot%%%%\NSudo.exe -U:E -P:E -ShowWindowMode:hide cmd /c RD /S /Q %%%%%temp%%%%"
				   ::
				   Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\9IconCache" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\8.ico"
				   Call :sz "HKCR\Directory\background\shell\Yonet\shell\9IconCache" "MUIVerb" "Simge Önbelliğini Temizle"
				   Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\9IconCache\command" "%%%%SystemRoot%%%%\NSudo.exe -U:E -P:E -ShowWindowMode:hide cmd /c %%%%Windir%%%%\ReIconCache.exe /I /F"
				   %NSudo% Powershell -command "Expand-Archive -Force '%Location%\Files\ico\RightClickYonet.zip' '%Windir%'")
	if %value%==2 (Call :delete "HKCR\Directory\background\shell\Yonet")
	if %value%==x GOTO OSfind
	if %value%==X GOTO OSfind
) 
Call :ProcessCompleted
goto OSfind

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Win11SettingsMenu
cls
mode con cols=55 lines=22
title Windows 11 Özelleştir / OgnitorenKs
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m              Windows 11 Özelleştirme              %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Taskbar Boyut%C%[90m [KÜÇÜK/BÜYÜK]                 │%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Taskbar Konumu%C%[90m [ALT/ÜST]                    │%R%[0m
echo  %R%[90m│   %R%[32m 3.%C%[33m Taskbar Simge Konumu%C%[90m [SOL/ORTA]             │%R%[0m
echo  %R%[90m│   %R%[32m 4.%C%[33m Sağ-Tık Menü%C%[90m [ESKİ/YENİ]                    │%R%[0m
echo  %R%[90m│   %R%[32m 5.%C%[33m Sağ-Tık Terminal%C%[90m [EKLE/KALDIR]              │%R%[0m
echo  %R%[90m│   %R%[32m 6.%C%[33m Sahiplik Al%C%[90m [EKLE/KALDIR]                   │%R%[0m
echo  %R%[90m│   %R%[32m 7.%C%[33m Compact OS (Windows Sıkıştırma)%C%[90m [AÇ/KAPAT]  │%R%[0m
echo  %R%[90m│   %R%[32m 8.%C%[33m Gpedit.msc(Yerel Grup ilkesi)%C%[90m [EKLE]        │%R%[0m
echo  %R%[90m│   %R%[32m 9.%C%[33m Güncelleştirmeleri 2050 yılına ertele       %R%[90m│%R%[0m
echo  %R%[90m│  %R%[32m 10.%C%[33m Telemetri/reklam engelli hosts%C%[90m [EKLE]       │%R%[0m
echo  %R%[90m│  %R%[32m 11.%C%[33m Windows Fotoğraf Görüntüleyici%C%[90m [EKLE/KALDIR]│%R%[0m
echo  %R%[90m│  %R%[32m 12.%C%[33m Alt + Tab%C%[90m [ESKİ/YENİ]                       │%R%[0m
echo  %R%[90m│  %R%[32m 13.%C%[33m Sağ-Tık Yönet%C%[90m [EKLE/KALDIR]                 │%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
	if %value%==1 (Call :Win11MenuChange)
	if %value%==2 (Call :Win11MenuLocation)
	if %value%==3 (Call :Win11MenuOld)
	if %value%==4 (Call :Win11RightClick)
	if %value%==5 (Call :Win11RightMenuTerminal)
	if %value%==6 (Call :WinSahiplik)
	if %value%==7 (Call :WinCompactOS)
	if %value%==8 (Call :gpedit)
	if %value%==9 goto update2050
	if %value%==10 (%NSudo% Rename "%windir%\System32\drivers\etc\hosts" "hosts.bak"
					%NSudo% copy /y "%Location%\Files\hosts" "%windir%\System32\drivers\etc"
					Call :ProcessCompleted)
	if %value%==11 goto WinPhotoViewer
	if %value%==12 goto AltTab
	if %value%==13 goto RightClickYonet
	if %value%==x GOTO menu
	if %value%==X GOTO menu
)
goto Win11SettingsMenu

:Win11MenuChange
cls
mode con cols=55 lines=15
title Görev çubuğu boyut ayarı / OgnitorenKs
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m             Görev Çubuğu Boyut Ayarı              %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 0.%C%[33m Küçük                                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Varsayılan                                  %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Büyük                                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
if %OSCheck% EQU 11 if %OSVersion% EQU 22H2 (echo  %R%[31m 22H2 sürümünde çalışmaz%R%[0m
											 echo  %R%[31m Menü için herhangi bir tuşa basınız%R%[0m
											 pause > NUL
											 goto :eof)
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==x GOTO Win11SettingsMenu
	if %value%==X GOTO Win11SettingsMenu

Call :LogSave "Win11MenuChange" "Taskbar boyut ayarı '%value%' olarak ayarlandı"	
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarSi" "%value%"
Call :ExplorerReset
Call :ProcessCompleted
GOTO Win11SettingsMenu

:Win11MenuLocation
cls
mode con cols=55 lines=15
title Görev çubuğu konum ayarı / OgnitorenKs
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                Görev Çubuğu Konumu                %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Üst                                         %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 3.%C%[33m Alt                                         %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
if %OSCheck% EQU 11 if %OSVersion% EQU 22H2 (echo  %R%[31m 22H2 sürümünde çalışmaz%R%[0m
											 echo  %R%[31m Menü için herhangi bir tuşa basınız%R%[0m
											 pause > NUL
											 goto :eof)
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==x GOTO Win11SettingsMenu
	if %value%==X GOTO Win11SettingsMenu

Call :LogSave "Win11MenuLocation" "Taskbar Location ayarı '%value% olarak ayarlandı"
Call :binary "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3" "Settings" "30000000feffffff7af400000%value%0000003000000030000000000000000804000080070000380400006000000001000000"
Call :ExplorerReset
Call :ProcessCompleted
GOTO Win11SettingsMenu

:Win11MenuOld
cls
mode con cols=55 lines=15
title Görev çubuğu simge konum ayarı / OgnitorenKs
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m            Görev Çubuğu Simge Konumu              %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 0.%C%[33m Sol                                         %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Orta                                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==x GOTO Win11SettingsMenu
	if %value%==X GOTO Win11SettingsMenu

Call :LogSave "Win11MenuOld" "Taskbar simge Locationu '%value%' olarak ayarlandı"
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAl" "%value%"
Call :ExplorerReset
Call :ProcessCompleted
GOTO Win11SettingsMenu

:Win11RightClick
cls
mode con cols=55 lines=15
title Sağ tık seçenek ayarı / OgnitorenKs
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                 Sağ-Tık Menü Ayarı                %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Eski                                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Yeni                                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==1 (Call :LogSave "Win11RightClick" "Windows 11 sağ-tık ayarı eski haline getirildi"
				   Call :key "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"
				   Call :ExplorerReset
				   Call :ProcessCompleted)
	if %value%==2 (Call :LogSave "Win11RightClick" "Windows 11 sağ-tık ayarı yeni haline getirildi"
				   Call :delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"
				   Call :ProcessCompleted)
	if %value%==x GOTO Win11SettingsMenu
	if %value%==X GOTO Win11SettingsMenu
)
goto Win11RightClick


:Win11RightMenuTerminal
cls
mode con cols=55 lines=15
title Sağ-tık Terminal ayarı / OgnitorenKs
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m              Sağ-Tık Terminal Ayarı               %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Terminal%C%[90m [KALDIR]                           │%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Terminal%C%[90m [EKLE]                             │%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==1 (Call :LogSave "Win11RightMenuTerminal" "Windows 11 sağ-tık bölümünden terminal kaldırıldı"
				   Call :sz "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" "{9F156763-7844-4DC4-B2B1-901F640F5155}" ""
				   Call :ExplorerReset
				   Call :ProcessCompleted)
	if %value%==2 (Call :LogSave "Win11RightMenuTerminal" "Windows 11 sağ-tık bölümüne terminal eklendi"
				   Call :delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked"
				   Call :ProcessCompleted)
	if %value%==x GOTO Win11SettingsMenu
	if %value%==X GOTO Win11SettingsMenu
)
goto Win11RightMenuTerminal

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Win10SettingsMenu
cls
mode con cols=55 lines=21
title Windows 10 Özelleştir / OgnitorenKs
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m              Windows 10 Özelleştirme              %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Taskbar saat yanı simge ayarı%C%[90m [GÖSTER/GİZLE]│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Bildirim Alanı%C%[90m [AÇ/KAPAT]                   │%R%[0m
echo  %R%[90m│   %R%[32m 3.%C%[33m Sahiplik Al%C%[90m [EKLE/KALDIR]                   │%R%[0m
echo  %R%[90m│   %R%[32m 4.%C%[33m Taskbar Hava Durumu%C%[90m [AÇ/KAPAT]              │%R%[0m
echo  %R%[90m│   %R%[32m 5.%C%[33m Microsoft Store kaldır                      %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 6.%C%[33m Compact OS (Windows Sıkıştırma)%C%[90m [AÇ/KAPAT]  │%R%[0m
echo  %R%[90m│   %R%[32m 7.%C%[33m Gpedit.msc (Yerel Grup ilkesi)%C%[90m [EKLE]       │%R%[0m
echo  %R%[90m│   %R%[32m 8.%C%[33m Simgeleri Değiştir%C%[90m [ESKİ/YENİ]              │%R%[0m
echo  %R%[90m│   %R%[32m 9.%C%[33m Güncelleştirmeleri 2050 yılına ertele       %R%[90m│%R%[0m
echo  %R%[90m│  %R%[32m 10.%C%[33m Telemetri/reklam engelli hosts%C%[90m [EKLE]       │%R%[0m
echo  %R%[90m│  %R%[32m 11.%C%[33m Windows Fotoğraf Görüntüleyici%C%[90m [EKLE/KALDIR]│%R%[0m
echo  %R%[90m│  %R%[32m 12.%C%[33m Alt + Tab%C%[90m [ESKİ/YENİ]                       │%R%[0m
echo  %R%[90m│  %R%[32m 13.%C%[33m Sağ-Tık 'Yönet'%C%[90m [EKLE/KALDIR]               │%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
	if %value%==1 (Call :Win10EkranTepsi)
	if %value%==2 (Call :Win10Bildirim)
	if %value%==3 (Call :WinSahiplik)
	if %value%==4 (Call :Win10HavaDurumu)
	if %value%==5 (Call :StoreRemove)
	if %value%==6 (Call :WinCompactOS)
	if %value%==7 (Call :gpedit)
	if %value%==8 GOTO icochangemenu
	if %value%==9 goto update2050
	if %value%==10 (%NSudo% Rename "%windir%\System32\drivers\etc\hosts" "hosts.bak"
					%NSudo% copy /y "%Location%\Files\hosts" "%windir%\System32\drivers\etc"
					Call :ProcessCompleted)
	if %value%==11 goto WinPhotoViewer
	if %value%==12 goto AltTab
	if %value%==13 goto RightClickYonet
	if %value%==x GOTO menu
	if %value%==X GOTO menu
)
GOTO Win10SettingsMenu
:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------
	
:Win10EkranTepsi
cls
mode con cols=55 lines=15
title Görev çubuğu düzenleniyor... / OgnitorenKs
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m               Saat Yanı Simge Ayarı               %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 0.%C%[33m Hepsini Göster                              %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Hepsini Gizle                               %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu

Call :LogSave Win10EkranTepsi "Windows 10 Saat yanı simgeri ayarı '%value%' olarak ayarlandı"
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "EnableAutoTray" "%value%"
Call :ExplorerReset
Call :ProcessCompleted
GOTO Win10SettingsMenu

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:Win10Bildirim
cls
mode con cols=55 lines=15
title Bildirim alanı düzenleniyor... / OgnitorenKs
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m               Bildirim Alanı Ayarı                %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 0.%C%[33m Açık                                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Kapalı                                      %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %C%[92m  İşlem : %C%[0m
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu

Call :LogSave Win10Bildirim "Windows 10 Bildirim alanı ayarı '%value%' olarak ayarlandı"
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "%value%"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "%value%"
Call :ExplorerReset
Call :ProcessCompleted
GOTO Win10SettingsMenu

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:Win10HavaDurumu
cls
mode con cols=55 lines=15
title Taskbar Hava Durumu düzenleniyor... / OgnitorenKs
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m         Görev Çubuğu Hava Durumu Ayarı            %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 0.%C%[33m Kapat                                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Aç                                          %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %C%[92m  İşlem : %C%[0m
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu

Call :LogSave "Win10HavaDurumu" "%value% değeri girildi"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" "EnableFeeds" "%value%"
Call :ExplorerReset
Call :ProcessCompleted
GOTO Win10SettingsMenu

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:StoreRemove
cls
mode con cols=109 lines=35
title Microsoft Store kaldırılıyor / OgnitorenKs

echo %R%[92m Microsoft Store ve bağlı tüm uygulamalar kaldırılacak%R%[0m
set /p value=%R%[92m Menü için%R%[96m "X"%R%[92m Devam etmek için herhangi bir tuşlama yapın : %R%[0m
	if %value%==x (goto :eof)
	if %value%==X (goto :eof)
cls
Call :LogSave StoreRemove "Windows 10 market uygulamaları kaldırıldı"
echo %R%[92m Microsoft Store siliniyor...%R%[0m
Call :Powershell "Get-AppXPackage | Remove-AppxPackage"
echo %R%[92m Hizmetler durduruluyor...%R%[0m
net stop wuauserv /y > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution" > NUL 2>&1
net start wuauserv /y > NUL 2>&1
:: AppX Dağıtım Hizmeti
sc config AppXSvc start= disabled > NUL 2>&1
net stop AppXSvc /y > NUL 2>&1
:: Yetenek erişim yönetim istemcisi
sc config camsvc start= disabled > NUL 2>&1
net stop camsvc /y > NUL 2>&1
:: Depolama hizmeti
sc config StorSvc start= disabled > NUL 2>&1
net stop StorSvc /y > NUL 2>&1s
:: İstemci Lisans Hizmeti
%NSudo% sc config ClipSVC start= disabled
%NSudo% net stop ClipSVC /y
Call :ProcessCompleted
GOTO Win10SettingsMenu

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:icochangemenu
cls
mode con cols=55 lines=15
title ICO Yöneticisi / OgnitorenKs
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                    ICO Yönetici                   %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Eski Simge                                  %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Yeni Simge                                  %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
	if %value%==1 (Call :icochange Oldico)
	if %value%==2 (Call :icochange Newico)
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu
)
goto icochangemenu

:icochange
cls
set IconName=%~1
Call :LogSave icochangemenu "%IconName% simge dosyası yüklendi"

dir /b %Location%\Files\Oldico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :wget3 "%Location%\Files\Oldico.zip")

dir /b %Location%\Files\Newico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :wget3 "%Location%\Files\Newico.zip")
cls
title Icon Change / OgnitorenKs
echo %R%[1;97m%R%[42m %IconName% simgeler yükleniyor...%R%[0m

taskkill /f /im explorer.exe > NUL 2>&1
taskkill /f /im RuntimeBroker.exe > NUL 2>&1

%NSudo% PowerShell -command "Expand-Archive -Force '%Location%\Files\%IconName%.zip' '%windir%'"

DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1

Call :Powershell "Start-Process 'C:\Windows\explorer.exe'"
Call :ProcessCompletedReset
GOTO Win10SettingsMenu

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:AdminMenu
cls
mode con cols=55 lines=17
title Kullanıcı İşlemleri \ OgnitorenKs
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m              Kullanıcı Hesap Yönetimi             %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Administrator Aktifleştir                   %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Administrator Kapat                         %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 3.%C%[33m Admin grubuna kullanıcı ekle                %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 4.%C%[33m Yeni Kullanıcı Ekle                         %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 5.%C%[33m Kullanıcı Sil                               %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 6.%C%[33m Şifremi unuttum                             %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 7.%C%[33m Mevcut Kullanıcıları Göster%C%[90m [*]             │%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
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
)
goto AdminMenu

:Tweak1AdminAktif
cls
mode con cols=55 lines=20
title Administrator Aç \ OgnitorenKs
echo.
echo   %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m        Administrator Aktifleştiriliyor...       %R%[0m%R%[90m│%R%[0m
echo   %R%[90m└─────────────────────────────────────────────────┘%R%[0m
Call :LogSave "AdminMenu" "Administrator aktifleştirildi"
net user administrator /active:yes
net user administrator *
Call :ProcessCompleted
goto AdminMenu

:Tweak2AdminPasif
cls
mode con cols=55 lines=20
title Administrator kapat \ OgnitorenKs
echo.
echo   %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m           Administrator Kapatılıyor...          %R%[0m%R%[90m│%R%[0m
echo   %R%[90m└─────────────────────────────────────────────────┘%R%[0m
Call :LogSave "AdminMenu" "Administrator kapatıldı"
net user Administrator /active:no
Call :ProcessCompleted
goto AdminMenu

:Tweak3GrupAdmin
cls
mode con cols=55 lines=20
title Admin Grubuna Kullanıcı ekle \ OgnitorenKs
echo.
echo   %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m          Admin Grubuna Kullanıcı Ekle           %R%[0m%R%[90m│%R%[0m
echo   %R%[90m└─────────────────────────────────────────────────┘%R%[0m
set /p value=%C%[92m  Kullancı Adı : %C%[0m  
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
Call :LogSave "AdminMenu" "Admin grubuna '%value%' kullanıcısı eklendi"
net localgroup Administrators %value% /add 
Call :ProcessCompleted
goto AdminMenu

:Tweak4NewUsers
cls
mode con cols=55 lines=20
title Yeni Kullanıcı ekle \ OgnitorenKs
echo.
echo   %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m               Yeni Kullanıcı Ekle               %R%[0m%R%[90m│%R%[0m
echo   %R%[90m└─────────────────────────────────────────────────┘%R%[0m
set /p value=%C%[92m  Kullancı Adı : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
Call :LogSave "AdminMenu" "Yeni kullanıcı '%value%' oluşturuldu"
net user %value% * /add
Call :ProcessCompleted
goto AdminMenu

:Tweak5DelUsers
cls
mode con cols=55 lines=20
title Kullanıcı Sil \ OgnitorenKs
echo.
echo   %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                  Kullanıcı Sil                  %R%[0m%R%[90m│%R%[0m
echo   %R%[90m└─────────────────────────────────────────────────┘%R%[0m
set /p value=%C%[92m  Kullancı Adı : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
Call :LogSave "AdminMenu" "Kullanıcı '%value%' silindi"
net user %value% /delete
Call :ProcessCompleted
goto AdminMenu

:Tweak6UsersKey
cls
mode con cols=55 lines=20
title Şifremi Unuttum / Değiştir \ OgnitorenKs
echo.
echo   %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m             Şifremi Unuttum / Değiştir          %R%[0m%R%[90m│%R%[0m
echo   %R%[90m└─────────────────────────────────────────────────┘%R%[0m
set /p value=%C%[92m  Kullancı Adı : %C%[0m
	if %value%==x GOTO AdminMenu
	if %value%==X GOTO AdminMenu
Call :LogSave "AdminMenu" "Kullanıcı '%value%' şifre değiştirildi"
net user %value% *
Call :ProcessCompleted
goto AdminMenu

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:shutdownpc
cls
mode con cols=55 lines=21
title ShutDown / OgnitorenKs
:: Kapatma kontrol
:: https://superuser.com/questions/1028374/determine-whether-a-shutdown-is-pending
shutdown -s -f -t 999999 > NUL 2>&1
if %errorlevel% equ 1190 (
  set ShutDownTime=%R%[90m│                %R%[32m 10.%R%[31m  İptal Et                     %R%[90m│%R%[0m
) else (
  shutdown /a > NUL 2>&1
  set ShutDownTime=%R%[90m│                                                   %R%[90m│%R%[0m
)
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m            Otomatik Bilgisayar Kapatma            %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│                 %R%[32m 0.%C%[33m 30%C%[90m [Dakika]                   │%R%[0m
echo  %R%[90m│                 %R%[32m 1.%C%[33m  1%C%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 2.%C%[33m  2%C%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 3.%C%[33m  3%C%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 4.%C%[33m  4%C%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 5.%C%[33m  5%C%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 6.%C%[33m  6%C%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 7.%C%[33m  7%C%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 8.%C%[33m  8%C%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 9.%C%[33m  Manuel                       %R%[90m│%R%[0m
echo  %R%[90m│                 %R%[32m X.%R%[36m  Menü                         %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %ShutDownTime%
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
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
	if %value%==9 (Call :ShutdownManuel)
	if %value%==10 (shutdown /a > NUL 2>&1
				   echo %R%[96m  Oto kapatma iptal edildi%R%[0m
				   Call :LogSave "shutdownpc" "Oto kapatma iptal edildi"
				   timeout /t 1 /nobreak > NUL)
	if %value%==x goto menu
	if %value%==X goto menu
)
goto shutdownpc

:ShutdownManuel
set /p value=%C%[96m  Dakika olarak değer giriniz: %C%[0m
	if %value%==x goto menu
	if %value%==X goto menu
set /a value=(%value%*60)
shutdown -s -f -t %value%
Call :LogSave "Shutdown" "%value% manuel kapatma ayarlandı"
goto :eof
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:HashChecker
cls
echo.
set /p hashvalue1=%C%[37m  ►%C%[96m Hash Değerini Giriniz %C%[90m[SHA256]: %C%[0m
	if %hashvalue1%==x (goto :eof)
	if %hashvalue1%==X (goto :eof)
echo.
set /p hashpath=%C%[37m  ►%C%[96m Kontrol edilecek dosya yolu: %C%[0m
cls
echo.
echo   %R%[1;97m%R%[46m                                 Hash değerleri karşılaştırılıyor                               %R%[0m
Call :Powershell "Get-filehash %hashpath% | Select-Object Hash | FL" > %Logs%\hash
FOR /F "tokens=3" %%a in ('findstr /C:"Hash" %Logs%\hash') do set hashvalue2=%%a
if %hashvalue2% equ %hashvalue1% (
  set hashcontrol=%R%[1;97m%R%[42m                               Hash değerleri aynı, dosya sorunsuz                             %R%[0m
) else (
  set hashcontrol=%R%[1;97m%R%[41m                                  HATA! Hash değerleri farklı                                  %R%[0m
)
cls
echo.
echo  ► Girilen Hash Değeri: [%R%[33m%hashvalue1%%R%[0m]
echo  ► Bulunan Hash Değeri: [%R%[33m%hashvalue2%%R%[0m]
echo.
echo   %hashcontrol%
echo.
echo  %R%[96m Menüye dönmek için herhangi bir tuşa basınız...%R%[0m
Call :LogSave "HashControl" "%hashcontrol%"
pause > NUL
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:NonRemovalMenu
cls
mode con cols=43 lines=22
:: Bilgisayarda yüklü uygulamalar arasında Python aranır. Yüklü değil ise indirip, kurar. Yalnızca Windows 10 sistemlerde kontrol eder.
if %OSCheck%==10 (Call :SoftwareCheck Python.exe "/quiet InstallAllUsers=1 PrependPath=1")
Call :Powershell "get-appxpackage | Select-Object Name,NonRemovable" > %Logs%\NonRemoval
:: Microsoft.Windows.ContentDeliveryManager ContentDeliveryManager
echo   %R%[90m┌─────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m          NonRemoval Menü            %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├─────────────────────────────────────┤%R%[0ms
Call :NonRemovalChecker BioEnrollment
echo   %R%[90m│%R%[36m  1 %servalue% -%R%[33m Biometrick hizmeti           %R%[90m│%R%[0m
Call :NonRemovalChecker CapturePicker
echo   %R%[90m│%R%[36m  2 %servalue% -%R%[33m Ekran Yakalama               %R%[90m│%R%[0m
Call :NonRemovalChecker Cortana
echo   %R%[90m│%R%[36m  3 %servalue% -%R%[33m Cortana                      %R%[90m│%R%[0m
Call :NonRemovalChecker Holographic
echo   %R%[90m│%R%[36m  4 %servalue% -%R%[33m Karma Gerçeklik              %R%[90m│%R%[0m
Call :NonRemovalChecker Narrator
echo   %R%[90m│%R%[36m  5 %servalue% -%R%[33m Ekran Okuma                  %R%[90m│%R%[0m
Call :NonRemovalChecker ParentalControls
echo   %R%[90m│%R%[36m  6 %servalue% -%R%[33m Ebeveyn Kontrolleri          %R%[90m│%R%[0m
Call :NonRemovalChecker PeopleExperienceHost
echo   %R%[90m│%R%[36m  7 %servalue% -%R%[33m Kişiler                      %R%[90m│%R%[0m
Call :NonRemovalChecker SecHealthUI
echo   %R%[90m│%R%[36m  8 %servalue% -%R%[33m Windows Defender             %R%[90m│%R%[0m
Call :NonRemovalChecker SecureAssessmentBrowser
echo   %R%[90m│%R%[36m  9 %servalue% -%R%[33m Güvenli Tarayıcı             %R%[90m│%R%[0m
Call :NonRemovalChecker StartMenu
echo   %R%[90m│%R%[36m 10 %servalue% -%R%[33m Başlat Menüsü                %R%[90m│%R%[0m
Call :NonRemovalChecker Search
echo   %R%[90m│%R%[36m 11 %servalue% -%R%[33m Search App (Taskbar Search)  %R%[90m│%R%[0m
Call :NonRemovalChecker CBSPreview
echo   %R%[90m│%R%[36m 12 %servalue% -%R%[33m Kamera Barkod Tarayıcı       %R%[90m│%R%[0m
echo   %R%[90m│%R%[36m  X -%R%[33m Menü                           %R%[90m│%R%[0m
echo   %R%[90m└─────────────────────────────────────┘%R%[0m
if %OSCheck%==11 (echo %R%[31m Windows 11 sistemde bu bölüm çalışmaz%R%[0m
			      echo %R%[31m Ana menü için herhangi bir tuşa basın%R%[0m
				  pause > NUL
				  goto menu)
set /p value=%R%[36m  Kaldır: %R%[0m
	if %value%==1 (Call :NonRemoval Microsoft.BioEnrollment BioEnrollment)
	if %value%==2 (Call :NonRemoval Microsoft.Windows.CapturePicker CapturePicker)
	if %value%==3 (Call :NonRemoval Microsoft.549981C3F5F10 549981C3F5F10)
	if %value%==4 (Call :NonRemoval Microsoft.Windows.HolographicFirstRun Holographic)
	if %value%==5 (Call :NonRemoval Microsoft.Windows.NarratorQuickStart NarratorQuickStart)
	if %value%==6 (Call :NonRemoval Microsoft.Windows.ParentalControls ParentalControls)
	if %value%==7 (Call :NonRemoval Microsoft.Windows.PeopleExperienceHost PeopleExperienceHost)
	if %value%==8 (Call :NonRemoval Microsoft.Windows.SecHealthUI SecHealthUI)
	if %value%==9 (Call :NonRemoval Microsoft.Windows.SecureAssessmentBrowser SecureAssessmentBrowser)
	if %value%==10 (Call :NonRemoval Microsoft.Windows.StartMenuExperienceHost StartMenuExperienceHost)
	if %value%==11 (Call :NonRemoval Microsoft.Windows.Search Search)
	if %value%==12 (Call :NonRemoval Windows.CBSPreview CBSPreview)
	if %value%==x goto menu
	if %value%==X goto menu
)
goto NonRemovalMenu

:NonRemovalChecker
findstr /i "%~1" %Logs%\NonRemoval > NUL 2>&1
	if %errorlevel%==0 (set servalue=%R%[32m♦%R%[0m)
	if %errorlevel%==1 (set servalue=%R%[100m %R%[0m)
goto :eof

:NonRemoval
Call :LogSave "NonRemoval" "%~1 kaldırıldı"
mkdir "%Location%\Files\Remove" > NUL 2>&1
copy /y "%Location%\Files\Remove.py" "%Location%\Files\Remove" > NUL 2>&1
Call :Powershell "(Get-Content %Location%\Files\Remove\Remove.py) | ForEach-Object { $_ -replace 'xxxxxxx', '%~1' } | Set-Content '%Location%\Files\Remove\Remove.py'"
%NSudo% "%Location%\Files\Remove\Remove.py"
Call :Powershell "Get-AppxPackage -AllUsers *%~2* | Remove-AppxPackage"
RD /S /Q "%Location%\Files\Remove" > NUL 2>&1
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:UpdateAfter
cls
Call :LogSave "UpdateAfter" "Güncelleme sonrası temizlik bölümü çalıştırıldı"

echo %R%[92m Güncelleme sonrası temizlik işlemi yapılıyor.%R%[0m
if %OSCheck%==10 (echo %R%[92m Güncelleme sonrası yüklenen uygulamalar siliniyor...%R%[0m
				  Call :SoftwareCheck Python.exe "/quiet InstallAllUsers=1 PrependPath=1"
				  Call :NonRemoval Microsoft.549981C3F5F10 549981C3F5F10
				  Call :NonRemoval Microsoft.Windows.HolographicFirstRun Holographic
				  Call :NonRemoval Microsoft.Windows.NarratorQuickStart NarratorQuickStart
				  Call :NonRemoval Microsoft.Windows.ParentalControls ParentalControls
				  Call :NonRemoval Microsoft.Windows.PeopleExperienceHost PeopleExperienceHost
				  Call :NonRemoval Microsoft.Windows.SecHealthUI SecHealthUI
)
cls
echo %R%[92m Güncelleme sonrası temizlik işlemi yapılıyor.%R%[0m
echo %R%[92m Hizmetler düzenleniyor...%R%[0m
%NSudo% %Location%\Extra\Update.After.bat

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
Call :Powershell "Get-CimInstance -ClassName Win32_UserAccount | Select-Object -Property Name,SID" > %Logs%\cusername
FOR /F "tokens=2" %%a in ('Find "%username%" %Logs%\cusername') do set currentusername=%%a
Call :dword "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" 0
Call :dword "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" 0
Call :dword "HKU\%currentusername%\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" 0
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" 0
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" 0
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" 0
Call :dword "HKLM\SOFTWARE\Microsoft\Windows Security Health\State" "AppAndBrowser_StoreAppsSmartScreenOff" 0
Call :sz "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "SmartScreenEnabled" "Off"
Call :sz "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "SmartScreenEnabled" "Off"
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
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" 2 & :: Driverlar kurulu değil ise kurulması için ayarlanıyor...
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
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "LaunchTo" 1 & :: Explorer "Bu Bilgisayar" olarak ayarlanıyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" "EnthusiastMode" 1 & :: Dosya kopyalama iletişim kutusuda daha fazla detay göster olarak ayarlanıyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "HideFileExt" 0 & :: Dosya uzantıları aktifleştiriliyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" "DisableAutoplay" 1 & :: Otomatik oynatma kapatılıyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoRecentDocsHistory" 0 & :: Son açılan belgelerin geçmişi kapatılıyor...
:: Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "ClearRecentDocsOnExit" 1 & :: Windows'u kapatırken yeni açılan belgelerin geçmişini temizle aktifleştiriliyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowRecent" 0 & :: Son kullanılan dosyaların hızlı erişimde görüntülenmesi engelleniyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowFrequent" 0 & :: Hızlı Erişimden Sık Kullanılan klasörler kaldırılıyor
Call :binary "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "Link" "00000000" & :: Kısayol yazısı kaldırılıyor...
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
Call :dword "HKCU\Software\Microsoft\Narrator\QuickStart" "SkipQuickStart" 1 & :: Narrator QuickStart kapatılıyor.
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SoftLandingEnabled" 0 & :: Windows önerileri devre dışı bırakılıyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-310093Enabled" 0 & :: Windows karşılama deneyimi kapatılıyor...
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisablePCA" 1 & :: Program uyumluluk yardımcısı devre dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableUAR" 1 & :: Program uyumluluk yardımcısı devre dışı bırakılıyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "HwSchMode" 2 & :: Donanım hızlandırmalı GPU Planlaması aktifleştiriliyor...
Call :sz "HKCU\Control Panel\Mouse" "MouseSpeed" 0 & :: İşaretçi hassasiyeti devre dışı bırakılıyor...
Call :sz "HKCU\Control Panel\Desktop" "AutoEndTasks" 1 & :: Kapatma işleminde uygulamalar açık ise otomatik kapat ve bekleme süresi azaltılıyor
Call :sz "HKCU\Control Panel\Desktop" "HungAppTimeout" "3000" & :: Uygulamalar cevap vermediği zaman görevi sonlandır seçeneğine basılmadan önceki bekleme süresini kısaltır.
Call :sz "HKCU\Control Panel\Desktop" "WaitToKillAppTime" "10000" & :: Bilgisayar kapatılırken ya da oturumdan çıkılırken kullanıcı uygulamalarının kapatılması için sistem bekleme süresini kısaltır.
Call :sz "HKCU\Control Panel\Desktop" "LowLevelHooksTimeout" "4000" & :: Cevap vermeyen hizmetlerin kapatılmasından önceki sistem bekleme süresini kısaltır.
Call :sz "HKLM\SYSTEM\CurrentControlSet\Control" "WaitToKillServiceTimeout" "2000" & :: Bilgisayarın kapatılması sırasında durdurulacak hizmetler uyarısı geldiğinde, uygulamaların kapanması için beklenen süreyi kısaltır.
Call :sz "HKCU\Control Panel\Desktop" "MenuShowDelay" "0" & :: Menü gösterimi bekleme süresini azaltır. Böylelikle tıklandığı zaman menüler daha hızlı gelecek.
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoLowDiskSpaceChecks" 1 & :: Düşük Depolama alanı uyarısı devre dışı bırakılıyor...
Call :sz "HKCU\Control Panel\Mouse" "MouseHoverTime" 100 & :: Farenizle birlikte bir nesnenin üzerine geldiğinizde görülen açıklamanın çıkış süresini kısaltır
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "LinkResolveIgnoreLinkInfo" 1 & :: Bilgisayarınızda mevcut olmayan programlara ait kısayolların bağlantısının Windows tarafından boşa vakit harcanarak aranmasını önler
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveSearch" 1 & :: Kısayol bağlantı sorununu çözmek için Windows'un diski aramasını önler
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveTrack" 1 & :: Kısayol bağlantı sorununu çözmek için Windows'un NTFS dosya sisteminin izleme özelliğini kullanmasını engeller
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours" "Enable" 1 & :: Odak Yardımı aktifleştiriliyor
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
:: Call :dword "HKLM\SOFTWARE\Policies\Microsoft\EdgeUpdate" "InstallDefault" "0" & :: EdgeWebView2'nin kurulmasını engeller
Call :dword "HKLM\SOFTWARE\Microsoft\EdgeUpdate" "DoNotUpdateToEdgeWithChromium" "1" & :: Microsoft Edge'in otomatik kurulmasını engeller
:: Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" "AllowDevelopmentWithoutDevLicense" "1" & :: Uygulama geliştirme modu aktifleştiriliyor.
::MOUSE HID OPTIMIZE
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" "TreatAbsolutePointerAsAbsolute" "1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" "TreatAbsoluteAsRelative" "0"
::DISABLE MOUSE ACCELERATION
Call :sz "HKCU\Control Panel\Mouse" "MouseHoverTime" "0"
Call :sz "HKCU\Control Panel\Mouse" "MouseSensitivity" "10"
Call :dword "HKCU\Control Panel\Mouse" "MouseSpeed" "0"
Call :dword "HKCU\Control Panel\Mouse" "MouseThreshold1" "0"
Call :dword "HKCU\Control Panel\Mouse" "MouseThreshold2" "0"
::MOUSE ABSOLUTE CURVE
Call :binary "HKCU\Control Panel\Mouse" "SmoothMouseXCurve" "000000000000000000a0000000000000004001000000000000800200000000000000050000000000"
Call :binary "HKCU\Control Panel\Mouse" "SmoothMouseYCurve" "000000000000000066a6020000000000cd4c050000000000a0990a00000000003833150000000000"
Call :dword "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" "CursorSensitivity" "0x2710"
Call :dword "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" "CursorUpdateInterval" "0x1"
Call :dword "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" "IRRemoteNavigationDelta" "0x1"
Call :dword "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "AttractionRectInsetInDIPS" "0x5"
Call :dword "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "DistanceThresholdInDIPS" "0x28"
Call :dword "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "MagnetismDelayInMilliseconds" "0x32"
Call :dword "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "MagnetismUpdateIntervalInMilliseconds" "0x10"
Call :dword "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "VelocityInDIPSPerSecond" "0x168"
:: Klavye optimizasyon
Call :sz "HKCU\Control Panel\Keyboard" "KeyboardDelay" 0
Call :sz "HKCU\Control Panel\Keyboard" "KeyboardSpeed" 31
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" "KeyboardDataQueueSize" 10
Call :sz "HKCU\Control Panel\Accessibility\Keyboard Preference" "On" 0
Call :sz "HKCU\Control Panel\Accessibility\Keyboard Response" "AutoRepeatDelay" 0
Call :sz "HKCU\Control Panel\Accessibility\Keyboard Response" "AutoRepeatRate" 0
Call :sz "HKCU\Control Panel\Accessibility\Keyboard Response" "BounceTime" 0
Call :sz "HKCU\Control Panel\Accessibility\Keyboard Response" "DelayBeforeAcceptance" 0
Call :sz "HKCU\Control Panel\Accessibility\Keyboard Response" "Flags" 0
Call :dword "HKCU\Control Panel\Accessibility\Keyboard Response" "Last BounceKey Setting" 0
Call :dword "HKCU\Control Panel\Accessibility\Keyboard Response" "Last Valid Delay" 0
Call :dword "HKCU\Control Panel\Accessibility\Keyboard Response" "Last Valid Repeat" 0
Call :dword "HKCU\Control Panel\Accessibility\Keyboard Response" "Last Valid Wait" 0
Call :sz "HKCU\Control Panel\Accessibility\MouseKeys" "Flags" 0
Call :sz "HKCU\Control Panel\Accessibility\MouseKeys" "MaximumSpeed" 0
Call :sz "HKCU\Control Panel\Accessibility\MouseKeys" "TimeToMaximumSpeed" 0
:: Telemetri
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" "Start" "0"
Call :dword "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" "IsCensusDisabled" 1
Call :dword "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" "DontRetryOnError" 1
Call :dword "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" "TaskEnableRun" 1
Call :dword "HKLM\SOFTWARE\Microsoft\DataCollection" "AllowTelemetry" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" 0
Call :dword "HKCU\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" 0
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "AITEnable" 0
Call :dword "HKCU\Policies\Microsoft\Assistance\Client\1.0" "NoExplicitFeedback" 1
Call :dword "HKCU\OFF_SOFTWARE\Microsoft\MediaPlayer\Preferences" "UsageTracking" 0 :: MediaPlayer istatistiklerini gönderilmesini engeller
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" "fAllowToGetHelp" 0 :: Uzak masaüstü asistanı
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" "fAllowFullControl" 0 :: Uzak masaüstü asistanı
Call :dword "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" 0 :: Geri bildirim
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "DoNotShowFeedbackNotifications" 1 :: Geri bildirim
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" 0 :: Özelleştirilmiş deneyim (Tailored experiences)
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled" 1 :: Hata geri bildirim
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled" 1 :: Hata geri bildirim
Call :dword "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" "0" :: Müşteri Deneyim Programı
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" "CEIPEnable" "0" :: Müşteri Deneyim Programı
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" "1" :: Müşteri Deneyim Programı
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" "1" :: Windows Hata Raporlama 
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" "0" :: Wifi Hotspot Raporlama 
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" "0" :: Windows Reklam Kimliği
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy" "1" :: Reklam kimliği etkinliği
Call :dword "HKCU\Microsoft\Speech\Preferences" "ModeForOff" "1" :: Çevrimiçi konuşma tanıma
Call :dword "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" "0" :: Geri Bildirim Devre Dışı Bırakılıyor...
Call :delete2 "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "PeriodInNanoSeconds" :: Geri Bildirim Devre Dışı Bırakılıyor...
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled" "1" :: Windows Hata Raporunu Devre Dışı Bırakılıyor...
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" "EnableTransparency" "0" :: Transparan özelliğni kapatır

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
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /DISABLE  > NUL 2>&1
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
schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\USBCeip" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /DISABLE > NUL 2>&1
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /DISABLE > NUL 2>&1
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyRefresh" /DISABLE > NUL 2>&1
schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /DISABLE > NUL 2>&1
schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /DISABLE > NUL 2>&1
Call :ProcessCompletedReset
goto menu

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:ToolboxSettings
cls
mode con cols=55 lines=19
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                 Toolbox Ayarları                  %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
set servalue=%R%[100m %R%[0m&FOR /F "tokens=2" %%a in ('findstr /C:"AutoUpdate" %Location%\Settings.ini') do set value=%%a
	if %value%==0 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│   %R%[32m 1%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%C%[90m -%C%[33m Otomatik Güncelleme                  %R%[90m│%R%[0m
set servalue=%R%[100m %R%[0m&FOR /F "tokens=2" %%a in ('findstr /C:"LogsSettings" %Location%\Settings.ini') do set value=%%a
	if %value%==0 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│   %R%[32m 2%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%C%[90m -%C%[33m Log Kayıt                            %R%[90m│%R%[0m
set servalue=%R%[100m %R%[0m&FOR /F "tokens=2" %%a in ('findstr /C:"PluginSetting" %Location%\Settings.ini') do set value=%%a
	if %value%==0 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│   %R%[32m 3%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%C%[90m -%C%[33m Tarayıcı eklenti ayarı               %R%[90m│%R%[0m
set servalue=%R%[100m %R%[0m&FOR /F "tokens=2" %%a in ('findstr /C:"Chocolatey" %Location%\Settings.ini') do set value=%%a
	if %value%==0 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│   %R%[32m 4%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%C%[90m -%C%[33m Chocolatey yükleme sistemi           %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m 5%R%[90m -%R%[33m Masaüstünde kısayol oluştur          %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m 6%R%[90m -%R%[33m Güncellemeleri Kontrol Et            %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│         %R%[32m 7%R%[90m -%R%[33m Toolbox Rehber                       %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m 8%R%[90m -%R%[33m ognitorenks.blogspot.com             %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m 9%R%[90m -%R%[33m Github Proje Sayfası                 %R%[90m│%R%[0m
echo  %R%[90m│        %R%[32m 10%R%[90m -%R%[33m Güncelleme Notları                   %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m X%R%[90m -%R%[36m Menü                                 %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value=%C%[92m  İşlem : %C%[0m
	if %value%==1a (Call :ToolboxSettingsChange AutoUpdate 0)
	if %value%==1A (Call :ToolboxSettingsChange AutoUpdate 0)
	if %value%==1K (Call :ToolboxSettingsChange AutoUpdate 1)
	if %value%==1k (Call :ToolboxSettingsChange AutoUpdate 1)
	if %value%==2a (Call :ToolboxSettingsChange LogsSettings 0)
	if %value%==2A (Call :ToolboxSettingsChange LogsSettings 0)
	if %value%==2K (Call :ToolboxSettingsChange LogsSettings 1)
	if %value%==2k (Call :ToolboxSettingsChange LogsSettings 1)
	if %value%==3a (Call :ToolboxSettingsChange PluginSetting 0)
	if %value%==3A (Call :ToolboxSettingsChange PluginSetting 0)
	if %value%==3K (Call :ToolboxSettingsChange PluginSetting 1)
	if %value%==3k (Call :ToolboxSettingsChange PluginSetting 1)
	if %value%==4a (Call :ToolboxSettingsChange Chocolatey 0
				    %NSudo% Powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && set "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin")
	if %value%==4A (Call :ToolboxSettingsChange Chocolatey 0
					%NSudo% Powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && set "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin")
	if %value%==4K (Call :ToolboxSettingsChange Chocolatey 1
					RD /S /Q "%ProgramData%\chocolatey" > NUL 2>&1)
	if %value%==4k (Call :ToolboxSettingsChange Chocolatey 1
					RD /S /Q "%ProgramData%\chocolatey" > NUL 2>&1)
	if %value%==5 (Call :Powershell "Expand-Archive -Force '%Location%\Files\lnk.zip' 'C:\users\%username%\Desktop'")
	if %value%==6 (Call :UpdateReset
				   goto T.Settings)
	if %value%==7 (start https://ognitorenks.blogspot.com/2022/04/ognitorenks-toolbox.html)
	if %value%==8 (start https://ognitorenks.blogspot.com/)
	if %value%==9 (start https://github.com/OgnitorenKs/OgnitorenKs.Toolbox)
	if %value%==10 (start https://github.com/OgnitorenKs/OgnitorenKs.Toolbox/blob/main/Release.Notes.md)
	if %value%==x goto T.Settings
	if %value%==X goto T.Settings
)
goto ToolboxSettings

:ToolboxSettingsChange
FOR /F "tokens=1" %%a in ('findstr /C:"%~1" %Location%\Settings.ini') do (set S1=%%a)
FOR /F "tokens=2" %%a in ('findstr /C:"%~1" %Location%\Settings.ini') do (set S2= %%a)
Call :Powershell "(Get-Content %Location%\Settings.ini) | ForEach-Object { $_ -replace '%S1%%S2%', '%S1% %~2' } | Set-Content '%Location%\Settings.ini'"
Call :ProcessCompleted
goto :eof

:UpdateReset
for /f "tokens=2" %%a in ('findstr /i "TimeUpdate" %Location%\Settings.ini') do (
	Call :Powershell "(Get-Content %Location%\Settings.ini) | ForEach-Object { $_ -replace '%%a', 'xx.xx.xxxx' } | Set-Content '%Location%\Settings.ini'"
)
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:SoftwareCheck
Call :Powershell "Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName" > %Logs%\InstallApp
Findstr /i "%~n1" %Logs%\InstallApp > NUL 2>&1
	if %errorlevel%==1 (Call :wget1 %~1 "%~2")
goto :eof
:: --------------------------------------------------------------------------------------------------------

:Choco
:: [%~1=Download Name]
Call :InternetControl
Call :LogSave "Choco" "%~1 indirildi."
dir /b "%ProgramData%\chocolatey" > NUL 2>&1
	if %errorlevel%==1 (Call :LogSave "Choco" "Chocolatey indirildi."
						echo  ► %R%[33m Chocolatey yükleniyor...%R%[0m
						%NSudo% Powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && set "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin")
echo    %R%[90m[Chocolatey]%R%[0m ►%R%[33m %~1%R%[0m indiriliyor %R%[90m/%R%[0m yükleniyor...
choco install -y --force --limit-output --cache-location=%download% --ignore-checksums %~1 > NUL
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget1
:: [%~1=Download Name] [%~2=Silent Install]
Call :InternetControl
FOR /F "tokens=1" %%i in ('FIND "%~1" %Location%\Extra\Links.txt') do set link=%%i
Call :LogSave "wget" "%~1 indirildi."
echo    %R%[90m[Wget]%R%[0m ►%R%[33m %~n1%R%[0m indiriliyor %R%[90m/%R%[0m yükleniyor...
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %download%\%~1
"%download%\%~1" %~2
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget2
:: [%~1=Download Name]
Call :InternetControl
FOR /F "tokens=1" %%i in ('FIND "%~1" %Location%\Extra\Links.txt') do set link=%%i
Call :LogSave "wget2" "%~1 indirildi."
echo    %R%[90m[Wget]%R%[0m ►%R%[33m %~n1%R%[0m indiriliyor %R%[90m/%R%[0m yükleniyor...
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %download%\%~1
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget3
:: [%~1=Download Location] [%~n1: Download Name] [%~x1: İndirme uzantısı]
Call :InternetControl
FOR /F "tokens=1" %%i in ('FIND "%~n1%~x1" %Location%\Extra\Links.txt') do set link=%%i
Call :LogSave "wget3" "%~n1 indirildi."
echo    %R%[90m[Wget]%R%[0m ►%R%[33m %~n1%R%[0m indiriliyor...
%Location%\Files\wget -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %~1
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget4 [%~1=Download Name] [%~2=Silent Install]
Call :InternetControl
FOR /F "tokens=1" %%i in ('FIND "%~1" %Location%\Extra\Links.txt') do set link=%%i
Call :LogSave "wget4" "%~1 indirildi."
%Location%\Files\wget.exe --no-check-certificate "%link%" -O %download%\%~1 > NUL 2>&1
"%download%\%~1" %~2
goto :eof

:: --------------------------------------------------------------------------------------------------------

:Plugins
findstr /C:"PluginSetting= 0" %Location%\Settings.ini > NUL 2>&1
	if %errorlevel%==1 (goto :eof)
For /f "tokens=2" %%a in ('findstr /C:"Plugin" %Location%\Settings.ini') do (Call :sz "HKLM\SOFTWARE\WOW6432Node\%~1\Extensions\%%a" "update_url" "https://clients2.google.com/service/update2/crx")
goto :eof

:: --------------------------------------------------------------------------------------------------------
 
:InternetControl
ping -n 1 google.com > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m                                İnternet bağlantısı yok                                    %R%[0m
						Call :LogSave "InternetControl" "HATA! İnternet bağlantısı yok."
						timeout /t 4 /nobreak > NUL
						goto :eof)
goto :eof

:: --------------------------------------------------------------------------------------------------------

:LostMenu
mode con cols=97 lines=38
echo   %R%[90m┌───────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m OGNITORENKS TOOLBOX %version% %R%[0m%R%[90m ^|%R%[32m USER:%R%[37m%registereduser% %R%[90m^|%R%[32m PC-Name:%R%[37m%pcname%%R%[0m
echo   %R%[90m│%R%[32m OS:%R%[37m %caption% %R%[90m^|%R%[37m x%osarch% %R%[90m^|%R%[37m %ImageBuild% %R%[0m%R%[90m^|%R%[37m %isderleme% %R%[90m^|%R%[32m Power:%R%[37m %powerr%%R%[0m
echo   %R%[90m├───────────────────────────────────────────────────────────────────────────────────────────┤%R%[0m
goto :eof

:: --------------------------------------------------------------------------------------------------------
:NSudo
dir /b "%Location%\Files\NSudo.exe" > NUL 2>&1
	if %errorlevel%==1 (Call :LogSave "NSudo" "NSudo.exe dosyası bulunamadı. Yeniden indirildi."
						Call :wget3 "%download%\NSudo.zip"
						Call :Powershell "Expand-Archive -Force '%download%\NSudo.zip' '%Location%\Files'")
:: Üst düzey yetki
set NSudo="%Location%\Files\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c
:: Yetkisiz işlem
set NSudo2="%Location%\Files\NSudo.exe" -U:C -P:D -Wait -ShowWindowMode:hide cmd /c
goto :EOF
:: --------------------------------------------------------------------------------------------------------

:ExplorerReset
taskkill /f /im explorer.exe > NUL 2>&1
Call :Powershell "Start-Process 'C:\Windows\explorer.exe'"
goto :EOF

:: --------------------------------------------------------------------------------------------------------

:LogSave
:: %~1: Bölüm adı | %~2: Bilgi kısmı
echo %LogsSettings% > NUL 2>&1
	if %LogsSettings%==1 (goto :eof)
echo [%date% - %time%] ^| %~1 ^| %~2 >> %Location%\Logs
goto :eof

:: --------------------------------------------------------------------------------------------------------

:Powershell
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof

:: --------------------------------------------------------------------------------------------------------

:OSfind
cls
if %OSCheck%==10 GOTO Win10SettingsMenu
if %OSCheck%==11 GOTO Win11SettingsMenu
exit
	
:: --------------------------------------------------------------------------------------------------------

:PingMeter
Call :LogSave "UpdateAfter" "Ping ölçer çalıştırıldı"
Call :Powershell "Start-Process '%Location%\Extra\Pingolc.bat'"
goto :eof

:: --------------------------------------------------------------------------------------------------------

:SistemHakkinda
Call :LogSave "SistemHakkinda" "Sistem hakkında çalıştırıldı"
Call :Powershell "Start-Process '%Location%\Extra\Sistem.Hakkinda.bat'"
goto :eof

:: --------------------------------------------------------------------------------------------------------

:WindowsEditor
Call :LogSave "WindowsEditor" "Windows Editör çalıştırıldı"
Call :Powershell "Start-Process '%Location%\Extra\Windows.Editor.bat'"
goto :eof

:: --------------------------------------------------------------------------------------------------------

:Optimizer
Call :LogSave "Optimizer" "Optimizer çalıştırıldı"
Call :Powershell "Start-Process '%Location%\Extra\Optimizer.bat'"
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Windows11
set xxxxxeditmenu=Windows 11 Edit
set editmenugo=Win11SettingsMenu
goto menu

:Windows10
set xxxxxeditmenu=Windows 10 Edit
set editmenugo=Win10SettingsMenu
goto menu

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:key
reg add "%~1" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~1" /f)
goto :eof

:dword
reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f)
goto :eof

:binary
reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f)
goto :eof

:sz
reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f)
goto :eof

:vesz
reg add "%~1" /ve /t REG_SZ /d "%~2" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~1" /ve /t REG_SZ /d "%~2" /f)
goto :eof

:multisz
reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f)
goto :eof

:expandsz
reg add "%~1" /v "%~2" /t REG_EXPAND_SZ /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~1" /v "%~2" /t REG_EXPAND_SZ /d "%~3" /f)
goto :eof

:vexpandsz
reg add "%~1" /ve /t REG_EXPAND_SZ /d "%~2" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~1" /ve /t REG_EXPAND_SZ /d "%~2" /f)
goto :eof

:delete
reg delete "%~1" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg delete "%~1" /f)
goto :eof

:delete2
reg delete "%~1" /v "%~2" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg delete "%~1" /v "%~2" /f)
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:ProcessCompleted
mode con cols=39 lines=20
echo.
echo            %R%[90m┌───────────────┐%R%[0m
echo            %R%[90m│%R%[32m               %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m          ██   %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m         ██    %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m   ██   ██     %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m    ██ ██      %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m     ███       %R%[90m│%R%[0m
echo            %R%[90m│               %R%[90m│%R%[0m
echo            %R%[90m└───────────────┘%R%[0m
echo.
echo            %R%[37m İşlem tamamlandı%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:ProcessCompletedReset
mode con cols=39 lines=20
echo.
echo            %R%[90m┌───────────────┐%R%[0m
echo            %R%[90m│%R%[32m               %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m          ██   %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m         ██    %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m   ██   ██     %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m    ██ ██      %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m     ███       %R%[90m│%R%[0m
echo            %R%[90m│               %R%[90m│%R%[0m
echo            %R%[90m└───────────────┘%R%[0m
echo.
echo            %R%[37m İşlem tamamlandı%R%[0m
echo.
echo       %R%[33m Yeniden başlatmak için %R%[96m'R'%R%[0m
echo          %R%[33m Devam etmek için %R%[96m'X'%R%[0m
echo               %R%[33m tuşlayın%R%[0m
set /p value=%R%[92m                   %R%[0m
	if %value%==R (shutdown -r -f -t 0&exit)
	if %value%==r (shutdown -r -f -t 0&exit)
	if %value%==x goto menu
	if %value%==X goto menu
) else 
	goto menu
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