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
set ErrorTime=0
cls
mode con cols=73 lines=45
set xognitorenksx=%R%[90m►
title  - OGNITORENKS TOOLBOX -
echo   %R%[90m┌───────────────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                   Katılımsız Kurulum Hazırlayıcı                  %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├───────────────────────────────────────────────────────────────────┤%R%[0m
echo   %R%[90m│%R%[37m ►%R%[90m İlk işlem%R%[32m '96'%R%[90m son işlem%R%[32m '97'%R%[90m numarasıyla yapılmalıdır          │%R%[0m
echo   %R%[90m│%R%[37m ►%R%[90m NTLite gibi programlar kapalı olmalıdır.                        │%R%[0m
echo   %R%[90m├────────────────────────────┬──────────────────────────────────────┤%R%[0m
echo   %R%[90m│%R%[32m    1-%R%[33m All in One Runtimes  %R%[90m│%xognitorenksx% Araçlar - Ayarlar                   %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Ram Temizleyici           %R%[90m│%R%[32m   28-%R%[37m OgnitorenKs Toolbox            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    2-%R%[36m ISLC                 %R%[90m│%R%[32m   29-%R%[37m Masaüstüne Dosya ekle          %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    3-%R%[36m Mem Reduct           %R%[90m│%R%[32m   30-%R%[37m Nihai Performans               %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Tarayıcı                  %R%[90m│%R%[32m   31-%R%[37m Svchost Optimizasyon           %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    4-%R%[33m Google Chrome        %R%[90m│%R%[32m   32-%R%[37m Görev Zamanlayıcı optimizasyonu%R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    5-%R%[33m Mozilla Firefox      %R%[90m│%R%[32m   33-%R%[37m Animasyon efektlerini kapat    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    6-%R%[33m Brave                %R%[90m│%R%[32m   34-%R%[37m Yeni mouse simgesi             %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    7-%R%[33m Microsoft Edge       %R%[90m│%R%[32m   35-%R%[37m Klavye-Mouse Optimizasyonu     %R%[90m│%R%[0m
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
echo   %R%[90m│%R%[32m   22-%R%[33m Unlocker             %R%[90m│%xognitorenksx% Katılımsız Hazırlayıcı              %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Diğer                     %R%[90m│%R%[32m   96-%R%[93m Katılımsız dosyası oluştur     %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   23-%R%[36m OpenShell            %R%[90m│%R%[32m   97-%R%[93m Katılımsız dosyasını tamamla   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   24-%R%[36m TaskbarX             %R%[90m│%xognitorenksx% Katılımsız Yedekleyici              %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   25-%R%[36m MSI Afterburner      %R%[90m│%R%[32m   98-%R%[93m Katılımsız kurulum yedekle     %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   26-%R%[36m Everything           %R%[90m│%R%[32m   99-%R%[93m Yedek katılımsız kurulum ekle  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   27-%R%[36m Glasswire            %R%[90m│%R%[32m    X-%R%[37m Menü / Kapat                   %R%[90m│%R%[0m
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
	if %%a EQU 23 (Call :OpenShell)
	if %%a EQU 24 if %KatilimsizMod%==1 (Call :ChocoPrint taskbarx) else (Call :TaskbarX)
	if %%a EQU 25 if %KatilimsizMod%==1 (Call :ChocoPrint msiafterburner) else (Call :wget1 MSIAfterburner.exe /S)
	if %%a EQU 26 if %KatilimsizMod%==1 (Call :ChocoPrint everything) else (Call :wget1 Everything.exe /S)
	if %%a EQU 27 if %KatilimsizMod%==1 (Call :ChocoPrint glasswire) else (Call :wget1 GlassWire.exe /S)
	if %%a EQU 28 (Call :Toolbox)
	if %%a EQU 29 (Call :DesktopFiles)
	if %%a EQU 30 (Call :NihaiPerformans)
	if %%a EQU 31 (Call :Svchost)
	if %%a EQU 32 (Call :GorevZamanlayici)
	if %%a EQU 33 (Call :AnimasyonKapat)
	if %%a EQU 34 (Call :Mouse.Icon)
	if %%a EQU 35 (Call :Klavye-Mouse.Optimizasyon)
	if %%a EQU 96 (Call :OpenBat)
	if %%a EQU 97 (Call :CloseBat)
	if %%a EQU 98 (Call :KatilimsizYedekle)
	if %%a EQU 99 (Call :KatilimsizYukle)
)
echo %$multi% | findstr /i "x" > NUL 2>&1
	if %errorlevel%==0 exit
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
echo.
echo      •%R%[92m Açılan klasör penceresine dosyaları atın%R%[0m
echo.
echo      •%R%[96m İşleme devam etmek için herhangi bir tuşa basın%R%[0m
timeout /t 1 /nobreak > NUL
Call :Powershell "Start-Process '%Location%\Edit\Desktop'"
pause > NUL
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

:GorevZamanlayici
Call :PrintCheck "Görev zamanlayacısı optimize" "Görev zamanlayacı optimizasyonu"
if %ErrorTime%==1 (goto :eof)
(
echo.
echo echo ►%%R%%[33m Görev zamanlayacısı optimize%%R%%[37m ediliyor...%%R%%[0m
echo schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Maps\MapsToastTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /DISABLE  ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /DISABLE  ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\DiskCleanup\SilentCleanup" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Time Zone\SynchronizeTimeZone" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\WaaSMedic\PerformRemediation" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\USBCeip" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /DISABLE ^> NUL 2^>^&1
echo schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /DISABLE ^> NUL 2^>^&1
echo schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyRefresh" /DISABLE ^> NUL 2^>^&1
echo schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /DISABLE ^> NUL 2^>^&1
echo schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /DISABLE ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat 
goto :eof

:: ==============================================================================================================================

:AnimasyonKapat
Call :PrintCheck "Animasyon ve transparan efektleri" "Animasyon efektlerini kapat"
if %ErrorTime%==1 (goto :eof)
(
echo.
echo echo ►%%R%%[33m Animasyon ve transparan efektleri%%R%%[37m kapatılıyor...%%R%%[0m
echo reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" ^> NUL 2^>^&1
echo reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 3 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012038010000000" /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAnimations" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d 0 ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d 2 ^> NUL 2^>^&1
echo reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d 1 ^> NUL 2^>^&1
echo reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShellState" /t REG_BINARY /d "240000003E28000000000000000000000000000001000000130000000000000062000000" ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat 
goto :eof

:: ==============================================================================================================================

:OpenShell
if %KatilimsizMod%==1 (Call :ChocoPrint open-shell)
if %KatilimsizMod%==2 (Call :wget1 OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu")
if %ErrorTime%==1 (goto :eof)
(
echo Call :Powershell "Get-CimInstance -ClassName Win32_UserAccount ^| Select-Object -Property Name,SID" ^> %%Temp%%\cusername.txt
echo FOR /F "tokens=2" %%%%a in ^('Find "%%username%%" %%Temp%%\cusername.txt'^) do set currentusername=%%%%a
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell" /t REG_SZ /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\OpenShell" /t REG_SZ /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\OpenShell\Settings" /t REG_SZ /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu" /t REG_SZ /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /t REG_SZ /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\ClassicExplorer" /t REG_SZ /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\ClassicExplorer\Settings" /t REG_SZ /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\ClassicExplorer" /v "ShowedToolbar" /t REG_DWORD /d 1 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\ClassicExplorer" /v "NewLine" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\ClassicExplorer\Settings" /v "ShowStatusBar" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu" /v "ShowedStyle2" /t REG_DWORD /d 1 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu" /v "CSettingsDlg" /t REG_BINARY /d c80100001a0100000000000000000000360d00000100000000000000 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu" /v "OldItems" /t REG_BINARY /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu" /v "ItemRanks" /t REG_BINARY /d 0 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\MRU" /v "0" /t REG_SZ /d "C:\Windows\regedit.exe" /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "Version" /t REG_DWORD /d 04040098 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "AllProgramsMetro" /t REG_DWORD /d 1 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "RecentMetroApps" /t REG_DWORD /d 1 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "StartScreenShortcut" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "SearchInternet" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "GlassOverride" /t REG_DWORD /d 1 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "GlassColor" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkinW7" /t REG_SZ /d "Midnight" /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkinVariationW7 /t REG_SZ /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkinOptionsW7" /t REG_MULTI_SZ /d "USER_IMAGE=1"\0"SMALL_ICONS=0"\0"LARGE_FONT=0"\0"DISABLE_MASK=0"\0"OPAQUE=0"\0"TRANSPARENT_LESS=0"\0"TRANSPARENT_MORE=1"\0"WHITE_SUBMENUS2=0" /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkipMetro" /t REG_DWORD /d 1 /f ^> NUL 2^>^&1
echo reg add "HKU\%%currentusername%%\SOFTWARE\OpenShell\StartMenu\Settings" /v "MenuItems7" /t REG_MULTI_SZ /d "Item1.Command=user_files"\0"Item1.Settings=NOEXPAND"\0"Item2.Command=user_documents"\0"Item2.Settings=NOEXPAND"\0"Item3.Command=user_pictures"\0"Item3.Settings=NOEXPAND"\0"Item4.Command=user_music"\0"Item4.Settings=NOEXPAND"\0"Item5.Command=user_videos"\0"Item5.Settings=NOEXPAND"\0"Item6.Command=downloads"\0"Item6.Settings=NOEXPAND"\0"Item7.Command=homegroup"\0"Item7.Settings=ITEM_DISABLED"\0"Item8.Command=separator"\0"Item9.Command=games"\0"Item9.Settings=TRACK_RECENT|NOEXPAND|ITEM_DISABLED"\0"Item10.Command=favorites"\0"Item10.Settings=ITEM_DISABLED"\0"Item11.Command=recent_documents"\0"Item12.Command=computer"\0"Item12.Settings=NOEXPAND"\0"Item13.Command=network"\0"Item13.Settings=ITEM_DISABLED"\0"Item14.Command=network_connections"\0"Item14.Settings=ITEM_DISABLED"\0"Item15.Command=separator"\0"Item16.Command=control_panel"\0"Item16.Settings=TRACK_RECENT"\0"Item17.Command=pc_settings"\0"Item17.Settings=TRACK_RECENT"\0"Item18.Command=admin"\0"Item18.Settings=TRACK_RECENT|ITEM_DISABLED"\0"Item19.Command=devices"\0"Item19.Settings=ITEM_DISABLED"\0"Item20.Command=defaults"\0"Item20.Settings=ITEM_DISABLED"\0"Item21.Command=help"\0"Item21.Settings=ITEM_DISABLED"\0"Item22.Command=run"\0"Item23.Command=apps"\0"Item23.Settings=ITEM_DISABLED"\0"Item24.Command=windows_security"\0"Item24.Settings=ITEM_DISABLED"\0" /f ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat 
goto :eof

:: ==============================================================================================================================

:Mouse.Icon
Call :PrintCheck "Yeni mouse iconu" "Yeni mouse iconu"
if %ErrorTime%==1 (goto :eof)
Call :Powershell "Expand-Archive -Force '%Location%\Files\Mouse.Icon.zip' '%Mount%\OgnitorenKs.Toolbox\Download'"
(
echo.
echo echo ►%%R%%[33m Yeni mouse iconu%%R%%[37m yükleniyor...%%R%%[0m
echo RunDll32 advpack.dll,LaunchINFSection %%Location%%\Download\Dark\Install.inf,DefaultInstall
echo RunDll32 advpack.dll,LaunchINFSection %%Location%%\Download\Light\Install.inf,DefaultInstall
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat 
goto :eof

:: ==============================================================================================================================

:Klavye-Mouse.Optimizasyon
Call :PrintCheck "Klavye-Mouse optimizasyonu" "Klavye-Mouse optimizasyonu"
if %ErrorTime%==1 (goto :eof)
(
echo.
echo echo ►%%R%%[33m Klavye-Mouse optimizasyonu%%R%%[37m yapılıyor...%%R%%[0m
echo :: Mouse
echo reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" /v "TreatAbsolutePointerAsAbsolute" /t REG_DWORD /d "1" /f ^> NUL 2^>^&1
echo reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" /v "TreatAbsoluteAsRelative" /t REG_DWORD /d "0" ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "0" /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_DWORD /d "0" /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_DWORD /d "0" /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_DWORD /d "0" /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "000000000000000000a0000000000000004001000000000000800200000000000000050000000000" /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "000000000000000066a6020000000000cd4c050000000000a0990a00000000003833150000000000" /f ^> NUL 2^>^&1
echo reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorSensitivity" /t REG_DWORD /d "0x2710" /f ^> NUL 2^>^&1
echo reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorUpdateInterval" /t REG_DWORD /d "0x1" /f ^> NUL 2^>^&1
echo reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "IRRemoteNavigationDelta" /t REG_DWORD /d "0x1" /f ^> NUL 2^>^&1
echo reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "AttractionRectInsetInDIPS" /t REG_DWORD /d "0x5" /f ^> NUL 2^>^&1
echo reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "DistanceThresholdInDIPS" /t REG_DWORD /d "0x28" /f ^> NUL 2^>^&1
echo reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "MagnetismDelayInMilliseconds" /t REG_DWORD /d "0x32" /f ^> NUL 2^>^&1
echo reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "MagnetismUpdateIntervalInMilliseconds" /t REG_DWORD /d "0x10" /f ^> NUL 2^>^&1
echo reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "VelocityInDIPSPerSecond" /t REG_DWORD /d "0x168" /f ^> NUL 2^>^&1
echo :: Klavye 
echo reg add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d 31 /f ^> NUL 2^>^&1
echo reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 10 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\Keyboard Preference" /v "On" /t REG_SZ /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "MaximumSpeed" /t REG_SZ /d 0 /f ^> NUL 2^>^&1
echo reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "TimeToMaximumSpeed" /t REG_SZ /d 0 /f ^> NUL 2^>^&1
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
echo    ►%R%[33m Katılımsız dosyası oluşturuluyor... %R%[0m
:: Gerekli klasör ve dosyalar hazırlanıyor.
mkdir "%Mount%\OgnitorenKs.Toolbox\Katilimsiz" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Extra" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Download" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
copy /y "%Location%\Files\wget.exe" "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
copy /y "%Location%\Files\NSudo.exe" "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1

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
echo :: Yönetici yetkisi beklemesiz
echo set NSudo3="%%Location%%\Files\NSudo.exe" -U:E -P:E cmd /c
echo.
echo ::Yönetici yetki kontrol
echo %%windir%%\system32\reg.exe query "HKU\S-1-5-19" ^> NUL 2^>^&1 ^|^| ^(
echo %%NSudo3%% Powershell -command "Start-Process '%%Location%%\Katilimsiz\Katilimsiz.bat'"
echo exit
echo ^)
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
echo ::
echo :: Kapsamlı bilgi için; https://ognitorenks.blogspot.com/2022/08/format-sonras-aclacak-sekilde-bat.html
echo ::
echo :: • Chocolatey sisteminde farklı programlar nasıl eklenir?
echo :: 
echo :: Sonradan Chocolatey sisteminden program eklemek isterseniz. Eğer offline kurulum hazırladıysanız yukarıdan 'set KatilimsizMod=1' yapınız.
echo :: Alttaki linke tıklayarak açılan web sayfasının arama motorunda programları aratabilirsiniz.
echo :: https://community.chocolatey.org/packages
echo :: Bulduğunuz programların sağ yanında beyaz kutucuk içinde 'choco install ----' yazar. Choco install'dan sonra yazan bölümü kopyalayın.
echo :: Alt bölüme şu şekilde ekleyin; ^(Dikkat edin :: bu işareti eklemeyin yoksa yorum satırı olur ve işlem yapmaz^)
echo :: Call :Choco adobereader
echo :: Call :Choco winrar
echo :: 'Call :Choco' yazan yerden sonra kopyaladığınız bölümü yapıştırmanız gerekiyor.
echo ::
echo :: • Offline kurulum için sonradan program nasıl eklenir?
echo ::
echo :: Eklemek istediğiniz setup dosyasını imaj klasörü yolu içinde yer alan 'OgnitorenKs.Toolbox\Download' içine ekleyin.
echo :: İmaj klasörüne nasıl ulaşılır? : - NTLite ^> Kaynak ^> İşlem yaptığınız Windows sürümüne sağ tıklayın. ^> 'Bağlama dizinini keşfet' tıklayın. Açılan klasör penceresidir.
echo :: Program ismini uzantısıyla kopyaladıktan sonra aşağıya şu şekilde ekleyin;
echo :: "C:\OgnitorenKs.Toolbox\Download\adobereader.exe" /sPB /rs /msi
echo :: adobereader.exe yazan yere kopyaladığınız programın ismini uzantısıyla yapıştırın.
echo :: Tırnak işareti dışında kalan bölüm sessiz kurulum parametresidir. Programın sessiz kurulum parametresini bulmak için alttaki siteyi kullanabilirsiniz;
echo :: https://silentinstallhq.com/
echo :: .msi uzantılı dosyalar /qn parametresiyle sessiz kurulum yapmaktadır. 
echo :: Program eğer katılımsız olarak hazırlanmışsa herhangi bir sessiz kurulum parametersi girmeniz gerekmez. Şu şekilde yapınız;
echo :: "C:\OgnitorenKs.Toolbox\Download\adobereader.exe"
echo ::
echo :: ===================================================================================
echo ::
echo :: ► ► Yapacağınız farklı program ve ayarları buradan sonra ekleyin.
echo.
echo.
echo.
) > %Mount%\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat
timeout /t 2 /nobreak > NUL
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
reg add "HKLM\OFF_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OgnitorenKs" /t REG_SZ /d "C:\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat" /f
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
reg add "HKLM\OFF_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OgnitorenKs" /t REG_SZ /d "C:\OgnitorenKs.Toolbox\Katilimsiz\Katilimsiz.bat" /f
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