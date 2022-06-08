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
::    • 
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
set version=3.2

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:T.Settings
set LogsSettings=0&FOR /F "tokens=2" %%a in ('findstr /C:"LogsSettings" %Location%\Settings.ini') do set value=%%a
	if %value%==1 (set LogsSettings=1)

:: Admin yetki durumu kontrol ediliyor.
FOR /F "tokens=2" %%a in ('findstr /C:"AdminLogin" %Location%\Settings.ini') do set value=%%a
	if %value%==0 goto AdminAuto
	if %value%==1 goto AdminManuel
) else
	goto AdminManuel

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
goto NeedFiles

:AdminAuto
net session >NUL 2>&1|| (
Call :Powershell Start-Process '%0' -Verb RunAs&& (
exit /b|| exit /b))

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
ping -n 1 www.bing.com -w 20000 > NUL
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
if %versioncheck% equ %version% (
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

:: ------------------------------------------------------------------------------------------------------------------------------

:: Menü içinde sisteme göre ayarlama yapıyorum
FOR /F "tokens=5" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption2=%%a 
	if %caption2%==10 (set xxxxxeditmenu=Windows 10 Edit
					   set editmenugo=Win10SettingsMenu)
	if %caption2%==11 (set xxxxxeditmenu=Windows 11 Edit
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
echo               %R%[90m│%R%[32m           1-%R%[33m Online Katılımsız Uygulama Yükleyici%R%[90m [M]                │%R%[0m
echo               %R%[90m├─────────────────────────────────┬────────────────────────────────────┤
echo               %R%[90m│%R%[32m  2-%R%[33m %xxxxxeditmenu%%R%[90m [M]         │%R%[32m  12-%R%[33m İnternet Önbellek Temizle     %R%[90m│%R%[0m
echo               %R%[90m│%R%[32m  3-%R%[33m Hizmetleri Yönet%R%[90m [M]        │%R%[32m  13-%R%[33m Simge Hatalarını Onar         %R%[90m│%R%[0m
echo               %R%[90m│%R%[32m  4-%R%[37m Windows Editör%R%[90m [M]          │%R%[32m  14-%R%[33m Ping Ölçer %R%[90m [*]               │%R%[0m
echo               %R%[90m│%R%[32m  5-%R%[33m Kullancı Hesap Yönetimi%R%[90m[M]  │%R%[32m  15-%R%[33m Fat32 to NTFS%R%[90m [M]             │%R%[0m
echo               %R%[90m│%R%[32m  6-%R%[33m Lisans Yönetimi%R%[90m [M]         │%R%[32m  16-%R%[33m Kayıtlı Wifi Bilgileri        %R%[90m│%R%[0m
echo               %R%[90m│%R%[32m  7-%R%[33m Sistem Hakkında%R%[90m [*]         │%R%[32m  17-%R%[33m Zaman Ayarlı PC Kapat%R%[90m [M]     │%R%[0m
echo               %R%[90m│%R%[32m  8-%R%[33m Güç Seçenekleri%R%[90m [M]         │%R%[32m  18-%R%[33m Appx - Güncelleme Yükleyici   %R%[90m│%R%[0m
echo               %R%[90m│%R%[32m  9-%R%[33m Güncelleme Sonrası Temizlik %R%[90m│%R%[32m  19-%R%[33m Hash Kontrol%R%[90m [SHA-256]        │%R%[0m
echo               %R%[90m│%R%[32m 10-%R%[33m Windows - Market Onar       %R%[90m│%R%[32m  20-%R%[33m Kaldırılamayan Uygulamalar%R%[90m [M]│%R%[0m
echo               %R%[90m│%R%[32m 11-%R%[33m PC Temizle                  %R%[90m│%R%[32m  21-%R%[37m Performans Optimizasyonu%R%[90m [M]  │%R%[0m
echo               %R%[90m├─────────────────────────────────┼────────────────────────────────────┤%R%[0m
echo               %R%[90m│%R%[32m  Z-%R%[37m Toolbox Ayarları            %R%[90m│%R%[32m   X-%R%[37m Temizle ve Kapat              %R%[90m│%R%[0m
echo               %R%[90m└─────────────────────────────────┴────────────────────────────────────┘%R%[0m
set /p menu=%R%[32m               İşlem: %R%[0m
	if %menu%==1 goto menu2
	if %menu%==2 goto %editmenugo%
	if %menu%==3 goto servicesmanagement
	if %menu%==4 (Call :WindowsEditor)
	if %menu%==5 goto AdminMenu
	if %menu%==6 goto Slmgrvbs
	if %menu%==7 (Call :SistemHakkinda)
	if %menu%==8 (Call :PowerChoice)
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
) else
	goto menu
exit

:: ==============================================================================================================================

:menu2
mode con cols=100 lines=39
title               O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X
set xognitorenksx=%R%[90m►
echo   %R%[90m┌──────────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                             Online Katılımsız Uygulama Yükleyici                             %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├────────────────────────────┬──────────────────────────────┬──────────────────────────────────┤%R%[0m
echo   %R%[90m│%R%[32m    1-%R%[37m All in One Runtimes  %R%[90m│%R%[32m   26-%R%[33m Gimp                   %R%[90m│%xognitorenksx% Uzak Bağlantı                   %R%[90m│%R%[0m
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
echo   %R%[90m│%xognitorenksx% Ram Temizleyici           %R%[90m│%R%[32m   38-%R%[33m Int Download Manager   %R%[90m│%R%[32m   64-%R%[37m  Valorant                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   13-%R%[37m ISLC                 %R%[90m│%R%[32m   39-%R%[33m Free Download Manager  %R%[90m│%xognitorenksx% Görev Çubuğu / Başlat Menüsü    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   14-%R%[37m Mem Reduct           %R%[90m│%R%[32m   40-%R%[33m EagleGet               %R%[90m│%R%[32m   65-%R%[36m  OpenShell                 %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Tarayıcı                  %R%[90m│%R%[32m   41-%R%[33m ByClick Downloader     %R%[90m│%R%[32m   66-%R%[36m  TaskbarX                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   15-%R%[33m Google Chrome        %R%[90m│%R%[32m   42-%R%[33m Qbittorrent            %R%[90m│%xognitorenksx% Diğer                           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   16-%R%[33m Mozilla Firefox      %R%[90m│%xognitorenksx% Belgeler                    %R%[90m│%R%[32m   67-%R%[33m  MSI Afterburner           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   17-%R%[33m Brave                %R%[90m│%R%[32m   43-%R%[36m Libre Office           %R%[90m│%R%[32m   68-%R%[33m  Everything                %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   18-%R%[33m Microsoft Edge       %R%[90m│%R%[32m   44-%R%[36m Adobe Reader           %R%[90m│%R%[32m   69-%R%[33m  Glasswire                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   19-%R%[33m OperaGX              %R%[90m│%R%[32m   45-%R%[36m PDF X-Change           %R%[90m│%R%[32m   70-%R%[33m  Hamachi                   %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Sıkıştırma                %R%[90m│%R%[32m   46-%R%[36m Calibre                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   20-%R%[36m 7-Zip                %R%[90m│%xognitorenksx% Geliştirme / Developer      %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   21-%R%[36m Winrar               %R%[90m│%R%[32m   47-%R%[36m Notepad++              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Multimedya                %R%[90m│%R%[32m   48-%R%[33m Python                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   22-%R%[33m Kdenlive             %R%[90m│%R%[32m   49-%R%[33m Visual Studio Code     %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   23-%R%[33m Openshout            %R%[90m│%R%[32m   50-%R%[33m Github                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m 
echo   %R%[90m│%R%[32m   24-%R%[33m Shoutcut             %R%[90m│%R%[32m   51-%R%[33m Git                    %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   25-%R%[33m Krita                %R%[90m│%R%[32m   52-%R%[33m Blender                %R%[90m│%R%[32m    X-%R%[37m  Menü                      %R%[90m│%R%[0m
echo   %R%[90m└────────────────────────────┴──────────────────────────────┴──────────────────────────────────┘
set /p $multi=%R%[32m  Çoklu Seçim %R%[90mx,y: %R%[0m 

echo %$multi% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto menu
echo %$multi% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto menu	

Call :LostMenu
echo    →%C%[96m Seçilenler: %$multi%%C%[0m
echo.
:: Sessiz kurulum parametler konusunda sunduğu eşsiz hizmetten ötürü "silentinstallhq" kurucusu Jason Bergner'e sonsuz teşekkürlerimi sunuyorum.
:: https://silentinstallhq.com/
FOR %%a in (%$multi%) do (
	if %%a==1 (Call :AIO.Runtimes)
	if %%a==2 (Call :wget1 Discord.exe -s)
	if %%a==3 (Call :wget1 WhatsApp.exe --silent)
	if %%a==4 (Call :wget1 Signal.exe /S)
	if %%a==5 (Call :wget1 Telegram.exe "/VERYSILENT /NORESTART")
	if %%a==6 (Call :wget1 Zoom.msi /qn)
	if %%a==7 (Call :wget1 EpicGames.msi "/qn /norestart")
	if %%a==8 (Call :wget1 Steam.exe /S)
	if %%a==9 (Call :wget1 GOG.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==10 (Call :wget1 Uplay.exe /S)
	if %%a==11 (Call :wget1 Origin.exe /SILENT)
	if %%a==12 (Call :wget1 Wemod.exe --silent)
	if %%a==13 (Call :wget2 ISLC.zip
				Call :Powershell "Expand-Archive -Force '%download%\ISLC.zip' 'C:\'"
				copy /y "C:\ISLC\ISLC.lnk" "C:\Users\%username%\Desktop" > NUL 2>&1)
	if %%a==14 (Call :wget1 MemReduct.exe /S)
	if %%a==15 (Call :wget1 GoogleChrome.msi /qn
				Call :Plugins "Google\Chrome")
	if %%a==16 (Call :wget1 Firefox.exe /S)
	if %%a==17 (Call :wget1 Brave.exe "--install --silent --system-level"
				Call :Plugins "Google\Chrome")
	if %%a==18 (Call :wget1 Edge.msi /qn
				Call :Plugins "Microsoft\Edge"
				Call :Powershell "Start-Process '%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe'")
	if %%a==19 (Call :wget1 OperaGX.exe "/silent /allusers=1 /launchopera=0 /setdefaultbrowser=0")
	if %%a==20 (Call :wget1 7-Zip.msi /qn)
	if %%a==21 (Call :wget1 Winrar.exe /S)
	if %%a==22 (Call :wget1 Kdenlive.exe /S)
	if %%a==23 (Call :wget1 Openshot.exe "/VERYSILENT /NORESTART")
	if %%a==24 (Call :wget1 Shotcut.exe /S)
	if %%a==25 (Call :wget1 Krita.exe /S)
	if %%a==26 (Call :wget1 Gimp.exe "/VERYSILENT /NORESTART /MERGETASKS=desktopicon /ALLUSERS")
	if %%a==27 (Call :wget1 OBS.exe /S)
	if %%a==28 (Call :wget1 ShareX.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==29 (Call :wget1 Audacity.exe "/VERYSILENT /NORESTART")
	if %%a==30 (Call :wget1 JPEGView.msi /qn
				mkdir "%AppData%\JPEGView" > NUL 2>&1
				Call :wget3 "%AppData%\JPEGView\JPEGView.txt"
				rename "%AppData%\JPEGView\JPEGView.txt" "JPEGView.ini")
	if %%a==31 (Call :wget1 HandBrake.exe /S)
	if %%a==32 (Call :wget1 FileConverter.msi /qn)
	if %%a==33 (Call :wget1 Klite.exe /verysilent)
	if %%a==34 (Call :wget1 VLCMediaPlayer.exe "/L=1055 /S")
	if %%a==35 (Call :wget1 PotPlayer.exe /S)
	if %%a==36 (Call :wget1 Aimp.exe "/AUTO /SILENT")
	if %%a==37 (Call :wget2 Spotify.exe 
				%NSudo2% "%download%\Spotify.exe" /silent)
	if %%a==38 (Call :wget1 InternetDownloadManager.exe /skipdlgs)
	if %%a==39 (Call :wget1 FreeDownloadManager.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==40 (Call :wget2 EagleGet.zip
			    Call :Powershell "Expand-Archive -Force '%download%\EagleGet.zip' '%download%'"
				"%download%\EagleGet.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-)
	if %%a==41 (Call :wget1 ByClick.exe /q)
	if %%a==42 (Call :wget1 Qbittorrent.exe /S)
	if %%a==43 (Call :wget1 LibreOffice.msi "/qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL")
	if %%a==44 (Call :wget1 AdobeReader.exe "/sPB /rs /msi")
	if %%a==45 (Call :wget1 PdfXchange.msi "/quiet /norestart")
	if %%a==46 (Call :wget1 Calibre.msi /qn)
	if %%a==47 (Call :wget1 Notepad.exe /S)
	if %%a==48 (Call :wget1 Python.exe "/quiet InstallAllUsers=1 PrependPath=1")
	if %%a==49 (Call :wget1 VisualStudioCode.exe "/VERYSILENT /NORESTART /MERGETASKS=!runcode")
	if %%a==50 (Call :wget1 Github.exe -s)
	if %%a==51 (Call :wget1 Git.exe "/VERYSILENT /NORESTART")
	if %%a==52 (Call :wget1 Blender.msi "ALLUSERS=1 /qn")
	if %%a==53 (Call :wget1 TeamViewer.exe /S)
	if %%a==54 (Call :wget1 AnyDesk.exe "--install %programfiles(x86)%\AnyDesk --start-with-win --create-shortcuts --create-desktop-icon --silent")
	if %%a==55 (Call :wget1 HibitUninstaller.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==56 (Call :wget1 RevoUninstaller.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==57 (Call :wget2 WiseCare365.zip
			    Call :Powershell "Expand-Archive -Force '%download%\WiseCare365.zip' '%download%'"
				"%download%\WiseCare365.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-)
	if %%a==58 (Call :wget1 Unlocker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==59 (Call :wget3 "C:\users\%username%\Desktop\osu.exe")
	if %%a==60 (Call :wget3 "C:\users\%username%\Desktop\WorldOfTanks.exe")
	if %%a==61 (Call :wget3 "C:\users\%username%\Desktop\GenshinImpact.exe")
	if %%a==62 (Call :wget3 "C:\users\%username%\Desktop\LeagueOfLegendsTR.exe")
	if %%a==63 (Call :wget3 "C:\users\%username%\Desktop\LeagueOfLegendsEUW.exe")
	if %%a==64 (Call :wget3 "C:\users\%username%\Desktop\Valorant.exe")
	if %%a==65 (Call :wget1 OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu")
	if %%a==66 (Call :wget2 TaskbarX.zip
				Call :Powershell "Expand-Archive -Force '%download%\TaskbarX.zip' 'C:\Users\%username%\Desktop\TaskbarX'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX Configurator.exe'"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX.exe'")
	if %%a==67 (Call :wget1 MSIAfterburner.exe /S)
	if %%a==68 (Call :wget1 Everything.exe /S)
	if %%a==69 (Call :wget1 GlassWire.exe /S)
	if %%a==70 (Call :wget1 Hamachi.msi /q)
)
goto menu2

:: ==============================================================================================================================

:AIO.Runtimes
echo    %R%[1;97m%R%[42m All in One Runtimes yükleniyor... %R%[0m
Dism /Online /Get-Capabilities /format:table > %Logs%\Capabilities.aio.txt
Dism /Online /Get-Features /format:table > %Logs%\Features.aio.txt
FOR /F "tokens=3" %%a in ('findstr /C:"NetFX3~~~~" %Logs%\Capabilities.aio.txt') do set aiokontrol=%%a
echo %aiokontrol% | findstr /C:"installed" > NUL 2>&1
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
Call :wget1 DesktopRuntime.5-x64.exe "/q /norestart"
Call :wget1 DesktopRuntime.5-x86.exe "/q /norestart"
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
Call :sz "HKCU\Control Panel\Desktop" "WaitToKillAppTimeout" "20000"
Call :sz "HKCU\Control Panel\Desktop" "HungAppTimeout" "10000"
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
::Web Account Manager 
sc config TokenBroker start= demand > NUL 2>&1
net start TokenBroker /y > NUL 2>&1
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
mode con cols=55 lines=36
title Hizmet Yönetimi / OgnitorenKs
Dism /Online /Get-Features /format:table > %Logs%\servvalue.txt
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
set servalue=%R%[100m %R%[0m&FOR %%b in (WSearch ConsentUxUserSvc DevicePickerUserSvc DevicesFlowUserSvc PNRPAutoReg PNRPsvc p2psvc p2pimsvc upnphost SSDPSRV TermService UmRdpService SessionEnv) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m   %R%[32m 8%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Uzak Masaüstü/Akış/Ağ hizmetleri     %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "WSearch"
echo  %R%[90m│%R%[0m   %R%[32m 9%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Windows Search                       %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "wcncsvc"
echo  %R%[90m│%R%[0m  %R%[32m 10%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Windows Şimdi Bağlan(WPS) hizmeti    %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (FrameServer WiaRpc StiSvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 11%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Tarayıcı ve Kamera hizmetleri        %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "wisvc"
echo  %R%[90m│%R%[0m  %R%[32m 12%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Insider hizmeti                      %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "WbioSrvc"
echo  %R%[90m│%R%[0m  %R%[32m 13%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Biyometrik hizmeti                   %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m
FOR /F "tokens=5" %%i in ('FIND "Caption" %Logs%\OS.txt') do SET caption3=%%i
	if %caption3%==11 (Call :serv.check "PenService")
	if %caption3%==10 (Call :serv.check "TabletInputService")
echo  %R%[90m│%R%[0m  %R%[32m 14%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Kalem ve Dokunmatik hizmeti          %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (SDRSVC VSS swprv wbengine fhsvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 15%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Sistem Geri yükleme hizmeti          %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "SysMain"
echo  %R%[90m│%R%[0m  %R%[32m 16%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Sysmain (Hızlı Getir)                %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m  %R%[32m 17%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Hızlı Başlat (Hibernate)             %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (lfsvc NaturalAuthentication) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 18%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Konum hizmeti                        %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&findstr /i "Hyper-V" %Logs%\servvalue.txt | findstr /i "Disabled" > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m  %R%[32m 19%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Hyper-V hizmeti                      %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (BcastDVRUserService XboxGipSvc XboxNetApiSvc XblAuthManager XblGameSave DoSvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 20%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Xbox hizmeti                         %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :serv.check "BDESVC"
echo  %R%[90m│%R%[0m  %R%[32m 21%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Bitlocker Sürücü şifreleme hizmeti   %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 22%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Karma Gerçeklik hizmeti (VR)         %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&reg query "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" /v "SearchOrderConfig" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m  %R%[32m 23%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Driver Yükle/Güncelle hizmeti        %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&Call :Powershell "Get-MMAgent | Select-Object MemoryCompression| FL" > %Logs%\mc
findstr /i "False" %Logs%\mc > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m  %R%[32m 24%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Bellek Sıkıştırma hizmeti            %R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m
reg query "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v  "ValueMax" | findstr /i 0x0 > NUL 2>&1
	if %errorlevel%==1 (set servalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m  %R%[32m 25%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Core Parking (CPU Çekirdek Uyku Modu)%R%[90m│%R%[0m
::
set servalue=%R%[100m %R%[0m&FOR %%b in (WwanSvc WlanSvc wcncsvc lmhosts vwifibus NativeWifiP Ndisuio vwififlt) do (Call :serv.check "%%b")
echo  %R%[90m│%R%[0m  %R%[32m 26%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%servalue%%R%[90m -%C%[33m Wifi hizmeti                         %R%[90m│%R%[0m
echo  %R%[90m│%R%[0m         %R%[32m X -%R%[36m Menü%R%[0m                                 %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==1a (Call :serv.1.bluetooth start demand auto açılıyor)
	if %value%==1A (Call :serv.1.bluetooth start demand auto açılıyor)
	if %value%==1K (Call :serv.1.bluetooth stop disabled disabled kapatılıyor)
	if %value%==1k (Call :serv.1.bluetooth stop disabled disabled kapatılıyor)
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
	if %value%==26a (Call :serv.26.wifi start demand system açılıyor)
	if %value%==26A (Call :serv.26.wifi start demand system açılıyor)
	if %value%==26K (Call :serv.26.wifi stop disabled disabled kapatılıyor)
	if %value%==26k (Call :serv.26.wifi stop disabled disabled kapatılıyor)
	if %value%==x goto menu
	if %value%==X goto menu
) else 
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
Call :ProcessCompleted
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
Call :ProcessCompleted
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
:: Bluetooth (AVCTP hizmeti) | Bluetooth destek hizmeti | Bluetooth kullanıcı desteği hizmeti \ Ses ağ geçidi hizmeti
FOR %%a in (BthAvctpSvc bthserv BluetoothUserService BTAGService) do (sc config %%a start= %3 > NUL 2>&1)
Call :ProcessCompleted
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
Call :ProcessCompleted
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
Call :ProcessCompleted
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
Call :ProcessCompleted
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
	if %caption3%==11 (echo  ► %C%[91Windows 11'de bu hizmet kapatılamaz.%C%[0m
					   timeout /t 3 /nobreak > NUL
					   goto servicesmanagement)

Call :LogSave "Hizmetleri Yönet" "Radyo ve Uçak Modu hizmeti %3"
echo  ► %C%[96mRadyo yönetim ve uçak modu hizmeti %3 ...%C%[0m
:: Radyo yönetimi ve uçak modu hizmeti
sc config RMSvc start= %2 > NUL 2>&1
net %1 RMSvc /y > NUL 2>&1
Call :ProcessCompleted
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.8.akis
Call :LogSave "Hizmetleri Yönet" "Akış deneyimi hizmeti %4"
echo  ► %C%[96mUzak Masaüstü/Akış hizmetleri %4 ...%C%[0m
:: ConsentUx kullanıcı hizmeti 
sc config ConsentUxUserSvc start= %2 > NUL 2>&1
net %1 ConsentUxUserSvc /y > NUL 2>&1
:: Miracast, DLNA kullanıcı arabirimini
sc config DevicePickerUserSvc start= %2 > NUL 2>&1
net %1 DevicePickerUserSvc /y > NUL 2>&1
:: Cihaz Akışı
sc config DevicesFlowUserSvc start= %2 > NUL 2>&1
net %1 DevicesFlowUserSvc /y > NUL 2>&1
:: WMP ağ paylaşım hizmeti
sc config WMPNetworkSvc start= %2 > NUL 2>&1
net %1 WMPNetworkSvc /y > NUL 2>&1
::PNRP Makine adı yayın hizmeti
sc config PNRPAutoReg start= %2 > NUL 2>&1
net %1 PNRPAutoReg /y > NUL 2>&1
:: Eş adı çözümleme protokolü
sc config PNRPsvc start= %2 > NUL 2>&1
net %1 PNRPsvc /y > NUL 2>&1
:: Eş ağ gruplandırma
sc config p2psvc start= %2 > NUL 2>&1
net %1 p2psvc /y > NUL 2>&1
:: Eşler arası ağ oluşturma kimlik yöneticisi
sc config p2pimsvc start= %2 > NUL 2>&1
net %1 p2pimsvc /y > NUL 2>&1
:: UPNP aygıt ana makinesi
sc config upnphost start= %2 > NUL 2>&1
net %1 upnphost /y > NUL 2>&1
:: Upnp Aygıt ana bilgisyarı (Ağdaki cihazları bulur)
sc config SSDPSRV start= %2 > NUL 2>&1
net %1 SSDPSRV /y > NUL 2>&1
:: Uzak masaüstü hizmetleri
sc config TermService start= %2 > NUL 2>&1
net %1 TermService /y > NUL 2>&1
:: Uzak Masaüstü Hizmetleri Kullanıcı Modu Bağlantı Noktası Yeniden Yönlendiricisi
sc config UmRdpService start= %2 > NUL 2>&1
net %1 UmRdpService /y > NUL 2>&1
:: Uzak Masaüstü Yapılandırması
sc config SessionEnv start= %2 > NUL 2>&1
net %1 SessionEnv /y > NUL 2>&1
:: Windows Search
sc config WSearch start= %3 > NUL 2>&1
net %1 WSearch /y > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Media Player\*.wmdb > NUL 2>&1
Call :ProcessCompleted
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand    | %3 : auto     | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled  | %3 : disabled | %4 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.9.wsearch
Call :LogSave "Hizmetleri Yönet" "Wsearch hizmeti %3"
echo  ► %C%[96mWindows Search hizmeti %3 ...%C%[0m
:: Windows Search
sc config WSearch start= %2 > NUL 2>&1
net %1 WSearch /y > NUL 2>&1
Call :ProcessCompleted
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto     | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.10.wps
Call :LogSave "Hizmetleri Yönet" "WPS hizmeti %3"
echo  ► %C%[96mWindows Şimdi Bağlan hizmeti %3 ...%C%[0m
:: Windows Şimdi Bağlan - Yapılandırma Dosyası Kaydedici
::  WPS protokolünün uygulanmasını sağlar.
sc config wcncsvc start= %2 > NUL 2>&1
net %1 wcncsvc /y > NUL 2>&1
Call :ProcessCompleted
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.11.camera
Call :LogSave "Hizmetleri Yönet" "Tarayıcı ve Kamera hizmeti %3"
echo  ► %C%[96mTarayıcı ve Kamera hizmetleri %3 ...%C%[0m
:: Windows Kamera çerçeve sunucusu | Windows Kamera Çerçeve Sunucusu | Resim alma olayları (Windows Görüntü Alma-WIA) | Windows Resim Alma (Windows Görüntü Alma (WIA))
FOR %%a in (FrameServer FrameServerMonitor WiaRpc StiSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
Call :ProcessCompleted
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.12.insider
Call :LogSave "Hizmetleri Yönet" "Insider hizmeti %3"
echo  ► %C%[96mWindows Insider hizmeti %3 ...%C%[0m
:: Windows Insider Hizmeti
sc config wisvc start= %2 > NUL 2>&1
net %1 wisvc /y > NUL 2>&1
Call :ProcessCompleted
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.13.biyometrik
Call :LogSave "Hizmetleri Yönet" ^| "Biyometrik hizmeti %3"
echo  ► %C%[96mWindows Biyometrik hizmeti %3 ...%C%[0m
:: Windows Biyometrik Hizmeti
sc config WbioSrvc start= %2 > NUL 2>&1
net %1 WbioSrvc /y > NUL 2>&1
Call :ProcessCompleted
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.14.dokunmatik
Call :LogSave "Hizmetleri Yönet" "Dokunmatik Klavye ve Kalem hizmeti %3"
echo  ► %C%[96mDokunmatik Klavye ve Kalem hizmeti %3 ...%C%[0m
:: Kalem servisi
sc config PenService start= %2 > NUL 2>&1
net %1 PenService /y > NUL 2>&1
::Dokunmatik Klavyeyi ve el yazısı paneli hizmeit
sc config TabletInputService start= %2 > NUL 2>&1
net %1 TabletInputService /y > NUL 2>&1
Call :ProcessCompleted
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.15.sistemgeriyukleme
Call :LogSave "Hizmetleri Yönet" "Sistem Geri yükleme hizmeti %5"
echo  ► %C%[96mSistem geri yükleme hizmeti %5 ...%C%[0m
:: Windows Yedekleme ve Geri Yükleme hizmeti | Birim Gölge kopyası | Microsoft Yazılımı Gölge Kopya Sağlayıcısı | Blok Düzeyinde Yedekleme Altyapı Hizmeti | Dosya geçmişi hizmeti
FOR %%a in (SDRSVC VSS swprv wbengine fhsvc) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /%3 > NUL 2>&1
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableConfig" "%~4"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableSR" "%~4"
Call :ProcessCompleted
::-------------------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : ENABLE  | %~4 : 0 | %5 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %~4 : 1 | %5 : kapatılıyor
::-------------------------------------------------------------------------------
goto :eof

:serv.16.sysmain
Call :LogSave "Hizmetleri Yönet" "Hızlı Getir^(Sysmain^) hizmeti %3"
echo  ► %C%[96mHızlı Getir hizmeti %3 ...%C%[0m
sc config SysMain start= %2 > NUL 2>&1
net %1 SysMain /y > NUL 2>&1
Call :ProcessCompleted
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.17.hibernate
::Hızlı başlangıç
Call :LogSave "Hizmetleri Yönet" "Hızlı başlangıç^(Hibernate^) hizmeti %3"
echo  ► %C%[96mHızlı başlat %3 ...%C%[0m
powercfg /hibernate %1
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" "%~2"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" "%~2"
Call :ProcessCompleted
::-------------------------------------------------------
::    Aç = %1 : On  | %~2 : 1  | %3 : açılıyor
:: Kapat = %1 : Off | %~2 : 0  | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:serv.18.Location
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
Call :ProcessCompleted
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
Call :ProcessCompleted
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : ENABLE  | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %4 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:serv.19.hyperv
Call :LogSave "Hizmetleri Yönet" "Hyper-V hizmeti %6"
echo  ► %C%[96mHyper-V hizmeti %6 ...%C%[0m
%~3 /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-All /Quiet /NoRestart
FOR %%a in (HvHost vmicvss vmicguestinterface vmicshutdown vmicvmsession vmicheartbeat vmicrdv vmickvpexchange vmictimesync vmms vmcompute) do (
	sc config %%a start= %1 > NUL 2>&1)
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" "Enabled" "%~4"
bcdedit /set hypervisorlaunchtype %5
Call :ProcessCompleted
::------------------------------------------
::    Aç = %1 : demand    | %2 : Enable  | %~3 : For  | %~4: 1  | %5 : on   | %6 : açılıyor   
:: Kapat = %1 : disabled  | %2 : Disable | %~3 : ::   | %~4: 0  | %5 : off  | %6 : kapatılıyor
::------------------------------------------
goto :eof

:serv.20.xbox
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
Call :ProcessCompleted
::----------------------------------------------------------------------------------------------------------------------------------------------
::    Aç = %1 : start  | %2 : demand    | %3 : 1  |  %4 : 0  | %~5 : Call :delete2 | %6 : açılıyor
:: Kapat = %1 : stop   | %2 : disabled  | %3 : 0  |  %4 : 2  | %~5 : Call :dword   | %6 : kapatılıyor
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

:serv.21.bitlocker
Call :LogSave "Hizmetleri Yönet" "Bitlocker hizmeti %3"
echo  ► %C%[96mBitlocker hizmeti %3 ...%C%[0m
:: Bitlocker sürücü şifreleme hizmeti
sc config BDESVC start= %2 > NUL 2>&1
net %1 BDESVC /y > NUL 2>&1
Call :ProcessCompleted
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::------------------------------------------------------
goto :eof

:serv.22.mixedreality
Call :LogSave "Hizmetleri Yönet" "Karma Gerçeklik hizmeti %2"
echo  ► %C%[96mKarma Gerçeklik hizmeti %2 ...%C%[0m
:: Uzlamsal veri hizmeti | Volumetrik ses oluşturucu hizmeti | Windows algılama benzetimi hizmeti | Windows Algılama Hizmeti | Windows Mixed Reality OpenXR Service
FOR %%a in (SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc) do (
	sc config %%a start= %1 > NUL 2>&1)
Call :ProcessCompleted
::------------------------------------------
::    Aç = %1 : demand    | %2 : açılıyor   
:: Kapat = %1 : disabled  | %2 : kapatılıyor
::------------------------------------------
goto :eof

:serv.23.driverupdate
Call :LogSave "Hizmetleri Yönet"  "Driver Güncelle / Yükle %3"
echo  ► %C%[96mDriver Yükle/Güncelle hizmeti %3 ...%C%[0m
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Update" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update\ExcludeWUDriversInQualityUpdate" "value" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" "%~2"
gpupdate /force > NUL 2>&1
Call :ProcessCompleted
::-------------------------------------
::    Aç = %~1 : 0  | %~2: 1  | %3 : açılıyor   
:: Kapat = %~1 : 1  | %~2: 0  | %3 : kapatılıyor
::-------------------------------------
goto :eof

:serv.24.memorycompression
Call :LogSave "Hizmetleri Yönet" "Bellek sıkıştırma %2"
echo  ► %C%[96mBellek sıkıştırma hizmeti %2 ...%C%[0m
Call :Powershell "%~1-MMAgent -mc"
Call :ProcessCompleted
::-------------------------------------
::    Aç = %~1 : Enable   | %~2: açılıyor   
:: Kapat = %~1 : Disable  | %~2: kapatılıyor
::-------------------------------------
goto :eof

:serv.25.coreparking
Call :LogSave "Hizmetleri Yönet" "İşlemci çekirdek bekleme hizmeti %4."
echo  ► %C%[96mİşlemci çekirdek bekleme hizmeti %4 ...%C%[0m
Call :dword "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
Call :dword "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
%~2 "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
%~2 "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
%~3 "HKLM\SYSTEM\CurrentControlSet\Control\Power" "CoreParkingDisabled" "0"
Call :ProcessCompleted
::-------------------------------------
::    Aç = %~1 : 100  |  %~2: Call :delete |  %~3: Call :delete2  | %4: açılıyor
:: Kapat = %~1 : 0    |  %~2: Call :dword  |  %~3: Call :dword    | %4: kapatılıyor
::-------------------------------------
goto :eof

:serv.26.wifi
Call :LogSave "Hizmetleri Yönet" "Wifi hizmeti %4"
echo  ►%C%[96m Wifi hizmeti %4 ...%C%[0m
:: WWAN Otomatik Yapılandırma | Kablosuz Yerel Ağ Otomatik Yapılandırma | Windows Şimdi Bağlan | TCP/IP NetBIOS Yardımcısı | 
FOR %%a in (WwanSvc WlanSvc wcncsvc lmhosts vwifibus NativeWifiP Ndisuio) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
sc config vwififlt start= %~3 > NUL 2>&1
net %1 vwififlt /y > NUL 2>&1
Call :ProcessCompleted
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : System   | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : Disabled | %4 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:wifiinfoarchley
:: Bu bölüm "ARCHLEY" kullanıcısı tarafından eklenmiştir. 
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

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

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

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:gpedit
Call :Location
Call :LogSave "Gpedit" "Gpedit.msc eklendi"
echo %C%[96m Gpedit.msc (Yerel Grup ilkesi) aktifleştiriliyor...%C%[0m
FOR /f %%a IN ('"dir /b /s %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%%a" > NUL 2>&1)
FOR /f %%a IN ('"dir /b /s %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%%a" > NUL 2>&1)
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

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

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
::  WİNDOWS 11 BÖLÜMÜ 

:Win11SettingsMenu
cls
mode con cols=55 lines=18
title Windows 11 Özelleştir / OgnitorenKs
echo.
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
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
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
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu

Call :LogSave "Win11MenuChange" "Taskbar boyut ayarı '%value%' olarak ayarlandı"	
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarSi" "%value%"
Call :ExplorerReset
Call :ProcessCompleted
goto :eof

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
set /p value= %C%[92m İşlem : %C%[0m
	if %value%==x goto win11settingsmenu
	if %value%==X goto win11settingsmenu

Call :LogSave "Win11MenuLocation" "Taskbar Location ayarı '%value%2 olarak ayarlandı"
Call :binary "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3" "Settings" "30000000feffffff7af400000%value%0000003000000030000000000000000804000080070000380400006000000001000000"
Call :ExplorerReset
Call :ProcessCompleted
goto :eof

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
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu

Call :LogSave "Win11MenuOld" "Taskbar simge Locationu '%value%' olarak ayarlandı"
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAl" "%value%"
Call :ExplorerReset
Call :ProcessCompleted
goto :eof

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
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu
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
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu
goto Win11RightMenuTerminal

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


:Win10SettingsMenu
cls
mode con cols=55 lines=18
title Windows 10 Özelleştir / OgnitorenKs
echo.
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
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto Win10SettingsMenu
	
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
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu

Call :LogSave Win10EkranTepsi "Windows 10 Saat yanı simgeri ayarı '%value%' olarak ayarlandı"
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "EnableAutoTray" "%value%"
Call :ExplorerReset
Call :ProcessCompleted
goto :eof

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
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu

Call :LogSave Win10Bildirim "Windows 10 Bildirim alanı ayarı '%value%' olarak ayarlandı"
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "%value%"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "%value%"
Call :ExplorerReset
Call :ProcessCompleted
goto :eof

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
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu

Call :LogSave "Win10HavaDurumu" "%value% değeri girildi"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" "EnableFeeds" "%value%"
Call :ExplorerReset
Call :ProcessCompleted
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:StoreRemove
cls
mode con cols=109 lines=35
title Microsoft Store kaldırılıyor / OgnitorenKs

echo %R%[92m Microsoft Store ve bağlı tüm uygulamalar kaldırılacak%R%[0m
set /p value=%R%[92m Menü için%R%[96m "X"%R%[92m Devam etmek için herhangi bir tuşlama yapın : %R%[0m
	if %value%==x goto menu
	if %value%==X goto menu
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
net stop StorSvc /y > NUL 2>&1
:: İstemci Lisans Hizmeti
%NSudo% sc config ClipSVC start= disabled
%NSudo% net stop ClipSVC /y
Call :ProcessCompleted
goto :eof

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
) else
	goto icochange

:icochange
cls
Call :LogSave icochangemenu "%~1 simge dosyası yüklendi"

dir /b %Location%\Files\Oldico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :ico.download)

dir /b %Location%\Files\Newico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :ico.download)

title ICO Ayarları yapılıyor / OgnitorenKs
echo %R%[1;97m%R%[42m %1 simgeler yükleniyor...%R%[0m

taskkill /f /im explorer.exe > NUL 2>&1
taskkill /f /im RuntimeBroker.exe > NUL 2>&1

takeown /f "%windir%\SystemResources\shell32.dll.mun" > NUL 2>&1
takeown /f "%windir%\SystemResources\zipfldr.dll.mun" > NUL 2>&1
takeown /f "%windir%\SystemResources\imageres.dll.mun" > NUL 2>&1
takeown /f "%windir%\SystemResources\imagesp1.dll.mun" > NUL 2>&1
%NSudo% DEL /F /Q /A "%windir%\SystemResources\imagesp1.dll.mun"
%NSudo% DEL /F /Q /A "%windir%\SystemResources\imageres.dll.mun"
%NSudo% DEL /F /Q /A "%windir%\SystemResources\zipfldr.dll.mun"
%NSudo% DEL /F /Q /A "%windir%\SystemResources\shell32.dll.mun"
%NSudo% PowerShell -command "Expand-Archive -Force '%Location%\Files\%~1.zip' '%windir%'"

DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1

Call :Powershell "Start-Process 'C:\Windows\explorer.exe'"
Call :ProcessCompletedReset
goto Win10SettingsMenu

:ico.download
echo %R%[96m Simge dosyaları indiriliyor...%R%[0m
Call :wget3 "Oldico.zip" "%Location%\Files\Oldico.zip"
Call :wget3 "Newico.zip" "%Location%\Files\Newico.zip"
goto :eof


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
) else
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
echo  %R%[90m│                %R%[32m 10.%R%[33m  İptal et                     %R%[90m│%R%[0m
echo  %R%[90m│                 %R%[32m X.%R%[36m  Menü                         %R%[90m│%R%[0m
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
				   timeout /t 2 /nobreak > NUL)
	if %value%==x goto menu
	if %value%==X goto menu
) else
	goto shutdownpc
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
:: Bilgisayarda yüklü uygulamalar arasında Python aranır. Yüklü değil ise indirip, kurar.
Call :Powershell "Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName" > %Logs%\InstallApp
Findstr /i "Python" %Logs%\InstallApp > NUL 2>&1
	if %errorlevel%==1 (echo ►%R%[33m Python kuruluyor...%R%[0m
						Call :wget4 Python.exe "/quiet InstallAllUsers=1 PrependPath=1")

Call :Powershell "get-appxpackage | Select-Object Name,NonRemovable" > %Logs%\NonRemoval
:: Microsoft.Windows.ContentDeliveryManager ContentDeliveryManager
echo   %R%[90m┌─────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m          NonRemoval Menü            %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├─────────────────────────────────────┤%R%[0m
Call :NonRemovalChecker BioEnrollment
echo   %R%[90m│%R%[36m  1 %servalue% -%R%[33m Biometrick hizmeti           %R%[90m│%R%[0m
Call :NonRemovalChecker CapturePicker
echo   %R%[90m│%R%[36m  2 %servalue% -%R%[33m Ekran Yakalama               %R%[90m│%R%[0m
Call :NonRemovalChecker Cortana
echo   %R%[90m│%R%[36m  3 %servalue% -%R%[33m Cortana                      %R%[90m│%R%[0m
Call :NonRemovalChecker MicrosoftEdge
echo   %R%[90m│%R%[36m  4 %servalue% -%R%[33m MicrosoftEdge                %R%[90m│%R%[0m
Call :NonRemovalChecker Holographic
echo   %R%[90m│%R%[36m  5 %servalue% -%R%[33m Karma Gerçeklik              %R%[90m│%R%[0m
Call :NonRemovalChecker Narrator
echo   %R%[90m│%R%[36m  6 %servalue% -%R%[33m Ekran Okuma                  %R%[90m│%R%[0m
Call :NonRemovalChecker ParentalControls
echo   %R%[90m│%R%[36m  7 %servalue% -%R%[33m Ebeveyn Kontrolleri          %R%[90m│%R%[0m
Call :NonRemovalChecker PeopleExperienceHost
echo   %R%[90m│%R%[36m  8 %servalue% -%R%[33m Kişiler                      %R%[90m│%R%[0m
Call :NonRemovalChecker SecHealthUI
echo   %R%[90m│%R%[36m  9 %servalue% -%R%[33m Windows Defender             %R%[90m│%R%[0m
Call :NonRemovalChecker SecureAssessmentBrowser
echo   %R%[90m│%R%[36m 10 %servalue% -%R%[33m Güvenli Tarayıcı             %R%[90m│%R%[0m
Call :NonRemovalChecker StartMenu
echo   %R%[90m│%R%[36m 11 %servalue% -%R%[33m Başlat Menüsü                %R%[90m│%R%[0m
Call :NonRemovalChecker Search
echo   %R%[90m│%R%[36m 12 %servalue% -%R%[33m Search App (Taskbar Search)  %R%[90m│%R%[0m
Call :NonRemovalChecker
echo   %R%[90m│%R%[36m 13 %servalue% -%R%[33m Kamera Barkod Tarayıcı       %R%[90m│%R%[0m
echo   %R%[90m│%R%[36m  X -%R%[33m Menü                           %R%[90m│%R%[0m
echo   %R%[90m└─────────────────────────────────────┘%R%[0m 
set /p value=%R%[36m  Kaldır: %R%[0m
	if %value%==1 (Call :NonRemoval Microsoft.BioEnrollment BioEnrollment)
	if %value%==2 (Call :NonRemoval Microsoft.Windows.CapturePicker CapturePicker)
	if %value%==3 (Call :NonRemoval Microsoft.549981C3F5F10 549981C3F5F10)
	if %value%==4 (Call :NonRemoval Microsoft.MicrosoftEdge Edge)
	if %value%==5 (Call :NonRemoval Microsoft.Windows.HolographicFirstRun Holographic)
	if %value%==6 (Call :NonRemoval Microsoft.Windows.NarratorQuickStart NarratorQuickStart)
	if %value%==7 (Call :NonRemoval Microsoft.Windows.ParentalControls ParentalControls)
	if %value%==8 (Call :NonRemoval Microsoft.Windows.PeopleExperienceHost PeopleExperienceHost)
	if %value%==9 (Call :NonRemoval Microsoft.Windows.SecHealthUI SecHealthUI)
	if %value%==10 (Call :NonRemoval Microsoft.Windows.SecureAssessmentBrowser SecureAssessmentBrowser)
	if %value%==11 (Call :NonRemoval Microsoft.Windows.StartMenuExperienceHost StartMenuExperienceHost)
	if %value%==12 (Call :NonRemoval Microsoft.Windows.Search Search)
	if %value%==13 (Call :NonRemoval Microsoft.CBSPreview CBSPreview)
	if %value%==x goto menu
	if %value%==X goto menu
) else
	goto NonRemovalMenu
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

Call :Powershell "Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName" > %Logs%\InstallApp
Findstr /i "Python" %Logs%\InstallApp > NUL 2>&1
	if %errorlevel%==1 (echo ►%R%[33m Python kuruluyor...%R%[0m
						Call :wget1 Python.exe "/quiet InstallAllUsers=1 PrependPath=1")

echo %R%[92m Güncelleme sonrası temizlik işlemi yapılıyor.%R%[0m
echo %R%[92m Güncelleme sonrası yüklenen uygulamalar siliniyor...%R%[0m
Call :NonRemoval Microsoft.549981C3F5F10 549981C3F5F10
Call :NonRemoval Microsoft.Windows.HolographicFirstRun Holographic
Call :NonRemoval Microsoft.Windows.NarratorQuickStart NarratorQuickStart
Call :NonRemoval Microsoft.Windows.ParentalControls ParentalControls
Call :NonRemoval Microsoft.Windows.PeopleExperienceHost PeopleExperienceHost
Call :NonRemoval Microsoft.Windows.SecHealthUI SecHealthUI

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
Call :dword "HKCU\Software\Microsoft\Narrator\QuickStart" "SkipQuickStart" 1 & :: Narrator QuickStart kapatılıyor.
Call :dword "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SoftLandingEnabled" 0 & :: Windows önerileri devre dışı bırakılıyor...
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-310093Enabled" 0 & :: Windows karşılama deneyimi kapatılıyor...
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisablePCA" 1 & :: Program uyumluluk yardımcısı devre dışı bırakılıyor...
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableUAR" 1 & :: Program uyumluluk yardımcısı devre dışı bırakılıyor...
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "HwSchMode" 2 & :: Donanım hızlandırmalı GPU Planlaması aktifleştiriliyor...
:: Call :sz "HKCU\Control Panel\Mouse" "MouseSpeed" 0 & :: İşaretçi hassasiyeti devre dışı bırakılıyor...
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
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\EdgeUpdate" "InstallDefault" "0" & :: EdgeWebView2'nin kurulmasını engeller
Call :dword "HKLM\SOFTWARE\Microsoft\EdgeUpdate" "DoNotUpdateToEdgeWithChromium" "1" & :: Microsoft Edge'in otomatik kurulmasını engeller
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" "AllowDevelopmentWithoutDevLicense" "1" & Uygulama geliştirme modu aktifleştiriliyor.

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
echo  %R%[90m│         %R%[32m 4%R%[90m -%R%[33m Masaüstünde kısayol oluştur          %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m 5%R%[90m -%R%[33m Güncellemeleri Kontrol Et            %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│         %R%[32m 6%R%[90m -%R%[33m Toolbox Rehber                       %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m 7%R%[90m -%R%[33m ognitorenks.blogspot.com             %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m 8%R%[90m -%R%[33m Github Proje Sayfası                 %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m 9%R%[90m -%R%[33m Güncelleme Notları                   %R%[90m│%R%[0m
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
	if %value%==4 (Call :Powershell "Expand-Archive -Force '%Location%\Files\lnk.zip' 'C:\users\%username%\Desktop'")
	if %value%==5 (Call :UpdateReset
				   goto T.Settings)
	if %value%==6 (start https://ognitorenks.blogspot.com/2022/04/ognitorenks-toolbox.html)
	if %value%==7 (start https://ognitorenks.blogspot.com/)
	if %value%==8 (start https://github.com/OgnitorenKs/OgnitorenKs.Toolbox)
	if %value%==9 (start https://github.com/OgnitorenKs/OgnitorenKs.Toolbox/blob/main/Release.Notes.md)
	if %value%==x goto T.Settings
	if %value%==X goto T.Settings
) else
	goto ToolboxSettings
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

:wget1 [%~1=Download Name] [%~2=Silent Install]
Call :InternetControl
FOR /F "tokens=1" %%i in ('FIND "%~1" %Location%\Extra\Links.txt') do set link=%%i
Call :LogSave "wget" "%~1 indirildi."
echo    ►%R%[33m %~n1%R%[0m indiriliyor/yükleniyor...
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %download%\%~1
"%download%\%~1" %~2
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget2 [%~1=Download Name]
Call :InternetControl
FOR /F "tokens=1" %%i in ('FIND "%~1" %Location%\Extra\Links.txt') do set link=%%i
Call :LogSave "wget2" "%~1 indirildi."
echo    ►%R%[33m %~n1%R%[0m indiriliyor/yükleniyor...
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %download%\%~1
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget3 [%~1=Download Name] [%~2=Download Location]
Call :InternetControl
FOR /F "tokens=1" %%i in ('FIND "%~n1%~x1" %Location%\Extra\Links.txt') do set link=%%i
Call :LogSave "wget3" "%~n1 indirildi."
echo    ►%R%[33m %~n1%R%[0m indiriliyor...
%Location%\Files\wget -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %~1
goto :eof

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
ping -n 1 www.bing.com -w 20000 > NUL
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
						Call :wget3 "https://docs.google.com/uc?export=download&id=1u26XInN1baT1zGhL5N4Kz1SUD4pYJys9" "%download%\NSudo.zip"
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
FOR /F "tokens=5" %%i in ('FIND "Caption" %Logs%\OS.txt') do SET caption3=%%i
	if %caption3%==11 GOTO Win11SettingsMenu
	if %caption3%==10 GOTO Win10SettingsMenu
) else
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

:PowerChoice
Call :LogSave "PowerChoice" "PowerChoice çalıştırıldı"
Call :Powershell "Start-Process '%Location%\Extra\PowerChoice.bat'"
goto :eof

:Optimizer
Call :LogSave "Optimizer" "Optimizer çalıştırıldı"
Call :Powershell "Start-Process '%Location%\Extra\Optimizer.bat'"
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Windows11
set editmenu=Windows 11 Edit
set editmenugo=Win11SettingsMenu
goto menu

:Windows10
set editmenu=Windows 10 Edit
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