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
echo off
cls
chcp 65001 > NUL

:: Renklendirme komutları için ilgili bölüm aranılır.
setlocal
Call :ColorEnd

:: ==============================================================================================================================

FOR /F "tokens=2" %%a in ('findstr /C:"InternetCheck" %Location%\Settings.ini') do (set InternetCheck=%%a)

:: ==============================================================================================================================

:AdminManuel
:: Yönetici yetkisi kontrol edilir
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

:: ==============================================================================================================================
:: Konum bilgisi alınır
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Location=%Location:~0,-6%
Call :NSudo

:: ==============================================================================================================================
mode con cols=55 lines=13
echo.
echo.
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m             Katılımsız Kurulum Modu               %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%R%[33m Online%R%[90m  İlk açılışta indir, yükle, sil      │%R%[0m
echo  %R%[90m│   %R%[32m 2.%R%[33m Offline%R%[90m Şimdi indir ilk açılışta yükle, sil │%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p KatilimsizMod= %R%[92m İşlem : %R%[0m
:: ==============================================================================================================================

:katilimsizmenu
cls
mode con cols=73 lines=45
set xognitorenksx=%R%[90m►
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X
echo   %R%[90m┌───────────────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                   Katılımsız Kurulum Hazırlayıcı                  %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├───────────────────────────────────────────────────────────────────┤%R%[0m
echo   %R%[90m│%R%[37m ►%R%[90m İlk işlem%R%[32m '32'%R%[90m son işlem%R%[32m '33'%R%[90m numarasıyla yapılmalıdır          │%R%[0m
echo   %R%[90m│%R%[37m ►%R%[90m NTLite gibi programlar kapalı olmalıdır.                        │%R%[0m
echo   %R%[90m├────────────────────────────┬──────────────────────────────────────┤%R%[0m
echo   %R%[90m│%R%[32m    1-%R%[33m All in One Runtimes  %R%[90m│%xognitorenksx% Araçlar - Ayarlar                   %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Ram Temizleyici           %R%[90m│%R%[32m   28-%R%[37m OgnitorenKs Toolbox ekle       %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    2-%R%[36m ISLC                 %R%[90m│%R%[32m   29-%R%[37m Masaüstüne Dosya ekle          %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    3-%R%[36m Mem Reduct           %R%[90m│%R%[32m   30-%R%[37m Nihai Performans ekle          %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Tarayıcı                  %R%[90m│%R%[32m   31-%R%[37m Svchost Optimizasyon ekle      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    4-%R%[33m Google Chrome        %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    5-%R%[33m Mozilla Firefox      %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    6-%R%[33m Brave                %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    7-%R%[33m Microsoft Edge       %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    8-%R%[33m OperaGX              %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Sıkıştırma                %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    9-%R%[36m 7-Zip                %R%[90m│%R%[0m                                      %R%[90m│%R%[0m 
echo   %R%[90m│%R%[32m   10-%R%[36m Winrar               %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Multimedya                %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   11-%R%[33m ShareX               %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   12-%R%[33m K-Lite Codec         %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   13-%R%[33m VLC Media Player     %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   14-%R%[33m PotPlayer            %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Belgeler                  %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   15-%R%[36m Libre Office         %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   16-%R%[36m Adobe Reader         %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   17-%R%[36m PDF X-Change         %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   18-%R%[36m Notepad++            %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Temizlik                  %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   19-%R%[33m Hibit Uninstaller    %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   20-%R%[33m Revo Uninstaller     %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   21-%R%[33m Wise Care 365        %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   22-%R%[33m Unlocker             %R%[90m│%R%[0m                                      %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Diğer                     %R%[90m│%xognitorenksx% Katılımsız Hazırlayıcı              %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   23-%R%[36m OpenShell            %R%[90m│%R%[32m   32-%R%[93m Katılımsız dosyası oluştur     %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   24-%R%[36m TaskbarX             %R%[90m│%R%[32m   33-%R%[93m Katılımsız dosyasını tamamla   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   25-%R%[36m MSI Afterburner      %R%[90m│%xognitorenksx% Katılımsız Yedekleyici              %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   26-%R%[36m Everything           %R%[90m│%R%[32m   34-%R%[93m Katılımsız kurulum yedekle     %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   27-%R%[36m Glasswire            %R%[90m│%R%[32m   35-%R%[93m Yedek katılımsız kurulum ekle  %R%[90m│%R%[0m
echo   %R%[90m└────────────────────────────┴──────────────────────────────────────┘
set /p $multi=%R%[32m  Çoklu Seçim %R%[90mx,y: %R%[0m 
cls
echo   %R%[90m┌───────────────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                   Katılımsız Kurulum Hazırlayıcı                  %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├────────────────────────────┬──────────────────────────────────────┤%R%[0m
echo    →%R%[96m Seçilenler: %$multi%%R%[0m
echo.
FOR %%a in (%$multi%) do (
	if %%a EQU 1 if %KatilimsizMod%==1 (Call :AIO.Online) else (Call :AIO.Offline)
	if %%a EQU 2 if %KatilimsizMod%==1 (Call :ISLC.Online) else (Call :ISLC.Offline)
	if %%a EQU 3 if %KatilimsizMod%==1 (Call :ChocoPrint memreduct) else (Call :wget1 MemReduct.exe /S)
	if %%a EQU 4 if %KatilimsizMod%==1 (Call :ChocoPrint googlechrome) else (Call :wget1 GoogleChrome.msi /qn)
	if %%a EQU 5 if %KatilimsizMod%==1 (Call :ChocoPrint firefox) else (Call :wget1 Firefox.exe /S)
	if %%a EQU 6 if %KatilimsizMod%==1 (Call :ChocoPrint brave) else (Call :wget1 Brave.exe "--install --silent --system-level")
	if %%a EQU 7 if %KatilimsizMod%==1 (Call :ChocoPrint microsoft-edge) else (Call :wget1 Edge.msi /qn)
	if %%a EQU 8 if %KatilimsizMod%==1 (Call :ChocoPrint opera-gx) else (Call :wget1 OperaGX.exe "/silent /allusers=1 /launchopera=0 /setdefaultbrowser=0")
	if %%a EQU 9 if %KatilimsizMod%==1 (Call :ChocoPrint 7zip) else (Call :wget1 7-Zip.msi /qn)
	if %%a EQU 10 if %KatilimsizMod%==1 (Call :ChocoPrint winrar) else (Call :wget1 Winrar.exe /S)
	if %%a EQU 11 if %KatilimsizMod%==1 (Call :ChocoPrint sharex) else (Call :wget1 ShareX.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a EQU 12 if %KatilimsizMod%==1 (Call :ChocoPrint k-litecodecpackmega) else (Call :wget1 Klite.exe /verysilent)
	if %%a EQU 13 if %KatilimsizMod%==1 (Call :ChocoPrint vlc) else (Call :wget1 VLCMediaPlayer.exe "/L=1055 /S")
	if %%a EQU 14 if %KatilimsizMod%==1 (Call :ChocoPrint potplayer) else (Call :wget1 PotPlayer.exe /S)
	if %%a EQU 15 if %KatilimsizMod%==1 (Call :ChocoPrint libreoffice-fresh) else (Call :wget1 LibreOffice.msi "/qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL")
	if %%a EQU 16 if %KatilimsizMod%==1 (Call :ChocoPrint adobereader) else (Call :wget1 AdobeReader.exe "/sPB /rs /msi")
	if %%a EQU 17 if %KatilimsizMod%==1 (Call :ChocoPrint pdfxchangeeditor) else (Call :wget1 PdfXchange.msi "/quiet /norestart")
	if %%a EQU 18 if %KatilimsizMod%==1 (Call :ChocoPrint notepadplusplus) else (Call :wget1 Notepad.exe /S)
	if %%a EQU 19 if %KatilimsizMod%==1 (Call :OnlinePrint2 HibitUninstaller.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-") else  (Call :wget1 HibitUninstaller.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a EQU 20 if %KatilimsizMod%==1 (Call :ChocoPrint revo-uninstaller) else (Call :wget1 RevoUninstaller.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a EQU 21 if %KatilimsizMod%==1 (Call :OnlinePrint1 WiseCare365.zip WiseCare365.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-") else (Call :wget2 WiseCare365.zip WiseCare365.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a EQU 22 if %KatilimsizMod%==1 (Call :ChocoPrint io-unlocker) else (Call :wget1 Unlocker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %%a EQU 23 if %KatilimsizMod%==1 (Call :ChocoPrint open-shell) else (Call :wget1 OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu")
	if %%a EQU 24 if %KatilimsizMod%==1 (Call :ChocoPrint taskbarx) else (Call :TaskbarX)
	if %%a EQU 25 if %KatilimsizMod%==1 (Call :ChocoPrint msiafterburner) else (Call :wget1 MSIAfterburner.exe /S)
	if %%a EQU 26 if %KatilimsizMod%==1 (Call :ChocoPrint everything) else (Call :wget1 Everything.exe /S)
	if %%a EQU 27 if %KatilimsizMod%==1 (Call :ChocoPrint glasswire) else (Call :wget1 GlassWire.exe /S)
	if %%a EQU 28 (Call :Toolbox)
	if %%a EQU 29 (Call :DesktopFiles)
	if %%a EQU 30 (Call :NihaiPerformans)
	if %%a EQU 31 (Call :Svchost)
	if %%a EQU 32 (Call :OpenBat)
	if %%a EQU 33 (Call :CloseBat)
	if %%a EQU 34 (Call :KatilimsizYedekle)
	if %%a EQU 35 (Call :KatilimsizYukle)
)
Call :ProcessCompleted
goto katilimsizmenu

:: ==============================================================================================================================

:Toolbox
Call :PrintCheck "OgnitorenKs-Toolbox Setup masaüstüne ekleniyor" "OgnitorenKs Toolbox"
if %ErrorTime%==1 (goto :eof)
Call :Powershell "Expand-Archive -Force '%Location%\Files\Toolbox.zip' '%Mount%'"
(
echo.
echo echo ►%%R%%[33m OgnitorenKs-Toolbox Setup%%R%%[37m masaüstüne ekleniyor...%%R%%[0m
echo Call :Powershell "Expand-Archive -Force '%%Location%%\Toolbox.Kisayol.zip' 'C:\Users\%%username%%\Desktop'"
echo DEL /F /Q /A "%%Location%%\Toolbox.Kisayol.zip" ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:: ==============================================================================================================================

:DesktopFiles
Call :PrintCheck "Masaüstü dosyaları yükleniyor" "Masaüstü dosyaları"
if %ErrorTime%==1 (goto :eof)
Call :Powershell "Compress-Archive -Path '%Location%\Edit\Desktop\*' -DestinationPath '%Mount%\OgnitorenKs.Toolbox\Katilimsiz\DesktopFiles.zip'"
dir /b "%Mount%\OgnitorenKs.Toolbox\Katilimsiz\DesktopFiles.zip" > NUL 2>&1
	if %errorlevel%==1 (goto :eof)
(
echo.
echo echo ►%%R%%[33m Masaüstü dosyaları%%R%%[37m yükleniyor...%%R%%[0m
echo Call :Powershell "Expand-Archive -Force '%%Location%%\Katilimsiz\DesktopFiles.zip' 'C:\Users\%%username%%\Desktop'"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:: ==============================================================================================================================

:NihaiPerformans
Call :PrintCheck "Nihai Performans" "Nihai Performans"
if %ErrorTime%==1 (goto :eof)
(
echo.
echo echo ►%%R%%[33m Nihai Performans%%R%%[37m ekleniyor...%%R%%[0m
echo powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo echo.
echo for /f "tokens=4" %%%%a in ^('powercfg -list ^^^| findstr /C:"Nihai"'^) do ^(powercfg -setactive %%%%a^)
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat 
goto :eof

:: ==============================================================================================================================

:Svchost
Call :PrintCheck "Svchost optimizasyon" "Svchost optimizasyon"
if %ErrorTime%==1 (goto :eof)
(
echo.
echo echo ►%%R%%[33m Svchost optimizasyon%%R%%[37m yapılıyor...%%R%%[0m
echo FOR /F "tokens=4" %%%%g in ^('systeminfo ^^^| FIND "Total Physical Memory"'^) do set Svchost=%%%%g
echo set Svchost=%%Svchost:~0,-4%%
echo set /a Svchost=^(%%Svchost%%*1024*1024+1024000^)
echo reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x%%Svchost%% /f ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat 
goto :eof

:: ==============================================================================================================================

:TaskbarX
Call :wget3 TaskbarX.zip
(
echo.
echo echo ►%%R%%[33m TaskbarX%%R%%[37m kuruluyor...%%R%%[0m
echo Call :Powershell "Expand-Archive -Force '%%Location%%\Download\TaskbarX.zip' 'C:\Users\%%username%%\Desktop\TaskbarX'"
echo Call :Powershell "Start-Process 'C:\Users\%%username%%\Desktop\TaskbarX\TaskbarX Configurator.exe'"
echo Call :Powershell "Start-Process 'C:\Users\%%username%%\Desktop\TaskbarX\TaskbarX.exe'"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:: ==============================================================================================================================

:ISLC.Online
Call :PrintCheck "ISLC.zip" "ISLC"
if %ErrorTime%==1 (goto :eof)
(echo.
echo echo ►%%R%%[33m ISLC%%R%%[37m kuruluyor...%%R%%[0m
echo Call :wget2 ISLC.zip
echo Call :Powershell "Expand-Archive -Force '%%Location%%\Download\ISLC.zip' 'C:\'"
echo copy /y "C:\ISLC\ISLC.lnk" "C:\Users\%%username%%\Desktop" ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:ISLC.Offline
Call :wget3 ISLC.zip
if %ErrorTime%==1 (goto :eof)
(
echo.
echo echo ►%%R%%[33m ISLC%%R%%[37m kuruluyor...%%R%%[0m
echo Call :Powershell "Expand-Archive -Force '%%Location%%\Download\ISLC.zip' 'C:\'"
echo copy /y "C:\ISLC\ISLC.lnk" "C:\Users\%%username%%\Desktop" ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:: ==============================================================================================================================
:AIO.Three
Call :PrintCheck "NetFX3" "NetFX3"
if %ErrorTime%==1 (goto :eof)
(
echo.
echo Dism /Online /Get-Capabilities /format:table ^> %%temp%%\Capabilities.aio.txt
echo Dism /Online /Get-Features /format:table ^> %%temp%%\Features.aio.txt
echo.
echo FOR /F "tokens=3" %%%%a in ^('findstr /C:"NetFX3~~~~" %%temp%%\Capabilities.aio.txt'^) do set aiokontrol=%%%%a
echo echo %%aiokontrol%% ^| findstr /C:"Installed" ^> NUL 2^>^&1
echo 	if %%errorlevel%%==1 ^(echo ►%%R%%[33m Net Framework 3.5%%R%%[0m yükleniyor...
echo                         Dism /Online /Enable-Feature /Featurename:NetFx3 /All /Quiet /NoRestart^)
echo.
echo FOR /F "tokens=3" %%%%b in ^('findstr /C:"IIS-ASPNET45" %%temp%%\Features.aio.txt'^) do set aiokontrol=%%%%b
echo echo %%aiokontrol%% ^| findstr /C:"Enabled" ^> NUL 2^>^&1
echo 	if %%errorlevel%%==1 ^(echo ►%%R%%[33m Net Framework 4.5%%R%%[0m yükleniyor...
echo                         Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All /Quiet /NoRestart^)
echo.
echo FOR /F "tokens=3" %%%%b in ^('findstr /C:"DirectPlay" %%temp%%\Features.aio.txt'^) do set aiokontrol=%%%%b
echo echo %%aiokontrol%% ^| findstr /C:"Enabled" ^> NUL 2^>^&1
echo 	if %%errorlevel%%==1 ^(echo ►%%R%%[33m DirectPlay%%R%%[0m yükleniyor...
echo                         Dism /Online /Enable-Feature /FeatureName:DirectPlay /All /Quiet /NoRestart^)
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:AIO.Online
echo    ►%R%[33m All in One Runtimes%R%[32m ekleniyor... %R%[0m
echo echo ►%%R%%[33m All in One Runtimes yükleniyor... %%R%%[0m >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
Call :AIO.Three
(
echo Call :wget1 M.Visual.C++2005-x86.exe /Q
echo Call :wget1 M.Visual.C++2005-x64.exe /Q
echo Call :wget1 M.Visual.C++2008-x86.exe /q
echo Call :wget1 M.Visual.C++2008-x64.exe /q
echo Call :wget1 M.Visual.C++2010-x86.exe "/q /norestart"
echo Call :wget1 M.Visual.C++2010-x64.exe "/q /norestart"
echo Call :wget1 M.Visual.C++2012-x86.exe "/install /quiet /norestart"
echo Call :wget1 M.Visual.C++2012-x64.exe "/install /quiet /norestart"
echo Call :wget1 M.Visual.C++2013-x86.exe "/install /quiet /norestart"
echo Call :wget1 M.Visual.C++2013-x64.exe "/install /quiet /norestart"
echo Call :wget1 M.Visual.C++2015-x86.exe "/install /quiet /norestart"
echo Call :wget1 M.Visual.C++2015-x64.exe "/install /quiet /norestart" 
echo Call :wget1 Java.exe "INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable REMOVEOUTOFDATEJRES=1"
echo Call :wget1 XNA.Framework.4.0.msi /qn
echo Call :wget1 DesktopRuntime.6-x64.exe "/install /quiet /norestart"
echo Call :wget1 DesktopRuntime.6-x86.exe "/install /quiet /norestart"
echo Call :wget3 OpenAL.zip oalinst.exe /SILENT
echo ::
echo Call :wget2 DirectX.exe
echo %%Location%%\Download\DirectX.exe /Q /C /T:"%%Location%%\Download\DirectX\"
echo "%%Location%%\Download\DirectX\DXSETUP.exe" /silent
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:AIO.Offline
echo    ►%R%[33m All in One Runtimes%R%[37m ekleniyor... %R%[0m
echo echo ►%%R%%[33m All in One Runtimes yükleniyor... %%R%%[0m >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
Call :AIO.Three
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
Call :wget2 OpenAL.zip oalinst.exe /SILENT
dir /b "%Mount%\OgnitorenKs.Toolbox\Download\DirectX" > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
Call :wget3 DirectX.exe
%Mount%\OgnitorenKs.Toolbox\Download\DirectX.exe /Q /C /T:"%Mount%\OgnitorenKs.Toolbox\Download\DirectX\"
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Download\DirectX.exe" > NUL 2>&1
(
echo.
echo "%%Location%%\Download\DirectX\DXSETUP.exe" /silent
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:OpenBAT
Call :PrintCheck "ognitorenks.blogspot.com" "Katılımsız dosyası oluştur"
if %ErrorTime%==1 (goto :eof)
:: Gerekli klasör ve dosyalar hazırlanıyor.
mkdir "%Mount%\OgnitorenKs.Toolbox\Katilimsiz" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Extra" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Download" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
copy /y "%Location%\Files\wget.exe" "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
copy /y "%Location%\Files\NSudo.exe" "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1

(
echo echo off
echo cls
echo chcp 65001 ^> NUL
echo title ognitorenks.blogspot.com
echo.
echo cd /d "%%~dp0"
echo for /f %%%%a in ^('"cd"'^) do set Location=%%%%a
echo set Location=%%Location:~0,-11%%
echo.
echo set NSudo="%%Location%%\Files\NSudo.exe" -U:E -P:E cmd /c
echo %%NSudo%% Powershell -Command "Start-Process '%%Location%%\Katilimsiz\Katilimsiz.bat'"
echo exit
) > %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Start.bat

(
echo :: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
echo ::
echo ::       ██████   ██████   ██    ██ ████ ████████  ██████  ████████  ████████ ██    ██ ██    ██  ██████
echo ::      ██    ██ ██    ██  ███   ██  ██     ██    ██    ██ ██     ██ ██       ███   ██ ██   ██  ██    █
echo ::      ██    ██ ██        ████  ██  ██     ██    ██    ██ ██     ██ ██       ████  ██ ██  ██   ██
echo ::      ██    ██ ██   ████ ██ ██ ██  ██     ██    ██    ██ ████████  ██████   ██ ██ ██ █████      ██████ 
echo ::      ██    ██ ██    ██  ██  ████  ██     ██    ██    ██ ██   ██   ██       ██  ████ ██  ██         ██
echo ::      ██    ██ ██    ██  ██   ███  ██     ██    ██    ██ ██    ██  ██       ██   ███ ██   ██  ██    ██
echo ::       ██████   ██████   ██    ██ ████    ██     ██████  ██     ██ ████████ ██    ██ ██    ██  ██████ 
echo ::
echo ::                    ████████ ███████ ███████ ██      ██████  ███████  ██    ██
echo ::                       ██    ██   ██ ██   ██ ██      ██   ██ ██   ██   ██  ██  
echo ::                       ██    ██   ██ ██   ██ ██      ██████  ██   ██     ██   
echo ::                       ██    ██   ██ ██   ██ ██      ██   ██ ██   ██   ██  ██
echo ::                       ██    ███████ ███████ ███████ ██████  ███████  ██    ██
echo ::
echo ::  ► Hazırlayan: Hüseyin UZUNYAYLA / OgnitorenKs
echo ::
echo ::  ► İletişim - Contact;
echo ::  --------------------------------------
echo ::  • Discord: OgnitorenKs#2737 
echo ::  •    Mail: ognitorenks@gmail.com
echo ::  •    Site: https://ognitorenks.blogspot.com/
echo ::
echo :: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
echo echo off
echo cls
echo chcp 65001 ^> NUL
echo title ognitorenks.blogspot.com
echo.
echo setlocal
echo Call :ColorEnd
echo.
echo cd /d "%%~dp0"
echo for /f %%%%a in ^('"cd"'^) do set Location=%%%%a
echo set Location=%%Location:~0,-11%%
echo :: Üst düzey yetki
echo set NSudo="%%Location%%\Files\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c
echo :: Yönetici yetkisi 
echo set NSudo2="%%Location%%\Files\NSudo.exe" -U:E -P:E -Wait cmd /c
echo.
echo :: Katılımsız kurulum modunu ayarlar. İlk oluşturduğunuzda otomatik ayarlanır sonradan değiştirmeyin.
echo set KatilimsizMod=%KatilimsizMod%
echo 	if %%KatilimsizMod%%==1 goto OnlineMod
echo 	if %%KatilimsizMod%%==2 goto OfflineMod
echo.
echo :OnlineMod
echo :: İnternet bağlantısını kontrol eder
echo ping -n 1 www.bing.com ^> NUL
echo 	if %%errorlevel%%==1 ^(echo %%R%%[31m İnternet bağlantınız yok, bağlantıyı sağlayıp herhangi bir tuşa basınız%%R%%[0m^&pause ^> NUL^&goto Online^)
echo :: Toolbox link dosyasını indirir
echo echo %%R%%[33m Linkler indiriliyor...%%R%%[0m
echo %%Location%%\Files\wget --no-check-certificate "https://docs.google.com/uc?export=download&id=1aCBwYuFCoj3uMy2BsTgJc5vKYjtOJd0b" -O %%Location%%\Extra\Links.txt ^> NUL 2^>^&1
echo.
echo :: Katılmsız kurulum için chocolatey indirme sistemini yükler.
echo echo %%R%%[33m Chocolatey yükleniyor...%%R%%[0m
echo %%NSudo%% Powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" ^&^& set "PATH=%%PATH%%;%%ALLUSERSPROFILE%%\chocolatey\bin"^)
echo :OfflineMod
echo cls
echo :: ===================================================================================
echo :: ► ► Yapacağınız farklı program ve ayarları buradan sonra ekleyin.
echo.
echo.
echo.
) > %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:CloseBAT
Call :PrintCheck "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" "Katılımsız dosyasını tamamla"
if %ErrorTime%==1 (goto :eof)
(
echo.
echo.
echo.
echo :: ◄ ◄ Alt bölüme herhangi bir ekleme veya çıkarma yapmayın.
echo :: ===================================================================================
echo reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OgnitorenKs" /f ^> NUL 2^>^&1
echo timeout /t 3 /nobreak ^> NUL 
echo RD /S /Q %%Location%%\Download ^> NUL 2^>^&1
echo mode con cols=39 lines=20
echo echo.
echo echo           %%R%%[90m┌───────────────┐%%R%%[0m
echo echo           %%R%%[90m│%%R%%[32m               %%R%%[90m│%%R%%[0m
echo echo           %%R%%[90m│%%R%%[32m          ██   %%R%%[90m│%%R%%[0m
echo echo           %%R%%[90m│%%R%%[32m         ██    %%R%%[90m│%%R%%[0m
echo echo           %%R%%[90m│%%R%%[32m   ██   ██     %%R%%[90m│%%R%%[0m
echo echo           %%R%%[90m│%%R%%[32m    ██ ██      %%R%%[90m│%%R%%[0m
echo echo           %%R%%[90m│%%R%%[32m     ███       %%R%%[90m│%%R%%[0m
echo echo           %%R%%[90m│               %%R%%[90m│%%R%%[0m
echo echo           %%R%%[90m└───────────────┘%%R%%[0m
echo echo.
echo echo           %%R%%[37m İşlem tamamlandı%%R%%[0m
echo echo.
echo echo      %%R%%[33m Yeniden başlatmak için %%R%%[96m'R'%%R%%[0m
echo echo          %%R%%[33m Kapatmak için %%R%%[96m'X'%%R%%[0m
echo echo              %%R%%[33m tuşlayın%%R%%[0m
echo set /p value=%%R%%[92m                   %%R%%[0m
echo if %%value%%==R ^(shutdown -r -f -t 5^)
echo if %%value%%==r ^(shutdown -r -f -t 5^)
echo RD /S /Q "C:\OgnitorenKs.Toolbox\Katilimsiz" ^> NUL 2^>^&1
echo exit
echo.
echo :: ===================================================================================
echo.
echo :wget1
echo :: Setup kurulumları için
echo echo %%R%%[90m [Wget]%%R%%[0m ►%%R%%[33m %%~n1%%R%%[0m indiriliyor %%R%%[90m/%%R%%[0m yükleniyor...
echo FOR /F "tokens=1" %%%%i in ^('FIND "%%~1" %%Location%%\Extra\Links.txt'^) do set link=%%%%i
echo %%Location%%\Files\wget.exe -c -q --no-check-certificate --show-progress "%%link%%" -t 10 -O %%Location%%\Download\%%~1
echo "%%Location%%\Download\%%~1" %%~2
echo goto :eof
echo.
echo :: --------------------------------------------------------------------------------------------------------
echo.
echo :wget2
echo :: Yalnızca indirme işlemi için
echo echo %%R%%[90m [Wget]%%R%%[0m ►%%R%%[33m %%~n1%%R%%[0m indiriliyor %%R%%[90m/%%R%%[0m yükleniyor...
echo FOR /F "tokens=1" %%%%i in ^('FIND "%%~1" %%Location%%\Extra\Links.txt'^) do set link=%%%%i
echo %%Location%%\Files\wget.exe -c -q --no-check-certificate --show-progress "%%link%%" -t 10 -O %%Location%%\Download\%%~1
echo goto :eof
echo.
echo :: --------------------------------------------------------------------------------------------------------
echo.
echo :wget3
echo :: Sıkışıtırılmış kurulumlar için indir, çıkart, kur
echo echo %%R%%[90m [Wget]%%R%%[0m ►%%R%%[33m %%~n1%%R%%[0m indiriliyor %%R%%[90m/%%R%%[0m yükleniyor...
echo FOR /F "tokens=1" %%%%i in ^('FIND "%%~1" %%Location%%\Extra\Links.txt'^) do set link=%%%%i
echo %%Location%%\Files\wget.exe -c -q --no-check-certificate --show-progress "%%link%%" -t 10 -O %%Location%%\Download\%%~1
echo Call :Powershell "Expand-Archive -Force '%%Location%%\Download\%%~1' '%%Location%%\Download\%%~n1'"
echo DEL /F /Q /A "%%Location%%\Download\%%~1" ^> NUL 2^>^&1
echo "%%Location%%\Download\%%~n1\%%~2" %%~3
echo goto :eof
echo.
echo :: --------------------------------------------------------------------------------------------------------
echo.
echo :Choco
echo :: Chocolatey indirme sistemi için
echo echo %%R%%[90m [Chocolatey]%%R%%[0m ►%%R%%[33m %%~n1%%R%%[0m indiriliyor %%R%%[90m/%%R%%[0m yükleniyor...
echo choco install -y --force --limit-output --cache-location=%%Location%%\Download --ignore-checksums %%~1 ^> NUL
echo goto :eof
echo.
echo :: --------------------------------------------------------------------------------------------------------
echo.
echo :Powershell
echo chcp 437 ^> NUL 2^>^&1
echo Powershell -command %%*
echo chcp 65001 ^> NUL 2^>^&1
echo goto :eof
echo.
echo :: ===================================================================================
echo.
echo :ColorEnd
echo for /F "tokens=1,2 delims=#" %%%%a in ^('"prompt #$H#$E# & echo on & for %%%%b in (1) do rem"'^) do ^(
echo   set R=%%%%b
echo   exit /B 0
echo ^)
echo exit /B 0
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
Call :RegeditInstall
reg add "HKLM\OFF_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OgnitorenKs" /t REG_SZ /d "C:\OgnitorenKs.Toolbox\Katilimsiz\Start.bat" /f
Call :RegeditCollect
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:KatilimsizYedekle
Call :Powershell "Compress-Archive -LiteralPath %Mount%\OgnitorenKs.Toolbox -DestinationPath C:\Users\%username%\Desktop\Yedek.Katılımsız.zip -Force"
goto :eof

:KatilimsizYukle
set /p Yedek=%R%[97m  ►%R%[92m Yedek Zip Yolu : %R%[0m
Call :Powershell "Expand-Archive -Force '%Yedek%' '%Mount%'" 
Call :RegeditInstall
reg add "HKLM\OFF_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OgnitorenKs" /t REG_SZ /d "C:\OgnitorenKs.Toolbox\Katilimsiz\Start.bat" /f
Call :RegeditCollect
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: Online Bölüm
:ChocoPrint
Call :PrintCheck "%~1" "%~1"
if %ErrorTime%==1 (goto :eof)
(
echo.
echo Call :Choco %~1 
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:OnlinePrint1
Call :PrintCheck "%~1" "%~1"
if %ErrorTime%==1 (goto :eof)
:: Zip dosyaları için
(
echo.
echo Call :wget3 %~1 %~2 "%~3"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:OnlinePrint2
Call :PrintCheck "%~1" "%~1"
if %ErrorTime%==1 (goto :eof)
:: Setuplar için
(
echo.
echo Call :wget1 %~1 "%~2"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: Offline Bölüm
:wget1
:: Setup kurulumları için
Call :PrintCheck "%~1" "%~1"
if %ErrorTime%==1 (goto :eof)
Call :InternetControl
FOR /F "tokens=1" %%i in ('FIND "%~1" %Location%\Extra\Links.txt') do set link=%%i
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %Mount%\OgnitorenKs.Toolbox\Download\%~1
(
echo.
echo echo ►%%R%%[33m %~n1%%R%%[37m kuruluyor...%%R%%[0m
echo "%%Location%%\Download\%~1" %~2
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget2
:: Sıkıştırılmış kurulumlar için
Call :PrintCheck "%~1" "%~1"
if %ErrorTime%==1 (goto :eof)
Call :InternetControl
FOR /F "tokens=1" %%i in ('FIND "%~1" %Location%\Extra\Links.txt') do set link=%%i
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %Mount%\OgnitorenKs.Toolbox\Download\%~1
Call :Powershell "Expand-Archive -Force '%Mount%\OgnitorenKs.Toolbox\Download\%~1' '%Mount%\OgnitorenKs.Toolbox\Download\%~n1'"
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Download\%~1" > NUL 2>&1
(
echo.
echo echo ►%%R%%[33m %~n1%%R%%[37m kuruluyor...%%R%%[0m
echo "%%Location%%\Download\%~n1\%~2" %~3
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
goto :eof

:: --------------------------------------------------------------------------------------------------------

:wget3
:: Özel kuruluma sahip indirmeler için yalnızca indirme işlemi yapar
Call :PrintCheck "%~1" "%~1"
if %ErrorTime%==1 (goto :eof)
Call :InternetControl
FOR /F "tokens=1" %%i in ('FIND "%~1" %Location%\Extra\Links.txt') do set link=%%i
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %Mount%\OgnitorenKs.Toolbox\Download\%~1
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:PrintCheck
:: Katılımsız kurulum parametre kontrol
Findstr /C:"%~1" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (echo    ►%R%[33m %~n2%R%[31m eklenmiş. %R%[0m
						set ErrorTime=1)
	if %errorlevel%==1 (echo    ►%R%[33m %~n2%R%[32m ekleniyor... %R%[0m
						set ErrorTime=0)
timeout /t 1 /nobreak > NUL
goto :eof

:: --------------------------------------------------------------------------------------------------------

:InternetControl
if %InternetCheck% EQU 1 (goto :eof)
ping -n 1 google.com > NUL
	if %errorlevel%==1 (echo %R%[1;97m%R%[41m İnternet bağlantısı yok %R%[0m
						timeout /t 4 /nobreak > NUL
						goto :eof
)
goto :eof

:: --------------------------------------------------------------------------------------------------------

:Powershell
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:RegeditInstall
reg load HKLM\OFF_COMPONENTS "%Mount%\Windows\System32\config\COMPONENTS" > NUL
reg load HKLM\OFF_HKU "%Mount%\Windows\System32\config\default" > NUL
reg load HKLM\OFF_HKCU "%Mount%\Users\Default\ntuser.dat" > NUL
reg load HKLM\OFF_SOFTWARE "%Mount%\Windows\System32\config\SOFTWARE" > NUL
reg load HKLM\OFF_SYSTEM "%Mount%\Windows\System32\config\SYSTEM" > NUL
goto :eof

:: --------------------------------------------------------------------------------------------------------

:RegeditCollect
for /f "tokens=* delims=" %%a in ('reg query "HKLM" ^| findstr "{"') do (
	reg unload "%%a" >nul 2>&1
)
reg delete "HKLM\OFF_SYSTEM\CurrentControlSet" /f >nul 2>&1
reg unload HKLM\OFF_COMPONENTS > NUL 2>&1
reg unload HKLM\OFF_DRIVERS > NUL 2>&1
reg unload HKLM\OFF_HKU > NUL 2>&1
reg unload HKLM\OFF_HKCU > NUL 2>&1
reg unload HKLM\OFF_SCHEMA > NUL 2>&1
reg unload HKLM\OFF_SOFTWARE > NUL 2>&1
reg unload HKLM\OFF_SYSTEM > NUL 2>&1
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

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

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set R=%%b
  exit /B 0
)
exit /B 0