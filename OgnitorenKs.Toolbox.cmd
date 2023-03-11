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
mode con cols=100 lines=27
echo off
chcp 65001 > NUL 2>&1
title  OgnitorenKs Toolbox
set version=3.8.1
cls

:: -------------------------------------------------------------
:: Renklendirme
setlocal
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E#&echo on&for %%b in (1) do rem"') do (set R=%%b)

:: -------------------------------------------------------------
:: Konum bilgisi
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a

:: -------------------------------------------------------------
:: Gerekli klasörler oluşturulur.
MD "%Location%\Bin\Data" > NUL 2>&1

:: -------------------------------------------------------------
:: Dil seçimi
FOR /F "tokens=6" %%a in ('Dism /online /Get-intl ^| Find /I "Default system UI language"') do (
	if %%a EQU tr-TR (set Lang=Call "%Location%\Bin\Language\Turkish.cmd")
	if %%a NEQ tr-TR (set Lang=Call "%Location%\Bin\Language\English.cmd")
)
:: Manuel dil seçimi
FOR /F "tokens=2" %%a in ('Findstr /i "Service_Language" %Location%\Bin\Settings.ini') do (
	if %%a EQU Demand (FOR /F "tokens=2" %%b in ('Findstr /i "Select_Language" %Location%\Bin\Settings.ini') do (set Lang=Call "%Location%\Bin\Language\%%b.cmd"))
)
	
:: -------------------------------------------------------------
:: Değişkenler
set NSudo="%Location%\Bin\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c

:: -------------------------------------------------------------
:: Admin yetkisini kontrol eder
reg query "HKU\S-1-5-19" > NUL 2>&1
	if %errorlevel%==1 ("%Location%\Bin\NSudo.exe" -U:E -ShowWindowMode:hide cmd /c Powershell -command "Start-Process '%Location%\OgnitorenKs.Toolbox.cmd'"
						exit)

:: -------------------------------------------------------------
:: x64 sistem kontrolü yapılır.
FOR /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "PROCESSOR_ARCHITECTURE" 2^>NUL') do (
	if %%a NEQ AMD64 (cls&%Lang% :Error_6&timeout /t 4 /nobreak > NUL&exit)
)

:: -------------------------------------------------------------
:: Klasör yolunda Türkçe karakterleri kontrol eder
echo %Location% | Find /I "ö" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&%Lang% :Error_1&exit)
echo %Location% | Find /I "ü" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&%Lang% :Error_1&exit)
echo %Location% | Find /I "ğ" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&%Lang% :Error_1&exit)
echo %Location% | Find /I "ş" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&%Lang% :Error_1&exit)
echo %Location% | Find /I "ç" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&%Lang% :Error_1&exit)
echo %Location% | Find "ı" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&%Lang% :Error_1&exit)
echo %Location% | Find "İ" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&%Lang% :Error_1&exit)
:: Klasör yolunda boşlukları tespit eder.
if "%Location%" NEQ "%Location: =%" (cls&%Lang% :Error_2&exit)

:: -------------------------------------------------------------
:: Chocolatey indirme sisteminin yüklü olup olmadığını kontrol eder. Yüklü değilse kurulum işlemini gerçekleştirir.
dir /b "%ProgramData%\chocolatey" > NUL 2>&1
	if %errorlevel% EQU 1 (%Lang% :Chocolatey_1
						   %NSudo% Powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && set "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
)
:: -------------------------------------------------------------
:: Desktop App Installer kontrol eder ve yükler
Call :Powershell "Get-AppxPackage -AllUsers" > %Location%\Bin\Data\Appx.txt
Findstr /i "Microsoft.DesktopAppInstaller_8wekyb3d8bbwe" %Location%\Bin\Data\Appx.txt > NUL 2>&1
	 if %errorlevel% NEQ 0 (Call :PSDownload %Temp%\DesktopAppInstaller.msixbundle
							Call :Powershell "Add-AppxPackage -Path %Temp%\DesktopAppInstaller.msixbundle")
Winget > NUL 2>&1
	 if %errorlevel% NEQ 0 (Call :PSDownload %Temp%\DesktopAppInstaller.msixbundle
							Call :Powershell "Add-AppxPackage -Path %Temp%\DesktopAppInstaller.msixbundle")

:: -------------------------------------------------------------
:: Sistem bilgileri alınır
Call :Powershell "Get-CimInstance Win32_OperatingSystem | Select-Object Caption,InstallDate,OSArchitecture,RegisteredUser,CSName | FL" > %Location%\Bin\Data\OS.txt
FOR /F "tokens=5" %%a in ('FIND "Caption" %Location%\Bin\Data\OS.txt') do set Win=%%a

:: -------------------------------------------------------------
:: Güncelleştirme kontrol eder
:: Tarih bilgisini alır
Call :Date
cls
:: Settings.ini dosyası içinden güncelleme ayarını kontrol ederek yönlendirme yapar.
FOR /F "tokens=2" %%a in ('findstr /C:"Update" %Location%\Bin\Settings.ini') do (if %%a EQU 1 (goto menu))
:: Builder otomatik güncelleme işleminin durumunu kontrol eder ve yönlendirir.
%Lang% :Update_1
FOR /F "tokens=2" %%a in ('findstr /C:"TimeUpdate" %Location%\Bin\Settings.ini') do (set TimeLog=%%a)
:: Settings.ini dosyasına kaydedilen tarih ile güncel tarih verisi karşılaştırılır. Tarihler farklı ise güncellemeler kontrol edilir.
if %TimeLog% NEQ %DateDay% (goto Update)
if %TimeLog% EQU %DateDay% (goto menu)
:Update
Call :Powershell "(Get-Content %Location%\Bin\Settings.ini) | ForEach-Object { $_ -replace '%TimeLog%', '%DateDay%' } | Set-Content '%Location%\Bin\Settings.ini'"
Call :PSDownload "%Location%\Bin\Extra\Links.txt"
FOR /F "tokens=3" %%b in ('Findstr /C:"ToolboxVersion" %Location%\Bin\Extra\Links.txt') do (set NewVersion=%%b)
if %NewVersion% NEQ %version% (cls&%Lang% :Update_2
							   timeout /t 5 /nobreak > NUL
							   Call :PSDownload "%Location%\ToolboxUpdate.cmd"
							   Call :Powershell "Start-Process '%Location%\ToolboxUpdate.cmd'"
							   exit)

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:menu
Call :Value_Reset
:: -------------------------------------------------------------
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Caption" %Location%\Bin\Data\OS.txt') do set Value1=%%a
set Value1=%Value1:~11%
FOR /F "tokens=2 delims=':'" %%b in ('FIND "RegisteredUser" %Location%\Bin\Data\OS.txt') do set Value2=%%b
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version" 2^>NUL') do set Value3=%%f
set Value3=%Value3:~5%
FOR /F "skip=1 tokens=3" %%b in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" 2^>NUL') do (set Value4=%%b)
:: -------------------------------------------------------------
mode con cols=100 lines=27
title               O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X
echo    %R%[90mAMD64                                                                               %DateDay%%R%[0m
echo    %R%[90m████ ████ █   █ ███ █████ ████ ████ ███ █   █ █  █ ████    %R%[90m█████ ████ ████ █   ███  ████ █   █%R%[0m
echo    %R%[90m█  █ █    ██  █  █    █   █  █ █  █ █   ██  █ █ █  █       %R%[90m  █   █  █ █  █ █   █  █ █  █  █ █ %R%[0m
echo    %R%[90m█  █ █ ██ █ █ █  █    █   █  █ ████ ██  █ █ █ ██   ████    %R%[90m  █   █  █ █  █ █   ███  █  █   █  %R%[0m
echo    %R%[90m█  █ █  █ █  ██  █    █   █  █ █ █  █   █  ██ █ █     █    %R%[90m  █   █  █ █  █ █   █  █ █  █  █ █ %R%[0m
echo    %R%[90m████ ████ █   █ ███   █   ████ █  █ ███ █   █ █  █ ████    %R%[90m  █   ████ ████ ███ ███  ████ █   █%R%[0m
echo    %R%[90mhttps://ognitorenks.com.tr                                                               %R%[90m%version%%R%[0m
echo.
echo           %R%[90m %Value2%: %Value1% ^| %Value4% ^| %Value3%%R%[0m
:: Dil dosyasından menüyü çağırır
%Lang% :Menu_1
:: Dil dosyasından değişken mesajını çağırır.
%Lang% :Value_4
set /p menu=%R%[32m            %Choice%: %R%[0m
title  OgnitorenKs Toolbox
	if %menu% EQU 1 (goto Software_Installer)
	if %menu% EQU 2 (goto Service_Management)
	if %menu% EQU 3 (goto UserLicenceManager)
	if %menu% EQU 4 (goto shutdownpc)
	if %menu% EQU 5 (Call :Update.Appx.Installer)
	if %menu% EQU 6 (Call :HashChecker)
	if %menu% EQU 7 (Call :Fat32toNTFS)
	if %menu% EQU 8 (Call "%Location%\Bin\Extra\System.Info.cmd")
	if %menu% EQU 9 (Call :WifiInfo)
	if %menu% EQU 10 (goto PingMeter)
	if %menu% EQU 11 (Call "%Location%\Bin\Extra\UpdateAfter\UpdateAfter.cmd")
	if %menu% EQU 12 (goto WindowsRepair)
	if %menu% EQU 13 (Call :PC_Cleaner)
	if %menu% EQU 14 (goto TaskbarSettings)
	if %menu% EQU 15 (goto RuntimeLevel)
	if %menu% EQU l (goto Language_Menu)
	if %menu% EQU L (goto Language_Menu)
	if %menu% EQU X (goto Exit)
	if %menu% EQU x (goto Exit)
goto menu

:: ==============================================================================================================================

:Software_Installer
mode con cols=100 lines=38
title               O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X
:: Dil dosyasından menüyü çağırır
%Lang% :Menu_2
:: Dil dosyasından değişken içi mesajı çağırır.
%Lang% :Value_2
set /p multi=%R%[32m  %Choice% %R%[90mx,y: %R%[0m
echo %multi% | Findstr /i "x" > NUL 2>&1
	if %errorlevel% EQU 0 (goto menu)

FOR %%a in (%multi%) do (
	cls
	echo.
	%Lang% :Menu2_1
	if %%a==1 (Call :AIO.Runtimes)
	if %%a==2 (Call :Winget Discord.Discord)
	if %%a==3 (Call :Winget WhatsApp.WhatsApp)
	if %%a==4 (Call :Winget OpenWhisperSystems.Signal)
	if %%a==5 (Call :Winget Telegram.TelegramDesktop)
	if %%a==6 (Call :Winget Zoom.Zoom)
	if %%a==7 (Call :Winget EpicGames.EpicGamesLauncher)
	if %%a==8 (Call :Winget Valve.Steam)
	if %%a==9 (Call :Winget GOG.Galaxy)
	if %%a==10 (Call :Winget Ubisoft.Connect)
	if %%a==11 (Call :Winget ElectronicArts.EADesktop)
	if %%a==12 (Call :Winget Playnite.Playnite)
	if %%a==13 (Call :Winget Google.Chrome)
	if %%a==14 (Call :Winget Mozilla.Firefox)
	if %%a==15 (Call :Winget Brave.Brave)
	if %%a==16 (Call :Winget Microsoft.Edge)
	if %%a==17 (Call :Winget Opera.OperaGX)
	if %%a==18 (Call :Winget KDE.Kdenlive)
	if %%a==19 (Call :Winget OpenShot.OpenShot)
	if %%a==20 (Call :Winget Meltytech.Shotcut)
	if %%a==21 (Call :Winget KDE.Krita)
	if %%a==22 (Call :Winget GIMP.GIMP)
	if %%a==23 (Call :Winget OBSProject.OBSStudio)
	if %%a==24 (Call :Winget ShareX.ShareX)
	if %%a==25 (Call :Winget Audacity.Audacity)
	if %%a==26 (Call :Winget HandBrake.HandBrake)
	if %%a==27 (Call :Winget AdrianAllard.FileConverter)
	if %%a==28 (Call :Winget 7zip.7zip)
	if %%a==29 (Call :Winget RARLab.WinRAR)
	if %%a==30 (Call :Winget CodecGuide.K-LiteCodecPack.Mega)
	if %%a==31 (Call :Winget VideoLAN.VLC.Nightly)
	if %%a==32 (Call :Winget Daum.PotPlayer)
	if %%a==33 (Call :Winget AIMP.AIMP)
	if %%a==34 (Call :Winget Spotify.Spotify)
	if %%a==35 (Call :Winget Tonec.InternetDownloadManager)
	if %%a==36 (Call :Winget SoftDeluxe.FreeDownloadManager)
	if %%a==37 (Call :Winget qBittorrent.qBittorrent)
	if %%a==38 (Call :Winget TheDocumentFoundation.LibreOffice)
	if %%a==39 (Call :Winget Adobe.Acrobat.Reader.64-bit)
	if %%a==40 (Call :Winget TrackerSoftware.PDF-XChangeEditor)
	if %%a==41 (Call :Winget calibre.calibre)
	if %%a==42 (Call :Winget Notepad++.Notepad++)
	if %%a==43 (Call :Chocolatey python)
	if %%a==44 (Call :Winget Microsoft.VisualStudioCode)
	if %%a==45 (Call :Winget GitHub.GitHubDesktop)
	if %%a==46 (Call :Winget OpenJS.NodeJS)
	if %%a==47 (Call :Chocolatey unity-hub)
	if %%a==48 (Call :Winget BlenderFoundation.Blender)
	if %%a==49 (Call :Chocolatey io-unlocker)
	if %%a==50 (Call :Winget WiseCleaner.WiseCare365)
	if %%a==51 (Call :Winget HiBitSoftware.HiBitUninstaller)
	if %%a==52 (Call :Winget RevoUninstaller.RevoUninstaller)
	if %%a==53 (Call :Winget TeamViewer.TeamViewer)
	if %%a==54 (Call :Winget AnyDeskSoftwareGmbH.AnyDesk)
	if %%a==55 (Call :Winget Open-Shell.Open-Shell-Menu)
	if %%a==56 (Call :Chocolatey taskbarx)
	if %%a==57 (Call :Winget Henry++.MemReduct)
	if %%a==58 (Call :Chocolatey msiafterburner)
	if %%a==59 (Call :Winget voidtools.Everything)
	if %%a==60 (Call :Winget LogMeIn.Hamachi)
	if %%a==61 (Call :Winget GlassWire.GlassWire)
	if %%a==62 (Call :Winget Stremio.Stremio)
)
goto Software_Installer

:: ==============================================================================================================================

:AIO.Runtimes
cls&%Lang% :Runtimes_1
Dism /Online /Get-Capabilities /format:table > %Location%\Bin\Data\Capabilities.txt
Dism /Online /Get-Features /format:table > %Location%\Bin\Data\Features.txt
FOR /F "tokens=3" %%a in ('findstr /C:"NetFX3~~~~" %Location%\Bin\Data\Capabilities.txt') do set aiokontrol=%%a
echo %aiokontrol% | findstr /C:"Installed" > NUL 2>&1
	if %errorlevel%==1 (%Lang% :Runtimes_2
						Dism /Online /Enable-Feature /Featurename:NetFx3 /All /NoRestart)
FOR /F "tokens=3" %%b in ('findstr /C:"IIS-ASPNET45" %Location%\Bin\Data\Features.txt') do set aiokontrol=%%b
echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
	if %errorlevel%==1 (%Lang% :Runtimes_3
						Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All /NoRestart)
FOR /F "tokens=3" %%b in ('findstr /C:"DirectPlay" %Location%\Bin\Data\Features.txt') do set aiokontrol=%%b
echo %aiokontrol% | findstr /C:"Enabled" > NUL 2>&1
	if %errorlevel%==1 (%Lang% :Runtimes_4
						Dism /Online /Enable-Feature /FeatureName:DirectPlay /All /NoRestart)
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2005.x86
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2005.x64
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2008.x86
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2008.x64
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2010.x86
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2010.x64
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2012.x86
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2012.x64
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2013.x86
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2013.x64
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2015+.x86
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.VCRedist.2015+.x64
cls&%Lang% :Runtimes_1&Call :Winget Oracle.JavaRuntimeEnvironment
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.XNARedist
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.DotNet.DesktopRuntime.6
cls&%Lang% :Runtimes_1&Call :Chocolatey openal
cls&%Lang% :Runtimes_1&Call :Winget Microsoft.DirectX
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:WindowsRepair
mode con cols=100 lines=45
%Lang% :Repair_1&%Lang% :Repair_2
ie4uinit.exe -show
ie4uinit.exe -ClearIconCache
taskkill /f /im explorer.exe > NUL 2>&1
DEL /F /Q /A "%localappdata%\IconCache.db" > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\IconCacheToDelete\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Windows\Explorer\NotifyIcon\* > NUL 2>&1
RD /S /Q "%localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\AppIconCache" > NUL 2>&1
MD "%localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\AppIconCache" > NUL 2>&1
DEL /F /Q /A %localappdata%\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\TempState\* > NUL 2>&1
Call :delete2 "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" IconStreams
Call :delete2 "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" PastIconsStream
Call :Powershell "Start-Process 'C:\Windows\explorer.exe'"
cls&%Lang% :Repair_1&%Lang% :Repair_3
sfc /scannow
cls&%Lang% :Repair_1&%Lang% :Repair_4
Dism /Online /Cleanup-Image /StartComponentCleanup 
cls&%Lang% :Repair_1&%Lang% :Repair_5
DISM /Online /Cleanup-Image /RestoreHealth
cls&%Lang% :Repair_1&%Lang% :Repair_6
net stop wuauserv > NUL 2>&1
RD /S /Q  "%windir%\SoftwareDistribution" > NUL 2>&1
net start wuauserv > NUL 2>&1
cls&%Lang% :Repair_1&%Lang% :Repair_7
:: Market bölümününün sorunsuz çalışması için reg kayıtlarını düzenler
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "RemoveWindowsStore" "0"
Call :delete2 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" "DODownloadMode" & :: BITS hizmeti varsayılan hale getiriliyor.
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "DisableSubscription" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "InactivityShutdownDelay" "0x0000012c"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ProcessBiosKey" "1"
Call :expandsz "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ServiceDll" "%windir%\System32\ClipSVC.dll"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" "ServiceDllUnloadOnStop" "1"
FOR %%a in (AppXSvc camsvc wuauserv StorSvc LicenseManager trustedinstaller) do (
	sc config %%a start= demand > NUL 2>&1
	net start %%a /y > NUL 2>&1
)
FOR %%a in (cryptsvc bits) do (
	sc config %%a start= auto > NUL 2>&1
	net start %%a /y > NUL 2>&1
)
%NSudo% sc config ClipSVC start= demand
%NSudo% net start ClipSVC /y > NUL 2>&1
cls&%Lang% :Repair_1&%Lang% :Repair_8
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
cls&%Lang% :Repair_1&%Lang% :Repair_9
wsreset
cls&%Lang% :Repair_1&%Lang% :Repair_10
:: Genel hata onarımı
Call :key "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore" & :: Ses düzeylerinin kaydedilmeme sorunu onarır.
Call :delete2 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoTrayItemsDisplay" & :: Görev çubuğunda ekran tepsisi simgelerini açar
Call :ProcessCompletedReset
goto menu

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:PC_Cleaner
mode con cols=64 lines=30
cls&%Lang% :Clear_1
%Lang% :Clear_2
taskkill /f /IM explorer.exe > NUL 2>&1
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
Start explorer.exe > NUL 2>&1
%Lang% :Clear_3
DEL /F /Q /A %temp%\* > NUL 2>&1
RD /S /Q %temp%\* > NUL 2>&1
FOR /F %%a in ('dir /b /s %Windir%\System32\config\systemprofile\AppData\Local\*.tmp') do (RD /S /Q %%a > NUL 2>&1)
%Lang% :Repair_6
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1
%Lang% :Clear_5
DEL /F /Q /A %windir%\prefetch\* > NUL 2>&1
%Lang% :Clear_6
RD /S /Q %systemdrive%\AMD > NUL 2>&1
RD /S /Q %systemdrive%\NVIDIA > NUL 2>&1
RD /S /Q %systemdrive%\INTEL > NUL 2>&1
%Lang% :Repair_4
Dism /Online /Cleanup-Image /StartComponentCleanup
%Lang% :Clear_7
ipconfig /flushdns > NUL 2>&1
ipconfig /release > NUL 2>&1
ipconfig /renew > NUL 2>&1
Call :ProcessCompleted
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:Update.Appx.Installer
mode con cols=70 lines=40
cls&%Lang% :Installer_1
:: İhtiyaç duyulan klasörler oluşturuluyor.
RD /S /Q "%Location%\Edit" > NUL 2>&1
MD "%Location%\Edit\Update" > NUL 2>&1
MD "%Location%\Edit\Appx" > NUL 2>&1
timeout /t 1 /nobreak > NUL
Call :Powershell "Start-Process '%Location%\Edit'"
pause > NUL
cls

:: Güncelleme yükleyici
FOR /F %%a in ('"dir /b %Location%\Edit\Update\*"') do (
	DISM /Online /add-package /packagepath=%Location%\Edit\Update\%%a /norestart
)
:: Appx yükleyici
FOR /F %%b in ('"dir /b %Location%\Edit\Appx\*"') do (
	Call :Powershell "Add-AppxPackage -Path %Location%\Edit\Appx\%%b"
)
RD /S /Q "%Location%\Edit" > NUL 2>&1
Call :ProcessCompleted
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:Fat32toNTFS
mode con cols=63 lines=25
%Lang% :Converter_1
chcp 437 > NUL 2>&1
for /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property DeviceID,VolumeName"') do (
   echo     -  %%a)
chcp 65001 > NUL 2>&1
%Lang% :Converter_2
echo   %R%[90m└──────────────────────────────────────────────────────────┘%R%[0m
Call :MobileValue "Value_3" "menu"
convert %MobileValue%: /fs:NTFS /v
Call :ProcessCompleted
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:UserLicenceManager
mode con cols=76 lines=17
%Lang% :Menu_3
%Lang% :Value_4
set /p value=%R%[92m %Choice% : %R%[0m
	if %value%==1 (net user administrator /active:yes)
	if %value%==2 (net user Administrator /active:no)
	if %value%==3 (Call :User3)
	if %value%==4 (Call :User4)
	if %value%==5 (Call :User5)
	if %value%==6 (Call :User6)
	if %value%==7 (start cmd /k Powershell -command "Get-LocalUser")
	if %value%==8 (Call :Licence8)
	if %value%==9 (slmgr /dli)		   
	if %value%==10 (slmgr /dlv)
	if %value%==11 (slmgr /xpr)
	if %value%==12 (slmgr /upk)
	if %value%==13 (slmgr /rearm)
	if %value%==x goto menu
	if %value%==X goto menu
Call :ProcessCompleted
goto UserLicenceManager

:User3
Call :MobileValue "Value_5" "UserLicenceManager"
net localgroup Administrators %MobileValue% /add
goto :eof

:User4
Call :MobileValue "Value_5" "UserLicenceManager"
net user %MobileValue% * /add
goto :eof

:User5
Call :MobileValue "Value_5" "UserLicenceManager"
net user %MobileValue% /delete
goto :eof

:User6
Call :MobileValue "Value_5" "UserLicenceManager"
net user %MobileValue% *
goto :eof

:Licence8
Call :MobileValue "Value_6" "UserLicenceManager"
slmgr /ipk %MobileValue%
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:shutdownpc
mode con cols=55 lines=21
:: Kapatma kontrol
:: https://superuser.com/questions/1028374/determine-whether-a-shutdown-is-pending
shutdown -s -f -t 999999 > NUL 2>&1
if %errorlevel% equ 1190 (
  %Lang% :Menu4_Value_1
) else (
  shutdown /a > NUL 2>&1
  %Lang% :Menu4_Value_2
)
%Lang% :Menu_4
%Lang% :Value_4
set /p value=%R%[92m  %Choice% : %R%[0m
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
					   %Lang% :Menu4_1
					   timeout /t 1 /nobreak > NUL)
	if %value% EQU x goto menu
	if %value% EQU X goto menu
goto shutdownpc

:ShutDownPC_1
Call :MobileValue "Value_8" "shutdownpc"
set /a MobileValue=%MobileValue%*60
shutdown -s -f -t %MobileValue%
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:HashChecker
cls
echo.
%Lang% :Value_9
set /p hashvalue1=%R%[37m  ►%R%[96m %Choice%: %R%[0m
	if %hashvalue1%==x (goto :eof)
	if %hashvalue1%==X (goto :eof)
:: Girilen değerin harfleri büyük olarak düzenler.
Call :Upper "hashvalue1" "%hashvalue1%"
echo.
%Lang% :Value_10
set /p hashpath=%R%[37m  ►%R%[96m %Choice%: %R%[0m
cls
echo.
%Lang% :Hash_1
Call :Powershell "Get-filehash %hashpath% | Select-Object Hash | FL" > %Location%\Bin\Data\hash
FOR /F "tokens=3" %%a in ('findstr /C:"Hash" %Location%\Bin\Data\hash') do set hashvalue2=%%a
if %hashvalue2% equ %hashvalue1% (
  %Lang% :Value_11&echo %hashcontrol%
) else (
  %Lang% :Value_12&echo %hashcontrol%
)
cls
echo.
%Lang% :Hash_2
echo   • [%R%[33m%hashvalue1%%R%[0m]
%Lang% :Hash_3
echo   • [%R%[33m%hashvalue2%%R%[0m]
echo.
echo   %hashcontrol%
echo.
%Lang% :Menu_Road
pause > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:WifiInfo
mode con cols=65 lines=45
%Lang% :Wifi_1
FOR /F "tokens=5" %%a in ('netsh wlan show profil ^| find "All"') do (
	FOR /F "tokens=4" %%b in ('netsh wlan show profile "%%a" key^=clear ^| find "Content"') do (
		echo   ► %R%[36m%%a :%R%[33m %%b%R%[0m
		echo.
		)
	)
)
echo  %R%[90m└─────────────────────────────────────────────────────────────┘%R%[0m
%Lang% :Menu_Road
pause > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:TaskbarSettings
mode con cols=55 lines=14
%Lang% :Service_Menu_On_Off
echo.
%Lang% :Service_Info_2
%Lang% :Taskbar_1
Call :SV&Call :SV_RegRight1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "EnableAutoTray" 0x1&Call :SV_None&Call :SVCheck_OS11
%Lang% :Taskbar_2
Call :SV&Call :SV_RegRight1 "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" 0x1&Call :SV_None&Call :SVCheck_OS11
%Lang% :Taskbar_3
Call :SV&Call :SV_RegRight1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarDa" 0x0&Call :SV_None
%Lang% :Taskbar_4
Call :SV&Call :SV_RegRight1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAl" 0x1&Call :SV_None&Call :SVCheck_OS10
%Lang% :Taskbar_5
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
%Lang% :Value_4
set /p Value=%R%[92m  %Choice% : %R%[0m
:: Upper ile küçük harfleri büyük harflere dönüştürüyoruz.
Call :Upper "Value" "%Value%"
cls
FOR %%a in (%Value%) do (
	if %%a EQU 1%E1% if %Win% EQU 11 (%Lang% :CheckOS_2) else (Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "EnableAutoTray" "0x0")
	if %%a EQU 1%D1% if %Win% EQU 11 (%Lang% :CheckOS_2) else (Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "EnableAutoTray" "0x1")
	if %%a EQU 2%E1% if %Win% EQU 11 (%Lang% :CheckOS_2) else (Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "0x0")
	if %%a EQU 2%D1% if %Win% EQU 11 (%Lang% :CheckOS_2) else (Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" "DisableNotificationCenter" "0x1")
	if %%a EQU 3%E1% if %Win% EQU 11 (Call :delete2 "HKLM\SOFTWARE\Policies\Microsoft\Dsh" "AllowNewsAndInterests"&Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests\AllowNewsAndInterests" "value" "0x1"&Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarDa" "0x1") else (Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" "EnableFeeds" "0x1"&Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" "ShellFeedsTaskbarViewMode" "0x1")
	if %%a EQU 3%D1% if %Win% EQU 11 (Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Dsh" "AllowNewsAndInterests" "0x0"&Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests\AllowNewsAndInterests" "value" "0x0"&Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarDa" "0x0") else (Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" "EnableFeeds" "0x0"&Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" "ShellFeedsTaskbarViewMode" "0x2")
	if %%a EQU 4%E1% if %Win% EQU 10 (%Lang% :CheckOS_2) else (Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAl" "0x0")
	if %%a EQU 4%D1% if %Win% EQU 10 (%Lang% :CheckOS_2) else (Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAl" "0x1")
	if %%a EQU X (goto menu)
)
Call :ExplorerReset
Call :ProcessCompleted
goto TaskbarSettings

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:RuntimeLevel
mode con cols=55 lines=17
%Lang% :Menu_5
%Lang% :Value_4
set /p value=%R%[32m  %Choice% :%R%[0m
	if %value% EQU 1 (set value2=0x3)
	if %value% EQU 2 (set value2=0x6)
	if %value% EQU 3 (set value2=0x5)
	if %value% EQU 4 (set value2=0x1)
	if %value% EQU x (goto menu)
	if %value% EQU X (goto menu)
echo.
%Lang% :Menu5_1
%Lang% :Value_7
set /p value=%R%[96m  ► %Choice%: %R%[0m
for %%a in (%value%) do (
	reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%a\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "%value2%" /f
)
Call :ProcessCompleted
goto menu

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:Service_Management
mode con cols=87 lines=41
title     O G N I T O R E N K S    ^|    OGNITORENKS TOOLBOX  ^|    T  O  O  L  B  O  X
Dism /Online /Get-Features /format:table > %Location%\Bin\Data\Features.txt
DISM /Online /Get-Capabilities /format:table > %Location%\Bin\Data\Capabilities.txt
Call :Powershell "Get-MMAgent" > %Location%\Bin\Data\mc

:: Regedit yedekler. İlk açılışa özel bunu yapar. Oluşturduğu yedek dosyası silinirse yeniden oluşturur.
MD "%Location%\Bin\Extra\UpdateAfter\Backup" > NUL 2>&1
dir /b "%Location%\Bin\Extra\UpdateAfter\Backup\Service.reg" > NUL 2>&1
	if %errorlevel% EQU 1 (reg export "HKLM\SYSTEM\CurrentControlSet\Services" %Location%\Bin\Extra\UpdateAfter\Backup\Service.reg > NUL 2>&1)

%Lang% :Service_Menu_On_Off
echo.
%Lang% :Service_Info
%Lang% :Service_Menu_1
Call :SV&Call :SV_Left1 "BthAvctpSvc bthserv BluetoothUserService BTAGService"&Call :SV_Capabilities1 "MSPaint"&Call :SV_None
%Lang% :Service_Menu_2
Call :SV&Call :SV_Left1 "TapiSrv PhoneSvc"&Call :SV_Capabilities1 "WordPad"&Call :SV_None
%Lang% :Service_Menu_3
Call :SV&Call :SV_Left1 "Spooler"&Call :SV_Capabilities1 "Notepad"&Call :SV_None
%Lang% :Service_Menu_4
Call :SV&Call :SV_Left1 "FrameServer WiaRpc StiSvc"&Call :SV_Capabilities1 "StepsRecorder"&Call :SV_None
%Lang% :Service_Menu_5
Call :SV&Call :SV_Capabilities1 "PowerShell.ISE"
if %Win%==11 (Call :SV_Left1 "PenService")
if %Win%==10 (Call :SV_Left1 "TabletInputService")
Call :SV_None
%Lang% :Service_Menu_6
Call :SV&Call :SV_Capabilities1 "fax"&Call :SV_Capabilities1 "MathRecognizer"&Call :SV_None
%Lang% :Service_Menu_7
Call :SV&Call :SV_Left1 "BDESVC"&Call :SVCheck_Features "WindowsMediaPlayer"&Call :SV_None
%Lang% :Service_Menu_8
Call :SV&Call :SV_Left1 "DusmSvc"&Call :SV_Capabilities1 "InternetExplorer"&Call :SV_None
%Lang% :Service_Menu_9
Call :SV&Call :SV_Left1 "iphlpsvc IpxlatCfgSvc"&Call :SVCheck_Features "Subsystem-Linux"&Call :SV_None
%Lang% :Service_Menu_10
Call :SV&Call :SV_Left1 "icssvc SharedAccess ALG"&Call :SV_Capabilities1 "NetFX3"&Call :SV_None
%Lang% :Service_Menu_11
Call :SV&Call :SV_Left1 "RMSvc"&Call :SVCheck_Features "IIS-ASPNET45"&Call :SV_None
%Lang% :Service_Menu_12
Call :SV&Call :SV_Left1 "wcncsvc"&Call :SVCheck_Features "DirectPlay"&Call :SV_None
%Lang% :Service_Menu_13
Call :SV&Call :SV_Left1 "WwanSvc WlanSvc wcncsvc lmhosts vwifibus NativeWifiP Ndisuio vwififlt"&Call :SVCheck_Compact&Call :SV_None
%Lang% :Service_Menu_14
Call :SV&Call :SV_Left1 "lfsvc NaturalAuthentication"&Call :SVCheck_RegRight_Ozel "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".jpg"&Call :SV_None
%Lang% :Service_Menu_15
Call :SV&Call :SV_Left1 "ConsentUxUserSvc DevicePickerUserSvc DevicesFlowUserSvc"&Call :SVCheck_RegRight_Ozel "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "AltTabSettings"&Call :SV_None
%Lang% :Service_Menu_16
Call :SV&Call :SV_Left1 "PNRPAutoReg PNRPsvc p2psvc p2pimsvc upnphost QWAVE SSDPSRV"&Call :SVCheck_RegRight_Ozel "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseUpdatesExpiryTime"&Call :SV_None
%Lang% :Service_Menu_17
Call :SV&Call :SV_Left1 "TermService UmRdpService SessionEnv RasAuto RasMan RpcLocator"&Call :SV_None
%Lang% :Service_Menu_18
Call :SV&Call :SV_Left1 "SysMain"&Call :SV_RegRight1 "HKLM\System\CurrentControlSet\Control" "SvcHostSplitThresholdInKB" "0x380000"&Call :SV_None
%Lang% :Service_Menu_19
Call :SV&Call :SV_RegLeft1 "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" "0x0"&Call :SV_RegRight1 "HKCU\SOFTWARE\Microsoft\GameBar" "AutoGameModeEnabled" "0x0"&Call :SV_None
%Lang% :Service_Menu_20
Call :SV&Call :SV_Left1 "WSearch"&Call :SV_RegRight1 "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "0x0"&Call :SV_RegRight1 "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "0x0"&Call :SV_None
%Lang% :Service_Menu_21
Call :SV&Call :SV_Left1 "BcastDVRUserService XboxGipSvc XboxNetApiSvc XblAuthManager XblGameSave DoSvc"&Call :SV_None
%Lang% :Service_Menu_22
Call :SV&Call :SV_Left1 "SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc"&Call :SV_None
%Lang% :Service_Menu_23
Call :SV&Call :SV_Left1 "DPS WdiServiceHost WdiSystemHost PcaSvc"&Call :SVCheck_RegRight_Ozel2 "HKCR\*\shell\runas"&Call :SV_None
%Lang% :Service_Menu_24
Call :SV&Call :SV_Left1 "seclogon"&Call :SVCheck_RegRight_Ozel2 "HKCR\Directory\background\shell\Yonet"&Call :SV_None
%Lang% :Service_Menu_25
Call :SV&Call :SV_Left1 "FontCache FontCache3.0.0.0"&Call :SVCheck_RegRight_Ozel2 "HKCR\exefile\shell\Priority"&Call :SV_None
%Lang% :Service_Menu_26
Call :SV&Call :SV_Left1 "wisvc"&Call :SVCheck_RegRight_Ozel "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" "{9F156763-7844-4DC4-B2B1-901F640F5155}"&Call :SV_None&Call :SVCheck_OS10
%Lang% :Service_Menu_27
Call :SV&Call :SV_Left1 "WbioSrvc"&Call :SVCheck_RegRight_Ozel2 "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"&Call :SV_None&Call :SVCheck_OS10
%Lang% :Service_Menu_28
Call :SV&Call :SV_Left1 "HvHost"&Call :SV_None
%Lang% :Service_Menu_29
Call :SV&Call :SV_Left1 "SDRSVC VSS swprv wbengine fhsvc"&Call :SV_None
%Lang% :Service_Menu_30
Call :SV&Call :SV_RegLeft1 "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" "0x0"&Call :SV_None
%Lang% :Service_Menu_31
Call :SV&Call :SVCheck_Memory "False"&Call :SV_None
%Lang% :Service_Menu_32
Call :SV&Call :SV_Left1 "defragsvc"&Call :SV_None
%Lang% :Service_Menu_33
echo  %R%[90m└─────────────────────────────────────────┴─────────────────────────────────────────┘%R%[0m
%Lang% :Value_2
set /p value=%R%[32m  %Choice%: %R%[0m
:: Upper ile küçük harfleri büyük harflere dönüştürüyoruz.
Call :Upper "value" "%value%"
:: if value çoklu seçimde hata verdiği için burayı errorlevel'den veri alacak şekilde düzenledim.
echo %value% | Findstr /i "X" > NUL 2>&1
	if %errorlevel% EQU 0 (goto menu)
cls
FOR %%a in (%value%) do (
	if %%a EQU 1%E1% (%Lang% :Value_13 0&Call :S1_Bluetooth start demand auto)           
	if %%a EQU 1%D1% (%Lang% :Value_13 1&Call :S1_Bluetooth stop disabled disabled)
	if %%a EQU 2%E1% (%Lang% :Value_13 0&Call :S2_Phone start demand demand)
	if %%a EQU 2%D1% (%Lang% :Value_13 1&Call :S2_Phone stop disabled demand)
	if %%a EQU 3%E1% (%Lang% :Value_13 0&Call :S3_Printer start demand auto)
	if %%a EQU 3%D1% (%Lang% :Value_13 1&Call :S3_Printer stop disabled disabled)
	if %%a EQU 4%E1% (%Lang% :Value_13 0&Call :S4_Camera.Scanner start demand)
	if %%a EQU 4%D1% (%Lang% :Value_13 1&Call :S4_Camera.Scanner stop disabled)
	if %%a EQU 5%E1% (%Lang% :Value_13 0&Call :S5_Touch start demand)
	if %%a EQU 5%D1% (%Lang% :Value_13 1&Call :S5_Touch stop disabled)
	if %%a EQU 6%E1% (%Lang% :Value_13 0&Call :S6_Fax start demand add)
	if %%a EQU 6%D1% (%Lang% :Value_13 1&Call :S6_Fax stop disabled remove)
	if %%a EQU 7%E1% (%Lang% :Value_13 0&Call :S7_Bitlocker start demand boot)
	if %%a EQU 7%D1% (%Lang% :Value_13 1&Call :S7_Bitlocker stop disabled disabled)
	if %%a EQU 8%E1% (%Lang% :Value_13 0&Call :S8_LimitedNetwork start auto)
	if %%a EQU 8%D1% (%Lang% :Value_13 1&Call :S8_LimitedNetwork stop disabled)
	if %%a EQU 9%E1% (%Lang% :Value_13 0&Call :S9_IPHelper start demand auto)
	if %%a EQU 9%D1% (%Lang% :Value_13 1&Call :S9_IPHelper stop disabled disabled)
	if %%a EQU 10%E1% (%Lang% :Value_13 0&Call :S10_Hotspot start demand)
	if %%a EQU 10%D1% (%Lang% :Value_13 1&Call :S10_Hotspot stop disabled)
	if %%a EQU 11%E1% (%Lang% :Value_13 0&Call :S11_Radio.Plane.Mod start demand)
	if %%a EQU 11%D1% (%Lang% :Value_13 1&Call :S11_Radio.Plane.Mod stop disabled)
	if %%a EQU 12%E1% (%Lang% :Value_13 0&Call :S12_WPS start demand)
	if %%a EQU 12%D1% (%Lang% :Value_13 1&Call :S12_WPS stop disabled)
	if %%a EQU 13%E1% (%Lang% :Value_13 0&Call :S13_WIFI start demand system)
	if %%a EQU 13%D1% (%Lang% :Value_13 1&Call :S13_WIFI stop disabled disabled)
	if %%a EQU 14%E1% (%Lang% :Value_13 0&Call :S14_Location start demand Allow 1 "Call :delete2" "DisableLocation")
	if %%a EQU 14%D1% (%Lang% :Value_13 1&Call :S14_Location stop disabled Deny 0 "Call :dword" "DisableLocation 1")
	if %%a EQU 15%E1% (%Lang% :Value_13 0&Call :S15_Miracast start demand)
	if %%a EQU 15%D1% (%Lang% :Value_13 1&Call :S15_Miracast stop disabled)
	if %%a EQU 16O (%Lang% :Value_13 0&Call :S16_Flow stop start disabled demand)
	if %%a EQU 16%E1% (%Lang% :Value_13 0&Call :S16_Flow start start demand demand)
	if %%a EQU 16%D1% (%Lang% :Value_13 1&Call :S16_Flow stop stop disabled disabled)
	if %%a EQU 17%E1% (%Lang% :Value_13 0&Call :S17_RemoteDesktop start demand)
	if %%a EQU 17%D1% (%Lang% :Value_13 1&Call :S17_RemoteDesktop stop disabled)
	if %%a EQU 18%E1% (%Lang% :Value_13 0&Call :S18_Sysmain start auto)
	if %%a EQU 18%D1% (%Lang% :Value_13 1&Call :S18_Sysmain stop disabled)
	if %%a EQU 19%E1% (%Lang% :Value_13 0&Call :S19_Hibernate on 1)
	if %%a EQU 19%D1% (%Lang% :Value_13 1&Call :S19_Hibernate off 0)
	if %%a EQU 20%E1% (%Lang% :Value_13 0&Call :S20_Wsearch start auto enable)
	if %%a EQU 20%D1% (%Lang% :Value_13 1&Call :S20_Wsearch stop disabled disable)
	if %%a EQU 21%E1% (%Lang% :Value_13 0&Call :S21_Xbox start demand 1 0 "Call :delete2")
	if %%a EQU 21%D1% (%Lang% :Value_13 1&Call :S21_Xbox stop disabled 0 2 "Call :dword")
	if %%a EQU 22%E1% (%Lang% :Value_13 0&Call :S22_MixedReality demand)
	if %%a EQU 22%D1% (%Lang% :Value_13 1&Call :S22_MixedReality disabled)
	if %%a EQU 23%E1% (%Lang% :Value_13 0&Call :S23_Compability start auto demand 0)
	if %%a EQU 23%D1% (%Lang% :Value_13 1&Call :S23_Compability stop disabled disabled 1)
	if %%a EQU 24%E1% (%Lang% :Value_13 0&Call :S24_FastUser start demand 0)
	if %%a EQU 24%D1% (%Lang% :Value_13 1&Call :S24_FastUser stop disabled 1)
	if %%a EQU 25%E1% (%Lang% :Value_13 0&Call :S25_FontCache start demand)
	if %%a EQU 25%D1% (%Lang% :Value_13 1&Call :S25_FontCache stop disabled)
	if %%a EQU 26%E1% (%Lang% :Value_13 0&Call :S26_Insider start demand)
	if %%a EQU 26%D1% (%Lang% :Value_13 1&Call :S26_Insider stop disabled)
	if %%a EQU 27%E1% (%Lang% :Value_13 0&Call :S27_Biometric start demand)
	if %%a EQU 27%D1% (%Lang% :Value_13 1&Call :S27_Biometric stop disabled)
	if %%a EQU 28%E1% (%Lang% :Value_13 0&Call :S28_HyperV demand Enable For 1 on)
	if %%a EQU 28%D1% (%Lang% :Value_13 1&Call :S28_HyperV disabled Disable "::" 0 off)
	if %%a EQU 29%E1% (%Lang% :Value_13 0&Call :S29_SystemRestore start demand ENABLE 0 boot)
	if %%a EQU 29%D1% (%Lang% :Value_13 1&Call :S29_SystemRestore stop disabled DISABLE 1 disabled)
	if %%a EQU 30%E1% (%Lang% :Value_13 0&Call :S30_DriverUpdate 0 1)
	if %%a EQU 30%D1% (%Lang% :Value_13 1&Call :S30_DriverUpdate 1 0)
	if %%a EQU 31%E1% (%Lang% :Value_13 0&Call :S31_MemoryCompression Enable)
	if %%a EQU 31%D1% (%Lang% :Value_13 1&Call :S31_MemoryCompression Disable)
	if %%a EQU 32%E1% (%Lang% :Value_13 0&Call :S32_Defrag start demand Enable)
	if %%a EQU 32%D1% (%Lang% :Value_13 1&Call :S32_Defrag stop disabled Disable)
	if %%a EQU 33%E1% (%Lang% :Value_13 0&%Lang% :Service_33&Call :O33_38_40_Capabilities Add MSPaint)
	if %%a EQU 33%D1% (%Lang% :Value_13 1&%Lang% :Service_33&Call :O33_38_40_Capabilities Remove MSPaint)
	if %%a EQU 34%E1% (%Lang% :Value_13 0&%Lang% :Service_34&Call :O33_38_40_Capabilities Add WordPad)
	if %%a EQU 34%D1% (%Lang% :Value_13 1&%Lang% :Service_34&Call :O33_38_40_Capabilities Remove WordPad)
	if %%a EQU 35%E1% (%Lang% :Value_13 0&%Lang% :Service_35&Call :O33_38_40_Capabilities Add Notepad)
	if %%a EQU 35%D1% (%Lang% :Value_13 1&%Lang% :Service_35&Call :O33_38_40_Capabilities Remove Notepad
					   Regedit /s %Location%\Bin\Right-Click.Text.Document.reg)
	if %%a EQU 36%E1% (%Lang% :Value_13 0&%Lang% :Service_36&Call :O33_38_40_Capabilities Add StepsRecorder)
	if %%a EQU 36%D1% (%Lang% :Value_13 1&%Lang% :Service_36&Call :O33_38_40_Capabilities Remove StepsRecorder)
	if %%a EQU 37%E1% (%Lang% :Value_13 0&%Lang% :Service_37&Call :O33_38_40_Capabilities Add PowerShell.ISE)
	if %%a EQU 37%D1% (%Lang% :Value_13 1&%Lang% :Service_37&Call :O33_38_40_Capabilities Remove PowerShell.ISE)
	if %%a EQU 38%E1% (%Lang% :Value_13 0&%Lang% :Service_38&Call :O33_38_40_Capabilities Add MathRecognizer)
	if %%a EQU 38%D1% (%Lang% :Value_13 1&%Lang% :Service_38&Call :O33_38_40_Capabilities Remove MathRecognizer)
	if %%a EQU 39%E1% (%Lang% :Value_13 0&Call :O39_WindowsMediaPlayer start demand Enable Dism)
	if %%a EQU 39%D1% (%Lang% :Value_13 1&Call :O39_WindowsMediaPlayer stop disabled Disable ::)
	if %%a EQU 40%E1% (%Lang% :Value_13 0&%Lang% :Service_40&Call :O33_38_40_Capabilities Add InternetExplorer)
	if %%a EQU 40%D1% (%Lang% :Value_13 1&%Lang% :Service_40&Call :O33_38_40_Capabilities Remove InternetExplorer)
	if %%a EQU 41%E1% (%Lang% :Value_13 0&Call :O41_WSL Enable)
	if %%a EQU 41%D1% (%Lang% :Value_13 1&Call :O41_WSL Disable)
	if %%a EQU 42%E1% (%Lang% :Value_13 0&%Lang% :Service_42&Call :O42_44_Features Enable NetFX3)
	if %%a EQU 42%D1% (%Lang% :Value_13 1&%Lang% :Service_42&Call :O42_44_Features Disable NetFX3)
	if %%a EQU 43%E1% (%Lang% :Value_13 0&%Lang% :Service_43&Call :O42_44_Features Enable IIS-ASPNET45)
	if %%a EQU 43%D1% (%Lang% :Value_13 1&%Lang% :Service_43&Call :O42_44_Features Disable IIS-ASPNET45)
	if %%a EQU 44%E1% (%Lang% :Value_13 0&%Lang% :Service_44&Call :O42_44_Features Enable DirectPlay)
	if %%a EQU 44%D1% (%Lang% :Value_13 1&%Lang% :Service_44&Call :O42_44_Features Disable DirectPlay)
	if %%a EQU 45%E1% (%Lang% :Value_13 0&Call :O45_CompactOS always)
	if %%a EQU 45%D1% (%Lang% :Value_13 1&Call :O45_CompactOS never)
	if %%a EQU 46%E1% (%Lang% :Value_13 0&Call :O46_WinPhoto 1)
	if %%a EQU 46%D1% (%Lang% :Value_13 1&Call :O46_WinPhoto 0)
	if %%a EQU 47%E1% (%Lang% :Value_13 0&Call :O47_AltTab 1)
	if %%a EQU 47%D1% (%Lang% :Value_13 1&Call :O47_AltTab 0)
	if %%a EQU 48%E1% (%Lang% :Value_13 0&Call :O48_Update2050 1)
	if %%a EQU 48%D1% (%Lang% :Value_13 1&Call :O48_Update2050 0)
	if %%a EQU 49%E1% (%Lang% :Value_13 0&%Lang% :Service_49&Call :P49_Svchost)
	if %%a EQU 49%D1% (%Lang% :Value_13 1&%Lang% :Service_49&Call :dword "HKLM\System\CurrentControlSet\Control" "SvcHostSplitThresholdInKB" "0x380000")
	if %%a EQU 50%E1% (%Lang% :Value_13 0&Call :P50_GameMode 1)
	if %%a EQU 50%D1% (%Lang% :Value_13 1&Call :P50_GameMode 0)
	if %%a EQU 51%E1% (%Lang% :Value_13 0&Call :P51_CoreParking 100 "Call :delete" "Call :delete2")
	if %%a EQU 51%D1% (%Lang% :Value_13 1&Call :P51_CoreParking 0 "Call :dword" "Call :dword")
	if %%a EQU 52%E1% (%Lang% :Value_13 0&Call :P52_Device enable)
	if %%a EQU 52%D1% (%Lang% :Value_13 1&Call :P52_Device disable)
	if %%a EQU 53%E1% (%Lang% :Value_13 0&Call :R53_TakeOwnerShip 1)
	if %%a EQU 53%D1% (%Lang% :Value_13 1&Call :R53_TakeOwnerShip 0)
	if %%a EQU 54%E1% (%Lang% :Value_13 0&Call :R54_Yonet 1)
	if %%a EQU 54%D1% (%Lang% :Value_13 1&Call :R54_Yonet 0)
	if %%a EQU 55%E1% (%Lang% :Value_13 0&Call :R55_RuntimeSettings 1)
	if %%a EQU 55%D1% (%Lang% :Value_13 1&Call :R55_RuntimeSettings 0)
	if %%a EQU 56%E1% (%Lang% :Value_13 0&Call :R56_Terminal 1)
	if %%a EQU 56%D1% (%Lang% :Value_13 1&Call :R56_Terminal 0)
	if %%a EQU 57%E1% (%Lang% :Value_13 0&Call :R57_OldMenu 1)
	if %%a EQU 57%D1% (%Lang% :Value_13 1&Call :R57_OldMenu 0)
)
Call :ProcessCompleted
goto Service_Management

:S1_Bluetooth
%Lang% :Service_1&timeout /t 1 /nobreak > NUL
:: Bluetooth (AVCTP hizmeti) | Bluetooth destek hizmeti | Bluetooth kullanıcı desteği hizmeti \ Ses ağ geçidi hizmeti
FOR %%a in (BthAvctpSvc bthserv BluetoothUserService BTAGService) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
sc config CDPUserSvc start= %3 > NUL 2>&1
net %1 CDPUserSvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : auto
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled
::-------------------------------------------------------
goto :eof

:S2_Phone
%Lang% :Service_2&timeout /t 1 /nobreak > NUL
:: Telefon | Telefon Hizmeti
FOR %%a in (TapiSrv PhoneSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
:: Bluetooth (AVCTP hizmeti) | Bluetooth destek hizmeti | Bluetooth kullanıcı desteği hizmeti | Ses ağ geçidi hizmeti
FOR %%a in (BthAvctpSvc bthserv BluetoothUserService BTAGService) do (sc config %%a start= %3 > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : demand
:: Kapat = %1 : stop  | %2 : disabled | %3 : demand
::-------------------------------------------------------
goto :eof

:S3_Printer
%Lang% :Service_3&timeout /t 1 /nobreak > NUL
sc config Spooler start= %3 > NUL 2>&1
net %1 Spooler /y > NUL 2>&1
:: Uzak Masaüstü Hizmetleri Kullanıcı Modu Bağlantı Noktası Yeniden Yönlendiricisi
sc config UmRdpService start= %2 > NUL 2>&1
net %1 UmRdpService /y > NUL 2>&1
DEL /F /Q /A %windir%\System32\spool\PRINTERS\* > NUL 2>&1
::----------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : auto
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled
::----------------------------------------------------------------------
goto :eof


:S4_Camera.Scanner
%Lang% :Service_4&timeout /t 1 /nobreak > NUL
:: Windows Kamera çerçeve sunucusu | Windows Kamera Çerçeve Sunucusu | Resim alma olayları (Windows Görüntü Alma-WIA) | Windows Resim Alma (Windows Görüntü Alma (WIA))
FOR %%a in (FrameServer FrameServerMonitor WiaRpc StiSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand
:: Kapat = %1 : stop  | %2 : disabled
::-------------------------------------------------------
goto :eof

:S5_Touch
%Lang% :Service_5&timeout /t 1 /nobreak > NUL
:: Kalem servisi
sc config PenService start= %2 > NUL 2>&1
net %1 PenService /y > NUL 2>&1
::Dokunmatik Klavyeyi ve el yazısı paneli hizmeit
sc config TabletInputService start= %2 > NUL 2>&1
net %1 TabletInputService /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand
:: Kapat = %1 : stop  | %2 : disabled
::-------------------------------------------------------
goto :eof

:S6_Fax
%Lang% :Service_6&timeout /t 1 /nobreak > NUL
Dism /Online /NoRestart /%~3-Capability /CapabilityName:Print.Fax.Scan~~~~0.0.1.0 > NUL 2>&1
sc config fax start= %~2 > NUL 2>&1
net %1 fax /y > NUL 2>&1
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : Add
:: Kapat = %1 : stop  | %2 : disabled | %3 : Remove
::---------------------------------------------------------------------
goto :eof

:S7_Bitlocker
%Lang% :Service_7&timeout /t 1 /nobreak > NUL
:: Bitlocker sürücü şifreleme hizmeti
sc config BDESVC start= %2 > NUL 2>&1
net %1 BDESVC /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : boot
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled
::------------------------------------------------------
goto :eof

:S8_LimitedNetwork
%Lang% :Service_8&timeout /t 1 /nobreak > NUL
:: Veri kullanımı
sc config DusmSvc start= %2 > NUL 2>&1
net %1 DusmSvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto
:: Kapat = %1 : stop  | %2 : disabled
::-------------------------------------------------------
goto :eof

:S9_IPHelper
%Lang% :Service_9&timeout /t 1 /nobreak > NUL
:: IP Yardımcısı | IP Çeviri Yapılandırma Hizmeti
sc config iphlpsvc start= %3 > NUL 2>&1
net %1 iphlpsvc /y > NUL 2>&1
sc config IpxlatCfgSvc start= %2 > NUL 2>&1
net %1 IpxlatCfgSvc /y > NUL 2>&1
::----------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : auto
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled
::----------------------------------------------------------------------
goto :eof

:S10_Hotspot
%Lang% :Service_10&timeout /t 1 /nobreak > NUL
:: Windows Mobil Etkin Nokta Hizmeti | Internet Bağlantısı Paylaşımı (ICS) | Uygulama katmanı ağ geçidi hizmeti
FOR %%a in (icssvc SharedAccess ALG) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand
:: Kapat = %1 : stop  | %2 : disabled
::-------------------------------------------------------
goto :eof

:S11_Radio.Plane.Mod
%Lang% :Service_11&timeout /t 1 /nobreak > NUL
:: Radyo yönetimi ve uçak modu hizmeti
sc config RMSvc start= %2 > NUL 2>&1
net %1 RMSvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand
:: Kapat = %1 : stop  | %2 : disabled
::-------------------------------------------------------
goto :eof

:S12_WPS
%Lang% :Service_12&timeout /t 1 /nobreak > NUL
:: Windows Şimdi Bağlan - Yapılandırma Dosyası Kaydedici
sc config wcncsvc start= %2 > NUL 2>&1
net %1 wcncsvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand
:: Kapat = %1 : stop  | %2 : disabled
::-------------------------------------------------------
goto :eof

:S13_WIFI
%Lang% :Service_13&timeout /t 1 /nobreak > NUL
:: WWAN Otomatik Yapılandırma | Kablosuz Yerel Ağ Otomatik Yapılandırma | Windows Şimdi Bağlan | TCP/IP NetBIOS Yardımcısı | 
FOR %%a in (WwanSvc WlanSvc wcncsvc lmhosts vwifibus NativeWifiP Ndisuio) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
sc config vwififlt start= %~3 > NUL 2>&1
net %1 vwififlt /y > NUL 2>&1
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : System
:: Kapat = %1 : stop  | %2 : disabled | %3 : Disabled
::---------------------------------------------------------------------
goto :eof

:S14_Location
%Lang% :Service_14&timeout /t 1 /nobreak > NUL
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
::    Aç = %1 : start  | %2 : demand    | %~3 : Allow |  %~4 : 1 | %5 : Call :delete2  | %~6 : "DisableLocation"
:: Kapat = %1 : stop   | %2 : disabled  | %~3 : Deny  |  %~4 : 0 | %5 : Call :dword    | %~6 : "DisableLocation 1" 
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

:S15_Miracast
%Lang% :Service_15&timeout /t 1 /nobreak > NUL
:: ConsentUx kullanıcı hizmeti | Miracast, DLNA kullanıcı arabirimini | Cihaz Akışı
FOR %%a in (ConsentUxUserSvc DevicePickerUserSvc DevicesFlowUserSvc) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand 
:: Kapat = %1 : stop  | %2 : disabled
::-------------------------------------------------------
goto :eof

:S16_Flow
%Lang% :Service_16&timeout /t 1 /nobreak > NUL
::PNRP Makine adı yayın hizmeti | Eş adı çözümleme protokolü | Eş ağ gruplandırma | Eşler arası ağ oluşturma kimlik yöneticisi | UPNP aygıt ana makinesi | Upnp Aygıt ana bilgisyarı (Ağdaki cihazları bulur)
FOR %%a in (PNRPAutoReg PNRPsvc p2psvc p2pimsvc upnphost QWAVE) do (
	sc config %%a start= %3 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
sc config SSDPSRV start= %4 > NUL 2>&1
net %~2 SSDPSRV /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : start   | %3 : demand    | %4 : demand
:: Kapat = %1 : stop  | %2 : stop    | %3 : disabled  | %4 : disabled
::  Özel = %1 : stop  | %2 : start   | %3 : disabled  | %4 : demand
::-------------------------------------------------------
goto :eof

:S17_RemoteDesktop
%Lang% :Service_17&timeout /t 1 /nobreak > NUL
:: Uzak masaüstü hizmetleri | Uzak Masaüstü Hizmetleri Kullanıcı Modu Bağlantı Noktası Yeniden Yönlendiricisi | Uzak Masaüstü Yapılandırması | Uzaktan Erişim Otomatik Bağlantı Yöneticisi | Uzaktan Erişim Bağlantı Yöneticisi | Uzaktan yordam çağrısı (RPC) bulucu
FOR %%a in (TermService UmRdpService SessionEnv RasAuto RasMan RpcLocator) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand
:: Kapat = %1 : stop  | %2 : disabled
::-------------------------------------------------------
goto :eof

:S18_Sysmain
%Lang% :Service_18&timeout /t 1 /nobreak > NUL
sc config SysMain start= %2 > NUL 2>&1
net %1 SysMain /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto
:: Kapat = %1 : stop  | %2 : disabled
::-------------------------------------------------------
goto :eof

:S19_Hibernate
::Hızlı başlangıç
%Lang% :Service_19&timeout /t 1 /nobreak > NUL
powercfg /hibernate %1
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" "%~2"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" "%~2"
::-------------------------------------------------------
::    Aç = %1 : On  | %~2 : 1
:: Kapat = %1 : Off | %~2 : 0
::-------------------------------------------------------
goto :eof

:S20_Wsearch
%Lang% :Service_20&timeout /t 1 /nobreak > NUL
Dism /Online /%~3-feature /featurename:SearchEngine-Client-Package /Quiet /NoRestart
:: Windows Search
sc config WSearch start= %2 > NUL 2>&1
net %1 WSearch /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : auto     | %3 : enable
:: Kapat = %1 : stop  | %2 : disabled | %3 : disable
::-------------------------------------------------------
goto :eof

:S21_Xbox
%Lang% :Service_21&timeout /t 1 /nobreak > NUL
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
::    Aç = %1 : start  | %2 : demand    | %3 : 1  |  %4 : 0  | %~5 : Call :delete2
:: Kapat = %1 : stop   | %2 : disabled  | %3 : 0  |  %4 : 2  | %~5 : Call :dword
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

:S22_MixedReality
%Lang% :Service_22&timeout /t 1 /nobreak > NUL
:: Uzlamsal veri hizmeti | Volumetrik ses oluşturucu hizmeti | Windows algılama benzetimi hizmeti | Windows Algılama Hizmeti | Windows Mixed Reality OpenXR Service
FOR %%a in (SharedRealitySvc VacSvc perceptionsimulation spectrum MixedRealityOpenXRSvc) do (
	sc config %%a start= %1 > NUL 2>&1)
::------------------------------------------
::    Aç = %1 : demand 
:: Kapat = %1 : disabled
::------------------------------------------
goto :eof

:S23_Compability
%Lang% :Service_23&timeout /t 1 /nobreak > NUL
For %%a in (DPS WdiServiceHost WdiSystemHost) do (
	sc config %%a start= %~2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1
)
sc config PcaSvc start= %~3 > NUL 2>&1
net %1 PcaSvc /y > NUL 2>&1
Call :dword "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisablePCA" %4
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : auto     | %3 : demand    | %4 : 0
:: Kapat = %1 : stop  | %2 : disabled | %3 : disabled  | %4 : 1
::---------------------------------------------------------------------
goto :eof

:S24_FastUser
%Lang% :Service_24&timeout /t 1 /nobreak > NUL
Call :dword "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" "HideFastUserSwitching" %3
Call :dword "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\System" "HideFastUserSwitching" %3
sc config seclogon start= %2 > NUL 2>&1
net %1 seclogon /y > NUL 2>&1
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : 0
:: Kapat = %1 : stop  | %2 : disabled | %3 : 1
::---------------------------------------------------------------------
goto :eof

:S25_FontCache
%Lang% :Service_25&timeout /t 1 /nobreak > NUL
For %%a in (FontCache FontCache3.0.0.0) do (
	sc config %%a start= %~2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1
)
::---------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand
:: Kapat = %1 : stop  | %2 : disabled
::---------------------------------------------------------------------
goto :eof

:S26_Insider
%Lang% :Service_26&timeout /t 1 /nobreak > NUL
:: Windows Insider Hizmeti
sc config wisvc start= %2 > NUL 2>&1
net %1 wisvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand 
:: Kapat = %1 : stop  | %2 : disabled
::-------------------------------------------------------
goto :eof

:S27_Biometric
%Lang% :Service_27&timeout /t 1 /nobreak > NUL
:: Windows Biyometrik Hizmeti
sc config WbioSrvc start= %2 > NUL 2>&1
net %1 WbioSrvc /y > NUL 2>&1
::-------------------------------------------------------
::    Aç = %1 : start | %2 : demand
:: Kapat = %1 : stop  | %2 : disabled
::-------------------------------------------------------
goto :eof

:S28_HyperV
%Lang% :Service_28&timeout /t 1 /nobreak > NUL
:: %~3 /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-All /Quiet /NoRestart
FOR %%a in (HvHost vmicvss vmicguestinterface vmicshutdown vmicvmsession vmicheartbeat vmicrdv vmickvpexchange vmictimesync vmms vmcompute) do (
	sc config %%a start= %1 > NUL 2>&1)
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" "Enabled" "%~4"
bcdedit /set hypervisorlaunchtype %5
::------------------------------------------
::    Aç = %1 : demand    | %2 : Enable  | %~3 : For  | %~4: 1  | %5 : on  
:: Kapat = %1 : disabled  | %2 : Disable | %~3 : ::   | %~4: 0  | %5 : off
::------------------------------------------
goto :eof

:S29_SystemRestore
%Lang% :Service_29&timeout /t 1 /nobreak > NUL
:: Windows Yedekleme ve Geri Yükleme hizmeti | Birim Gölge kopyası | Microsoft Yazılımı Gölge Kopya Sağlayıcısı | Blok Düzeyinde Yedekleme Altyapı Hizmeti | Dosya geçmişi hizmeti
FOR %%a in (SDRSVC VSS swprv wbengine fhsvc) do (
	sc config %%a start= %2 > NUL 2>&1
	net %1 %%a /y > NUL 2>&1)
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /%3 > NUL 2>&1
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableConfig" "%~4"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableSR" "%~4"
::-------------------------------------------------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : ENABLE  | %~4 : 0  | %5 : boot
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE | %~4 : 1  | %5 : disabled
::-------------------------------------------------------------------------------
goto :eof

:S30_DriverUpdate
%Lang% :Service_30&timeout /t 1 /nobreak > NUL
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Update" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update\ExcludeWUDriversInQualityUpdate" "value" "%~1"
Call :dword "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" "ExcludeWUDriversInQualityUpdate" "%~1"
Call :dword "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" "%~2"
gpupdate /force > NUL 2>&1
::-------------------------------------
::    Aç = %~1 : 0  | %~2: 1
:: Kapat = %~1 : 1  | %~2: 0
::-------------------------------------
goto :eof

:S31_MemoryCompression
%Lang% :Service_31&timeout /t 1 /nobreak > NUL
Call :Powershell "%~1-MMAgent -mc"
::-------------------------------------
::    Aç = %~1 : Enable  
:: Kapat = %~1 : Disable
::-------------------------------------
goto :eof

:S32_Defrag 
%Lang% :Service_32&timeout /t 1 /nobreak > NUL
sc config defragsvc start= %~2 > NUL 2>&1
net %~1 defragsvc /y > NUL 2>&1
schtasks /Change /TN "Microsoft\Windows\Defrag\ScheduledDefrag" /%~3
::-------------------------------------
::    Aç = %~1 : start   | %~2: demand    | %~3: Enable
:: Kapat = %~1 : stop    | %~2: disabled  | %~3: Disable
::-------------------------------------
goto :eof

:O33_38_40_Capabilities
FOR /F "tokens=1" %%a in ('Findstr /i "%~2" %Location%\Bin\Data\Capabilities.txt') do (
	Dism /Online /%~1-Capability /CapabilityName:%%a /NoRestart
)
::-------------------------------------
::    Aç = %~1: Remove  | %~2: Find ile bulunacak özellik adı  
:: Kapat = %~1: Add     | %~2: Find ile bulunacak özellik adı
::-------------------------------------
goto :eof

:O39_WindowsMediaPlayer
%Lang% :Service_39&timeout /t 1 /nobreak > NUL
%~4 /Online /Add-Capability /CapabilityName:Media.WindowsMediaPlayer~~~~0.0.12.0 /NoRestart
Dism /Online /%3-Feature /FeatureName:MediaPlayback /NoRestart
Dism /online /%3-Feature /FeatureName:WindowsMediaPlayer /NoRestart
:: Windows Media Player Ağ Paylaşım Hizmeti
sc config WMPNetworkSvc start= %2 > NUL 2>&1
net %1 WMPNetworkSvc /y > NUL 2>&1
::-------------------------------------
::    Aç = %1 : start | %2 : demand   | %3 : ENABLE   | %~4: Dism
:: Kapat = %1 : stop  | %2 : disabled | %3 : DISABLE  | %~4  ::
::-------------------------------------
goto :eof

:O41_WSL
%Lang% :Service_41&timeout /t 1 /nobreak > NUL
FOR %%a in (Microsoft-Windows-Subsystem-Linux VirtualMachinePlatform) do (
	FOR /F "tokens=1" %%b in ('findstr /C:"%%a" %Location%\Bin\Data\Features.txt') do (
		Dism /Online /%~1-Feature /FeatureName:%%b /All /Quiet /NoRestart
	)
)
wsl --set-default-version 2
:: wsl.exe --install
::-------------------------------------
::    Aç = %~1 : Enable 
:: Kapat = %~1 : Disable
::-------------------------------------
goto :eof

:O42_44_Features
FOR /F "tokens=1" %%a in ('findstr /C:"%~2" %Location%\Bin\Data\Features.txt') do (
	Dism /Online /%~1-Feature /FeatureName:%%a /All /NoRestart
)
::-------------------------------------
::    Aç = %~1: Enable    | %~2: Find ile bulunacak özellik adı 
:: Kapat = %~1: Disable   | %~2: Find ile bulunacak özellik adı
::-------------------------------------
goto :eof

:O45_CompactOS
%Lang% :Service_45&timeout /t 1 /nobreak > NUL
Compact.exe /CompactOS:%~1
::-------------------------------------
::    Aç = %~1: always
:: Kapat = %~1: never
::-------------------------------------
goto :eof

:O46_WinPhoto
%Lang% :Service_46&timeout /t 1 /nobreak > NUL
if %~1 EQU 0 (Call :delete "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer")
if %~1 EQU 1 (Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".tif" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".tiff" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".png" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".bmp" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".jpg" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".jpeg" "PhotoViewer.FileAssoc.Tiff"
			  Call :sz "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" ".ico" "PhotoViewer.FileAssoc.Tiff")
::-------------------------------------
::    Aç = %~1: 1
:: Kapat = %~1: 0
::-------------------------------------
goto :eof

:O47_AltTab
%Lang% :Service_47&timeout /t 1 /nobreak > NUL
if %~1 EQU 0 (Call :delete2 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "AltTabSettings")
if %~1 EQU 1 (Call :dword "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "AltTabSettings" 1)
::-------------------------------------
::    Aç = %~1: 1
:: Kapat = %~1: 0
::-------------------------------------
goto :eof

:O48_Update2050
%Lang% :Service_48&timeout /t 1 /nobreak > NUL
Call :Time&Call :Date
if %~1 EQU 0 (Call :delete2 "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesStartTime"
			  Call :delete2 "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesStartTime"
			  Call :delete2 "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseUpdatesExpiryTime"
			  Call :delete2 "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesEndTime"
			  Call :delete2 "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesEndTime")
if %~1 EQU 1 (Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseFeatureUpdatesStartTime" "%DateYear%T%Time%Z"
			  Call :sz "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "PauseQualityUpdatesStartTime" "%DateYear%T%Time%Z"
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
::    Aç = %~1: 1
:: Kapat = %~1: 0
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

:P50_GameMode
%Lang% :Service_50&timeout /t 1 /nobreak > NUL
Call :dword "HKCU\SOFTWARE\Microsoft\GameBar" "AutoGameModeEnabled" %1
::-------------------------------------
::    Aç = %~1 : 1  
:: Kapat = %~1 : 0
::-------------------------------------
goto :eof

:P51_CoreParking
%Lang% :Service_51&timeout /t 1 /nobreak > NUL
Call :dword "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
Call :dword "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
%~2 "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
%~2 "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMax" "%~1"
Call :dword "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" "ValueMin" "0"
%~3 "HKLM\SYSTEM\CurrentControlSet\Control\Power" "CoreParkingDisabled" "0"
::-------------------------------------
::    Aç = %~1 : 100  |  %~2: Call :delete |  %~3: Call :delete2
:: Kapat = %~1 : 0    |  %~2: Call :dword  |  %~3: Call :dword
::-------------------------------------
goto :eof

:P52_Device
%Lang% :Service_52&timeout /t 1 /nobreak > NUL
Call :Powershell "Get-PnpDevice -FriendlyName 'WAN Miniport (PPPOE)' | Disable-PnpDevice -Confirm:$false"
"%Location%\Bin\DevManView.exe" /%~1 "WAN Miniport (IKEv2)"
"%Location%\Bin\DevManView.exe" /%~1 "WAN Miniport (IP)"
"%Location%\Bin\DevManView.exe" /%~1 "WAN Miniport (IPv6)"
"%Location%\Bin\DevManView.exe" /%~1 "WAN Miniport (L2TP)"
"%Location%\Bin\DevManView.exe" /%~1 "WAN Miniport (Network Monitor)"
"%Location%\Bin\DevManView.exe" /%~1 "WAN Miniport (PPPOE)"
"%Location%\Bin\DevManView.exe" /%~1 "WAN Miniport (PPTP)"
"%Location%\Bin\DevManView.exe" /%~1 "WAN Miniport (SSTP)"
"%Location%\Bin\DevManView.exe" /%~1 "NDIS Virtual Network Adapter Enumerator"
"%Location%\Bin\DevManView.exe" /%~1 "Microsoft RRAS Root Enumerator"
"%Location%\Bin\DevManView.exe" /%~1 "High Precision Event Timer"
"%Location%\Bin\DevManView.exe" /%~1 "Composite Bus Enumerator"
"%Location%\Bin\DevManView.exe" /%~1 "UMBus Root Bus Enumerator"
"%Location%\Bin\DevManView.exe" /%~1 "SM Bus Controller"
"%Location%\Bin\DevManView.exe" /%~1 "AMD SMBus"
"%Location%\Bin\DevManView.exe" /%~1 "Intel SMBus"
"%Location%\Bin\DevManView.exe" /%~1 "AMD PSP"
"%Location%\Bin\DevManView.exe" /%~1 "Intel Management Engine"
"%Location%\Bin\DevManView.exe" /%~1 "Microsoft Kernel Debug Network Adapter"
::-------------------------------------
::    Aç = %~1 : enable
:: Kapat = %~1 : disable
::-------------------------------------
goto :eof

:R53_TakeOwnerShip
%Lang% :Service_53&timeout /t 1 /nobreak > NUL
if %~1 EQU 0 (Call :delete "HKCR\*\shell\runas"
			  Call :delete "HKCR\Directory\shell\runas")
if %~1 EQU 1 (Call :vesz "HKCR\*\shell\runas" "%Value2%" 
			  Call :sz "HKCR\*\shell\runas" "Icon" "imageres.dll,73" 
			  Call :sz "HKCR\*\shell\runas" "NoWorkingDirectory" "" 
			  Call :vesz "HKCR\*\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F" 
			  Call :sz "HKCR\*\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F" 
			  Call :vesz "HKCR\Directory\shell\runas" "%Value2%" 
			  Call :sz "HKCR\Directory\shell\runas" "Icon" "imageres.dll,73" 
			  Call :sz "HKCR\Directory\shell\runas" "NoWorkingDirectory" "" 
			  Call :vesz "HKCR\Directory\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t" 
			  Call :sz "HKCR\Directory\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t")
::-------------------------------------
::    Aç = %~1: 1
:: Kapat = %~1: 0
::-------------------------------------
goto :eof

:R54_Yonet
%Lang% :Service_54&timeout /t 1 /nobreak > NUL
if %~1 EQU 0 (Call :delete "HKCR\Directory\background\shell\Yonet")
if %~1 EQU 1 (Call :expandsz "HKCR\Directory\background\shell\Yonet" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\1.ico"
			  Call :sz "HKCR\Directory\background\shell\Yonet" "MUIVerb" "%Value2%"
			  Call :sz "HKCR\Directory\background\shell\Yonet" "Position" "Top"
			  Call :sz "HKCR\Directory\background\shell\Yonet" "SubCommands" ""
			  ::
			  Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\1Control" "Icon" "%%%%SystemRoot%%%%\system 32\shell32.dll,21"
			  Call :sz "HKCR\Directory\background\shell\Yonet\shell\1Control" "MUIVerb" "%Value3%"
			  Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\1Control\command"  "%%%%SystemRoot%%%%\system32\control.exe"
			  ::
			  Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\Settings" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\5.ico"
			  Call :sz "HKCR\Directory\background\shell\Yonet\shell\Settings" "MUIVerb" "%Value4%"
			  Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\Settings\command" "%%%%SystemRoot%%%%\NSudo.exe -U:E -P:E -ShowWindowMode:hide cmd /c start ms-settings:"
			  ::
			  Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\3powercfg" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\4.ico"
			  Call :sz "HKCR\Directory\background\shell\Yonet\shell\3powercfg" "MUIVerb" "%Value5%"
			  Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\3powercfg\command"  "%%%%SystemRoot%%%%\system32\control.exe powercfg.cpl"
			  ::
			  Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\4Taskmgr" "Icon" "%%%%SystemRoot%%%%\system32\taskmgr.exe"
			  Call :sz "HKCR\Directory\background\shell\Yonet\shell\4Taskmgr" "MUIVerb" "%Value6%"
			  Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\4Taskmgr\command"  "%%%%SystemRoot%%%%\system32\taskmgr.exe"
			  ::
			  Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\5CMD" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\2.ico"
			  Call :sz "HKCR\Directory\background\shell\Yonet\shell\5CMD" "MUIVerb" "%Value7%"
			  Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\5CMD\command"  "%%%%SystemRoot%%%%\NSudo.exe -U:T -P:E cmd.exe /k title Trusted Installer / OgnitorenKs"
			  ::
			  Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\6Regedit" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\3.ico"
			  Call :sz "HKCR\Directory\background\shell\Yonet\shell\6Regedit" "MUIVerb" "%Value8%"
			  Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\6Regedit\command"  "%%%%SystemRoot%%%%\NSudo.exe -U:T -P:E regedit.exe"
			  ::
			  Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\7ExplorerRestart" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\6.ico"
			  Call :sz "HKCR\Directory\background\shell\Yonet\shell\7ExplorerRestart" "MUIVerb" "%Value9%"
			  Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\7ExplorerRestart\command" "%%%%SystemRoot%%%%\NSudo.exe -U:E -P:E -ShowWindowMode:hide cmd /c taskkill /f /im explorer.exe&&start explorer"
			  ::
			  Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\8TempClear" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\7.ico"
			  Call :sz "HKCR\Directory\background\shell\Yonet\shell\8TempClear" "MUIVerb" "%Value10%"
			  Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\8TempClear\command" "%%%%SystemRoot%%%%\NSudo.exe -U:E -P:E -ShowWindowMode:hide cmd /c RD /S /Q %%%%%temp%%%%"
			  ::
			  Call :expandsz "HKCR\Directory\background\shell\Yonet\shell\9IconCache" "Icon" "%%%%SystemRoot%%%%\ico\RightClick\8.ico"
			  Call :sz "HKCR\Directory\background\shell\Yonet\shell\9IconCache" "MUIVerb" "%Value11%"
			  Call :vexpandsz "HKCR\Directory\background\shell\Yonet\shell\9IconCache\command" "%%%%SystemRoot%%%%\NSudo.exe -U:E -P:E -ShowWindowMode:hide cmd /c %%%%Windir%%%%\ReIconCache.exe /I /F"
			  Call :PSExtract 1 "%Location%\Bin\ico\RightClickYonet.zip" "%Windir%")
::-------------------------------------
::    Aç = %~1: 1
:: Kapat = %~1: 0
::-------------------------------------
goto :eof

:R55_RuntimeSettings
%Lang% :Service_55&timeout /t 1 /nobreak > NUL
if %~1 EQU 0 (Call :delete "HKCR\exefile\shell\Priority")
if %~1 EQU 1 (Call :sz "HKCR\exefile\shell\Priority" "MUIVerb" "%Value2%"
			  Call :sz "HKCR\exefile\shell\Priority" "SubCommands" ""
			  Call :sz "HKCR\exefile\shell\Priority" "Icon" "imageres.dll,109"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\001flyout" "%Value3%"
			  Call :sz "HKCR\exefile\Shell\Priority\shell\001flyout" "Icon" "%%%%windir%%%%\ico\5.ico"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\001flyout\command" "cmd /c start \"\" /High \"%%%%1\""
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\002flyout" "%Value4%"
			  Call :sz "HKCR\exefile\Shell\Priority\shell\002flyout" "Icon" "%%%%windir%%%%\ico\4.ico"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\002flyout\command" "cmd /c start \"\" /Abovenormal \"%%%%1\""
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\003flyout" "%Value5%"
			  Call :sz "HKCR\exefile\Shell\Priority\shell\003flyout" "Icon" "%%%%windir%%%%\ico\3.ico"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\003flyout\command" "cmd /c start \"\" /Normal \"%%%%1\""
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\004flyout" "%Value6%"
			  Call :sz "HKCR\exefile\Shell\Priority\shell\004flyout" "Icon" "%%%%windir%%%%\ico\2.ico"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\004flyout\command" "cmd /c start \"\" /Belownormal \"%%%%1\""
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\005flyout" "%Value7%"
			  Call :sz "HKCR\exefile\Shell\Priority\shell\005flyout" "Icon" "%%%%windir%%%%\ico\1.ico"
			  Call :vesz "HKCR\exefile\Shell\Priority\shell\005flyout\command" "cmd /c start \"\" /Low \"%%%%1\""
			  Call :PSExtract 1 "%Location%\Bin\ico\RightClickYonet.zip" "%windir%")
::-------------------------------------
::    Aç = %~1: 1
:: Kapat = %~1: 0
::-------------------------------------
goto :eof

:R56_Terminal
%Lang% :Service_56&timeout /t 1 /nobreak > NUL
if %Win% EQU 10 (%Lang% :Service56_1
				 timeout /t 2 /nobreak > NUL
				 goto :eof)
if %~1 EQU 0 (Call :delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked")
if %~1 EQU 1 (Call :sz "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" "{9F156763-7844-4DC4-B2B1-901F640F5155}" "")
::-------------------------------------
::    Aç = %~1: 1
:: Kapat = %~1: 0
::-------------------------------------
goto :eof

:R57_OldMenu
%Lang% :Service_57&timeout /t 1 /nobreak > NUL
if %Win% EQU 10 (%Lang% :Service56_1
				 timeout /t 2 /nobreak > NUL
				 goto :eof)
if %~1 EQU 0 (Call :delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32")
if %~1 EQU 1 (Call :key "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32")
Call :ExplorerReset
::-------------------------------------
::    Aç = %~1: 1
:: Kapat = %~1: 0
::-------------------------------------
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:PingMeter
mode con cols=48 lines=25
%Lang% :Ping_1
Call :PingMeter1 www.youtube.com
echo   %R%[90m•%R%[33m Youtube:%R%[37m %Value1% %R%[90mMS%R%[0m
Call :PingMeter1 www.facebook.com
echo   %R%[90m•%R%[33m Facebook:%R%[37m %Value1% %R%[90mMS%R%[0m
Call :PingMeter1 www.twitter.com
echo   %R%[90m•%R%[33m Twitter:%R%[37m %Value1% %R%[90mMS%R%[0m
Call :PingMeter1 www.instagram.com
echo   %R%[90m•%R%[33m Instagram:%R%[37m %Value1% %R%[90mMS%R%[0m
Call :PingMeter1 www.reddit.com
echo   %R%[90m•%R%[33m Reddit:%R%[37m %Value1% %R%[90mMS%R%[0m
Call :PingMeter1 www.twitch.tv
echo   %R%[90m•%R%[33m Twitch:%R%[37m %Value1% %R%[90mMS%R%[0m
echo  %R%[90m ► DNS %R%[0m
Call :PingMeter1 1.1.1.1 
Call :PingMeter2 1.0.0.1
echo   %R%[90m•%R%[33m Cloudflare:%R%[37m %Value1%-%Value2% %R%[90mMS%R%[0m
Call :PingMeter1 8.8.8.8 
Call :PingMeter2 8.8.4.4
echo   %R%[90m•%R%[33m Google:%R%[37m %Value1%-%Value2% %R%[90mMS%R%[0m
Call :PingMeter1 9.9.9.9 
Call :PingMeter2 149.112.112.112
echo   %R%[90m•%R%[33m Quad9:%R%[37m %Value1%-%Value2% %R%[90mMS%R%[0m
Call :PingMeter1 208.67.222.222 
Call :PingMeter2 208.67.220.220
echo   %R%[90m•%R%[33m OpenDns:%R%[37m %Value1%-%Value2% %R%[90mMS%R%[0m
%Lang% :Ping_2
%Lang% :Ping_Value_1
set /p Value=%R%[32m  %Choice%: %R%[0m
	if %Value% EQU x (goto menu)
	if %Value% EQU X (goto menu)
Call :PingMeter1 %Value%
echo.
echo   ►%R%[37m %Value1% %R%[90mMS%R%[0m
echo.
%Lang% :Extra_13
pause > NUL
goto menu

:PingMeter1
for /f "tokens=9" %%a in ('ping -n 1 %~1') do SET Value1=%%a
set Value1=%Value1:~0,-2%
goto :eof

:PingMeter2
for /f "tokens=9" %%a in ('ping -n 1 %~1') do SET Value2=%%a
set Value2=%Value2:~0,-2%
goto :eof

:: --------------------------------------------------------------------------------------------------------
:Language_Menu
mode con cols=55 lines=15
echo.
echo.
%Lang% :Lang_1
%Lang% :Value_1
Call :MobileValue "Value_1" menu
	if %MobileValue% EQU 0 (start https://ognitorenks.com.tr/iletisim)
	if %MobileValue% EQU 1 (set Lang=Call "%Location%\Bin\Language\Turkish.cmd"
							set Value2=Turkish)
	if %MobileValue% EQU 2 (set Lang=Call "%Location%\Bin\Language\English.cmd"
							set Value2=English)
	if %MobileValue% EQU 3 (set Lang=Call "%Location%\Bin\Language\German.cmd"
							set Value2=German)
	if %MobileValue% EQU 4 (FOR /F "tokens=2" %%g in ('Findstr /i "Service_Language" %Location%\Bin\Settings.ini') do (Call :Powershell "(Get-Content %Location%\Bin\Settings.ini) | ForEach-Object { $_ -replace '%%g', 'Auto' } | Set-Content '%Location%\Bin\Settings.ini'")
							goto OgnitorenKs.Toolbox)
:: Manuel dil ayarını aktfileştiri
FOR /F "tokens=2" %%g in ('Findstr /i "Service_Language" %Location%\Bin\Settings.ini') do (
	Call :Powershell "(Get-Content %Location%\Bin\Settings.ini) | ForEach-Object { $_ -replace '%%g', 'Demand' } | Set-Content '%Location%\Bin\Settings.ini'"
)
:: Seçilen dili kayıt eder.
FOR /F "tokens=2" %%g in ('Findstr /i "Select_Language" %Location%\Bin\Settings.ini') do (
	Call :Powershell "(Get-Content %Location%\Bin\Settings.ini) | ForEach-Object { $_ -replace '%%g', '%Value2%' } | Set-Content '%Location%\Bin\Settings.ini'"
)
goto OgnitorenKs.Toolbox

:: --------------------------------------------------------------------------------------------------------
:Exit
cls
DEL /F /Q /A %temp%\* > NUL 2>&1
RD /S /Q %temp%\* > NUL 2>&1
DEL /F /Q /A %Location%\Bin\Data\* > NUL 2>&1
exit

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:_TOOLBOX__DEPO__HANGAR_
:Value_Reset
set DL=
set DR=
set DO=
set SO=
set E1=
set D1=
set Value=
set value=
set value2=
set Value2=
set Value3=
set Value4=
set Value5=
set Value6=
set Value7=
set Value8=
set Value9=
set Value10=
set Value11=
set Svchost=
set link=
set regtur=
set deger=
set Servis_Value1=
set Servis_Value2=
set SVL=
set SVR=
goto :eof

:: --------------------------------------------------------------------------------------------------------
:PSDownload
FOR /F "tokens=1" %%i in ('Findstr /C:"%~n1%~x1" %Location%\Bin\Extra\Links.txt') do set link=%%i
Call :Powershell "& { iwr %link% -OutFile %~1 }"
goto :eof

:: --------------------------------------------------------------------------------------------------------
:PSExtract
:: %~1: Yetki ayarı | %~2: Sıkıştırılmış dosyanın bulunduğu yer  |  %~3: Çıkarılacağı yer
if %~1 EQU 0 (Call :Powershell "Expand-Archive -Force '%~2' '%~3'")
if %~1 EQU 1 (%NSudo% Powershell -command "Expand-Archive -Force '%~2' '%~3'")
goto :eof

:: --------------------------------------------------------------------------------------------------------
:Powershell
:: Powershell komutları kullanıldığında komut istemi compact moda girmektedir. Bunu önlemek için karakter takımları arasında geçiş yapıyoruz.
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof

:: --------------------------------------------------------------------------------------------------------
:Date
:: Tarih bilgisi alınır
for /f "tokens=2" %%a in ('echo %date%') do set Date=%%a
:: YIL.AY.GÜN
set DateYear=%Date:~6%-%Date:~3,-5%-%Date:~0,-8%
:: GÜN.AY.YIL
set DateDay=%Date:~0,-8%.%Date:~3,-5%.%Date:~6%
goto :eof

:: --------------------------------------------------------------------------------------------------------
:Time
for /f "tokens=1" %%a in ('echo %time%') do set Time=%%a
goto :eof

:: --------------------------------------------------------------------------------------------------------
:MobileValue
%Lang% :%~1
set /p MobileValue=%R%[32m  %Choice% : %R%[0m
	if %MobileValue%==x (goto %~2)
	if %MobileValue%==X (goto %~2)
goto :eof

:: --------------------------------------------------------------------------------------------------------
:Upper
:: %~1: Değişken adı  | %~2: Girilen Hash Değeri
chcp 437 > NUL 2>&1
FOR /F %%g in ('Powershell -command "'%~2'.ToUpper()"') do (set %~1=%%g)
chcp 65001 > NUL 2>&1
goto :eof

:: --------------------------------------------------------------------------------------------------------
:Chocolatey
choco install -y --force --limit-output --ignore-checksums %~1
goto :eof

:: --------------------------------------------------------------------------------------------------------
:Winget
winget install -e --silent --force --accept-source-agreements --accept-package-agreements --id %~1
	if %errorlevel% NEQ 0 (cls&"%Location%\Bin\NSudo.exe" -U:C -Wait cmd /c winget install -e --silent --force --accept-source-agreements --accept-package-agreements --id %~1)
goto :eof

:: --------------------------------------------------------------------------------------------------------
:Check_OS
if %Win% EQU 10 (%Lang% :CheckOS_1)
if %Win% EQU 11 (%Lang% :CheckOS_2)
goto :eof

:: --------------------------------------------------------------------------------------------------------
:ExplorerReset
taskkill /f /im explorer.exe > NUL 2>&1
Call :Powershell "Start-Process 'C:\Windows\explorer.exe'"
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
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
set DL=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]█ -%R%[33m
set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]█ -%R%[33m
set DO=%R%[90m[%R%[36m %E1% %R%[90m]%R%[90m█ -%R%[33m
set SO=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]  -%R%[33m
set Servis_Value1=0
set Servis_Value2=0
set SVL=
set SVR=
goto :eof

:SV_None
if %Servis_Value1% EQU 1 (set DL=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[31m█%R%[90m -%R%[33m)
if %Servis_Value2% EQU 1 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[31m█%R%[90m -%R%[33m)
goto :eof

:SV_Left1
FOR %%g in (%~1) do (Call :SV_Left2 %%g)
goto :eof

:SV_Left2
set SVL=%~1
reg query "HKLM\SYSTEM\CurrentControlSet\Services\%SVL%" /v "Start" > NUL 2>&1
	if %errorlevel% EQU 1 (set Servis_Value1=1&Call :SV_Left3&goto :eof)
	if %errorlevel% EQU 0 (Call :SV_Left3&goto :eof)

:SV_Left3
reg query "HKLM\SYSTEM\CurrentControlSet\Services\%SVL%" /v "Start" 2>NUL | Findstr /i "0x4" > NUL 2>&1
	if %errorlevel% EQU 1 (set DL=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SV_Right1
FOR %%g in (%~1) do (Call :SV_Right2 %%g)
goto :eof

:SV_Right2
set SVR=%~1
reg query "HKLM\SYSTEM\CurrentControlSet\Services\%SVR%" /v "Start" 2>NUL
	if %errorlevel% EQU 1 (set Servis_Value2=1&Call :SV_Right3&goto :eof)
	if %errorlevel% EQU 0 (Call :SV_Right3&goto :eof)

:SV_Right3
reg query "HKLM\SYSTEM\CurrentControlSet\Services\%SVR%" /v "Start" 2>NUL | Findstr /i "0x4" > NUL 2>&1
	if %errorlevel% EQU 1 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SV_Capabilities1
set SVR=%~1
FOR /F "tokens=1" %%g in ('Findstr /i "%SVR%" %Location%\Bin\Data\Capabilities.txt') do (echo %%g > %Location%\Bin\Data\Capabilities2.txt)
Findstr /i "%SVR%" %Location%\Bin\Data\Capabilities2.txt > NUL 2>&1
	if %errorlevel% EQU 0 (Call :SV_Capabilities2&goto :eof)
	if %errorlevel% EQU 1 (set Servis_Value2=1&Call :SV_Capabilities2&goto :eof)

:SV_Capabilities2
Findstr /i "%SVR%" %Location%\Bin\Data\Capabilities.txt | Findstr /i "Installed" > NUL 2>&1
	if %errorlevel% EQU 0 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_Features
Findstr /i "%~1" %Location%\Bin\Data\Features.txt | Findstr /i "Enabled" > NUL 2>&1
	if %errorlevel% EQU 0 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SV_RegLeft1
set Value1=%~1
set Value2=%~2
set Value3=%~3
reg query "%Value1%" /v "%Value2%" > NUL 2>&1
	if %errorlevel% EQU 0 (Call :SV_RegLeft2&goto :eof)
	if %errorlevel% EQU 1 (set Servis_Value2=1&Call :SV_RegLeft2&goto :eof)

:SV_RegLeft2
reg query "%Value1%" /v "%Value2%" 2>NUL | Findstr /i "%Value3%" > NUL 2>&1
	if %errorlevel% EQU 1 (set DL=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SV_RegRight1
set Value1=%~1
set Value2=%~2
set Value3=%~3
reg query "%Value1%" /v "%Value2%" > NUL 2>&1
	if %errorlevel% EQU 0 (Call :SV_RegRight2&goto :eof)
	if %errorlevel% EQU 1 (set Servis_Value2=1&Call :SV_RegRight2&goto :eof)

:SV_RegRight2
reg query "%Value1%" /v "%Value2%" 2>NUL | Findstr /i "%Value3%" > NUL 2>&1
	if %errorlevel% EQU 1 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_RegRight_Ozel
reg query "%~1" /v "%~2" > NUL 2>&1
	if %errorlevel% EQU 0 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
	if %errorlevel% EQU 1 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]█ -%R%[33m)
goto :eof

:SVCheck_RegRight_Ozel2
reg query %~1 > NUL 2>&1
	if %errorlevel% EQU 0 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
	if %errorlevel% EQU 1 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]█ -%R%[33m)
goto :eof

:SVCheck_Memory
findstr /i "%~1" %Location%\Bin\Data\mc > NUL 2>&1
	if %errorlevel%==1 (set DL=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_Compact
Compact /CompactOS:Query | Findstr /i "The system is not in the Compact state" > NUL 2>&1
	if %errorlevel%==0 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]█ -%R%[33m)
	if %errorlevel%==1 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[32m♦%R%[90m -%R%[33m)
goto :eof

:SVCheck_OS10
if %Win% EQU 10 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[35m█%R%[90m -%R%[33m)
goto :eof

:SVCheck_OS11
if %Win% EQU 11 (set DR=%R%[90m[%R%[36m%E1%%R%[90m/%R%[36m%D1%%R%[90m]%R%[35m█%R%[90m -%R%[33m)
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:ProcessCompleted
mode con cols=39 lines=20
::--------------------------------------------------
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
%Lang% :Process_1
timeout /t 1 /nobreak > NUL
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
%Lang% :Process_2
set /p value=%R%[92m                   %R%[0m
	if %value% EQU R (shutdown -r -f -t 0&exit)
	if %value% EQU r (shutdown -r -f -t 0&exit)
goto :eof
