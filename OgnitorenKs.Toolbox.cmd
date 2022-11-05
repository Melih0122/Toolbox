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
::  •    Site: https://ognitorenks.com.tr
::
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:OgnitorenKs.Toolbox
echo off
cls
:: Türkçe karakterlein bozulmaması için kullanılan karakter takımı
chcp 65001 > NUL 2>&1

::Renklendirme komutu
setlocal
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set R=%%b)

:: ==============================================================================================================================

cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Logs=%Location%\Edit\Logs
set download=%Location%\Download
:: Üst düzey yetki
set NSudo="%Location%\Files\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c
::set NSudo="%Location%\Files\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c
:: Yetkisiz işlem
set NSudo2="%Location%\Files\NSudo.exe" -U:C -P:D -Wait -ShowWindowMode:hide cmd /c
:: Yönetici Yekisi
set NSudo3="%Location%\Files\NSudo.exe" -U:E -P:E -ShowWindowMode:hide cmd /c
set version=3.7.1

:: ==============================================================================================================================

:: Toolbox için gerekli klasörler oluşturuluyor.
FOR %%a in (Download Files\Yedek Edit\Appx Edit\Desktop Edit\Driver Edit\Logs Edit\Mount Edit\Update) do (
	mkdir "%Location%\%%a" > NUL 2>&1
)

:: ==============================================================================================================================
:: x64 mimari kontorlü yapılır.
FOR /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "PROCESSOR_ARCHITECTURE" 2^>NUL') do (
	if %%a NEQ AMD64 (cls&Call :Error_Print "ERROR 6"&echo.&Call :Error_Print "HATA! Sistem mimarisi x64 değil"&echo.&Call :Error_Print "Builder kapatılıyor"&timeout /t 4 /nobreak > NUL&exit)
)

:: ==============================================================================================================================

:: Yönetici yetki kontrolü yapılır. Yoksa yönetici haklarıyla yeniden açılır
reg query "HKU\S-1-5-19" > NUL 2>&1
	if %errorlevel%==1 (%NSudo3% Powershell -command "Start-Process '%Location%\OgnitorenKs.Toolbox'"
						exit
)

:: ==============================================================================================================================
:: Toolbox ayarlarını okuyup değişkenlere atan bölüm.
FOR /F "tokens=2" %%a in ('findstr /C:"LogsSettings" %Location%\Settings.ini') do (set LogsSettings=%%a)
FOR /F "tokens=2" %%a in ('findstr /C:"Chocolatey" %Location%\Settings.ini') do (set Chocolatey=%%a)
	if %Chocolatey% EQU 0 (set DownValue=%R%[32mChocolatey%R%[0m)
	if %Chocolatey% EQU 1 (set DownValue=%R%[32mWget%R%[0m)
FOR /F "tokens=2" %%a in ('findstr /C:"InternetCheck" %Location%\Settings.ini') do (set InternetCheck=%%a)
FOR /F "tokens=2" %%a in ('findstr /C:"AutoUpdate" %Location%\Settings.ini') do (set AutoUpdate=%%a)
:: Tarih bilgisi alınır
for /f "tokens=2" %%a in ('echo %date%') do set Date=%%a
:: YIL.AY.GÜN
set Date2=%Date:~6%-%Date:~3,-5%-%Date:~0,-8%
:: GÜN.AY.YIL
set Date=%Date:~0,-8%.%Date:~3,-5%.%Date:~6%

:: ==============================================================================================================================

:: Chocolatey indirme sisteminin yüklü olup olmadığını kontrol eder. Yüklü değilse kurulum işlemini gerçekleştirir.
dir /b "%ProgramData%\chocolatey" > NUL 2>&1
	if %errorlevel% EQU 1 if %Chocolatey% EQU 0 (Call :LogSave "Choco" "Chocolatey indirildi."
												 echo  ► %R%[33m Chocolatey yükleniyor...%R%[0m
												 %NSudo% Powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && set "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
)
:: Wget kontrolü yapar, yoksa indirir.
dir /b "%Location%\Files\wget.exe" > NUL 2>&1
	if %errorlevel% EQU 1 (Call :PSDownload "%Location%\Files\wget.exe")

:: Eksik dosya varsa dosya eksik hatası verir ve Toolbox'ı kapatır
echo %R%[33m Toolbox dosyaları kontrol ediliyor...%R%[0m
FOR %%b in (7z.dll 7z.exe NSudo.exe DevManView.exe Mouse.Icon.zip hosts hosts.default lnk.zip oscdimg.exe Remove.py Toolbox.zip) do (
	Call :ToolboxFileChecker "%Location%\Files\%%b"
)
cls

:: ==============================================================================================================================

:: Toolbox otomatik güncelleme işleminin durumunu kontrol eder ve yönlendirir.
if %AutoUpdate%==1 (goto ToolboxInfo)
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

:: Settings.ini dosyasına kaydedilen tarih ile güncel tarih verisi karşılaştırılır. Tarihler farklı ise güncellemeler kontrol edilir.
For /f "tokens=2" %%b in ('findstr /C:"TimeUpdate" %Location%\Settings.ini') do (set ToolboxUpdateLog=%%b)
	if %ToolboxUpdateLog% EQU %Date% goto ToolboxInfo
)
:: Güncel tarih verisi Settings.ini dosyasını işlenir.
Call :Powershell "(Get-Content %Location%\Settings.ini) | ForEach-Object { $_ -replace '%ToolboxUpdateLog%', '%Date%' } | Set-Content '%Location%\Settings.ini'"
:: Links.txt dosyası indirilir
Call :wget4 %Location%\Extra\Links.txt
:: Güncel versiyon ile yüklü toolbox versiyonları karşılaştırılır.Uyuşmaz ise yeni versiyonu indirmeye başlar.
FOR /F "delims=':' tokens=2" %%b in ('Findstr /C:"VersionCheck" %Location%\Extra\Links.txt') do (set versioncheck=%%b)
	if %version% EQU %versioncheck% goto ToolboxInfo
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
Call :wget4 %temp%\ToolboxUpdate.bat
Call :Powershell "Start-Process '%temp%\ToolboxUpdate.bat'"
exit

:: ==============================================================================================================================

:ToolboxInfo
:: Sistem bilgileri alınır
Call :Powershell "Get-CimInstance Win32_OperatingSystem | Select-Object Caption,InstallDate,OSArchitecture,RegisteredUser,CSName | FL" > %Logs%\OS.txt
:: Ana ekranda yer alan Kullanıcı adı, işletim sistemi gibi bilgiler alınır. 
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Caption" %Logs%\OS.txt') do set WinOS=%%a
set WinOS=%WinOS:~11%
FOR /F "tokens=5" %%a in ('FIND "Caption" %Logs%\OS.txt') do set OSCheck=%%a
FOR /F "tokens=2 delims=':'" %%b in ('FIND "RegisteredUser" %Logs%\OS.txt') do set RegisteredUser=%%b
FOR /F "tokens=2 delims=':'" %%c in ('FIND "CSName" %Logs%\OS.txt') do set pcname=%%c
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version"') do set isderleme=%%f
set isderleme=%isderleme:~5%
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion"') do set ImageBuild=%%f
for /f "tokens=2 delims='('" %%f in ('powercfg -list ^| findstr /C:"*"') do set powerr=%%f
set powerr=%powerr:~0,-3%

:: Toolbox içinde belli bölümlerde sürüm kontrolü için eklendi.
FOR /F "skip=1 tokens=3" %%b in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" 2^>NUL') do (set OSVersion=%%b)

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:menu
mode con cols=100 lines=30
title               O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X
echo %R%[90m                                                                                       %Date%%R%[0m
echo    %R%[90m████ ████ █   █ ███ █████ ████ ████ ███ █   █ █  █ ████    %R%[90m█████ ████ ████ █   ███  ████ █   █%R%[0m
echo    %R%[90m█  █ █    ██  █  █    █   █  █ █  █ █   ██  █ █ █  █       %R%[90m  █   █  █ █  █ █   █  █ █  █  █ █ %R%[0m 
echo    %R%[90m█  █ █ ██ █ █ █  █    █   █  █ ████ ██  █ █ █ ██   ████    %R%[90m  █   █  █ █  █ █   ███  █  █   █  %R%[0m	
echo    %R%[90m█  █ █  █ █  ██  █    █   █  █ █ █  █   █  ██ █ █     █    %R%[90m  █   █  █ █  █ █   █  █ █  █  █ █ %R%[0m
echo    %R%[90m████ ████ █   █ ███   █   ████ █  █ ███ █   █ █  █ ████    %R%[90m  █   ████ ████ ███ ███  ████ █   █%R%[0m
echo    %R%[90mhttps://ognitorenks.com.tr                                                               %R%[90m%version%%R%[0m
echo.
echo               %R%[90m %WinOS% %R%[90m^|%R%[90m x%osarch% %R%[90m^|%R%[90m %ImageBuild% %R%[0m%R%[90m^|%R%[90m %isderleme%%R%[0m
echo               %R%[90m┌──────────────────────────────────────────────────────────────────────┐%R%[0m
echo                %R%[33m Hoşgeldin,%R%[90m%RegisteredUser%%R%[0m
echo               %R%[90m├──────────────────────────────────────────────────────────────────────┤%R%[0m
echo               %R%[90m│%R%[32m  1-%R%[36m Uygulama Yükleyici %R%[90m[M]      │%R%[32m   2-%R%[36m Araç Yükleyici%R%[90m [M]            │%R%[0m
echo               %R%[90m├─────────────────────────────────┬────────────────────────────────────┤
echo               %R%[90m│%R%[32m  3-%R%[33m Görev Çubuğu Yöneticisi     %R%[90m│%R%[32m  12-%R%[33m Ping Ölçer %R%[90m [*]               │%R%[0m
echo               %R%[90m│%R%[32m  4-%R%[33m Hizmetleri Yönet%R%[90m [M]        │%R%[32m  13-%R%[33m Fat32 to NTFS%R%[90m [M]             │%R%[0m
echo               %R%[90m│%R%[32m  5-%R%[37m Windows Editör%R%[90m [M]          │%R%[32m  14-%R%[33m Kayıtlı Wifi Bilgileri        %R%[90m│%R%[0m
echo               %R%[90m│%R%[32m  6-%R%[33m Hesap ve Lisans Yönetimi%R%[90m[M] │%R%[32m  15-%R%[33m Zaman Ayarlı PC Kapat%R%[90m [M]     │%R%[0m
echo               %R%[90m│%R%[32m  7-%R%[33m Sistem Hakkında%R%[90m [*]         │%R%[32m  16-%R%[33m Appx - Güncelleme Yükleyici   %R%[90m│%R%[0m
echo               %R%[90m│%R%[32m  8-%R%[33m Güncelleme Sonrası Temizlik %R%[90m│%R%[32m  17-%R%[33m Hash Karşılaştırıcı%R%[90m [SHA-256] │%R%[0m
echo               %R%[90m│%R%[32m  9-%R%[33m Windows - Market Onar       %R%[90m│%R%[32m  18-%R%[33m Kaldırılamayan Uygulamalar%R%[90m [M]│%R%[0m
echo               %R%[90m│%R%[32m 10-%R%[33m Genel Temizlik              %R%[90m│%R%[32m  19-%R%[33m İşlem Önceliği%R%[90m [M]            │%R%[0m
echo               %R%[90m│%R%[32m 11-%R%[33m Simge Hatalarını Onar       %R%[90m│%R%[32m%R%[33m                                    %R%[90m│%R%[0m
echo               %R%[90m├─────────────────────────────────┼────────────────────────────────────┤%R%[0m
echo               %R%[90m│%R%[32m  Z-%R%[37m Toolbox Ayarları - İletişim %R%[90m│%R%[32m   X-%R%[37m Temizle ve Kapat              %R%[90m│%R%[0m
echo               %R%[90m└─────────────────────────────────┴────────────────────────────────────┘%R%[0m
set /p menu=%R%[32m               İşlem: %R%[0m
	if %menu%==1 goto menu2
	if %menu%==2 goto menu3
	if %menu%==3 goto TaskbarSettings
	if %menu%==4 goto Service_Management
	if %menu%==5 (Call :Powershell "Start-Process '%Location%\Extra\Windows.Editor.bat'")
	if %menu%==6 goto UserLicenceManager
	if %menu%==7 (Call :Powershell "Start-Process '%Location%\Extra\Sistem.Hakkinda.bat'")
	if %menu%==8 goto UpdateAfter
	if %menu%==9 goto WindowsRepair
	if %menu%==10 (Call :PC_Cleaner)
	if %menu%==11 (Call :IconFix)
	if %menu%==12 (Call :Powershell "Start-Process '%Location%\Extra\Pingolc.bat'")
	if %menu%==13 (Call :Fat32toNTFS)
	if %menu%==14 (Call :WifiInfo)
	if %menu%==15 goto shutdownpc
	if %menu%==16 (Call :Update.Appx.Installer)
	if %menu%==17 (Call :HashChecker)
	if %menu%==18 goto NonRemovalMenu
	if %menu%==19 goto RuntimeLevel
	if %menu%==Res goto OgnitorenKs.Toolbox
	if %menu%==res goto OgnitorenKs.Toolbox
	if %menu%==reset goto OgnitorenKs.Toolbox
	if %menu%==Reset goto OgnitorenKs.Toolbox
	if %menu%==Z goto ToolboxSettings
	if %menu%==z goto ToolboxSettings
	if %menu%==x (Call :LogSave "Kalıntıları.Temizle" "Download klasörü temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&exit)
	if %menu%==X (Call :LogSave "Kalıntıları.Temizle" "Download klasörü temizlendi."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&exit)
goto menu

:: ==============================================================================================================================

:menu2
mode con cols=100 lines=41
title               O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X
set xognitorenksx=%R%[90m►
set yognitorenksyyyyyyy=%R%[32m    1M%R%[37m-%R%[36m
set W=%R%[90m ø 
echo   %R%[90m┌──────────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                             Online Katılımsız Uygulama Yükleyici                             %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├──────────────────────────────────────────────────────────────────────────────────────────────┤%R%[0m
echo   %R%[90m Aktif indirme sistemi: %DownValue%
echo   %R%[90m├────────────────────────────┬──────────────────────────────┬──────────────────────────────────┤%R%[0m
echo   %R%[90m│%R%[32m    1M-%R%[36m All in One Runtimes %R%[90m│%R%[32m   26-%R%[33m Gimp                   %R%[90m│%R%[32m   53-%R%[33m Unity Hub                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Mesaj                     %R%[90m│%R%[32m   27-%R%[33m OBS Studio             %R%[90m│%R%[32m   54-%R%[33m Blender                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    2-%R%[33m Discord              %R%[90m│%R%[32m   28-%R%[33m ShareX                 %R%[90m│%xognitorenksx% Uzak Bağlantı                   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    3-%R%[33m Whatsapp             %R%[90m│%R%[32m   29-%R%[33m Audacity               %R%[90m│%R%[32m   55-%R%[36m Teamviewer                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    4-%R%[33m Signal               %R%[90m│%R%[32m   30-%R%[33m JPEGView               %R%[90m│%R%[32m   56-%R%[36m AnyDesk                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    5-%R%[33m Telegram             %R%[90m│%R%[32m   31-%R%[33m HandBrake              %R%[90m│%xognitorenksx% Temizlik                        %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    6-%R%[33m Zoom                 %R%[90m│%R%[32m   32-%R%[33m FileConverter          %R%[90m│%R%[32m   57-%R%[33m Hibit Uninstaller%W%       %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Oyun Kütüphane            %R%[90m│%xognitorenksx% Video-Ses Oynatıcı          %R%[90m│%R%[32m   58-%R%[33m Revo Uninstaller           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    7-%R%[36m Epic Games           %R%[90m│%R%[32m   33-%R%[36m K-Lite Codec           %R%[90m│%R%[32m   59-%R%[33m Wise Care 365%W%           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    8-%R%[36m Steam                %R%[90m│%R%[32m   34-%R%[36m VLC Media Player       %R%[90m│%R%[32m   60-%R%[33m Unlocker                   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    9-%R%[36m GOG Galaxy           %R%[90m│%R%[32m   35-%R%[36m PotPlayer              %R%[90m│%xognitorenksx% Oyunlar                         %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   10-%R%[36m Uplay                %R%[90m│%R%[32m   36-%R%[36m Aimp                   %R%[90m│%R%[32m   61-%R%[37m OSU!%W%                    %R%[90m│%R%[0m 
echo   %R%[90m│%R%[32m   11-%R%[36m Origin               %R%[90m│%R%[32m   37-%R%[36m Spotify%W%             %R%[90m│%R%[32m   62-%R%[37m World Of Tanks%W%          %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   12-%R%[33m Wemod%W%             %R%[90m│%xognitorenksx% İndirme Araçları            %R%[90m│%R%[32m   63-%R%[37m Genshin Impact%W%          %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Ram Temizleyici           %R%[90m│%R%[32m   38-%R%[33m Internet Download Man. %R%[90m│%R%[32m   64-%R%[37m League of Legends%R%[90m TR ø     │%R%[0m
echo   %R%[90m│%R%[32m   13-%R%[37m ISLC%W%              %R%[90m│%R%[32m   39-%R%[33m Free Download Manager  %R%[90m│%R%[32m   65-%R%[37m League of Legends%R%[90m EUW ø    │%R%[0m
echo   %R%[90m│%R%[32m   14-%R%[37m Mem Reduct           %R%[90m│%R%[32m   40-%R%[33m EagleGet               %R%[90m│%R%[32m   66-%R%[37m Valorant                   %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Tarayıcı                  %R%[90m│%R%[32m   41-%R%[33m ByClick Downloader%W%  %R%[90m│%xognitorenksx% Görev Çubuğu / Başlat Menüsü    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   15-%R%[33m Google Chrome        %R%[90m│%R%[32m   42-%R%[33m Qbittorrent            %R%[90m│%R%[32m   67-%R%[36m OpenShell                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   16-%R%[33m Mozilla Firefox      %R%[90m│%xognitorenksx% Belgeler                    %R%[90m│%R%[32m   68-%R%[36m TaskbarX                   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   17-%R%[33m Brave                %R%[90m│%R%[32m   43-%R%[36m Libre Office           %R%[90m│%xognitorenksx% Diğer                           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   18-%R%[33m Microsoft Edge       %R%[90m│%R%[32m   44-%R%[36m Adobe Reader           %R%[90m│%R%[32m   69-%R%[33m MSI Afterburner            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   19-%R%[33m OperaGX              %R%[90m│%R%[32m   45-%R%[36m PDF X-Change           %R%[90m│%R%[32m   70-%R%[33m Everything                 %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Sıkıştırma                %R%[90m│%R%[32m   46-%R%[36m Calibre                %R%[90m│%R%[32m   71-%R%[33m Hamachi                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   20-%R%[36m 7-Zip                %R%[90m│%xognitorenksx% Geliştirme / Developer      %R%[90m│%R%[32m   72-%R%[33m Glasswire                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   21-%R%[36m Winrar               %R%[90m│%R%[32m   47-%R%[36m Notepad++              %R%[90m│%R%[32m   73-%R%[33m WARP                       %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Multimedya                %R%[90m│%R%[32m   48-%R%[33m Python                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   22-%R%[33m Kdenlive             %R%[90m│%R%[32m   49-%R%[33m Visual Studio Code     %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   23-%R%[33m Openshout            %R%[90m│%R%[32m   50-%R%[33m Github                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m 
echo   %R%[90m│%R%[32m   24-%R%[33m Shoutcut             %R%[90m│%R%[32m   51-%R%[33m Git                    %R%[90m│%R%[32m    Z-%R%[37m Toolbox Ayarları           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   25-%R%[33m Krita                %R%[90m│%R%[32m   52-%R%[33m Node.JS                %R%[90m│%R%[32m    X-%R%[37m Menü                       %R%[90m│%R%[0m
echo   %R%[90m└────────────────────────────┴──────────────────────────────┴──────────────────────────────────┘
set /p $multi=%R%[32m  Çoklu Seçim %R%[90mx,y: %R%[0m 

echo %$multi% | findstr /i "x" > NUL 2>&1
	if %errorlevel%==0 goto menu
echo %$multi% | findstr /i "m" > NUL 2>&1
	if %errorlevel%==0 goto aiomenu
echo %$multi% | findstr /i "z" > NUL 2>&1
	if %errorlevel%==0 goto ToolboxSettings

Call :LostMenu
echo    →%R%[96m Seçilenler: %$multi%%R%[0m
echo.
:: Sessiz kurulum parametler konusunda sunduğu eşsiz hizmetten ötürü "silentinstallhq" kurucusu Jason Bergner'e sonsuz teşekkürlerimi sunuyorum.
:: https://silentinstallhq.com/
FOR %%a in (%$multi%) do (
	if %%a==1 (Call :AIO.Runtimes)
	if %%a==2 if %Chocolatey%==0 (Call :Choco discord) else (Call :wget1 Discord.exe)
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
				Call :7ZipExtract "%download%\ISLC.zip" "C:\"
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
															   Call :7ZipExtract "%download%\EagleGet.zip" "%download%"
															   "%download%\EagleGet.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-)
	if %%a==41 (Call :wget1 ByClick.exe /q)
	if %%a==42 if %Chocolatey%==0 (Call :Choco qbittorrent) else (Call :wget1 Qbittorrent.exe /S)
	if %%a==43 if %Chocolatey%==0 (Call :Choco libreoffice-fresh) else (Call :wget1 LibreOffice.msi "/qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL")
	if %%a==44 if %Chocolatey%==0 (Call :Choco adobereader) else (Call :wget1 AdobeReader.exe "/sPB /rs /msi")
	if %%a==45 if %Chocolatey%==0 (Call :Choco pdfxchangeeditor) else (Call :wget1 PdfXchange.msi "/quiet /norestart")
	if %%a==46 if %Chocolatey%==0 (Call :Choco calibre) else (Call :wget1 Calibre.msi /qn)
	if %%a==47 if %Chocolatey%==0 (Call :Choco notepadplusplus) else (Call :wget1 Notepad.exe /S)
	if %%a==48 if %Chocolatey%==0 (Call :Choco python) else (Call :wget1 Python.exe "/quiet InstallAllUsers=1 PrependPath=1")
	if %%a==49 if %Chocolatey%==0 (Call :Choco visualstudiocode) else (Call :wget1 VisualStudioCode.exe "/VERYSILENT /NORESTART /MERGETASKS=!runcode")
	if %%a==50 if %Chocolatey%==0 (Call :Choco github-desktop) else (Call :wget1 Github.exe -s)
	if %%a==51 if %Chocolatey%==0 (Call :Choco git) else (Call :wget1 Git.exe "/VERYSILENT /NORESTART")
	if %%a==52 if %Chocolatey%==0 (Call :Choco nodejs-lts) else (Call :wget1 NodeJS.msi /qn)
	if %%a==53 if %Chocolatey%==0 (Call :Choco unity-hub) else (Call :wget1 UnityHub.exe "/allusers /S")
	if %%a==54 if %Chocolatey%==0 (Call :Choco blender) else (Call :wget1 Blender.msi "ALLUSERS=1 /qn")
	if %%a==55 if %Chocolatey%==0 (Call :Choco teamviewer) else (Call :wget1 TeamViewer.exe /S)
	if %%a==56 if %Chocolatey%==0 (Call :Choco anydesk) else (Call :wget1 AnyDesk.exe "--install %programfiles(x86)%\AnyDesk --start-with-win --create-shortcuts --create-desktop-icon --silent")
	if %%a==57 (Call :wget1 HibitUninstaller.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==58 if %Chocolatey%==0 (Call :Choco revo-uninstaller) else (Call :wget1 RevoUninstaller.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==59 (Call :wget2 WiseCare365.zip
			    Call :7ZipExtract "%download%\WiseCare365.zip" "%download%"
				"%download%\WiseCare365.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-)
	if %%a==60 if %Chocolatey%==0 (Call :Choco io-unlocker) else (Call :wget1 Unlocker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==61 (Call :wget3 "C:\users\%username%\Desktop\osu.exe")
	if %%a==62 (Call :wget3 "C:\users\%username%\Desktop\WorldOfTanks.exe")
	if %%a==63 (Call :wget3 "C:\users\%username%\Desktop\GenshinImpact.exe")
	if %%a==64 (Call :wget3 "C:\users\%username%\Desktop\LeagueOfLegendsTR.exe")
	if %%a==65 (Call :wget3 "C:\users\%username%\Desktop\LeagueOfLegendsEUW.exe")
	if %%a==66 (Call :wget3 "C:\users\%username%\Desktop\Valorant.exe")
	if %%a==67 if %Chocolatey%==0 (Call :Choco open-shell) else (Call :wget1 OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu")
	if %%a==68 if %Chocolatey%==0 (Call :Choco taskbarx) else (Call :wget2 TaskbarX.zip
															   Call :7ZipExtract "%download%\TaskbarX.zip" "C:\Users\%username%\Desktop\TaskbarX"
															   Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX Configurator.exe'"
															   Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX.exe'")
	if %%a==69 if %Chocolatey%==0 (Call :Choco msiafterburner) else (Call :wget1 MSIAfterburner.exe /S)
	if %%a==70 if %Chocolatey%==0 (Call :Choco everything) else (Call :wget1 Everything.exe /S)
	if %%a==71 if %Chocolatey%==0 (Call :Choco hamachi) else (Call :wget1 Hamachi.msi /q)
	if %%a==72 if %Chocolatey%==0 (Call :Choco glasswire) else (Call :wget1 GlassWire.exe /S)
	if %%a==73 if %Chocolatey%==0 (Call :Choco warp) else (Call :wget1 WARP.msi "/qn /norestart")
)
goto menu2

:: ==============================================================================================================================

:menu3
mode con cols=69 lines=37
title               O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X
set xognitorenksx=%R%[90m►
set W=%R%[90m ø 
echo   %R%[90m┌───────────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                  Araçlar Katılımsız Yükleyici                 %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├───────────────────────────────────────────────────────────────┤%R%[0m
echo   %R%[90m Aktif indirme sistemi: %DownValue%
echo   %R%[90m├────────────────────────────┬──────────────────────────────────┤%R%[0m
echo   %R%[90m│%xognitorenksx% Windows Düzenleme         %R%[90m│%xognitorenksx% GPU / Driver Araçları           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    1-%R%[33m NTLite               %R%[90m│%R%[32m   22-%R%[36m Display Driver Uninstaller %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    2-%R%[33m Dism++               %R%[90m│%R%[32m   23-%R%[36m Nvidia Profile Inspector   %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% USB Hazırlayıcı           %R%[90m│%R%[32m   24-%R%[36m RadeonMod%W%               %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    3-%R%[36m Rufus                %R%[90m│%R%[32m   25-%R%[36m Radeon Software Slimmer%W% %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Donanım Bilgisi           %R%[90m│%R%[32m   26-%R%[36m NVCleanstall%W%            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    4-%R%[33m Aida64               %R%[90m│%R%[32m   27-%R%[36m Snappy Driver Installer    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    5-%R%[33m CPU-Z                %R%[90m│%R%[32m   28-%R%[36m Geforce Experience         %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    6-%R%[33m GPU-Z                %R%[90m│%xognitorenksx% Diğer                           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    7-%R%[33m HW Info              %R%[90m│%R%[32m   29-%R%[33m SSD Booster%W%             %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    8-%R%[33m CrystalDiskInfo      %R%[90m│%R%[32m   30-%R%[33m Folder2ISO%W%              %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    9-%R%[33m HD Sentinel          %R%[90m│%R%[32m   31-%R%[33m Process Monitor            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   10-%R%[33m Core Temp            %R%[90m│%R%[32m   32-%R%[33m AOMEI Partition Assistans  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Test Araçları             %R%[90m│%R%[32m   33-%R%[33m Spotify Adblocker%W%       %R%[90m│%R%[0m
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
echo   %R%[90m│%R%[32m   20-%R%[33m NSudo                %R%[90m│%R%[32m    Z-%R%[37m Toolbox Ayarları           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   21-%R%[33m Explorer++           %R%[90m│%R%[32m    X-%R%[37m Menü                       %R%[90m│%R%[0m
echo   %R%[90m└────────────────────────────┴──────────────────────────────────┘
set /p $multi=%R%[32m  Çoklu Seçim %R%[90mx,y: %R%[0m 

echo %$multi% | findstr /i "x" > NUL 2>&1
	if %errorlevel%==0 goto menu
echo %$multi% | findstr /i "z" > NUL 2>&1
	if %errorlevel%==0 goto ToolboxSettings	

Call :LostMenu
echo    →%R%[96m Seçilenler: %$multi%%R%[0m
echo.
mkdir C:\Users\%username%\Desktop\OgnitorenKs > NUL 2>&1
FOR %%a in (%$multi%) do (
	if %%a==1 if %Chocolatey%==0 (Call :Choco ntlite-free) else (Call :wget1 NTLite.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==2 if %Chocolatey%==0 (Call :Choco dismplusplus) else (Call :wget2 Dism++.zip
				Call :7ZipExtract "%download%\Dism++.zip" "C:\Users\%username%\Desktop\OgnitorenKs\Dism++"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Dism++\Dism++x64.exe'")
	if %%a==3 if %Chocolatey%==0 (Call :Choco rufus) else (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\Rufus.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Rufus.exe'")
	if %%a==4 if %Chocolatey%==0 (Call :Choco aida64-extreme) else (Call :wget2 AIDA64.zip
				Call :7ZipExtract "%download%\AIDA64.zip" "C:\Users\%username%\Desktop\OgnitorenKs\AIDA64"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\AIDA64\aida64.exe'")
	if %%a==5 if %Chocolatey%==0 (Call :Choco cpu-z) else (Call :wget2 CPU-Z.zip
				Call :7ZipExtract "%download%\CPU-Z.zip" "C:\Users\%username%\Desktop\OgnitorenKs\CPU-Z"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\CPU-Z\cpuz_x64.exe'")
	if %%a==6 if %Chocolatey%==0 (Call :Choco gpu-z) else (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\GPU-Z.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\GPU-Z.exe'")
	if %%a==7 if %Chocolatey%==0 (Call :Choco hwinfo) else (Call :wget2 HWInfo.zip
				Call :7ZipExtract "%download%\HWInfo.zip" "C:\Users\%username%\Desktop\OgnitorenKs\HWInfo"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\HWInfo\HWiNFO64.exe'")
	if %%a==8 if %Chocolatey%==0 (Call :Choco crystaldiskinfo) else (Call :wget2 CrystalDiskInfo.zip
				Call :7ZipExtract "%download%\CrystalDiskInfo.zip" "C:\Users\%username%\Desktop\OgnitorenKs\CrystalDiskInfo"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\CrystalDiskInfo\DiskInfo64.exe'")
	if %%a==9 if %Chocolatey%==0 (Call :Choco hdsentinel) else (Call :wget2 HDSentinel.zip
				Call :7ZipExtract "%download%\HDSentinel.zip" "C:\Users\%username%\Desktop\OgnitorenKs\HDSentinel"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\HDSentinel\HDSentinel.exe'")
	if %%a==10 if %Chocolatey%==0 (Call :Choco coretemp) else (Call :wget2 CoreTemp.zip
				Call :7ZipExtract "%download%\CoreTemp.zip" "C:\Users\%username%\Desktop\OgnitorenKs\CoreTemp"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\CoreTemp\Core Temp.exe'")
	if %%a==11 if %Chocolatey%==0 (Call :Choco crystaldiskmark) else (Call :wget2 CrystalDiskMark.zip
				Call :7ZipExtract "%download%\CrystalDiskMark.zip" "C:\Users\%username%\Desktop\OgnitorenKs\CrystalDiskMark"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\CrystalDiskMark\DiskMark64.exe'")
	if %%a==12 if %Chocolatey%==0 (Call :Choco prime95) else (Call :wget2 Prime95.zip
				Call :7ZipExtract "%download%\Prime95.zip" "C:\Users\%username%\Desktop\OgnitorenKs\Prime95"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Prime95\prime95.exe'")
	if %%a==13 if %Chocolatey%==0 (Call :Choco occt) else (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\OCCT.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\OCCT.exe'")
	if %%a==14 if %Chocolatey%==0 (Call :Choco furmark) else (Call :wget2 FurMark.zip
				Call :7ZipExtract "%download%\FurMark.zip" "%download%
				"%download%\FurMark.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-)
	if %%a==15 if %Chocolatey%==0 (Call :Choco virtualbox) else (Call :wget1 VirtualBox.exe "--silent --ignore-reboot")
	if %%a==16 (Call :wget1 GreenFish.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==17 if %Chocolatey%==0 (Call :Choco thumbico) else (Call :wget1 Thumbico.exe /S)
	if %%a==18 if %Chocolatey%==0 (Call :Choco any2ico) else (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\Quick_Any2Ico.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Quick_Any2Ico.exe'")
	if %%a==19 if %Chocolatey%==0 (Call :Choco reshack) else (Call :wget2 ResourceHacker.zip
				Call :7ZipExtract "%download%\ResourceHacker.zip" "C:\Users\%username%\Desktop\OgnitorenKs\ResourceHacker"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\ResourceHacker\ResourceHacker.exe'")
	if %%a==20 (Call :Powershell "Start-Process '%Location%\Files\NSudo.exe'")
	if %%a==21 if %Chocolatey%==0 (Call :Choco explorerplusplus) else (Call :wget2 Explorer++.zip
				Call :7ZipExtract "%download%\Explorer++.zip" "C:\Users\%username%\Desktop\OgnitorenKs\Explorer++"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Explorer++\Explorer++.exe'")
	if %%a==22 if %Chocolatey%==0 (Call :Choco ddu) else (Call :wget2 DDU.zip
				Call :7ZipExtract "%download%\DDU.zip" "C:\Users\%username%\Desktop\OgnitorenKs\DDU"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\DDU\Display Driver Uninstaller.exe'")
	if %%a==23 if %Chocolatey%==0 (Call :Choco nvidia-profile-inspector) else (Call :wget2 NvidiaProfileInspector.zip
				Call :7ZipExtract "%download%\NvidiaProfileInspector.zip" "C:\Users\%username%\Desktop\OgnitorenKs\NvidiaProfileInspector"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\NvidiaProfileInspector\nvidiaProfileInspector.exe'")
	if %%a==24 (Call :wget2 RadeonMod.zip
				Call :7ZipExtract "%download%\RadeonMod.zip" "C:\Users\%username%\Desktop\OgnitorenKs\RadeonMod"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\RadeonMod\RadeonMod.exe'")
	if %%a==25 (Call :wget2 RadeonSoftwareSlimmer.zip
				Call :7ZipExtract "%download%\RadeonSoftwareSlimmer.zip" "C:\Users\%username%\Desktop\OgnitorenKs\RadeonSoftwareSlimmer"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\RadeonSoftwareSlimmer\RadeonSoftwareSlimmer.exe'")
	if %%a==26 (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\NVCleanstall.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\NVCleanstall.exe'")
	if %%a==27 if %Chocolatey%==0 (Call :Choco sdio) else (Call :wget2 Snappy.Driver.Installer.zip
				Call :7ZipExtract "%download%\Snappy.Driver.Installer.zip" "C:\Users\%username%\Desktop\OgnitorenKs\Snappy.Driver.Installer"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Snappy.Driver.Installer\SDIO_x64.exe'")
	if %%a==28 if %Chocolatey%==0 (Call :Choco geforce-experience) else (Call :wget1 GeForce.Experience.exe "-y -gm2 -fm0")
	if %%a==29 (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\SSDBooster.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\SSDBooster.exe'")
	if %%a==30 (Call :wget2 Folder2ISO.zip
				Call :7ZipExtract "%download%\Folder2ISO.zip" "C:\Users\%username%\Desktop\OgnitorenKs"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Folder2ISO\Folder2Iso.exe'")
	if %%a==31 if %Chocolatey%==0 (Call :Choco procmon) else (Call :wget2 ProcessMonitor.zip
				Call :7ZipExtract "%download%\ProcessMonitor.zip" "C:\Users\%username%\Desktop\OgnitorenKs\ProcessMonitor"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\ProcessMonitor\Procmon64.exe'")
	if %%a==32 if %Chocolatey%==0 (Call :Choco partition-assistant-standard) else (Call :wget1 AOEMI.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a==33 (Call :wget3 "C:\Users\%username%\Desktop\OgnitorenKs\Spotify.Adblocker.exe"
				Call :Powershell "Start-Process 'C:\Users\%username%\Desktop\OgnitorenKs\Spotify.Adblocker.exe'")
)
goto menu3

:: ==============================================================================================================================

:aiomenu
:: All in One Runtimes içerisinde yer alan yazılımları tek tek yüklemenizi sağlayacak menü.
cls
mode con cols=55 lines=22
title All In One Runtimes \ OgnitorenKs

Dism /Online /Get-Features /format:table > %Logs%\Features.txt
Dism /Online /Get-Capabilities /format:table > %Logs%\Capabilities.txt

echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                All In One Runtimes                %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
set aioserv=%R%[100m %R%[0m
FOR /F "tokens=3" %%a in ('findstr /C:"NetFX3~~~~" %Logs%\Capabilities.txt') do set aiokontrol=%%a
echo %aiokontrol% | findstr /C:"Installed" > NUL 2>&1
	if %errorlevel%==0 (set aioserv=%R%[32m♦%R%[0m)
echo  %R%[90m│   %R%[36m 1 %aioserv%%R%[90m -%R%[33m Net Framework 3.5                        %R%[90m│%R%[0m
set aioserv=%R%[100m %R%[0m
FOR /F "tokens=3" %%b in ('findstr /C:"IIS-ASPNET45" %Logs%\Features.txt') do set aiokontrol=%%b
echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
	if %errorlevel%==0 (set aioserv=%R%[32m♦%R%[0m)
echo  %R%[90m│   %R%[36m 2 %aioserv%%R%[90m -%R%[33m Net Net Framework 4.5                    %R%[90m│%R%[0m
set aioserv=%R%[100m %R%[0m
FOR /F "tokens=3" %%b in ('findstr /C:"DirectPlay" %Logs%\Features.txt') do set aiokontrol=%%b
echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
	if %errorlevel%==0 (set aioserv=%R%[32m♦%R%[0m)
echo  %R%[90m│   %R%[36m 3 %aioserv%%R%[90m -%R%[33m DirectPlay                               %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 4  %R%[90m -%R%[33m Microsoft C++ 2005                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 5  %R%[90m -%R%[33m Microsoft C++ 2008                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 6  %R%[90m -%R%[33m Microsoft C++ 2010                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 7  %R%[90m -%R%[33m Microsoft C++ 2012                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 8  %R%[90m -%R%[33m Microsoft C++ 2013                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m 9  %R%[90m -%R%[33m Microsoft C++ 2015-2022                  %R%[90m│%R%[0m
echo  %R%[90m│  %R%[36m 10  %R%[90m -%R%[33m Desktop Runtime 6                        %R%[90m│%R%[0m
echo  %R%[90m│  %R%[36m 11  %R%[90m -%R%[33m XNA Framework 4.0                        %R%[90m│%R%[0m
echo  %R%[90m│  %R%[36m 12  %R%[90m -%R%[33m Java                                     %R%[90m│%R%[0m
echo  %R%[90m│  %R%[36m 13  %R%[90m -%R%[33m OpenAL                                   %R%[90m│%R%[0m
echo  %R%[90m│  %R%[36m 14  %R%[90m -%R%[33m DirectX                                  %R%[90m│%R%[0m
echo  %R%[90m│   %R%[36m X  %R%[90m -%R%[36m Menü                                     %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p $aioselect=%R%[32m  Çoklu Seçim %R%[90mx,y: %R%[0m

echo %$aioselect% | findstr /i "x" > NUL 2>&1
	if %errorlevel%==0 goto menu2

Call :LostMenu
echo    →%R%[96m Seçilenler: %$aioselect%%R%[0m
echo.
FOR %%a in (%$aioselect%) do (
	if %%a EQU 1 (FOR /F "tokens=3" %%a in ('findstr /C:"NetFX3~~~~" %Logs%\Capabilities.txt') do set aiokontrol=%%a
				  echo %aiokontrol% | findstr /C:"Installed" > NUL 2>&1
				     if %errorlevel%==0 (Call :LogSave AIO "Net Framework 3.5 yüklü"
										 echo    ►%R%[31m Net Framework 3.5%R%[0m yüklü)
				     if %errorlevel%==1 (Call :LogSave AIO "Net Framework 3.5 yüklendi"
										 echo    ►%R%[33m Net Framework 3.5%R%[0m yükleniyor...
										 Dism /Online /Enable-Feature /Featurename:NetFx3 /All /Quiet /NoRestart))
	if %%a EQU 2 (FOR /F "tokens=3" %%b in ('findstr /C:"IIS-ASPNET45" %Logs%\Features.txt') do set aiokontrol=%%b
				  echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
				     if %errorlevel%==0 (Call :LogSave AIO "Net Framework 4.5 yüklü"
										 echo    ►%R%[31m Net Framework 4.5%R%[0m yüklü)
				     if %errorlevel%==1 (Call :LogSave AIO "Net Framework 4.5 yüklendi"
										 echo    ►%R%[33m Net Framework 4.5%R%[0m yükleniyor...
										 Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All /Quiet /NoRestart))
	if %%a EQU 3 (FOR /F "tokens=3" %%b in ('findstr /C:"DirectPlay" %Logs%\Features.txt') do set aiokontrol=%%b
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
				   Call :7ZipExtract "%download%\OpenAL.zip" "%download%"
				   "%download%\oalinst.exe" /SILENT)
	if %%a EQU 14 (Call :wget2 DirectX.exe
				   %download%\DirectX.exe /Q /C /T:"%download%\DirectX\"
				   "%download%\DirectX\DXSETUP.exe" /silent)
)
goto aiomenu

:: ==============================================================================================================================

:AIO.Runtimes
echo    %R%[1;97m%R%[42m All in One Runtimes yükleniyor... %R%[0m
Dism /Online /Get-Capabilities /format:table > %Logs%\Capabilities.txt
Dism /Online /Get-Features /format:table > %Logs%\Features.txt
FOR /F "tokens=3" %%a in ('findstr /C:"NetFX3~~~~" %Logs%\Capabilities.txt') do set aiokontrol=%%a
echo %aiokontrol% | findstr /C:"Installed" > NUL 2>&1
	if %errorlevel%==1 (Call :LogSave AIO "Net Framework 3.5 yüklendi"
						echo    ►%R%[33m Net Framework 3.5%R%[0m yükleniyor...
						Dism /Online /Enable-Feature /Featurename:NetFx3 /All /Quiet /NoRestart)
FOR /F "tokens=3" %%b in ('findstr /C:"IIS-ASPNET45" %Logs%\Features.txt') do set aiokontrol=%%b
echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
	if %errorlevel%==1 (Call :LogSave AIO "Net Framework 4.5 yüklendi"
						echo    ►%R%[33m Net Framework 4.5%R%[0m yükleniyor...
						Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All /Quiet /NoRestart)
FOR /F "tokens=3" %%b in ('findstr /C:"DirectPlay" %Logs%\Features.txt') do set aiokontrol=%%b
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
Call :7ZipExtract "%download%\OpenAL.zip" "%download%"
"%download%\oalinst.exe" /SILENT
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
echo %R%[92m   WinSxS Temizleniyor...%R%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup 

cls
echo %R%[92m   DISM /Online /Cleanup-Image /RestoreHealth komutu çalıştırılıyor...%R%[0m
DISM /Online /Cleanup-Image /RestoreHealth

echo %R%[92m   SoftwareDistribution temizleniyor...%R%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  "%windir%\SoftwareDistribution" > NUL 2>&1
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

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:PC_Cleaner
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
:: https://www.sordum.net/70705/system32-icerisinde-binlerce-tw-tmp-klasoru-sorunu/
FOR /F %%a in ('dir /b /s %Windir%\System32\config\systemprofile\AppData\Local\*.tmp') do (RD /S /Q %%a > NUL 2>&1)

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

echo %R%[92m   İnternet önbelleği temizleniyor...%R%[0m
netsh int ip reset > NUL 2>&1
netsh winsock reset > NUL 2>&1
netsh winhttp reset proxy > NUL 2>&1
netsh advfirewall reset > NUL 2>&1
ipconfig /flushdns > NUL 2>&1
ipconfig /release > NUL 2>&1
ipconfig /renew > NUL 2>&1
Call :ProcessCompleted
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

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
cls
echo  %R%[90m┌──────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                     Appx - Güncelleme Yükleyici                  %R%[0m%R%[90m│%R%[0m
echo  %R%[90m└──────────────────────────────────────────────────────────────────┘%R%[0m

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

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:Fat32toNTFS
mode con cols=63 lines=25
title Fat32 to NTFS dönüştürme / OgnitorenKs
echo   %R%[90m┌──────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                      Fat32 to NTFS                       %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├──────────────────────────────────────────────────────────┤%R%[0m
	echo       %R%[32mHarf      İsim%R%[0m
chcp 437 > NUL 2>&1
for /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property DeviceID,VolumeName"') do (
   echo     -  %%a)
chcp 65001 > NUL 2>&1
   echo       %R%[32m X.%R%[36m Menü%R%[0m
echo   %R%[90m└──────────────────────────────────────────────────────────┘%R%[0m
Call :MobileValue "Dönüştürülecek Disk Harfi" "menu"
Call :LogSave "Fat32toNTFS" "%MobileValue% diski NTFS'ye dönüştürüldü."
convert %MobileValue%: /fs:NTFS /v
Call :ProcessCompleted
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:UserLicenceManager
cls
mode con cols=76 lines=17
title Hesap ve Lisans Yönetimi
echo  %R%[90m┌────────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m      Kullanıcı Hesap Yönetimi                 Lisans Yönetimi          %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├──────────────────────────────────────┬─────────────────────────────────┤%R%[0m
echo  %R%[90m│%R%[32m  1-%R%[33m Administrator Aktifleştir        %R%[90m│%R%[32m  8-%R%[36m Lisans Gir%R%[90m [ipk]            │%R%[0m
echo  %R%[90m│%R%[32m  2-%R%[33m Administrator Kapat              %R%[90m│%R%[32m  9-%R%[36m Lisans Durumu%R%[90m [dli]         │%R%[0m
echo  %R%[90m│%R%[32m  3-%R%[33m Admin grubuna kullanıcı ekle     %R%[90m│%R%[32m 10-%R%[36m Lisans Durumu Detaylı%R%[90m [dlv] │%R%[0m
echo  %R%[90m│%R%[32m  4-%R%[33m Yeni Kullanıcı Ekle              %R%[90m│%R%[32m 11-%R%[36m Lisans Süresini Öğren%R%[90m [xpr] │%R%[0m
echo  %R%[90m│%R%[32m  5-%R%[33m Kullanıcı Sil                    %R%[90m│%R%[32m 12-%R%[36m Lisans Sil%R%[90m [upk]            │%R%[0m
echo  %R%[90m│%R%[32m  6-%R%[33m Şifremi unuttum / değiştir       %R%[90m│%R%[32m 13-%R%[36m Lisans Süre Sıfırla%R%[90m [rearm] │%R%[0m
echo  %R%[90m│%R%[32m  7-%R%[33m Mevcut Kullanıcıları Göster%R%[90m [*]  │%R%[32m  X-%R%[37m Menü                        %R%[90m│%R%[0m
echo  %R%[90m└──────────────────────────────────────┴─────────────────────────────────┘%R%[0m
set /p value=%R%[92m İşlem : %R%[0m
	if %value%==1 (Call :LogSave "UserLicenceManager" "Administrator aktifleştirildi"
				   net user administrator /active:yes)
	if %value%==2 (Call :LogSave "UserLicenceManager" "Administrator kapatıldı"
				   net user Administrator /active:no)
	if %value%==3 (Call :User3)
	if %value%==4 (Call :User4)
	if %value%==5 (Call :User5)
	if %value%==6 (Call :User6)
	if %value%==7 (start cmd /k Powershell -command "Get-LocalUser")
	if %value%==8 (Call :Licence8)
	if %value%==9 (Call :LogSave "UserLicenceManager" "Lisans Durumu, kontrol edildi."
				   slmgr /dli)		   
	if %value%==10 (Call :LogSave "UserLicenceManager" "Lisans Durumu Detaylı, kontrol edildi."
				   slmgr /dlv)
	if %value%==11 (Call :LogSave "UserLicenceManager" "Lisans Süresini Öğren, çalıştırıldı."
				   slmgr /xpr)
	if %value%==12 (Call :LogSave "UserLicenceManager" "Lisans Sil, çalıştırıldı."
				   slmgr /upk)
	if %value%==13 (Call :LogSave "UserLicenceManager" "Lisans Süre Sıfırla, çalıştırıldı."
				   slmgr /rearm)
	if %value%==x goto menu
	if %value%==X goto menu
Call :ProcessCompleted
goto UserLicenceManager

:User3
Call :MobileValue "Kullanıcı Adı" "UserLicenceManager"
net localgroup Administrators %MobileValue% /add
Call :LogSave "UserLicenceManager" "Admin grubuna '%MobileValue%' kullanıcısı eklendi"
goto :eof

:User4
Call :MobileValue "Kullanıcı Adı" "UserLicenceManager"
net user %MobileValue% * /add)
Call :LogSave "UserLicenceManager" "Yeni kullanıcı '%MobileValue%' oluşturuldu"
goto :eof

:User5
Call :MobileValue "Kullanıcı Adı" "UserLicenceManager"
net user %MobileValue% /delete)
Call :LogSave "UserLicenceManager" "Kullanıcı '%MobileValue%' silindi"
goto :eof

:User6
Call :MobileValue "Kullanıcı Adı" "UserLicenceManager"
net user %MobileValue% *)
Call :LogSave "UserLicenceManager" "Kullanıcı '%MobileValue%' şifresi değiştirildi")
goto :eof

:Licence8
Call :MobileValue "Lisans" "UserLicenceManager"
echo %MobileValue%&pause
slmgr /ipk %MobileValue%
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:RuntimeLevel
title OgnitorenKs
mode con cols=55 lines=17
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m             Çalışma Öncelik Planlayıcı            %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%R%[33m Yüksek                                      %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%R%[33m Normal Üstü                                 %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 3.%R%[33m Normal Altı                                 %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 4.%R%[33m Düşük                                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value2=%R%[32m  İşlem :%R%[0m
	if %value2%==1 (set value2=3)
	if %value2%==2 (set value2=6)
	if %value2%==3 (set value2=5)
	if %value2%==4 (set value2=1)
	if %value2%==x goto menu
	if %value2%==X goto menu

echo.
echo %R%[90m  Görev Yöneticisi - Ayrıntılar 
echo %R%[90m  bölümünden uygulama isimlerini öğrenebilirsiniz.
echo %R%[90m  ► Uygulamalar arası boşluk bırakarak çoklu yazabilirsiniz.
set /p value=%R%[96m  ► Uygulama adı%R%[90m steam.exe :%R%[0m

for %%a in (%value%) do (
	reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%a\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "%value2%" /f
)
Call :ProcessCompleted
goto menu

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

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
echo  %R%[90m│                 %R%[32m 0.%R%[33m 30%R%[90m [Dakika]                   │%R%[0m
echo  %R%[90m│                 %R%[32m 1.%R%[33m  1%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 2.%R%[33m  2%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 3.%R%[33m  3%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 4.%R%[33m  4%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 5.%R%[33m  5%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 6.%R%[33m  6%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 7.%R%[33m  7%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 8.%R%[33m  8%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 9.%R%[33m  Manuel                       %R%[90m│%R%[0m
echo  %R%[90m│                 %R%[32m X.%R%[36m  Menü                         %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %ShutDownTime%
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value=%R%[92m  İşlem : %R%[0m
	if %value% EQU 0 (shutdown -s -f -t 1800)
	if %value% EQU 1 (shutdown -s -f -t 3600)
	if %value% EQU 2 (shutdown -s -f -t 7200)
	if %value% EQU 3 (shutdown -s -f -t 10800)
	if %value% EQU 4 (shutdown -s -f -t 14400)
	if %value% EQU 5 (shutdown -s -f -t 18000)
	if %value% EQU 6 (shutdown -s -f -t 21600)
	if %value% EQU 7 (shutdown -s -f -t 25200)
	if %value% EQU 8 (shutdown -s -f -t 28800)
	if %value% EQU 9 (Call :ShutDownPC_1)
	if %value% EQU 10 (shutdown /a > NUL 2>&1
				   echo %R%[96m  Oto kapatma iptal edildi%R%[0m
				   Call :LogSave "shutdownpc" "Oto kapatma iptal edildi"
				   timeout /t 1 /nobreak > NUL)
	if %value% EQU x goto menu
	if %value% EQU X goto menu
goto shutdownpc

:ShutDownPC_1
Call :MobileValue "Dakika olarak değer giriniz" "shutdownpc"
set /a MobileValue=%MobileValue%*60
shutdown -s -f -t %MobileValue%
Call :LogSave "Shutdown" "%MobileValue% manuel kapatma ayarlandı"
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:HashChecker
cls
echo.
set /p hashvalue1=%R%[37m  ►%R%[96m Hash Değerini Giriniz %R%[90m[SHA256]: %R%[0m
	if %hashvalue1%==x (goto :eof)
	if %hashvalue1%==X (goto :eof)
:: Girilen değerin harfleri büyük olarak düzenler.
Call :PSUpper.Variable "hashvalue1" "%hashvalue1%"
echo.
set /p hashpath=%R%[37m  ►%R%[96m Kontrol edilecek dosya yolu: %R%[0m
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

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:WifiInfo
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

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:NonRemovalMenu
cls
mode con cols=43 lines=22
:: Bilgisayarda yüklü uygulamalar arasında Python aranır. Yüklü değil ise indirip, kurar. Yalnızca Windows 10 sistemlerde kontrol eder.
if %OSCheck%==10 (Call :SoftwareCheck Python "/quiet InstallAllUsers=1 PrependPath=1")
Call :Powershell "get-appxpackage | Select-Object Name,NonRemovable" > %Logs%\NonRemoval
:: Microsoft.Windows.ContentDeliveryManager ContentDeliveryManager
echo   %R%[90m┌─────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m          NonRemoval Menü            %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├─────────────────────────────────────┤%R%[0m
Call :NonRemovalChecker BioEnrollment
echo   %R%[90m│%R%[36m  1 %SD% -%R%[33m Biometrick hizmeti           %R%[90m│%R%[0m
Call :NonRemovalChecker CapturePicker
echo   %R%[90m│%R%[36m  2 %SD% -%R%[33m Ekran Yakalama               %R%[90m│%R%[0m
Call :NonRemovalChecker Cortana
echo   %R%[90m│%R%[36m  3 %SD% -%R%[33m Cortana                      %R%[90m│%R%[0m
Call :NonRemovalChecker Holographic
echo   %R%[90m│%R%[36m  4 %SD% -%R%[33m Karma Gerçeklik              %R%[90m│%R%[0m
Call :NonRemovalChecker Narrator
echo   %R%[90m│%R%[36m  5 %SD% -%R%[33m Ekran Okuma                  %R%[90m│%R%[0m
Call :NonRemovalChecker ParentalControls
echo   %R%[90m│%R%[36m  6 %SD% -%R%[33m Ebeveyn Kontrolleri          %R%[90m│%R%[0m
Call :NonRemovalChecker PeopleExperienceHost
echo   %R%[90m│%R%[36m  7 %SD% -%R%[33m Kişiler                      %R%[90m│%R%[0m
Call :NonRemovalChecker SecHealthUI
echo   %R%[90m│%R%[36m  8 %SD% -%R%[33m Windows Defender             %R%[90m│%R%[0m
Call :NonRemovalChecker SecureAssessmentBrowser
echo   %R%[90m│%R%[36m  9 %SD% -%R%[33m Güvenli Tarayıcı             %R%[90m│%R%[0m
Call :NonRemovalChecker StartMenu
echo   %R%[90m│%R%[36m 10 %SD% -%R%[33m Başlat Menüsü                %R%[90m│%R%[0m
Call :NonRemovalChecker Search
echo   %R%[90m│%R%[36m 11 %SD% -%R%[33m Search App (Taskbar Search)  %R%[90m│%R%[0m
Call :NonRemovalChecker CBSPreview
echo   %R%[90m│%R%[36m 12 %SD% -%R%[33m Kamera Barkod Tarayıcı       %R%[90m│%R%[0m
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
	if %errorlevel%==0 (set SD=%R%[32m♦%R%[0m)
	if %errorlevel%==1 (set SD=%R%[100m %R%[0m)
goto :eof

:NonRemoval
Call :LogSave "NonRemoval" "%~1 kaldırıldı"
mkdir "%Location%\Files\Remove" > NUL 2>&1
copy /y "%Location%\Files\Remove.py" "%Location%\Files\Remove" > NUL 2>&1
Call :Powershell "(Get-Content %Location%\Files\Remove\Remove.py) | ForEach-Object { $_ -replace 'xxxxxxx', '%~1' } | Set-Content '%Location%\Files\Remove\Remove.py'"
%NSudo% Python "%Location%\Files\Remove\Remove.py"
Call :Powershell "Get-AppxPackage -AllUsers *%~2* | Remove-AppxPackage"
RD /S /Q "%Location%\Files\Remove" > NUL 2>&1
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:TaskbarSettings
cls
mode con cols=55 lines=14
title Windows Özelleştir
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                Windows Özelleştirme               %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%R%[33m Taskbar saat yanı simge ayarı%R%[90m [GÖSTER/GİZLE]│%R%[0m
echo  %R%[90m│   %R%[32m 2.%R%[33m Bildirim Alanı%R%[90m [AÇ/KAPAT]                   │%R%[0m
echo  %R%[90m│   %R%[32m 3.%R%[33m Taskbar Hava Durumu%R%[90m [AÇ/KAPAT]              │%R%[0m
echo  %R%[90m│   %R%[32m 4.%R%[33m Taskbar Simge Konumu%R%[90m [SOL/ORTA]             │%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value=%R%[92m  İşlem : %R%[0m
	if %value%==1 (Call :TS_EkranTepsi)
	if %value%==2 (Call :TS_Bildirim)
	if %value%==3 (Call :TS_HavaDurumu)
	if %value%==4 (Call :TS_TaskbarLocation)
	if %value%==x goto menu
	if %value%==X goto menu
goto TaskbarSettings

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------
	
:TS_EkranTepsi
cls
mode con cols=55 lines=15
title Görev çubuğu düzenleniyor... / OgnitorenKs
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m               Saat Yanı Simge Ayarı               %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 0.%R%[33m Hepsini Göster                              %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 1.%R%[33m Hepsini Gizle                               %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
Call :MobileValue İşlem TaskbarSettings
Call :LogSave Win10EkranTepsi "Windows 10 Saat yanı simgeri ayarı '%MobileValue%' olarak ayarlandı"
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "EnableAutoTray" "%MobileValue%"
Call :ExplorerReset
Call :ProcessCompleted
goto TaskbarSettings

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:TS_Bildirim
cls
mode con cols=55 lines=15
title Bildirim alanı düzenleniyor... / OgnitorenKs
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m               Bildirim Alanı Ayarı                %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 0.%R%[33m Açık                                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 1.%R%[33m Kapalı                                      %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
Call :MobileValue İşlem TaskbarSettings
Call :LogSave Win10Bildirim "Windows 10 Bildirim alanı ayarı '%MobileValue%' olarak ayarlandı"
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "%MobileValue%"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "%MobileValue%"
Call :ExplorerReset
Call :ProcessCompleted
goto TaskbarSettings

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:TS_HavaDurumu
cls
mode con cols=55 lines=15
title Taskbar Hava Durumu düzenleniyor... / OgnitorenKs
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m         Görev Çubuğu Hava Durumu Ayarı            %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 0.%R%[33m Kapat                                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 1.%R%[33m Aç                                          %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
Call :MobileValue İşlem TaskbarSettings
Call :LogSave "Win10HavaDurumu" "%MobileValue% değeri girildi"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" "EnableFeeds" "%MobileValue%"
Call :ExplorerReset
Call :ProcessCompleted
goto TaskbarSettings

:: ---------------------------------------------------------------------------------------------------------------------------------------------------------------

:TS_TaskbarLocation
cls
mode con cols=55 lines=15
title Görev çubuğu simge konum ayarı / OgnitorenKs
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m            Görev Çubuğu Simge Konumu              %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 0.%R%[33m Sol                                         %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 1.%R%[33m Orta                                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
if %OSCheck% EQU 10 (echo %R%[91m Yalnızca Windows 11 sistemler için%R%[0m
					 timeout /t 3 /nobreak > NUL
					 goto TaskbarSettings)
Call :MobileValue İşlem TaskbarSettings
Call :LogSave "Win11MenuOld" "Taskbar simge Locationu '%MobileValue%' olarak ayarlandı"
Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAl" "%MobileValue%"
Call :ExplorerReset
Call :ProcessCompleted
goto TaskbarSettings

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Service_Management
mode con cols=87 lines=41
title     O G N I T O R E N K S    ^|    OGNITORENKS TOOLBOX  ^|    T  O  O  L  B  O  X
Dism /Online /Get-Features /format:table > %Logs%\Features.txt
DISM /Online /Get-Capabilities /format:table > %Logs%\Capabilities.txt
Call :Powershell "Get-MMAgent" > %Logs%\mc

reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" > NUL 2>&1
	if %errorlevel%==1 (Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" HibernateEnabled 1)
reg query "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" /v "SearchOrderConfig" > NUL 2>&1
	if %errorlevel%==1 (Call :dword "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" 1)

echo  %R%[90m┌───────────────────────────────────────────────────────────────────────────────────┐
echo  %R%[90m│%R%[1;97m%R%[100m                                  Hizmet Yönetimi                                  %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├─────────────────────────────────────────┬─────────────────────────────────────────┤
echo  %R%[90m│► Hizmetler                              │► Özellikler                             │%R%[0m
Call :SV&Call :SVCheck_Left "BthAvctpSvc bthserv BluetoothUserService BTAGService"&Call :SVCheck_Capabilities "MSPaint"
echo  %R%[90m│%R%[32m  1%DL% Bluetooth                    %R%[90m│%R%[32m 33%DR% Paint                        %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "TapiSrv PhoneSvc"&Call :SVCheck_Capabilities "WordPad"
echo  %R%[90m│%R%[32m  2%DL% Telefon                      %R%[90m│%R%[32m 34%DR% Wordpad                      %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "Spooler"&Call :SVCheck_Capabilities "Notepad"
echo  %R%[90m│%R%[32m  3%DL% Yazıcı                       %R%[90m│%R%[32m 35%DR% Notepad                      %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "FrameServer WiaRpc StiSvc"&Call :SVCheck_Capabilities "StepsRecorder"
echo  %R%[90m│%R%[32m  4%DL% Tarayıcı ve Kamera           %R%[90m│%R%[32m 36%DR% Adım Kaydedici               %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Capabilities "PowerShell.ISE"
if %OSCheck%==11 (Call :SVCheck_Left "PenService")
if %OSCheck%==10 (Call :SVCheck_Left "TabletInputService")
echo  %R%[90m│%R%[32m  5%DL% Kalem ve Dokunmatik          %R%[90m│%R%[32m 37%DR% Powershell-ISE               %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Capabilities "fax"&Call :SVCheck_Capabilities "MathRecognizer"
echo  %R%[90m│%R%[32m  6%DL% Fax                          %R%[90m│%R%[32m 38%DR% Matematik ifade tanıyıcı     %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "BDESVC"&Call :SVCheck_Features "WindowsMediaPlayer"
echo  %R%[90m│%R%[32m  7%DL% Bitlocker Sürücü Şifreleme   %R%[90m│%R%[32m 39%DR% Windows Media Player         %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "DusmSvc"&Call :SVCheck_Capabilities "InternetExplorer"
echo  %R%[90m│%R%[32m  8%DL% Tarifeli Ağlar               %R%[90m│%R%[32m 40%DR% Internet Explorer            %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "iphlpsvc IpxlatCfgSvc"&Call :SVCheck_Features "Subsystem-Linux"
echo  %R%[90m│%R%[32m  9%DL% IP Yardımcısı (IPV6)         %R%[90m│%R%[32m 41%DR% Linux için altyapı           %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "icssvc SharedAccess ALG"&Call :SVCheck_Capabilities "NetFX3"
echo  %R%[90m│%R%[32m 10%DL% Mobil Etkin Nokta            %R%[90m│%R%[32m 42%DR% Net Framework 3.5            %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "RMSvc"&Call :SVCheck_Features "IIS-ASPNET45"
echo  %R%[90m│%R%[32m 11%DL% Radyo ve Uçak Modu           %R%[90m│%R%[32m 43%DR% Net Framework 4.5            %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "wcncsvc"&Call :SVCheck_Features "DirectPlay"
echo  %R%[90m│%R%[32m 12%DL% Windows Şimdi Bağlan (WPS)   %R%[90m│%R%[32m 44%DR% DirectPlay                   %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "WwanSvc WlanSvc wcncsvc lmhosts vwifibus NativeWifiP Ndisuio vwififlt"&Call :SVCheck_Compact
echo  %R%[90m│%R%[32m 13%DL% Wifi                         %R%[90m│%R%[32m 45%DR% CompactOS%R%[90m Windows Sıkıştırma │%R%[0m
Call :SV&Call :SVCheck_Left "lfsvc NaturalAuthentication"&Call :SVCheck_RegRight_Ozel "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".jpg"
echo  %R%[90m│%R%[32m 14%DL% Konum                        %R%[90m│%R%[32m 46%DR% Eski Fotoğraf Görüntüleyici  %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "ConsentUxUserSvc DevicePickerUserSvc DevicesFlowUserSvc"&Call :SVCheck_RegRight_Ozel "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "AltTabSettings"
echo  %R%[90m│%R%[32m 15%DL% Miracast                     %R%[90m│%R%[32m 47%DR% Eski ALT + TAB               %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "PNRPAutoReg PNRPsvc p2psvc p2pimsvc upnphost QWAVE SSDPSRV"&Call :SVCheck_RegRight_Ozel "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseUpdatesExpiryTime"
echo  %R%[90m│%R%[32m 16%DL% Akış                         %R%[90m│%R%[32m 48%DR% Güncellemeleri 2050'ye ertele%R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "TermService UmRdpService SessionEnv RasAuto RasMan RpcLocator"
echo  %R%[90m│%R%[32m 17%DL% Uzak Masaüstü                %R%[90m│► Optimizasyon                           %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "SysMain"&Call :SVCheck_RegRight "HKLM\System\CurrentControlSet\Control" "SvcHostSplitThresholdInKB" "0x380000"
echo  %R%[90m│%R%[32m 18%DL% Hızlı Getir (Sysmain)        %R%[90m│%R%[32m 49%DR% Svchost                      %R%[90m│%R%[0m
Call :SV&Call :SVCheck_RegLeft "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" "0x0"&Call :SVCheck_Power "Nihai"
echo  %R%[90m│%R%[32m 19%DL% Hızlı Başlat (Hibernate)     %R%[90m│%R%[32m 50%DO% Nihai Performans             %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "WSearch"&Call :SVCheck_RegRight "HKCU\SOFTWARE\Microsoft\GameBar" "AutoGameModeEnabled" "0x0"
echo  %R%[90m│%R%[32m 20%DL% Windows Search               %R%[90m│%R%[32m 51%DR% Oyun Modu                    %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "BcastDVRUserService XboxGipSvc XboxNetApiSvc XblAuthManager XblGameSave DoSvc"&Call :SVCheck_RegRight "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "0x0"&Call :SVCheck_RegRight "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "0x0"
echo  %R%[90m│%R%[32m 21%DL% Xbox                         %R%[90m│%R%[32m 52%DR% CPU Çekirdek Uyku Modu       %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc"&Call :SVCheck_hosts
echo  %R%[90m│%R%[32m 22%DL% Karma Gerçeklik (VR)         %R%[90m│%R%[32m 53%DR% Reklam Engelli Hosts         %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "DPS WdiServiceHost WdiSystemHost PcaSvc"
echo  %R%[90m│%R%[32m 23%DL% Tanı İlkesi (Uyumluluk)      %R%[90m│%R%[32m 54%SO% Gereksiz Aygıtlar            %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "seclogon"
echo  %R%[90m│%R%[32m 24%DL% Hızlı Kullanıcı Değiştir     %R%[90m│► Sağ-Tık Yöneticisi                     %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "FontCache FontCache3.0.0.0"&Call :SVCheck_RegRight_Ozel2 "HKCR\*\shell\runas"
echo  %R%[90m│%R%[32m 25%DL% Yazı Tipi Önbelliği          %R%[90m│%R%[32m 55%DR% Sahiplik Al                  %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "wisvc"&Call :SVCheck_RegRight_Ozel2 "HKCR\Directory\background\shell\Yonet"
echo  %R%[90m│%R%[32m 26%DL% Insider                      %R%[90m│%R%[32m 56%DR% Yönet                        %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "WbioSrvc"&Call :SVCheck_RegRight_Ozel2 "HKCR\exefile\shell\Priority"
echo  %R%[90m│%R%[32m 27%DL% Biyometrik                   %R%[90m│%R%[32m 57%DR% Çalıştırma Seçenekleri       %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "HvHost"&Call :SVCheck_RegRight_Ozel "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" "{9F156763-7844-4DC4-B2B1-901F640F5155}"&Call :SVCheck_OS10
echo  %R%[90m│%R%[32m 28%DL% Hyper-V                      %R%[90m│%R%[32m 58%DR% Terminal%R%[90m (Win11)             │%R%[0m
Call :SV&Call :SVCheck_Left "SDRSVC VSS swprv wbengine fhsvc"&Call :SVCheck_RegRight_Ozel2 "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"&Call :SVCheck_OS10
echo  %R%[90m│%R%[32m 29%DL% Sistem Geri Yükleme          %R%[90m│%R%[32m 59%DR% Eski Menü%R%[90m (Win11)            │%R%[0m
Call :SV&Call :SVCheck_RegLeft "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" "0x0"
echo  %R%[90m│%R%[32m 30%DL% Driver Yükle - Güncelle      %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Memory "False"
echo  %R%[90m│%R%[32m 31%DL% Bellek Sıkıştırma            %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
Call :SV&Call :SVCheck_Left "defragsvc"
echo  %R%[90m│%R%[32m 32%DL% Disk Birleştirme (Defrag)    %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
echo  %R%[90m└─────────────────────────────────────────┴─────────────────────────────────────────┘%R%[0m
set /p $value=%R%[32m  Çoklu Seçim %R%[90mxa,yk: %R%[0m 

echo %$value% | findstr /i "x" > NUL 2>&1
	if %errorlevel% EQU 0 goto menu
cls
echo  %R%[90m┌───────────────────────────────────────────────────────────────────────────────────┐
echo  %R%[90m│%R%[1;97m%R%[100m                                  Hizmet Yönetimi                                  %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────────────────────────────────────┤

FOR %%a in (%$value%) do (
	if %%a EQU 1a (Call :S1_Bluetooth start demand auto açılıyor)
	if %%a EQU 1A (Call :S1_Bluetooth start demand auto açılıyor)
	if %%a EQU 1K (Call :S1_Bluetooth stop disabled disabled kapatılıyor)
	if %%a EQU 1k (Call :S1_Bluetooth stop disabled disabled kapatılıyor)
	if %%a EQU 2a (Call :S2_Phone start demand demand açılıyor)
	if %%a EQU 2A (Call :S2_Phone start demand demand açılıyor)
	if %%a EQU 2K (Call :S2_Phone stop disabled demand kapatılıyor)
	if %%a EQU 2k (Call :S2_Phone stop disabled demand kapatılıyor)
	if %%a EQU 3a (Call :S3_Printer start demand auto açılıyor)
	if %%a EQU 3A (Call :S3_Printer start demand auto açılıyor)
	if %%a EQU 3K (Call :S3_Printer stop disabled disabled kapatılıyor)
	if %%a EQU 3k (Call :S3_Printer stop disabled disabled kapatılıyor)
	if %%a EQU 4a (Call :S4_Camera.Scanner start demand açılıyor)
	if %%a EQU 4A (Call :S4_Camera.Scanner start demand açılıyor)
	if %%a EQU 4K (Call :S4_Camera.Scanner stop disabled kapatılıyor)
	if %%a EQU 4k (Call :S4_Camera.Scanner stop disabled kapatılıyor)
	if %%a EQU 5a (Call :S5_Touch start demand açılıyor)
	if %%a EQU 5A (Call :S5_Touch start demand açılıyor)
	if %%a EQU 5K (Call :S5_Touch stop disabled kapatılıyor)
	if %%a EQU 5k (Call :S5_Touch stop disabled kapatılıyor)	
	if %%a EQU 6a (Call :S6_Fax start demand add açılıyor)
	if %%a EQU 6A (Call :S6_Fax start demand add açılıyor)
	if %%a EQU 6K (Call :S6_Fax stop disabled remove kapatılıyor)
	if %%a EQU 6k (Call :S6_Fax stop disabled remove kapatılıyor)	
	if %%a EQU 7a (Call :S7_Bitlocker start demand boot açılıyor)
	if %%a EQU 7A (Call :S7_Bitlocker start demand boot açılıyor)
	if %%a EQU 7K (Call :S7_Bitlocker stop disabled disabled kapatılıyor)
	if %%a EQU 7k (Call :S7_Bitlocker stop disabled disabled kapatılıyor)	
	if %%a EQU 8a (Call :S8_LimitedNetwork start auto açılıyor)
	if %%a EQU 8A (Call :S8_LimitedNetwork start auto açılıyor)
	if %%a EQU 8K (Call :S8_LimitedNetwork stop disabled kapatılıyor)
	if %%a EQU 8k (Call :S8_LimitedNetwork stop disabled kapatılıyor)
	if %%a EQU 9a (Call :S9_IPHelper start demand auto açılıyor)
	if %%a EQU 9A (Call :S9_IPHelper start demand auto açılıyor)
	if %%a EQU 9K (Call :S9_IPHelper stop disabled disabled kapatılıyor)
	if %%a EQU 9k (Call :S9_IPHelper stop disabled disabled kapatılıyor)
	if %%a EQU 10a (Call :S10_Hotspot start demand açılıyor)
	if %%a EQU 10A (Call :S10_Hotspot start demand açılıyor)
	if %%a EQU 10K (Call :S10_Hotspot stop disabled kapatılıyor)
	if %%a EQU 10k (Call :S10_Hotspot stop disabled kapatılıyor)
	if %%a EQU 11a (Call :S11_Radio.Plane.Mod start demand açılıyor)
	if %%a EQU 11A (Call :S11_Radio.Plane.Mod start demand açılıyor)
	if %%a EQU 11K (Call :S11_Radio.Plane.Mod stop disabled kapatılıyor)
	if %%a EQU 11k (Call :S11_Radio.Plane.Mod stop disabled kapatılıyor)	
	if %%a EQU 12a (Call :S12_WPS start demand açılıyor)
	if %%a EQU 12A (Call :S12_WPS start demand açılıyor)
	if %%a EQU 12K (Call :S12_WPS stop disabled kapatılıyor)
	if %%a EQU 12k (Call :S12_WPS stop disabled kapatılıyor)	
	if %%a EQU 13a (Call :S13_WIFI start demand system açılıyor)
	if %%a EQU 13A (Call :S13_WIFI start demand system açılıyor)
	if %%a EQU 13K (Call :S13_WIFI stop disabled disabled kapatılıyor)
	if %%a EQU 13k (Call :S13_WIFI stop disabled disabled kapatılıyor)	
	if %%a EQU 14a (Call :S14_Location start demand Allow 1 "Call :delete2" "DisableLocation" açılıyor)
	if %%a EQU 14A (Call :S14_Location start demand Allow 1 "Call :delete2" "DisableLocation" açılıyor)
	if %%a EQU 14K (Call :S14_Location stop disabled Deny 0 "Call :dword" "DisableLocation 1" kapıtılıyor)
	if %%a EQU 14k (Call :S14_Location stop disabled Deny 0 "Call :dword" "DisableLocation 1" kapıtılıyor)	
	if %%a EQU 15a (Call :S15_Miracast start demand açılıyor)
	if %%a EQU 15A (Call :S15_Miracast start demand açılıyor)
	if %%a EQU 15K (Call :S15_Miracast stop disabled kapatılıyor)
	if %%a EQU 15k (Call :S15_Miracast stop disabled kapatılıyor)
	if %%a EQU 16o (Call :S16_Flow stop start disabled demand açılıyor)
	if %%a EQU 16O (Call :S16_Flow stop start disabled demand açılıyor)
	if %%a EQU 16a (Call :S16_Flow start start demand demand açılıyor)
	if %%a EQU 16A (Call :S16_Flow start start demand demand açılıyor)
	if %%a EQU 16K (Call :S16_Flow stop stop disabled disabled kapatılıyor)
	if %%a EQU 16k (Call :S16_Flow stop stop disabled disabled kapatılıyor)
	if %%a EQU 17a (Call :S17_RemoteDesktop start demand açılıyor)
	if %%a EQU 17A (Call :S17_RemoteDesktop start demand açılıyor)
	if %%a EQU 17K (Call :S17_RemoteDesktop stop disabled kapatılıyor)
	if %%a EQU 17k (Call :S17_RemoteDesktop stop disabled kapatılıyor)
	if %%a EQU 18a (Call :S18_Sysmain start auto açılıyor)
	if %%a EQU 18A (Call :S18_Sysmain start auto açılıyor)
	if %%a EQU 18K (Call :S18_Sysmain stop disabled kapatılıyor)
	if %%a EQU 18k (Call :S18_Sysmain stop disabled kapatılıyor)
	if %%a EQU 19a (Call :S19_Hibernate on 1 açılıyor)
	if %%a EQU 19A (Call :S19_Hibernate on 1 açılıyor)
	if %%a EQU 19K (Call :S19_Hibernate off 0 kapatılıyor)
	if %%a EQU 19k (Call :S19_Hibernate off 0 kapatılıyor)	
	if %%a EQU 20a (Call :S20_Wsearch start auto enable açılıyor)
	if %%a EQU 20A (Call :S20_Wsearch start auto enable açılıyor)
	if %%a EQU 20K (Call :S20_Wsearch stop disabled disable kapatılıyor)
	if %%a EQU 20k (Call :S20_Wsearch stop disabled disable kapatılıyor)
	if %%a EQU 21a (Call :S21_Xbox start demand 1 0 "Call :delete2" açılıyor)
	if %%a EQU 21A (Call :S21_Xbox start demand 1 0 "Call :delete2" açılıyor)
	if %%a EQU 21K (Call :S21_Xbox stop disabled 0 2 "Call :dword" kapatılıyor)
	if %%a EQU 21k (Call :S21_Xbox stop disabled 0 2 "Call :dword" kapatılıyor)
	if %%a EQU 22a (Call :S22_MixedReality demand açılıyor)
	if %%a EQU 22A (Call :S22_MixedReality demand açılıyor)
	if %%a EQU 22K (Call :S22_MixedReality disabled kapatılıyor)
	if %%a EQU 22k (Call :S22_MixedReality disabled kapatılıyor)
	if %%a EQU 23a (Call :S23_Compability start auto demand 0 açılıyor)
	if %%a EQU 23A (Call :S23_Compability start auto demand 0 açılıyor)
	if %%a EQU 23K (Call :S23_Compability stop disabled disabled 1 kapatılıyor)
	if %%a EQU 23k (Call :S23_Compability stop disabled disabled 1 kapatılıyor)
	if %%a EQU 24a (Call :S24_FastUser start demand 0 açılıyor)
	if %%a EQU 24A (Call :S24_FastUser start demand 0 açılıyor)
	if %%a EQU 24K (Call :S24_FastUser stop disabled 1 kapatılıyor)
	if %%a EQU 24k (Call :S24_FastUser stop disabled 1 kapatılıyor)
	if %%a EQU 25a (Call :S25_FontCache start demand açılıyor)
	if %%a EQU 25A (Call :S25_FontCache start demand açılıyor)
	if %%a EQU 25K (Call :S25_FontCache stop disabled kapatılıyor)
	if %%a EQU 25k (Call :S25_FontCache stop disabled kapatılıyor)
	if %%a EQU 26a (Call :S26_Insider start demand açılıyor)
	if %%a EQU 26A (Call :S26_Insider start demand açılıyor)
	if %%a EQU 26K (Call :S26_Insider stop disabled kapatılıyor)
	if %%a EQU 26k (Call :S26_Insider stop disabled kapatılıyor)
	if %%a EQU 27a (Call :S27_Biometric start demand açılıyor)
	if %%a EQU 27A (Call :S27_Biometric start demand açılıyor)
	if %%a EQU 27K (Call :S27_Biometric stop disabled kapatılıyor)
	if %%a EQU 27k (Call :S27_Biometric stop disabled kapatılıyor)
	if %%a EQU 28a (Call :S28_HyperV demand Enable For 1 on açılıyor)
	if %%a EQU 28A (Call :S28_HyperV demand Enable For 1 on açılıyor)
	if %%a EQU 28K (Call :S28_HyperV disabled Disable "::" 0 off kapatılıyor)
	if %%a EQU 28k (Call :S28_HyperV disabled Disable "::" 0 off kapatılıyor)
	if %%a EQU 29a (Call :S29_SystemRestore start demand ENABLE 0 boot açılıyor)
	if %%a EQU 29A (Call :S29_SystemRestore start demand ENABLE 0 boot açılıyor)
	if %%a EQU 29K (Call :S29_SystemRestore stop disabled DISABLE 1 disabled kapatılıyor)
	if %%a EQU 29k (Call :S29_SystemRestore stop disabled DISABLE 1 disabled kapatılıyor)
	if %%a EQU 30a (Call :S30_DriverUpdate 0 1 açılıyor)
	if %%a EQU 30A (Call :S30_DriverUpdate 0 1 açılıyor)
	if %%a EQU 30K (Call :S30_DriverUpdate 1 0 kapatılıyor)
	if %%a EQU 30k (Call :S30_DriverUpdate 1 0 kapatılıyor)
	if %%a EQU 31a (Call :S31_MemoryCompression Enable açılıyor)
	if %%a EQU 31A (Call :S31_MemoryCompression Enable açılıyor)
	if %%a EQU 31K (Call :S31_MemoryCompression Disable kapatılıyor)
	if %%a EQU 31k (Call :S31_MemoryCompression Disable kapatılıyor)
	if %%a EQU 32a (Call :S32_Defrag start demand Enable açılıyor)
	if %%a EQU 32A (Call :S32_Defrag start demand Enable açılıyor)
	if %%a EQU 32K (Call :S32_Defrag stop disabled Disable kapatılıyor)
	if %%a EQU 32k (Call :S32_Defrag stop disabled Disable kapatılıyor)
	if %%a EQU 33a (Call :O33_38_40_Capabilities Add Paint MSPaint açılıyor)
	if %%a EQU 33A (Call :O33_38_40_Capabilities Add Paint MSPaint açılıyor)
	if %%a EQU 33K (Call :O33_38_40_Capabilities Remove Paint MSPaint kapatılıyor)
	if %%a EQU 33k (Call :O33_38_40_Capabilities Remove Paint MSPaint kapatılıyor)
	if %%a EQU 34a (Call :O33_38_40_Capabilities Add WordPad WordPad açılıyor)
	if %%a EQU 34A (Call :O33_38_40_Capabilities Add WordPad WordPad açılıyor)
	if %%a EQU 34K (Call :O33_38_40_Capabilities Remove WordPad WordPad kapatılıyor)
	if %%a EQU 34k (Call :O33_38_40_Capabilities Remove WordPad WordPad kapatılıyor)	
	if %%a EQU 35a (Call :O33_38_40_Capabilities Add Notepad Notepad açılıyor)
	if %%a EQU 35A (Call :O33_38_40_Capabilities Add Notepad Notepad açılıyor)
	if %%a EQU 35K (Call :O33_38_40_Capabilities Remove Notepad Notepad kapatılıyor
					Regedit /s %Location%\Files\Right-Click.Text.Document.reg)
	if %%a EQU 35k (Call :O33_38_40_Capabilities Remove Notepad Notepad kapatılıyor
					Regedit /s %Location%\Files\Right-Click.Text.Document.reg)
	if %%a EQU 36a (Call :O33_38_40_Capabilities Add "Adım Kaydedici" StepsRecorder açılıyor)
	if %%a EQU 36A (Call :O33_38_40_Capabilities Add "Adım Kaydedici" StepsRecorder açılıyor)
	if %%a EQU 36K (Call :O33_38_40_Capabilities Remove "Adım Kaydedici" StepsRecorder kapatılıyor)
	if %%a EQU 36k (Call :O33_38_40_Capabilities Remove "Adım Kaydedici" StepsRecorder kapatılıyor)
	if %%a EQU 37a (Call :O33_38_40_Capabilities Add "Powershell-ISE" PowerShell.ISE açılıyor)
	if %%a EQU 37A (Call :O33_38_40_Capabilities Add "Powershell-ISE" PowerShell.ISE açılıyor)
	if %%a EQU 37K (Call :O33_38_40_Capabilities Remove "Powershell-ISE" PowerShell.ISE kapatılıyor)
	if %%a EQU 37k (Call :O33_38_40_Capabilities Remove "Powershell-ISE" PowerShell.ISE kapatılıyor)
	if %%a EQU 38a (Call :O33_38_40_Capabilities Add "Matematik ifade tanıyıcı" MathRecognizer açılıyor)
	if %%a EQU 38A (Call :O33_38_40_Capabilities Add "Matematik ifade tanıyıcı" MathRecognizer açılıyor)
	if %%a EQU 38K (Call :O33_38_40_Capabilities Remove "Matematik ifade tanıyıcı" MathRecognizer kapatılıyor)
	if %%a EQU 38k (Call :O33_38_40_Capabilities Remove "Matematik ifade tanıyıcı" MathRecognizer kapatılıyor)	
	if %%a EQU 39a (Call :O39_WindowsMediaPlayer start demand Enable Dism açılıyor)
	if %%a EQU 39A (Call :O39_WindowsMediaPlayer start demand Enable Dism açılıyor)
	if %%a EQU 39K (Call :O39_WindowsMediaPlayer stop disabled Disable :: kapatılıyor)
	if %%a EQU 39k (Call :O39_WindowsMediaPlayer stop disabled Disable :: kapatılıyor)
	if %%a EQU 40a (Call :O33_38_40_Capabilities Add "Internet Explorer" InternetExplorer açılıyor)
	if %%a EQU 40A (Call :O33_38_40_Capabilities Add "Internet Explorer" InternetExplorer açılıyor)
	if %%a EQU 40K (Call :O33_38_40_Capabilities Remove "Internet Explorer" InternetExplorer açılıyor)
	if %%a EQU 40k (Call :O33_38_40_Capabilities Remove "Internet Explorer" InternetExplorer açılıyor)
	if %%a EQU 41a (Call :O41_WSL Enable açılıyor)
	if %%a EQU 41A (Call :O41_WSL Enable açılıyor)
	if %%a EQU 41K (Call :O41_WSL Disable kapatılıyor)
	if %%a EQU 41k (Call :O41_WSL Disable kapatılıyor)
	if %%a EQU 42a (Call :O42_44_Features Enable "Net Framework 3.5" NetFX3 açılıyor)
	if %%a EQU 42A (Call :O42_44_Features Enable "Net Framework 3.5" NetFX3 açılıyor)
	if %%a EQU 42K (Call :O42_44_Features Disable "Net Framework 3.5" NetFX3 kapatılıyor)
	if %%a EQU 42k (Call :O42_44_Features Disable "Net Framework 3.5" NetFX3 kapatılıyor)
	if %%a EQU 43a (Call :O42_44_Features Enable "Net Framework 4.5" IIS-ASPNET45 açılıyor)
	if %%a EQU 43A (Call :O42_44_Features Enable "Net Framework 4.5" IIS-ASPNET45 açılıyor)
	if %%a EQU 43K (Call :O42_44_Features Disable "Net Framework 4.5" IIS-ASPNET45 kapatılıyor)
	if %%a EQU 43k (Call :O42_44_Features Disable "Net Framework 4.5" IIS-ASPNET45 kapatılıyor)	
	if %%a EQU 44a (Call :O42_44_Features Enable DirectPlay DirectPlay açılıyor)
	if %%a EQU 44A (Call :O42_44_Features Enable DirectPlay DirectPlay açılıyor)
	if %%a EQU 44K (Call :O42_44_Features Disable DirectPlay DirectPlay kapatılıyor)
	if %%a EQU 44k (Call :O42_44_Features Disable DirectPlay DirectPlay kapatılıyor)
	if %%a EQU 45a (Call :O45_CompactOS always açılıyor)
	if %%a EQU 45A (Call :O45_CompactOS always açılıyor)
	if %%a EQU 45K (Call :O45_CompactOS never kapatılıyor)
	if %%a EQU 45k (Call :O45_CompactOS never kapatılıyor)
	if %%a EQU 46a (Call :O46_WinPhoto 1 açılıyor)
	if %%a EQU 46A (Call :O46_WinPhoto 1 açılıyor)
	if %%a EQU 46K (Call :O46_WinPhoto 0 kapatılıyor)
	if %%a EQU 46k (Call :O46_WinPhoto 0 kapatılıyor)
	if %%a EQU 47a (Call :O47_AltTab 1 açılıyor)
	if %%a EQU 47A (Call :O47_AltTab 1 açılıyor)
	if %%a EQU 47K (Call :O47_AltTab 0 kapatılıyor)
	if %%a EQU 47k (Call :O47_AltTab 0 kapatılıyor)
	if %%a EQU 48a (Call :O48_Update2050 1 açılıyor)
	if %%a EQU 48A (Call :O48_Update2050 1 açılıyor)
	if %%a EQU 48K (Call :O48_Update2050 0 kapatılıyor)
	if %%a EQU 48k (Call :O48_Update2050 0 kapatılıyor)
	if %%a EQU 49a (Call :P49_Svchost)
	if %%a EQU 49A (Call :P49_Svchost)
	if %%a EQU 49K (echo  ►%R%[96m Svchost Optimizasyonu kapatılıyor%R%[0m&timeout /t 1 /nobreak > NUL
					Call :dword "HKLM\System\CurrentControlSet\Control" "SvcHostSplitThresholdInKB" "0x380000")
	if %%a EQU 49k (echo  ►%R%[96m Svchost Optimizasyonu kapatılıyor%R%[0m&timeout /t 1 /nobreak > NUL
					Call :dword "HKLM\System\CurrentControlSet\Control" "SvcHostSplitThresholdInKB" "0x380000")
	if %%a EQU 50a (Call :P50_NihaiPow)
	if %%a EQU 50A (Call :P50_NihaiPow)
	if %%a EQU 51a (Call :P51_GameMode 1 açılıyor)
	if %%a EQU 51A (Call :P51_GameMode 1 açılıyor)
	if %%a EQU 51K (Call :P51_GameMode 0 kapatılıyor)
	if %%a EQU 51k (Call :P51_GameMode 0 kapatılıyor)
	if %%a EQU 52a (Call :P52_CoreParking 100 "Call :delete" "Call :delete2" açılıyor)
	if %%a EQU 52A (Call :P52_CoreParking 100 "Call :delete" "Call :delete2" açılıyor)
	if %%a EQU 52K (Call :P52_CoreParking 0 "Call :dword" "Call :dword" kapatılıyor)
	if %%a EQU 52k (Call :P52_CoreParking 0 "Call :dword" "Call :dword" kapatılıyor)
	if %%a EQU 53a (Call :P53_hosts 1 açılıyor)
	if %%a EQU 53A (Call :P53_hosts 1 açılıyor)
	if %%a EQU 53K (Call :P53_hosts 0 kapatılıyor)
	if %%a EQU 53k (Call :P53_hosts 0 kapatılıyor)
	if %%a EQU 54a (Call :P54_Device enable açılıyor)
	if %%a EQU 54A (Call :P54_Device enable açılıyor)
	if %%a EQU 54K (Call :P54_Device disable kapatılıyor)
	if %%a EQU 54k (Call :P54_Device disable kapatılıyor)
	if %%a EQU 55a (Call :R55_TakeOwnerShip 1 açılıyor)
	if %%a EQU 55A (Call :R55_TakeOwnerShip 1 açılıyor)
	if %%a EQU 55K (Call :R55_TakeOwnerShip 0 kapatılıyor)
	if %%a EQU 55k (Call :R55_TakeOwnerShip 0 kapatılıyor)
	if %%a EQU 56a (Call :R56_Yonet 1 açılıyor)
	if %%a EQU 56A (Call :R56_Yonet 1 açılıyor)
	if %%a EQU 56K (Call :R56_Yonet 0 kapatılıyor)
	if %%a EQU 56k (Call :R56_Yonet 0 kapatılıyor)
	if %%a EQU 57a (Call :R57_RuntimeSettings 1 açılıyor)
	if %%a EQU 57A (Call :R57_RuntimeSettings 1 açılıyor)
	if %%a EQU 57K (Call :R57_RuntimeSettings 0 kapatılıyor)
	if %%a EQU 57k (Call :R57_RuntimeSettings 0 kapatılıyor)
	if %%a EQU 58a (Call :R58_Terminal 1 açılıyor)
	if %%a EQU 58A (Call :R58_Terminal 1 açılıyor)
	if %%a EQU 58K (Call :R58_Terminal 0 kapatılıyor)
	if %%a EQU 58k (Call :R58_Terminal 0 kapatılıyor)
	if %%a EQU 59a (Call :R59_OldMenu 1 açılıyor)
	if %%a EQU 59A (Call :R59_OldMenu 1 açılıyor)
	if %%a EQU 59K (Call :R59_OldMenu 0 kapatılıyor)
	if %%a EQU 59k (Call :R59_OldMenu 0 kapatılıyor)
)
Call :ProcessCompleted
goto Service_Management

:S1_Bluetooth
Call :LogSave "Hizmetleri Yönet" "Bluetooth hizmeti %4"
echo  ►%R%[96m Bluetooth hizmeti %4 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:S2_Phone
Call :LogSave "Hizmetleri Yönet" "Telefon hizmeti %4"
echo  ►%R%[96m Telefon hizmeti %4 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:S3_Printer
Call :LogSave "Hizmetleri Yönet" "Yazıcı hizmeti %4"
echo  ►%R%[96m Yazıcı hizmetleri %4 ...%R%[0m&timeout /t 1 /nobreak > NUL
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


:S4_Camera.Scanner
Call :LogSave "Hizmetleri Yönet" "Tarayıcı ve Kamera hizmeti %3"
echo  ►%R%[96m Tarayıcı ve Kamera hizmetleri %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
:: Windows Kamera çerçeve sunucusu | Windows Kamera Çerçeve Sunucusu | Resim alma olayları (Windows Görüntü Alma-WIA) | Windows Resim Alma (Windows Görüntü Alma (WIA))
FOR %%a in (FrameServer FrameServerMonitor WiaRpc StiSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:S5_Touch
Call :LogSave "Hizmetleri Yönet" "Dokunmatik Klavye ve Kalem hizmeti %3"
echo  ►%R%[96m Dokunmatik Klavye ve Kalem hizmeti %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:S6_Fax
Call :LogSave "Hizmetleri Yönet" "Fax hizmeti %4"
echo  ►%R%[96m Fax hizmeti %4 ...%R%[0m&timeout /t 1 /nobreak > NUL
Dism /Online /NoRestart /%~3-Capability /CapabilityName:Print.Fax.Scan~~~~0.0.1.0 > NUL 2>&1
sc config fax start= %~2 > NUL 2>&1
net %1 fax /y > NUL 2>&1
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : Add      | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : Remove   | %4 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:S7_Bitlocker
Call :LogSave "Hizmetleri Yönet" "Bitlocker hizmeti %4"
echo  ►%R%[96m Bitlocker hizmeti %4 ...%R%[0m&timeout /t 1 /nobreak > NUL
:: Bitlocker sürücü şifreleme hizmeti
sc config BDESVC start= %2 > NUL 2>&1
net %1 BDESVC /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : boot      | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled  | %4 : kapatılıyor
::------------------------------------------------------
goto :eof

:S8_LimitedNetwork
Call :LogSave "Hizmetleri Yönet" "Tarifeli ağlar hizmeti %3"
echo  ►%R%[96m Tarifeli ağlar hizmeti %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
:: Veri kullanımı
sc config DusmSvc start= %2 > NUL 2>&1
net %1 DusmSvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto     | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:S9_IPHelper
Call :LogSave "Hizmetleri Yönet" "IP yardımcı hizmeti %4"
echo  ►%R%[96m IP yardımcısı hizmeti %4 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:S10_Hotspot
Call :LogSave "Hizmetleri Yönet" "Mobil Etkin Nokta hizmeti %3"
echo  ►%R%[96m Mobil etkin nokta hizmeti %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
:: Windows Mobil Etkin Nokta Hizmeti | Internet Bağlantısı Paylaşımı (ICS) | Uygulama katmanı ağ geçidi hizmeti
FOR %%a in (icssvc SharedAccess ALG) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:S11_Radio.Plane.Mod
:: Windows 11'de ağ simgesinde sorun yaşanmaması için hizmetin kapatılması engellendi.
echo %~3 | Findstr /i "kapatılıyor" > NUL 2>&1
	if %errorlevel% EQU 0 if %OSCheck% EQU 11 (echo  ►%R%[31m Windows 11'de bu hizmet kapatılamaz.%R%[0m
											   timeout /t 3 /nobreak > NUL
					                           goto :eof)
Call :LogSave "Hizmetleri Yönet" "Radyo ve Uçak Modu hizmeti %3"dfr
echo  ►%R%[96m Radyo yönetim ve uçak modu hizmeti %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
:: Radyo yönetimi ve uçak modu hizmeti
sc config RMSvc start= %2 > NUL 2>&1
net %1 RMSvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor   
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:S12_WPS
Call :LogSave "Hizmetleri Yönet" "WPS hizmeti %3"
echo  ►%R%[96m Windows Şimdi Bağlan hizmeti %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
:: Windows Şimdi Bağlan - Yapılandırma Dosyası Kaydedici
sc config wcncsvc start= %2 > NUL 2>&1
net %1 wcncsvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:S13_WIFI
Call :LogSave "Hizmetleri Yönet" "Wifi hizmeti %4"
echo  ►%R%[96m Wifi hizmeti %4 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:S14_Location
Call :LogSave "Hizmetleri Yönet" "Konum hizmeti %7"
echo  ►%R%[96m Konum hizmeti %7 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:S15_Miracast
echo  ►%R%[96m Miracast hizmeti %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:S16_Flow
Call :LogSave "Hizmetleri Yönet" "Akış deneyimi hizmeti %5"
echo  ►%R%[96m Medya Akış hizmeti %5 ...%R%[0m&timeout /t 1 /nobreak > NUL
::PNRP Makine adı yayın hizmeti | Eş adı çözümleme protokolü | Eş ağ gruplandırma | Eşler arası ağ oluşturma kimlik yöneticisi | UPNP aygıt ana makinesi | Upnp Aygıt ana bilgisyarı (Ağdaki cihazları bulur)
FOR %%a in (PNRPAutoReg PNRPsvc p2psvc p2pimsvc upnphost QWAVE) do (
	sc config %%a start= %3 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
sc config SSDPSRV start= %4 > NUL 2>&1
net %~2 SSDPSRV /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : start   | %3 : demand    | %4 : demand    | %5 : açılıyor 
:: Kapat = %1 : stop  | %2 : stop    | %3 : disabled  | %4 : disabled  | %5 : kapatılıyor 
::  Özel = %1 : stop  | %2 : start   | %3 : disabled  | %4 : demand    | %5 : açılıyor 
::-------------------------------------------------------
goto :eof

:S17_RemoteDesktop
Call :LogSave "Hizmetleri Yönet" "Uzak Masaüstü hizmeti %3"
echo  ►%R%[96m Uzak Masaüstü hizmetleri %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
:: Uzak masaüstü hizmetleri | Uzak Masaüstü Hizmetleri Kullanıcı Modu Bağlantı Noktası Yeniden Yönlendiricisi | Uzak Masaüstü Yapılandırması | Uzaktan Erişim Otomatik Bağlantı Yöneticisi | Uzaktan Erişim Bağlantı Yöneticisi | Uzaktan yordam çağrısı (RPC) bulucu
FOR %%a in (TermService UmRdpService SessionEnv RasAuto RasMan RpcLocator) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand    | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled  | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:S18_Sysmain
Call :LogSave "Hizmetleri Yönet" "Hızlı Getir^(Sysmain^) hizmeti %3"
echo  ►%R%[96m Hızlı Getir hizmeti %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
sc config SysMain start= %2 > NUL 2>&1
net %1 SysMain /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:S19_Hibernate
::Hızlı başlangıç
Call :LogSave "Hizmetleri Yönet" "Hızlı başlangıç^(Hibernate^) hizmeti %3"
echo  ►%R%[96m Hızlı başlat %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
powercfg /hibernate %1
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" "%~2"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" "%~2"
::-------------------------------------------------------
::    Aç = %1 : On  | %~2 : 1  | %3 : açılıyor
:: Kapat = %1 : Off | %~2 : 0  | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:S20_Wsearch
Call :LogSave "Hizmetleri Yönet" "Wsearch hizmeti %4"
echo  ►%R%[96m Windows Search hizmeti %4 ...%R%[0m&timeout /t 1 /nobreak > NUL
Dism /Online /%~3-feature /featurename:SearchEngine-Client-Package /Quiet /NoRestart
:: Windows Search
sc config WSearch start= %2 > NUL 2>&1
net %1 WSearch /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto     | %3 : enable   | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disable  | %4 : kapatılıyor
::-------------------------------------------------------
goto :eof

:S21_Xbox
Call :LogSave "Hizmetleri Yönet" "Xbox hizmeti %6"
echo  ►%R%[96m Xbox hizmeti %6 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:S22_MixedReality
Call :LogSave "Hizmetleri Yönet" "Karma Gerçeklik hizmeti %2"
echo  ►%R%[96m Karma Gerçeklik hizmeti %2 ...%R%[0m&timeout /t 1 /nobreak > NUL
:: Uzlamsal veri hizmeti | Volumetrik ses oluşturucu hizmeti | Windows algılama benzetimi hizmeti | Windows Algılama Hizmeti | Windows Mixed Reality OpenXR Service
FOR %%a in (SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc) do (
	sc config %%a start= %1 > NUL 2>&1)
::------------------------------------------
::    Aç = %1 : demand    | %2 : açılıyor   
:: Kapat = %1 : disabled  | %2 : kapatılıyor
::------------------------------------------
goto :eof

:S23_Compability
Call :LogSave "Hizmetleri Yönet" "Tanı ilkesi hizmeti %5"
echo  ►%R%[96m Tanı ilkesi hizmeti %5 ...%R%[0m&timeout /t 1 /nobreak > NUL
For %%a in (DPS WdiServiceHost WdiSystemHost) do (
	sc config %%a start= %~2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1
)
sc config PcaSvc start= %~3 > NUL 2>&1
net %1 PcaSvc /y > NUL 2>&1
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisablePCA" %4
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : auto     | %3 : demand    | %4 : 0    | %5 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled  | %4 : 1    | %5 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:S24_FastUser
Call :LogSave "Hizmetleri Yönet" "Hızlı Kullanıcı değiştirme hizmeti %4"
echo  ►%R%[96m Hızlı Kullanıcı Değiştirme hizmeti %4 ...%R%[0m&timeout /t 1 /nobreak > NUL
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" "HideFastUserSwitching" %3
Call :dword "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\System" "HideFastUserSwitching" %3
sc config seclogon start= %2 > NUL 2>&1
net %1 seclogon /y > NUL 2>&1
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : 0  | %4 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : 1  | %4 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:S25_FontCache
Call :LogSave "Hizmetleri Yönet" "FontCache hizmeti %3"
echo  ►%R%[96m Yazı Tipi Önbellek hizmeti %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
For %%a in (FontCache FontCache3.0.0.0) do (
	sc config %%a start= %~2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1
)
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:S26_Insider
Call :LogSave "Hizmetleri Yönet" "Insider hizmeti %3"
echo  ►%R%[96m Windows Insider hizmeti %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
:: Windows Insider Hizmeti
sc config wisvc start= %2 > NUL 2>&1
net %1 wisvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:S27_Biometric
Call :LogSave "Hizmetleri Yönet" ^| "Biyometrik hizmeti %3"
echo  ►%R%[96m Windows Biyometrik hizmeti %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
:: Windows Biyometrik Hizmeti
sc config WbioSrvc start= %2 > NUL 2>&1
net %1 WbioSrvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : kapatılıyor
::-------------------------------------------------------
goto :eof

:S28_HyperV
Call :LogSave "Hizmetleri Yönet" "Hyper-V hizmeti %6"
echo  ►%R%[96m Hyper-V hizmeti %6 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:S29_SystemRestore
Call :LogSave "Hizmetleri Yönet" "Sistem Geri yükleme hizmeti %6"
echo  ►%R%[96m Sistem geri yükleme hizmeti %6 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:S30_DriverUpdate
Call :LogSave "Hizmetleri Yönet"  "Driver Güncelle / Yükle %3"
echo  ►%R%[96m Driver Yükle/Güncelle hizmeti %3 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:S31_MemoryCompression
Call :LogSave "Hizmetleri Yönet" "Bellek sıkıştırma %2"
echo  ►%R%[96m Bellek sıkıştırma hizmeti %2 ...%R%[0m&timeout /t 1 /nobreak > NUL
Call :Powershell "%~1-MMAgent -mc"
::-------------------------------------
::    Aç = %~1 : Enable   | %~2: açılıyor   
:: Kapat = %~1 : Disable  | %~2: kapatılıyor
::-------------------------------------
goto :eof

:S32_Defrag
Call :LogSave "Hizmetleri Yönet" "Disk Birleştirme %~4"
echo  ►%R%[96m Disk Birleştirme hizmeti %~4 ...%R%[0m&timeout /t 1 /nobreak > NUL
sc config defragsvc start= %~2 > NUL 2>&1
net %~1 defragsvc /y > NUL 2>&1
schtasks /Change /TN "Microsoft\Windows\Defrag\ScheduledDefrag" /%~3
::-------------------------------------
::    Aç = %~1 : start   | %~2: demand    | %~3: Enable   | %~4: açılıyor   
:: Kapat = %~1 : stop    | %~2: disabled  | %~3: Disable  | %~4: kapatılıyor
::-------------------------------------
goto :eof

:O33_38_40_Capabilities
Call :LogSave "Hizmetleri Yönet" "%~2 %~4"
echo  ►%R%[96m %~2 %~4 ...%R%[0m&timeout /t 1 /nobreak > NUL
FOR /F "tokens=1" %%a in ('Findstr /i "%~3" %Logs%\Capabilities.txt') do (
	Dism /Online /%~1-Capability /CapabilityName:%%a /Quiet /NoRestart
)
::-------------------------------------
::    Aç = %~1: Remove  | %~2: Özellik adı  | %~3: Find ile bulunacak özellik adı | %~4: açılıyor   
:: Kapat = %~1: Add     | %~2: Özellik adı  | %~3: Find ile bulunacak özellik adı | %~4: kapatılıyor
::-------------------------------------
goto :eof

:O39_WindowsMediaPlayer
Call :LogSave "Hizmetleri Yönet" "Windows Media Player  %5"
echo  ►%R%[96m Windows Media Player %5 ...%R%[0m&timeout /t 1 /nobreak > NUL
%~4 /Online /Add-Capability /CapabilityName:Media.WindowsMediaPlayer~~~~0.0.12.0 /Quiet /NoRestart
Dism /Online /%3-Feature /FeatureName:MediaPlayback /Quiet /NoRestart
Dism /online /%3-Feature /FeatureName:WindowsMediaPlayer /Quiet /NoRestart
:: Windows Media Player Ağ Paylaşım Hizmeti
sc config WMPNetworkSvc start= %2 > NUL 2>&1
net %1 WMPNetworkSvc /y > NUL 2>&1
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : ENABLE   | %~4: Dism | %5 : açılıyor
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE  | %~4  ::   | %5 : kapatılıyor
::---------------------------------------------------------------------
goto :eof

:O41_WSL
Call :LogSave "Hizmetleri Yönet" "Windows için Linux Altyapı desteği %~2"
echo  ►%R%[96m Windows için Linux Altyapı desteği %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
FOR %%a in (Microsoft-Windows-Subsystem-Linux VirtualMachinePlatform) do (
	FOR /F "tokens=1" %%b in ('findstr /C:"%%a" %Logs%\Features.txt') do (
		Dism /Online /%~1-Feature /FeatureName:%%b /All /Quiet /NoRestart
	)
)
wsl --set-default-version 2
:: wsl.exe --install
::-------------------------------------
::    Aç = %~1 : Enable   | %~2: açılıyor   
:: Kapat = %~1 : Disable  | %~2: kapatılıyor
::-------------------------------------
goto :eof

:O42_44_Features
Call :LogSave "Hizmetleri Yönet" "%~2 %~4"
echo  ►%R%[96m %~2 %~4 ...%R%[0m&timeout /t 1 /nobreak > NUL
FOR /F "tokens=1" %%a in ('findstr /C:"%~3" %Logs%\Features.txt') do (
	Dism /Online /%~1-Feature /FeatureName:%%a /All /Quiet /NoRestart
)
::-------------------------------------
::    Aç = %~1: Enable    | %~2: Özellik adı  | %~3: Find ile bulunacak özellik adı | %~4: açılıyor   
:: Kapat = %~1: Disable   | %~2: Özellik adı  | %~3: Find ile bulunacak özellik adı | %~4: kapatılıyor
::-------------------------------------
goto :eof

:O45_CompactOS
Call :LogSave "Hizmetleri Yönet" "CompactOS %~2"
echo  ►%R%[96m CompactOS %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
Compact.exe /CompactOS:%~1
::-------------------------------------
::    Aç = %~1: always  | %~2: açılıyor 
:: Kapat = %~1: never   | %~2: kapatılıyor 
::-------------------------------------
goto :eof

:O46_WinPhoto
Call :LogSave "Hizmetleri Yönet" "Eski Windows Fotoğraf Görüntüleyicisi %~2"
echo  ►%R%[96m Eski Windows Fotoğraf Görüntüleyici %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
if %~1 EQU 0 (Call :delete "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer")
if %~1 EQU 1 (Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".tif" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".tiff" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".png" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".bmp" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".jpg" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".jpeg" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".ico" "PhotoViewer.FileAssoc.Tiff")
::-------------------------------------
::    Aç = %~1: 1  | %~2: açılıyor 
:: Kapat = %~1: 0  | %~2: kapatılıyor 
::-------------------------------------
goto :eof

:O47_AltTab
Call :LogSave "Hizmetleri Yönet" "Eski Alt + Tab %~2"
echo  ►%R%[96m Eski Alt + Tab %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
if %~1 EQU 0 (Call :delete2 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "AltTabSettings")
if %~1 EQU 1 (Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "AltTabSettings" 1)
::-------------------------------------
::    Aç = %~1: 1  | %~2: açılıyor 
:: Kapat = %~1: 0  | %~2: kapatılıyor 
::-------------------------------------
goto :eof

:O48_Update2050
Call :LogSave "Hizmetleri Yönet" "Güncelleştirmeleri 2050 yılına erteleme %~2"
echo  ►%R%[96m Güncelleştirmeleri 2050 yılına erteleme %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
for /f "tokens=1" %%a in ('echo %time%') do set Time=%%a
if %~1 EQU 0 (Call :delete2 "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesStartTime"
			  Call :delete2 "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesStartTime"
			  Call :delete2 "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseUpdatesExpiryTime"
			  Call :delete2 "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesEndTime"
			  Call :delete2 "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesEndTime")
if %~1 EQU 1 (Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesStartTime" "%Date2%T%Time%Z"
			  Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesStartTime" "%Date2%T%Time%Z"
			  Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseUpdatesExpiryTime" "2050-12-29T%Time%Z"
			  Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesEndTime" "2050-12-29T%Time%Z"
			  Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesEndTime" "2050-12-29T%Time%Z"
			  Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "NoAutoUpdate" "0"
			  Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "AUOptions" "2")
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1
gpupdate /force > NUL 2>&1
::-------------------------------------
::    Aç = %~1: 1  | %~2: açılıyor 
:: Kapat = %~1: 0  | %~2: kapatılıyor 
::-------------------------------------
goto :eof

:P49_Svchost
::Toplam Ram değeri öğrenilir.
FOR /F "tokens=2" %%a in ('systeminfo ^| find "Total Physical Memory"') do set Svchost=%%a
:: GB olarak görünmesi için son dört değer silinir.
set Svchost=%Svchost:~0,-4%
:: Svchost Ram optimizasyonu için hesaplama yapılır.
set /a Svchost=%Svchost%*1024*1024+1024000
Call :dword "HKLM\System\CurrentControlSet\Control" "SvcHostSplitThresholdInKB" "0x%Svchost%"
goto :eof

:P50_NihaiPow
Call :LogSave "Hizmetleri Yönet" "Nihai Performans açılıyor"
echo  ►%R%[96m Nihai Performans açılıyor...%R%[0m&timeout /t 1 /nobreak > NUL
powercfg -list | findstr /C:"Nihai" > NUL 2>&1
	if %errorlevel%==0 (echo  ►%R%[31m Güç seçeneği ekli...%R%[0m&timeout /t 1 /nobreak > NUL
						timeout /t 2 /nobreak > NUL)
	if %errorlevel%==1 (echo  ►%R%[96m Nihai Performans Güç Seçeneği ekleniyor...%R%[0m&timeout /t 1 /nobreak > NUL
						powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 > NUL 2>&1)
FOR /F "tokens=4" %%b in ('powercfg -list ^| findstr /C:"Nihai"') do (powercfg -setactive %%b > NUL)
goto :eof

:P51_GameMode
Call :LogSave "Hizmetleri Yönet" "Oyun modu %~2"
echo  ►%R%[96m Oyun Modu %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
Call :dword "HKCU\SOFTWARE\Microsoft\GameBar" "AutoGameModeEnabled" %1
::-------------------------------------
::    Aç = %~1 : 1   | %~2: açılıyor   
:: Kapat = %~1 : 0   | %~2: kapatılıyor
::-------------------------------------
goto :eof

:P52_CoreParking
Call :LogSave "Hizmetleri Yönet" "İşlemci çekirdek bekleme hizmeti %4."
echo  ►%R%[96m İşlemci çekirdek bekleme hizmeti %4 ...%R%[0m&timeout /t 1 /nobreak > NUL
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

:P53_hosts
Call :LogSave "Hizmetleri Yönet" "Telemetri/Reklam engelli hosts %~2"
echo  ►%R%[96m Telemetri/Reklam engelli hosts %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
if %~1 EQU 0 (%NSudo% copy /y "%Location%\Files\hosts.default" "%windir%\System32\drivers\etc"
		      %NSudo% rename /y "%windir%\System32\drivers\etc\hosts.default" "hosts")
if %~1 EQU 1 (%NSudo% Rename "%windir%\System32\drivers\etc\hosts" "hosts.%Date2%.%random%"
		      %NSudo% copy /y "%Location%\Files\hosts" "%windir%\System32\drivers\etc")
::-------------------------------------
::    Aç = %~1: 1  | %~2: açılıyor 
:: Kapat = %~1: 0  | %~2: kapatılıyor 
::-------------------------------------
goto :eof

:P54_Device
Call :LogSave "Hizmetleri Yönet" "Aygıt Optimizasyonu %~2"
echo  ►%R%[96m Windows için Linux Altyapı desteği %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
"%Location%\Files\DevManView.exe" /%~1 "WAN Miniport (IKEv2)"
"%Location%\Files\DevManView.exe" /%~1 "WAN Miniport (IP)"
"%Location%\Files\DevManView.exe" /%~1 "WAN Miniport (IPv6)"
"%Location%\Files\DevManView.exe" /%~1 "WAN Miniport (L2TP)"
"%Location%\Files\DevManView.exe" /%~1 "WAN Miniport (Network Monitor)"
"%Location%\Files\DevManView.exe" /%~1 "WAN Miniport (PPPOE)"
"%Location%\Files\DevManView.exe" /%~1 "WAN Miniport (PPTP)"
"%Location%\Files\DevManView.exe" /%~1 "WAN Miniport (SSTP)"
"%Location%\Files\DevManView.exe" /%~1 "NDIS Virtual Network Adapter Enumerator"
"%Location%\Files\DevManView.exe" /%~1 "Microsoft RRAS Root Enumerator"
"%Location%\Files\DevManView.exe" /%~1 "High Precision Event Timer"
"%Location%\Files\DevManView.exe" /%~1 "Composite Bus Enumerator"
"%Location%\Files\DevManView.exe" /%~1 "UMBus Root Bus Enumerator"
"%Location%\Files\DevManView.exe" /%~1 "SM Bus Controller"
"%Location%\Files\DevManView.exe" /%~1 "AMD SMBus"
"%Location%\Files\DevManView.exe" /%~1 "Intel SMBus"
"%Location%\Files\DevManView.exe" /%~1 "AMD PSP"
"%Location%\Files\DevManView.exe" /%~1 "Intel Management Engine"
"%Location%\Files\DevManView.exe" /%~1 "Microsoft Kernel Debug Network Adapter"
::-------------------------------------
::    Aç = %~1 : enable   | %~2: açılıyor   
:: Kapat = %~1 : disable  | %~2: kapatılıyor
::-------------------------------------
goto :eof

:R55_TakeOwnerShip
Call :LogSave "Hizmetleri Yönet" "Sahiplik Al %~2"
echo  ►%R%[96m Sahiplik Al %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
if %~1 EQU 0 (Call :delete "HKCR\*\shell\runas"
			  Call :delete "HKCR\Directory\shell\runas")
if %~1 EQU 1 (Call :vesz "HKCR\*\shell\runas" "Sahipliği Al" 
			  Call :sz "HKCR\*\shell\runas" "Icon" "imageres.dll,73" 
			  Call :sz "HKCR\*\shell\runas" "NoWorkingDirectory" "" 
			  Call :vesz "HKCR\*\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F" 
			  Call :sz "HKCR\*\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F" 
			  Call :vesz "HKCR\Directory\shell\runas" "Sahipliği Al" 
			  Call :sz "HKCR\Directory\shell\runas" "Icon" "imageres.dll,73" 
			  Call :sz "HKCR\Directory\shell\runas" "NoWorkingDirectory" "" 
			  Call :vesz "HKCR\Directory\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t" 
			  Call :sz "HKCR\Directory\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t")
::-------------------------------------
::    Aç = %~1: 1  | %~2: açılıyor 
:: Kapat = %~1: 0  | %~2: kapatılıyor 
::-------------------------------------
goto :eof

:R56_Yonet
Call :LogSave "Hizmetleri Yönet" "Sahiplik Al %~2"
echo  ►%R%[96m Sahiplik Al %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
if %~1 EQU 0 (Call :delete "HKCR\Directory\background\shell\Yonet")
if %~1 EQU 1 (Call :expandsz "HKCR\Directory\background\shell\Yonet" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\1.ico"
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
			  Call :PSExtract 1 "%Location%\Files\ico\RightClickYonet.zip" "%Windir%")
::-------------------------------------
::    Aç = %~1: 1  | %~2: açılıyor 
:: Kapat = %~1: 0  | %~2: kapatılıyor 
::-------------------------------------
goto :eof

:R57_RuntimeSettings
Call :LogSave "Hizmetleri Yönet" "Çalıştırma seçenekleri %~2"
echo  ►%R%[96m Çalıştırma seçenekleri %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
if %~1 EQU 0 (Call :delete "HKCR\exefile\shell\Priority")
if %~1 EQU 1 (Call :sz "HKCR\exefile\shell\Priority" "MUIVerb" "Çalıştırma Seçenekleri"
			  Call :sz "HKCR\exefile\shell\Priority" "SubCommands" ""
			  Call :sz "HKCR\exefile\shell\Priority" "Icon" "imageres.dll,109"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\001flyout" "Yüksek"
			  Call :sz "HKCR\exefile\Shell\Priority\shell\001flyout" "Icon" "%%%%windir%%%%\ico\5.ico"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\001flyout\command" "cmd /c start \"\" /High \"%%%%1\""
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\002flyout" "Normal Üstü"
			  Call :sz "HKCR\exefile\Shell\Priority\shell\002flyout" "Icon" "%%%%windir%%%%\ico\4.ico"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\002flyout\command" "cmd /c start \"\" /Abovenormal \"%%%%1\""
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\003flyout" "Normal"
			  Call :sz "HKCR\exefile\Shell\Priority\shell\003flyout" "Icon" "%%%%windir%%%%\ico\3.ico"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\003flyout\command" "cmd /c start \"\" /Normal \"%%%%1\""
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\004flyout" "Normal Altı"
			  Call :sz "HKCR\exefile\Shell\Priority\shell\004flyout" "Icon" "%%%%windir%%%%\ico\2.ico"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\004flyout\command" "cmd /c start \"\" /Belownormal \"%%%%1\""
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\005flyout" "Düşük"
			  Call :sz "HKCR\exefile\Shell\Priority\shell\005flyout" "Icon" "%%%%windir%%%%\ico\1.ico"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\005flyout\command" "cmd /c start \"\" /Low \"%%%%1\""
			  Call :PSExtract 1 "%Location%\Files\ico\RightClickYonet.zip" "%windir%")
::-------------------------------------
::    Aç = %~1: 1  | %~2: açılıyor 
:: Kapat = %~1: 0  | %~2: kapatılıyor 
::-------------------------------------
goto :eof

:R58_Terminal
Call :LogSave "Hizmetleri Yönet" "Terminal %~2"
echo  ►%R%[96m Terminal %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
if %OSCheck% EQU 10 (echo %R%[91m Windows 10'da kullanılamaz%R%[0m
					 timeout /t 2 /nobreak > NUL
					 goto :eof)
if %~1 EQU 0 (Call :delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked")
if %~1 EQU 1 (Call :sz "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" "{9F156763-7844-4DC4-B2B1-901F640F5155}" "")
::-------------------------------------
::    Aç = %~1: 1  | %~2: açılıyor 
:: Kapat = %~1: 0  | %~2: kapatılıyor 
::-------------------------------------
goto :eof

:R59_OldMenu
Call :LogSave "Hizmetleri Yönet" "Eski Windows menüsü %~2"
echo  ►%R%[96m Eski Windows menüsü %~2 ...%R%[0m&timeout /t 1 /nobreak > NUL
if %OSCheck% EQU 10 (echo %R%[91m Windows 10'da kullanılamaz%R%[0m
					 timeout /t 2 /nobreak > NUL
					 goto :eof)
if %~1 EQU 0 (Call :delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32")
if %~1 EQU 1 (Call :key "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32")
Call :ExplorerReset
::-------------------------------------
::    Aç = %~1: 1  | %~2: açılıyor 
:: Kapat = %~1: 0  | %~2: kapatılıyor 
::-------------------------------------
goto :eof


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:_TOOLBOX__DEPO__HANGAR_
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
dir /b "%ProgramData%\chocolatey\choco.exe" > NUL 2>&1
	if %errorlevel%==1 (Call :LogSave "Choco" "Chocolatey indirildi."
						echo  ► %R%[33m Chocolatey yükleniyor...%R%[0m
						%NSudo% Powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && set "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin")


%NSudo% Powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh'))" && set "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin")

(New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

echo    %R%[90m[Chocolatey]%R%[0m ►%R%[33m %~1%R%[0m indiriliyor %R%[90m/%R%[0m yükleniyor...
choco install -y --force --limit-output --cache-location=%download% --ignore-checksums %~1 > NUL
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget1
:: [%~1=Download Name] [%~2=Silent Install]
Call :InternetControl
Call :ToolboxFileChecker "%Location%\Files\wget.exe"
Call :LogSave "wget1" "%~1 indirildi."
echo    %R%[90m[Wget]%R%[0m ►%R%[33m %~n1%R%[0m indiriliyor %R%[90m/%R%[0m yükleniyor...
FOR /F "tokens=1" %%i in ('Findstr /C:"%~1" %Location%\Extra\Links.txt') do set link=%%i
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %download%\%~1
"%download%\%~1" %~2
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget2
:: [%~1=Download Name]
Call :InternetControl
Call :ToolboxFileChecker "%Location%\Files\wget.exe"
Call :LogSave "wget2" "%~1 indirildi."
echo    %R%[90m[Wget]%R%[0m ►%R%[33m %~n1%R%[0m indiriliyor %R%[90m/%R%[0m yükleniyor...
FOR /F "tokens=1" %%i in ('Findstr /C:"%~1" %Location%\Extra\Links.txt') do set link=%%i
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %download%\%~1
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget3
:: [%~1=Download Location] [%~n1: Download Name] [%~x1: İndirme uzantısı]
Call :InternetControl
Call :ToolboxFileChecker "%Location%\Files\wget.exe"
Call :LogSave "wget3" "%~n1 indirildi."
echo    %R%[90m[Wget]%R%[0m ►%R%[33m %~n1%R%[0m indiriliyor...
FOR /F "tokens=1" %%i in ('Findstr /C:"%~n1%~x1" %Location%\Extra\Links.txt') do set link=%%i
%Location%\Files\wget -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %~1
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget4
:: [%~1=Download Location] [%~n1: Download Name] [%~x1: İndirme uzantısı]
Call :InternetControl
Call :ToolboxFileChecker "%Location%\Files\wget.exe"
Call :LogSave "wget4" "%~n1 indirildi."
FOR /F "tokens=1" %%i in ('Findstr /C:"%~n1%~x1" %Location%\Extra\Links.txt') do set link=%%i
%Location%\Files\wget --no-check-certificate "%link%" -t 10 -O %~1 > NUL 2>&1
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wgetcontrol
dir /b "%Location%\Files\wget.exe" > NUL 2>&1
	if %errorlevel% EQU 1 (Call :PSDownload "%Location%\Files\wget.exe")
goto :eof

:: --------------------------------------------------------------------------------------------------------

:PSDownload
Call :InternetControl
Call :LogSave "PSDownload" "%~n1 indirildi."
echo    %R%[90m[Powershell]%R%[0m ►%R%[33m %~n1%R%[0m indiriliyor...
FOR /F "tokens=1" %%i in ('Findstr /C:"%~n1%~x1" %Location%\Extra\Links.txt') do set link=%%i
Call :Powershell "& { iwr %link% -OutFile %~1 }"
goto :eof

:: --------------------------------------------------------------------------------------------------------

:7ZipExtract
:: 7-zip ile üst düzey yetki kullanarak dosya çıkarma işlemi yapılamamaktadır.
::  %~1: Sıkıştırılmış dosyanın bulunduğu yer  |  %~2: Çıkarılacağı yer
"%Location%\Files\7z.exe" x "%~1" -o%~2 -y > NUL 2>&1
goto :eof

:: --------------------------------------------------------------------------------------------------------

:PSExtract
:: %~1: Yetki ayarı | %~2: Sıkıştırılmış dosyanın bulunduğu yer  |  %~3: Çıkarılacağı yer
if %~1 EQU 0 (Call :Powershell "Expand-Archive -Force '%~2' '%~3'")
if %~1 EQU 1 (%NSudo% Powershell -command "Expand-Archive -Force '%~2' '%~3'")
goto :eof

:: --------------------------------------------------------------------------------------------------------

:FileControl
dir /b "%~1" > NUL 2>&1
	if %errorlevel%==1 (Call :FileError)
goto :eof

:: --------------------------------------------------------------------------------------------------------

:Plugins
findstr /C:"PluginSetting= 0" %Location%\Settings.ini > NUL 2>&1
	if %errorlevel%==1 (goto :eof)
For /f "tokens=2" %%a in ('findstr /C:"Plugin" %Location%\Settings.ini') do (Call :sz "HKLM\SOFTWARE\WOW6432Node\%~1\Extensions\%%a" "update_url" "https://clients2.google.com/service/update2/crx")
goto :eof

:: --------------------------------------------------------------------------------------------------------

:MobileValue
echo.
set /p MobileValue=%R%[96m %~1 : %R%[0m
	if %MobileValue%==x (goto %~2)
	if %MobileValue%==X (goto %~2)
goto :eof

:: --------------------------------------------------------------------------------------------------------

:PSUpper.Variable
:: %~1: Değişken adı  | %~2: Girilen Hash Değeri
chcp 437 > NUL 2>&1
FOR /F %%a in ('Powershell -command "'%~2'.ToUpper()"') do (set %~1=%%a)
chcp 65001 > NUL 2>&1
goto :eof

:: --------------------------------------------------------------------------------------------------------
 
:InternetControl
if %InternetCheck% EQU 1 (goto :eof)
FOR /F "tokens=1" %%a in ('FIND "InternetControlPing" %Location%\Extra\Links.txt') do (set link=%%a)
ping -n 1 %link% > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m İnternet bağlantısı yok %R%[0m
						Call :LogSave "InternetControl" "HATA! İnternet bağlantısı yok."
						timeout /t 3 /nobreak > NUL
						goto :eof
)
goto :eof

:: --------------------------------------------------------------------------------------------------------

:ToolboxFileChecker
dir /b "%~1" > NUL 2>&1
	if %errorlevel% EQU 1 (Call :ToolboxFileError)
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

:ExplorerReset
taskkill /f /im explorer.exe > NUL 2>&1
Call :Powershell "Start-Process 'C:\Windows\explorer.exe'"
goto :EOF

:: --------------------------------------------------------------------------------------------------------

:LogSave
:: %~1: Bölüm adı | %~2: Bilgi kısmı
if %LogsSettings%==1 (goto :eof)
echo [%date% - %time%] ^| %~1 ^| %~2 >> %Location%\Logs
goto :eof

:: --------------------------------------------------------------------------------------------------------

:Powershell
:: Powershell komutları kullanıldığında komut istemi compact moda girmektedir. Bunu önlemek için karakter takımları arasında geçiş yapıyoruz.
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:RegSave
for /f "skip=2 tokens=2" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set regtur=%%a
for /f "skip=2 tokens=3" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set deger=%%a
reg query "%~2" /v "%~3" /s > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~2" /v "%~3" /t %regtur% /d "%deger%" /f ^> NUL 2^>^&1 >> %Location%\Files\Yedek\%~1.bat)
	if %errorlevel%==1 (echo reg delete "%~2" /v "%~3" /f ^> NUL 2^>^&1 >> %Location%\Files\Yedek\%~1.bat)
reg add "%~2" /v "%~3" /t %~4 /d "%~5" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~2" /v "%~3" /t %~4 /d "%~5" /f)
::-------------------------------------
::  Bu bölüm eklenecek regedit kaydını okur ve var olan değeri yedekler.
::  Eklenecek bütün regedit değerleri buraya yönlendirilir. Yalnızca %~3 değerinde boşluk varsa RegSave_space bölümüne yönlendirilir.
::  %~1 : Yedek kayıt dosya adı  | %~2: Regedit yolu  | %~3: Regedit Adı  | %~4: Regedit Türü  | %~5: Regedit Veri
::  Regtur: Regedit Türü  | deger: Regedit Veri
::-------------------------------------
goto :eof

:RegSave_ve
:: Varsayılan regedit değerleri için kullanılır.
for /f "skip=2 tokens=2" %%a in ('reg query "%~2" /ve 2^> NUL') do set regtur=%%a
for /f "skip=2 tokens=3" %%a in ('reg query "%~2" /ve 2^> NUL') do set deger=%%a
reg query "%~2" /ve > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~2" /ve /t %regtur% /d "%deger%" /f ^> NUL 2^>^&1 >> %Location%\Files\Yedek\%~1.bat)
	if %errorlevel%==1 (echo reg delete "%~2" /ve /f ^> NUL 2^>^&1 >> %Location%\Files\Yedek\%~1.bat)
reg add "%~2" /ve /t %~3 /d "%~4" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~2" /ve /t %~3 /d "%~4" /f)
::-------------------------------------
::  Bu bölüm eklenecek regedit kaydını okur ve var olan değeri yedekler.
::  %~3 değeri varsayılan olan regedit değerleri buraya yönlendirilir.
::  %~1 : Yedek kayıt dosya adı  | %~2: Regedit yolu  | %~3: Regedit Adı  | %~4: Regedit Türü  | %~5: Regedit Veri
::  Regtur: Regedit Türü  | deger: Regedit Veri
::-------------------------------------
goto :eof

:RegSave_Delete_Key
reg query %~2 > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~2" /f ^> NUL 2^>^&1 >> %Location%\Files\Yedek\%~1.bat)
reg delete "%~2" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg delete "%~2" /f)
::-------------------------------------
::  Bu bölüm silinecek regedit kaydını okur ve var olan değeri yedekler.
::  %~1 : Yedek kayıt dosya adı  | %~2: Regedit yolu
::-------------------------------------
goto :eof

:RegSave_Delete
for /f "skip=2 tokens=2" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set regtur=%%a
for /f "skip=2 tokens=3" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set deger=%%a
reg query "%~2" /v "%~3" /s > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~2" /v "%~3" /t %regtur% /d "%deger%" /f ^> NUL 2^>^&1 >> %Location%\Files\Yedek\%~1.bat)
reg delete "%~2" /v "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg delete "%~2" /v "%~3" /f)
::-------------------------------------
::  Bu bölüm silinecek regedit kaydını okur ve var olan değeri yedekler.
::  %~1 : Yedek kayıt dosya adı  | %~2: Regedit yolu | %~3: Regedit Adı
::  Regtur: Regedit Türü  | deger: Regedit Veri
::-------------------------------------
goto :eof

:RegSave_space
:: Regedit kaydında %~2 değerinde boşluk olduğunda bu bölüm kullanılır.
for /f "skip=2 tokens=3" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set regtur=%%a
for /f "skip=2 tokens=4" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set deger=%%a
reg query "%~2" /v "%~3" /s > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~2" /v "%~3" /t %regtur% /d "%deger%" /f ^> NUL 2^>^&1 >> %Location%\Files\Yedek\%~1.bat)
	if %errorlevel%==1 (echo reg delete "%~2" /v "%~3" /f ^> NUL 2^>^&1 >> %Location%\Files\Yedek\%~1.bat)
reg add "%~2" /v "%~3" /t %~4 /d "%~5" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~2" /v "%~3" /t %~4 /d "%~5" /f)
::-------------------------------------
::  Bu bölüm eklenecek regedit kaydını okur ve var olan değeri yedekler.
::  %~3 değerinde boşluk varsa RegSave_space bölümüne yönlendirilir.
::  %~1 : Yedek kayıt dosya adı  | %~2: Regedit yolu  | %~3: Regedit Adı  | %~4: Regedit Türü  | %~5: Regedit Veri
::  Regtur: Regedit Türü  | deger: Regedit Veri
::-------------------------------------
goto :eof

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

:SV
set DL=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[100m %R%[0m%R%[90m -%R%[33m
set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[100m %R%[0m%R%[90m -%R%[33m
set DO=%R%[90m[%R%[36m A %R%[90m]%R%[100m %R%[0m%R%[90m -%R%[33m
set SO=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]  -%R%[33m
goto :eof

:SVCheck_Left
For %%a in (%~1) do (reg query "HKLM\SYSTEM\CurrentControlSet\Services\%%a" /v "Start" | Findstr /i 4 > NUL 2>&1)
	if %errorlevel% EQU 1 (set DL=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_Right
For %%a in (%~1) do (reg query "HKLM\SYSTEM\CurrentControlSet\Services\%%a" /v "Start" | Findstr /i 4 > NUL 2>&1)
	if %errorlevel% EQU 1 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_Capabilities
FOR /F "tokens=3" %%a in ('Findstr /i "%~1" %Logs%\Capabilities.txt') do (echo %%a | Findstr /i "Installed" > NUL 2>&1)
	if %errorlevel% EQU 0 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_Features
FOR /F "tokens=3" %%a in ('Findstr /i "%~1" %Logs%\Features.txt') do (echo %%a | Findstr /i "Enabled" > NUL 2>&1)
	if %errorlevel% EQU 0 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_RegLeft
for /f "skip=1 tokens=3" %%a in ('reg query "%~1" /v "%~2"') do (echo %%a | findstr /i "%~3" > NUL 2>&1)
	if %errorlevel% EQU 1 (set DL=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_RegRight
for /f "skip=1 tokens=3" %%a in ('reg query "%~1" /v "%~2"') do (echo %%a | findstr /i "%~3" > NUL 2>&1)
	if %errorlevel% EQU 1 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_RegRight_Ozel
reg query "%~1" /v "%~2" > NUL 2>&1
	if %errorlevel% EQU 0 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
	if %errorlevel% EQU 1 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[100m %R%[0m%R%[90m -%R%[33m)
goto :eof

:SVCheck_RegRight_Ozel2
reg query %~1 > NUL 2>&1
	if %errorlevel% EQU 0 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
	if %errorlevel% EQU 1 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[100m %R%[0m%R%[90m -%R%[33m)
goto :eof

:SVCheck_Power
powercfg -list | findstr /C:"%~1" > NUL 2>&1
	if %errorlevel%==0 (set DO=%R%[90m[%R%[36m A %R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_Memory
findstr /i "%~1" %Logs%\mc > NUL 2>&1
	if %errorlevel%==1 (set DL=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_Compact
Compact /CompactOS:Query | Findstr /i "The system is not in the Compact state" > NUL 2>&1
	if %errorlevel%==0 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[100m %R%[0m%R%[90m -%R%[33m)
	if %errorlevel%==1 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_hosts
Findstr /i "telemetry.microsoft.com" %windir%\System32\drivers\etc\hosts > NUL 2>&1
	if %errorlevel%==0 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
	if %errorlevel%==1 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[100m %R%[0m%R%[90m -%R%[33m)
goto :eof

:SVCheck_OS10
if %OSCheck% EQU 10 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[101m %R%[0m%R%[90m -%R%[33m)
goto :eof

:SVCheck_OS11
if %OSCheck% EQU 11 (set DR=%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[101m %R%[0m%R%[90m -%R%[33m)
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:ToolboxSettings
cls
mode con cols=55 lines=21
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                 Toolbox Ayarları                  %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
set SD=%R%[100m %R%[0m&FOR /F "tokens=2" %%a in ('findstr /C:"AutoUpdate" %Location%\Settings.ini') do (if %%a EQU 0 (set SD=%R%[32m♦%R%[0m))
echo  %R%[90m│   %R%[32m 1%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[0m%SD%%R%[90m -%R%[33m Otomatik Güncelleme                  %R%[90m│%R%[0m
set SD=%R%[100m %R%[0m&FOR /F "tokens=2" %%a in ('findstr /C:"LogsSettings" %Location%\Settings.ini') do (if %%a EQU 0 (set SD=%R%[32m♦%R%[0m))
echo  %R%[90m│   %R%[32m 2%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[0m%SD%%R%[90m -%R%[33m Log Kayıt                            %R%[90m│%R%[0m
set SD=%R%[100m %R%[0m&FOR /F "tokens=2" %%a in ('findstr /C:"PluginSetting" %Location%\Settings.ini') do (if %%a EQU 0 (set SD=%R%[32m♦%R%[0m))
echo  %R%[90m│   %R%[32m 3%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[0m%SD%%R%[90m -%R%[33m Tarayıcı eklenti ayarı               %R%[90m│%R%[0m
set SD=%R%[100m %R%[0m&FOR /F "tokens=2" %%a in ('findstr /C:"Chocolatey" %Location%\Settings.ini') do (if %%a EQU 0 (set SD=%R%[32m♦%R%[0m))
echo  %R%[90m│   %R%[32m 4%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[0m%SD%%R%[90m -%R%[33m Chocolatey yükleme sistemi           %R%[90m│%R%[0m
set SD=%R%[100m %R%[0m&FOR /F "tokens=2" %%a in ('findstr /C:"InternetCheck" %Location%\Settings.ini') do (if %%a EQU 0 (set SD=%R%[32m♦%R%[0m))
echo  %R%[90m│   %R%[32m 5%R%[90m[%R%[36mA%R%[90m/%R%[36mK%R%[90m]%R%[0m%SD%%R%[90m -%R%[33m İnternet bağlantı kontrolü           %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m 6%R%[90m -%R%[33m Masaüstünde kısayol oluştur          %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m 7%R%[90m -%R%[33m Güncellemeleri Kontrol Et            %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│         %R%[32m 8%R%[90m -%R%[33m Toolbox Rehber                       %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m 9%R%[90m -%R%[33m Güncelleme Notları                   %R%[90m│%R%[0m
echo  %R%[90m│        %R%[32m 10%R%[90m -%R%[33m Hakkımda-İletişim                    %R%[90m│%R%[0m
echo  %R%[90m│         %R%[32m X%R%[90m -%R%[36m Menü                                 %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value=%R%[92m  İşlem : %R%[0m
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
	if %value%==5a (Call :ToolboxSettingsChange InternetCheck 0)
	if %value%==5A (Call :ToolboxSettingsChange InternetCheck 0)
	if %value%==5K (Call :ToolboxSettingsChange InternetCheck 1)
	if %value%==5k (Call :ToolboxSettingsChange InternetCheck 1)
	if %value%==6 (Call :7ZipExtract "%Location%\Files\lnk.zip" "C:\users\%username%\Desktop")
	if %value%==7 (Call :UpdateReset
				   goto OgnitorenKs.Toolbox)
	if %value%==8 (start https://ognitorenks.com.tr/2022/04/ognitorenks-toolbox-windows-yardimcisi.html)
	if %value%==9 (start https://github.com/OgnitorenKs/OgnitorenKs.Toolbox/blob/main/Release.Notes.md)
	if %value%==10 (start https://ognitorenks.com.tr/iletisim)
	if %value%==x goto OgnitorenKs.Toolbox
	if %value%==X goto OgnitorenKs.Toolbox
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

:UpdateAfter
cls
Rename "%Location%\Files\Yedek\Update.bat" "Update.%Date%.bat" > NUL 2>&1
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
echo %R%[92m Defender dosyaları siliniyor...%R%[0m
%NSudo% DEL /F /Q /A "%windir%\System32\CompatTelRunner.exe" "%windir%\System32\drivers\MsSecFlt.sys" "%windir%\System32\drivers\WdBoot.sys" "%windir%\System32\drivers\WdFilter.sys" "%windir%\System32\drivers\WdNisDrv.sys" "%windir%\System32\smartscreen.exe" "%windir%\System32\securityhealthhost.exe" "%windir%\System32\securityhealthservice.exe" "%windir%\System32\securityhealthsystray.exe" "%windir%\System32\SgrmBroker.exe"
%NSudo% RD /S /Q "%programfiles%\Windows Defender Advanced Threat Protection" "%programfiles%\Windows Defender" "%programfiles%\Windows Security" "%programfiles(x86)%\Windows Security" "%programfiles(x86)%\Windows Defender" "%programfiles(x86)%\Windows Defender Advanced Threat Protection" "%programdata%\Microsoft\Windows Security Health" "%programdata%\Microsoft\Windows Defender Advanced Threat Protection" "%programdata%\Microsoft\Windows Defender" "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy"
echo %R%[92m Hizmetler düzenleniyor...%R%[0m
:: Silinecek servisler
FOR %%a in (SecurityHealthService Sense SgrmBroker WdNisSvc WinDefend wscsvc DiagTrack dmwappushservice diagnosticshub.standartcollector.service diagsvc) do (
	%NSudo% net stop %%a
	%NSudo% sc delete %%a
)
:: Kapatılacak servisler
FOR %%b in (SCardSvr ScDeviceEnum SCPolicySvc CertPropSvc AJRouter PeerDistSvc WalletService TrkWks WpcMonSvc PimIndexMaintenanceSvc EntAppSvc edgeupdate MicrosoftEdgeElevationService RetailDemo PcaSvc DPS SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc WerSvc CscService SEMgrSvc TroubleshootingSvc MapsBroker Themes workfolderssvc) do (
	%NSudo% sc config %%a start= disabled
	%NSudo% net stop %%a /y
)

echo %R%[92m Regedit kayıtları düzenleniyor.%R%[0m
:: Defender
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" "DisableNotifications" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" "DisableEnhancedNotifications" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows Security Health\State" "AccountProtection_MicrosoftAccount_Disconnected" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender" "DisableAntiSpyware" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender" "DisableAntiVirus" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" "TamperProtection" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" "TamperProtectionSource" REG_DWORD 0x2
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender\Signature Updates" "FirstAuGracePeriod" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender\UX Configuration" "DisablePrivacyMode" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" "SecurityHealth" REG_BINARY "030000000000000000000000"
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\MRT" "DontOfferThroughWUAU" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\MRT" "DontReportInfectionInformation" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" "HideSystray" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" "DisableAntiSpyware" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" "PUAProtection" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" "RandomizeScheduleTaskTimes" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions" "DisableAutoExclusions" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\MpEngine" "MpEnablePus" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" "LocalSettingOverridePurgeItemsAfterDelay" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" "PurgeItemsAfterDelay" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableBehaviorMonitoring" REG_DWORD 0x1 
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableIOAVProtection" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableOnAccessProtection" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRealtimeMonitoring" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRoutinelyTakingAction" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableScanOnRealtimeEnable" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" "Scan_ScheduleDay" REG_DWORD 0x8
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" "Scan_ScheduleTime" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "AdditionalActionTimeOut" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "CriticalFailureTimeOut" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "DisableEnhancedNotifications" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "DisableGenericRePorts" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "NonCriticalTimeOut" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "AvgCPULoadFactor" REG_DWORD 0x10
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableArchiveScanning" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableCatchupFullScan" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableCatchupQuickScan" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableRemovableDriveScanning" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableRestorePoint" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableScanningMappedNetworkDrivesForFullScan" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableScanningNetworkFiles" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "PurgeItemsAfterDelay" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScanOnlyIfIdle" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScanParameters" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScheduleDay" REG_DWORD 0x8
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScheduleTime" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "DisableUpdateOnStartupWithoutEngine" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "ScheduleDay" REG_DWORD 0x8
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "ScheduleTime" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "SignatureUpdateCatchupInterval" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SpyNet" "DisableBlockAtFirstSeen" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "LocalSettingOverrideSpynetReporting" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReporting" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReportingLocation" REG_MULTI_SZ 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SubmitSamplesConsent" REG_DWORD 0x2
:: SmartScreen
::for "tokens=* USEBACKQ" %i in (`wmic.exe useraccount where "name="%username%"" get sid ^| findstr "S-"`) do set currentusername=%i
::set currentusername=%currentusername:~0,-3%
Call :Powershell "Get-CimInstance -ClassName Win32_UserAccount | Select-Object -Property Name,SID" > %Logs%\cusername
FOR /F "tokens=2" %%a in ('Find "%username%" %Logs%\cusername') do set currentusername=%%a
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" REG_DWORD 0x0
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" REG_DWORD 0x0
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Security Health\State" "AppAndBrowser_StoreAppsSmartScreenOff" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "SmartScreenEnabled" REG_SZ "Off"
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "SmartScreenEnabled" REG_SZ "Off"
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" "EnabledV9" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" "PreventOverride" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" "EnabledV9" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" "PreventOverride" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "EnableSmartScreen" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControl" REG_SZ "Anywhere"
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControlEnabled" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "ContentEvaluation" REG_DWORD 0x0
:: Update
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "IsExpedited" REG_DWORD 0x0 & :: Güncellemenin yüklenmesi gerektiğinde bilgisayarı mümkün olan en kısa sürede devre dışı bırak
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "RestartNotificationsAllowed2" REG_DWORD 0x0 & :: Güncelleme sonrası yeniden başlatma bildirimi devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "ModelDownloadAllowed" REG_DWORD 0x0 & :: Konuşma modellerinin günceleştirmeleri devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" REG_DWORD 0x2 & :: Driverlar kurulu değil ise kurulması için ayarlanıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "NoAutoUpdate" REG_DWORD 0x0 & :: Update Manuel
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "AUOptions" REG_DWORD 0x2 & :: Update Manuel
:: Cortana
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" REG_DWORD 0x0
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" REG_DWORD 0x0 & :: Cortana - Oturum açtığım cihazlar geçmişimi kullan
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" REG_DWORD 0x0 & :: Cortana - Cihaz değiştirirken etkinlik önerileri
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaConsent" REG_DWORD 0x0
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaceable" REG_DWORD 0x1
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaced" REG_DWORD 0x1
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "SearchboxTaskbarMode" REG_DWORD 0x0
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" REG_DWORD 0x1
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI" "EnableCortana" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaConsent" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaceable" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaced" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "SearchboxTaskbarMode" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\AboveLock" "AllowCortanaAboveLock" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Experience" "AllowCortana" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "ModelDownloadAllowed" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" "AllowInputPersonalization" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCloudSearch" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortana" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortanaAboveLock" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchPrivacy" REG_DWORD 0x3
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchSafeSearch" REG_DWORD 0x3
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" "AllowCortana" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" "AllowCortanaAboveLock" REG_DWORD 0x0
:: Taskbar
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowTaskViewButton" REG_DWORD 0x0 & :: Görev Görünümü Simgesi Kaldırılıyor...
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "MMTaskbarEnabled" REG_DWORD 0x1 & :: Görev Çubuğu ve bütün simgeleri tüm monitörlerde göster
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "MMTaskbarMode" REG_DWORD 0x0 & :: Görev Çubuğu ve bütün simgeleri tüm monitörlerde göster
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" "EnableTransparency" REG_DWORD 0x0 & :: Görev çubuğu transparan özelliği devre dışı bırakılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowCortanaButton" REG_DWORD 0x0 & :: Cortana Butonu kaldırılıyor...
:: Explorer
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "LaunchTo" REG_DWORD 0x1 & :: Explorer "Bu Bilgisayar" olarak ayarlanıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" "EnthusiastMode" REG_DWORD 0x1 & :: Dosya kopyalama iletişim kutusuda daha fazla detay göster olarak ayarlanıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "HideFileExt" REG_DWORD 0x0 & :: Dosya uzantıları aktifleştiriliyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" "DisableAutoplay" REG_DWORD 0x1 & :: Otomatik oynatma kapatılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoRecentDocsHistory" REG_DWORD 0x0 & :: Son açılan belgelerin geçmişi kapatılıyor...
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "ClearRecentDocsOnExit" REG_DWORD 0x1 & :: Windows'u kapatırken yeni açılan belgelerin geçmişini temizle aktifleştiriliyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowRecent" REG_DWORD 0x0 & :: Son kullanılan dosyaların hızlı erişimde görüntülenmesi engelleniyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowFrequent" REG_DWORD 0x0 & :: Hızlı Erişimden Sık Kullanılan klasörler kaldırılıyor
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "Link" REG_BINARY "00000000"& :: Kısayol yazısı kaldırılıyor...
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoInternetOpenWith" REG_DWORD 0x1 & :: Birlikte aç seçeneğinden internette ara seçeneği kaldırılıyor...
:: Search
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" REG_DWORD 0x1 & :: Arama bölümü simge haline getiriliyor
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" REG_DWORD 0x1 & :: Web araması kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" REG_DWORD 0x0 & :: Web'de arama yapmayın veya Arama'da web sonuçlarını görüntülemeyin
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowIndexingEncryptedStoresOrItems" REG_DWORD 0x0 & :: Şifrelenmiş dosyaların indekslenme izni kaldırılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" REG_DWORD 0x0 & :: Arama ve Cortana'nın Locationu kullanma izni kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AlwaysUseAutoLangDetection" REG_DWORD 0x0 & :: İçeriği ve özellikleri dizine eklerken her zaman otomatik dil algılamayı kullanın kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaConsent" REG_DWORD 0x0 & :: Cortana izni kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaInAmbientMode" REG_DWORD 0x0 & :: Cortana Ortam modu kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "AllowSearchToUseLocation" REG_DWORD 0x0 & :: Arama bölümünün Locationu kullanması engelleniyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" "SafeSearchMode" REG_DWORD 0x0 & :: Güvenli arama modu kapatılıyor.
Call :RegSave Update "HKCU\Software\Policies\Microsoft\Windows\Explorer" "DisableSearchBoxSuggestions" REG_DWORD 0x1 & :: Dosya Gezgini arama kutusundaki son arama girişlerinin görüntülenmesini kapatın
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" REG_DWORD 0x1 & :: Web araması kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" REG_DWORD 0x0 & :: Tarifeli bağlantılar üzerinden aramada web'de arama yapmayın veya web sonuçlarını görüntülemeyin
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCloudSearch" REG_DWORD 0x0 & :: Bulut arama kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "AcceptedPrivacyPolicy" REG_DWORD 0x0 & :: Gizlilik politikası devre dışı bırakılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "VoiceActivationDefaultOn" REG_DWORD 0x0 & :: Sesle etkinleştirme kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "VoiceActivationEnableAboveLockscreen" REG_DWORD 0x0 & :: Kilit Ekranının Üstünde Sesle Etkinleştirme kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" "DisableVoice" REG_DWORD 0x1 & :: Ses etkinleştirme kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "BingSearchEnabled" REG_DWORD 0x0 & :: Arama - Bing web sonuçlarını dahil et kapatılıyor...
:: Optimizasyon
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" REG_DWORD 0x0 & :: Hiberboot Devre Dışı bırakılıyor
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" REG_DWORD 0x0 & :: Hazırda bekletme özelliği devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" "ShowHibernateOption" REG_DWORD 0x0 & :: Kapatma menüsü - Hibernate kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" "ShippedWithReserves" REG_DWORD 0x0 & :: Ayrılmış depolama alanı devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" REG_DWORD 0x0 & :: Prefetch devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" REG_DWORD 0x0 & :: Prefetch devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" REG_DWORD 0x0 & :: Startup Delay (Başlangıç Gecikmesi) devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" REG_DWORD 0x0 & :: Qos Limiti Devre Dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" "LongPathsEnabled" REG_DWORD 0x1 & :: Windows 255 Karakter Sınırı devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" REG_DWORD 0x0 & :: DiagTrack Devre Dışı bırakılıyor...
Call :RegSave Update "HKCU\Software\Microsoft\Narrator\QuickStart" "SkipQuickStart" REG_DWORD 0x1 & :: Narrator QuickStart kapatılıyor.
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SoftLandingEnabled" REG_DWORD 0x0 & :: Windows önerileri devre dışı bırakılıyor...
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-310093Enabled" REG_DWORD 0x0 & :: Windows karşılama deneyimi kapatılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisablePCA" REG_DWORD 0x1 & :: Program uyumluluk yardımcısı devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableUAR" REG_DWORD 0x1 & :: Program uyumluluk yardımcısı devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "HwSchMode" REG_DWORD 0x2 & :: Donanım hızlandırmalı GPU Planlaması aktifleştiriliyor...
Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseSpeed" REG_SZ 0 & :: İşaretçi hassasiyeti devre dışı bırakılıyor...
Call :RegSave Update "HKCU\Control Panel\Desktop" "AutoEndTasks" REG_SZ 1 & :: Kapatma işleminde uygulamalar açık ise otomatik kapat ve bekleme süresi azaltılıyor
Call :RegSave Update "HKCU\Control Panel\Desktop" "HungAppTimeout" REG_SZ "3000" & :: Uygulamalar cevap vermediği zaman görevi sonlandır seçeneğine basılmadan önceki bekleme süresini kısaltır.
Call :RegSave Update "HKCU\Control Panel\Desktop" "WaitToKillAppTime" REG_SZ "10000" & :: Bilgisayar kapatılırken ya da oturumdan çıkılırken kullanıcı uygulamalarının kapatılması için sistem bekleme süresini kısaltır.
Call :RegSave Update "HKCU\Control Panel\Desktop" "LowLevelHooksTimeout" REG_SZ "4000" & :: Cevap vermeyen hizmetlerin kapatılmasından önceki sistem bekleme süresini kısaltır.
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control" "WaitToKillServiceTimeout" REG_SZ "2000" & :: Bilgisayarın kapatılması sırasında durdurulacak hizmetler uyarısı geldiğinde, uygulamaların kapanması için beklenen süreyi kısaltır.
Call :RegSave Update "HKCU\Control Panel\Desktop" "MenuShowDelay" REG_SZ "0" & :: Menü gösterimi bekleme süresini azaltır. Böylelikle tıklandığı zaman menüler daha hızlı gelecek.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoLowDiskSpaceChecks" REG_DWORD 0x1 & :: Düşük Depolama alanı uyarısı devre dışı bırakılıyor...
Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseHoverTime" REG_SZ 100 & :: Farenizle birlikte bir nesnenin üzerine geldiğinizde görülen açıklamanın çıkış süresini kısaltır
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "LinkResolveIgnoreLinkInfo" REG_DWORD 0x1 & :: Bilgisayarınızda mevcut olmayan programlara ait kısayolların bağlantısının Windows tarafından boşa vakit harcanarak aranmasını önler
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveSearch" REG_DWORD 0x1 & :: Kısayol bağlantı sorununu çözmek için Windows'un diski aramasını önler
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveTrack" REG_DWORD 0x1 & :: Kısayol bağlantı sorununu çözmek için Windows'un NTFS dosya sisteminin izleme özelliğini kullanmasını engeller
Call :RegSave Update "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours" "Enable" REG_DWORD 0x1 & :: Odak Yardımı aktifleştiriliyor
:: Store
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "ContentDeliveryAllowed" REG_DWORD 0x0 & :: 3.Parti Market uygulamalarının yeniden yüklenmesi engelleyen bölüm
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "FeatureManagementEnabled" REG_DWORD 0x0 & :: 3.Parti Market uygulamalarının yeniden yüklenmesi engelleyen bölüm
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEverEnabled" REG_DWORD 0x0 & :: 3.Parti Market uygulamalarının yeniden yüklenmesi engelleyen bölüm
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "OemPreInstalledAppsEnabled" REG_DWORD 0x0 & :: Önceden yüklenmiş OEM uygulamalar devre dışı bırakılıyor...
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEnabled" REG_DWORD 0x0 & :: Önceden yüklenmiş OEM uygulamalar (Minecraft, CandyCrush, Flipboard) kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SilentInstalledAppsEnabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-314559Enabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338387Enabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338388Enabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338389Enabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContentEnabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPane RecommendionsEnabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "AutoDownload" REG_DWORD 2 & :: Market otomatik güncelleştirme kapatır.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" REG_DWORD 0x1 & :: Market otomatik güncelleştirme kapatır.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "Migrated" REG_DWORD 0x4 & :: Uygulamaların arka planda çalışması engelleniyor...
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "GlobalUserDisabled" REG_DWORD 0x1 & :: Uygulamaların arka planda çalışması engelleniyor...
:: Gizlilik
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" REG_DWORD 0x0 & :: Ayarlar uygulamasın önerilen içeriği göstermesi kapatılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353694Enabled" REG_DWORD 0x0 & :: Ayarlar uygulamasın önerilen içeriği göstermesi kapatılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353696Enabled" REG_DWORD 0x0 & :: Ayarlar uygulamasın önerilen içeriği göstermesi kapatılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache" "OsuRegistrationStatus" REG_DWORD 0x0 & :: Bağlanmak için Hotspot 2.0 Çevrimiçi kaydolmayı kullanın kapatılıyor
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackProgs" REG_DWORD 0x0 & :: Başlangıç ve arama sonuçlarını iyileştirmek için Windows izleme uygulamasının başlatılmasına izin verin kapatılıyor
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPaneSuggestionsEnabled" REG_DWORD 0x0 & :: Başlangıçtaki ara sıra öneriler kapatılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" "ScoobeSystemSettingEnabled" REG_DWORD 0x0 & :: Cihazımın kurulumunu çevrimiçi olarak tamamlayabileceğim yollar öner kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableCloudOptimizedContent" REG_DWORD 0x1 & :: Programlanabilir Görev Çubuğu özelliği devre dışı bırakılıyor.
Call :RegSave Update "HKCU\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" "OptInOrOutPreference" REG_DWORD 0x0 & :: Deneyim geliştirme programına izin ver(NVIDIA Sürücüsü) kapatılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowExperimentation" REG_DWORD 0x0 & :: Deneylere izin ver kapatılıyor
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Input\TIPC" "Enabled" REG_DWORD 0x0 & :: Gelecekte yazmayı iyileştirmenize yardımcı olması için nasıl yazdığım hakkında Microsoft'a bilgi gönderme kapatılıyor.
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" REG_DWORD 0x0 & :: Geri Bildirim frekansı kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" REG_DWORD 0x0 & :: Giriş verilerinizi Microsoft'a göndererek konuşma, yazma ve mürekkepleme girişinizi kişiselleştirin kapatılıyor
Call :RegSave Update "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" REG_DWORD 0x0 & :: Giriş verilerinizi Microsoft'a göndererek konuşma, yazma ve mürekkepleme girişinizi kişiselleştirin kapatılıyor
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowLocation" REG_DWORD 0x0 & :: Konum Hizmetlerini kapatılıyor...
Call :RegSave Update "HKCU\Control Panel\International\User Profile" "HttpAcceptLanguageOptOut" REG_DWORD 0x1 & :: Kullanıcı dil listesine erişerek web sitelerinin yerel olarak alakalı içerik sağlaması engelleniyor.
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" "UserAuthPolicy" REG_DWORD 0x0 & :: Kullanıcının diğer cihazlardaki uygulamaları açması engelleniyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" "FPEnabled" REG_DWORD 0x0 & :: Okumayı iyileştirmek, taramayı hızlandırmak için sayfa tahminini kullanın. Göz Atma Verilerinin Microsoft'a Gönderilmesi engelleniyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" "Skype-UserConsentAccepted" REG_DWORD 0x0 & :: Skype Kişiler bağlantısı devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" REG_DWORD 0x1 & :: Sponsorlu uygulamaların otomatik kurulumu (Tüketici Deneyimi)
Call :RegSave Update "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" REG_DWORD 0x1 & :: Sponsorlu uygulamaların otomatik kurulumu (Tüketici Deneyimi)
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" REG_DWORD 0x0 & :: Tanılama verilerinizi kullanarak Microsoft'un ilgili ipuçları ve önerilerle daha özel deneyimler sunmasına izin verin.
Call :RegSave Update "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" REG_DWORD 0x0 & :: Tanılama verilerinizi kullanarak Microsoft'un ilgili ipuçları ve önerilerle daha özel deneyimler sunmasına izin verin.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" REG_DWORD 0x0 & :: Telemetry Devre Dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy" REG_DWORD 0x1 & :: Uygulamaların uygulamalardaki deneyimler için kullanıcı reklam kimliğini kullanması engelleniyor.
Call :RegSave Update "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" REG_DWORD 0x0 & :: Windows ve Cortana'nın sizi daha iyi anlamasına izin vermek için kişileri toplama kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" REG_DWORD 0x1 & :: Windows ve Cortana'nın sizi daha iyi anlamasına izin vermek için yazılı metin (mürekkep) toplayın kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" REG_DWORD 0x1 & :: Windows ve Cortana'nın sizi daha iyi anlamasına izin vermek için yazılı metni toplayın.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "EnableActivityFeed" REG_DWORD 0x0 & :: Windows'un bu bilgisayardan etkinliklerimi toplamasına izin ver (Zaman çizelgesi)
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackDocs" REG_DWORD 0x0 & :: Windows'un sıçrama listelerini doldurmak için açılan belgeleri izlemesi kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" "AllowInputPersonalization" REG_DWORD 0x0 & :: Çevrimiçi konuşma hizmetleri devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" "WiFiSenseOpen" REG_DWORD 0x0 & :: Önerilen açık sıcak noktalara otomatik bağlan kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" "value" REG_DWORD 0x0 :: Önerilen açık sıcak noktalara otomatik bağlan kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" "PaidWifi" REG_DWORD 0x0 & :: Ücretli ağ hizmetlerinin mevcut olup olmadığını görmek için geçici olarak erişim noktalarına otomatik olarak bağlanma kapatılıyor.
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Input\Settings" "InsightsEnabled" REG_DWORD 0x0 & :: İçgörüsel yazma engelleniyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" "DisableFileSyncNGSC" REG_DWORD 0x1 & :: OneDrive Eşitlemesi devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" "Start" REG_DWORD 0x0 & :: AutoLogger devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" REG_DWORD 0x1 & :: Windows Hata Raporlama devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" REG_DWORD 0x0 & :: Wifi Hotspot Raporlama devre dışı bırakılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" REG_DWORD 0x0 & :: Windows Reklam Kimliğini devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" REG_DWORD 0x0 & :: Müşteri Deneyim Programı devre dışı bırakırılıyor...
Call :RegSave_Delete_Key Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" & ::Metadata izleme dosyaları kaldırılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "PublishUserActivities" REG_DWORD 0x0 & :: Windows'un bilgisayardaki etkinlikleri toplaması engelleniyor...
Call :RegSave Update "HKLM\Software\Policies\Microsoft\Windows\System" "EnableActivityFeed" REG_DWORD 0x0 & :: Windows'un bilgisayardaki etkinlikleri toplaması engelleniyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Start" "HideRecentJumplists" REG_DWORD 0x1 & :: Atlama Listelerinde en son açılan öğeler engelleniyor...
Call :RegSave Update "HKCU\Software\Policies\Microsoft\Windows\Explorer\NoBalloonFeatureAdvertisements" "NoBalloonFeatureAdvertisements" REG_DWORD 0x1 & :: Özellik reklam balonu bildirimlerini kapatılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" "PreventHandwritingErrorReports" REG_DWORD 0x1 & :: El yazısı hata raporlarının paylaşımını devre dışı bırak 
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" "PreventHandwritingDataSharing" REG_DWORD 0x1 & :: El yazısı verilerinin paylaşımını devre dışı bırak
:: Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableInventory" 0x1 & :: Envanter Toplayıcıyı Devre Dışı Bırak
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "01" 0x0 & :: Depolama algısı
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "04" 0x0 & :: Depolama algısı - Uygulamaların kullanmadığı geçici dosyaları sil
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "256" 0x0 & :: Geri dönüşüm kutusu uzun süre doluysa temizle
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "512" 0x0 & :: Depolama algısı
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "2048" 0x0 & :: İndirilen klasöründe uzun süre duran dosyaları sil
:: Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\EdgeUpdate" "InstallDefault" 0x0 & :: EdgeWebView2'nin kurulmasını engeller
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\EdgeUpdate" "DoNotUpdateToEdgeWithChromium" 0x1 & :: Microsoft Edge'in otomatik kurulmasını engeller
:: Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" "AllowDevelopmentWithoutDevLicense" 0x1 & :: Uygulama geliştirme modu aktifleştiriliyor.
::MOUSE HID OPTIMIZE
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" "TreatAbsolutePointerAsAbsolute" REG_DWORD 0x1
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" "TreatAbsoluteAsRelative" REG_DWORD 0x0
::DISABLE MOUSE ACCELERATION
Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseHoverTime" REG_SZ "0"
Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseSensitivity" REG_SZ "10"
Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseSpeed" REG_DWORD 0x0
Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseThreshold1" REG_DWORD 0x0
Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseThreshold2" REG_DWORD 0x0
::MOUSE ABSOLUTE CURVE
Call :RegSave Update "HKCU\Control Panel\Mouse" "SmoothMouseXCurve" REG_BINARY "000000000000000000a0000000000000004001000000000000800200000000000000050000000000"
Call :RegSave Update "HKCU\Control Panel\Mouse" "SmoothMouseYCurve" REG_BINARY "000000000000000066a6020000000000cd4c050000000000a0990a00000000003833150000000000"
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" "CursorSensitivity" REG_DWORD "0x2710"
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" "CursorUpdateInterval" REG_DWORD "0x1"
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" "IRRemoteNavigationDelta" REG_DWORD "0x1"
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "AttractionRectInsetInDIPS" REG_DWORD "0x5"
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "DistanceThresholdInDIPS" REG_DWORD "0x28"
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "MagnetismDelayInMilliseconds" REG_DWORD "0x32"
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "MagnetismUpdateIntervalInMilliseconds" REG_DWORD "0x10"
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "VelocityInDIPSPerSecond" REG_DWORD "0x168"
:: Klavye optimizasyon
Call :RegSave Update "HKCU\Control Panel\Keyboard" "KeyboardDelay" REG_SZ 0
Call :RegSave Update "HKCU\Control Panel\Keyboard" "KeyboardSpeed" REG_SZ 31
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" "KeyboardDataQueueSize" REG_DWORD 0x10
Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Preference" "On" REG_SZ 0
Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "AutoRepeatDelay" REG_SZ 0
Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "AutoRepeatRate" REG_SZ 0
Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "BounceTime" REG_SZ 0
Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "DelayBeforeAcceptance" REG_SZ 0
Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "Flags" REG_SZ 0
Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "Last BounceKey Setting" REG_DWORD 0x0
Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "Last Valid Delay" REG_DWORD 0x0
Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "Last Valid Repeat" REG_DWORD 0x0
Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "Last Valid Wait" REG_DWORD 0x0
Call :RegSave Update "HKCU\Control Panel\Accessibility\MouseKeys" "Flags" REG_SZ 0
Call :RegSave Update "HKCU\Control Panel\Accessibility\MouseKeys" "MaximumSpeed" REG_SZ 0
Call :RegSave Update "HKCU\Control Panel\Accessibility\MouseKeys" "TimeToMaximumSpeed" REG_SZ 0
:: Telemetri
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" REG_DWORD 0x0
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" "Start" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" "IsCensusDisabled" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" "DontRetryOnError" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" "TaskEnableRun" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\DataCollection" "AllowTelemetry" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" REG_DWORD 0x0
Call :RegSave Update "HKCU\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "AITEnable" REG_DWORD 0x0
Call :RegSave Update "HKCU\Policies\Microsoft\Assistance\Client\1.0" "NoExplicitFeedback" REG_DWORD 0x1
Call :RegSave Update "HKCU\OFF_SOFTWARE\Microsoft\MediaPlayer\Preferences" "UsageTracking" REG_DWORD 0x0 :: MediaPlayer istatistiklerini gönderilmesini engeller
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" "fAllowToGetHelp" REG_DWORD 0x0 :: Uzak masaüstü asistanı
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" "fAllowFullControl" REG_DWORD 0x0 :: Uzak masaüstü asistanı
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" REG_DWORD 0x0 :: Geri bildirim
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "DoNotShowFeedbackNotifications" REG_DWORD 0x1 :: Geri bildirim
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" REG_DWORD 0x0 :: Özelleştirilmiş deneyim (Tailored experiences)
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled" REG_DWORD 0x1 :: Hata geri bildirim
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled" REG_DWORD 0x1 :: Hata geri bildirim
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" REG_DWORD 0x0 :: Müşteri Deneyim Programı
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" "CEIPEnable" REG_DWORD 0x0 :: Müşteri Deneyim Programı
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" REG_DWORD 0x1 :: Müşteri Deneyim Programı
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" REG_DWORD 0x1 :: Windows Hata Raporlama 
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" REG_DWORD 0x0 :: Wifi Hotspot Raporlama 
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" REG_DWORD 0x0 :: Windows Reklam Kimliği
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy" REG_DWORD 0x1 :: Reklam kimliği etkinliği
Call :RegSave Update "HKCU\Microsoft\Speech\Preferences" "ModeForOff" REG_DWORD 0x1 :: Çevrimiçi konuşma tanıma
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" REG_DWORD 0x0 :: Geri Bildirim Devre Dışı Bırakılıyor...
Call :RegSave_Delete Update "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "PeriodInNanoSeconds" :: Geri Bildirim Devre Dışı Bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled" REG_DWORD 0x1 :: Windows Hata Raporunu Devre Dışı Bırakılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" "EnableTransparency" REG_DWORD 0x0 :: Transparan özelliğni kapatır

bcdedit /deletevalue useplatformclock > NUL 2>&1
bcdedit /set {current} recoveryenabled no > NUL 2>&1
powercfg /h off > NUL 2>&1
bcdedit /set useplatformtick yes > NUL 2>&1
bcdedit /set disabledynamictick yes > NUL 2>&1
"%Location%\Files\DevManView.exe" /disable "High precision event timer"

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

:ToolboxFileError
mode con cols=80 lines=30
echo.
echo.
echo.
echo.
echo.
echo.
echo                                 %R%[41m EKSİK DOSYA %R%[0m
echo.
echo                          %R%[41m Toolbox'ı yeniden indiriniz %R%[0m
echo. 
echo               %R%[31m[##################### HATA #####################]%R%[0m  
echo.
echo             %R%[31m████ ████ █   █ █ █████ ████ ████ ███ █   █ █  █ ████%R%[0m
echo             %R%[31m█  █ █    ██  █ █   █   █  █ █  █ █   ██  █ █ █  █   %R%[0m
echo             %R%[31m█  █ █ ██ █ █ █ █   █   █  █ ████ ██  █ █ █ ██   ████%R%[0m
echo             %R%[31m█  █ █  █ █  ██ █   █   █  █ █ █  █   █  ██ █ █     █%R%[0m
echo             %R%[31m████ ████ █   █ █   █   ████ █  █ ███ █   █ █  █ ████%R%[0m
timeout /t 10 /nobreak > NUL
start https://ognitorenks.com.tr/2022/04/ognitorenks-toolbox-windows-yardimcisi.html
exit