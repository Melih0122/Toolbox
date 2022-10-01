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
echo off
cls
chcp 65001 > NUL
mode con cols=61 lines=20
title OgnitorenKs Windows Editör

:: --------------------------------------------------------------------------------------------------------

:: Renklendirme komutları 
setlocal
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set R=%%b)

:: --------------------------------------------------------------------------------------------------------

:: Konum bilgisi alınır
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Location=%Location:~0,-6%
set Mount=%Location%\Edit\Mount
set NSudo="%Location%\Files\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c

:: --------------------------------------------------------------------------------------------------------
:: Toolbox ayarlarını okur
set LogsSettings=0&FOR /F "tokens=2" %%a in ('findstr /C:"LogsSettings" %Location%\Settings.ini') do (
	if %%a EQU 1 (set LogsSettings=1)
)
FOR /F "tokens=2" %%a in ('findstr /C:"InternetCheck" %Location%\Settings.ini') do (set InternetCheck=%%a)
FOR /F "tokens=2" %%a in ('findstr /C:"Unmount" %Location%\Settings.ini') do (set Unmount=%%a)

:: --------------------------------------------------------------------------------------------------------

:WindowsEditMenu
cls
mode con cols=53 lines=35
echo  %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m            OgnitorenKs Windows Editör           %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│%R%[37m ►%R%[36m '18'%R%[90m numaralı işlemle İmaj yolu tanımlanmalı  │%R%[0m
echo  %R%[90m│%R%[37m ►%R%[90m Mavi renkli işlemler%R%[36m 18%R%[90m numaralı bölüme bağlı │%R%[0m
echo  %R%[90m│%R%[37m ►%R%[90m NTLite gibi programlar kapalı olmalıdır.      │%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%R%[33m WIM / ESD Okuyucu                         %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%R%[33m AIO Windows Hazırla                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 3.%R%[33m ISO Hazırla                               %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 4.%R%[33m ESD to WIM dönüştürücü                    %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 5.%R%[33m İndex silici                              %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 6.%R%[33m İmaj Yükle                                %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 7.%R%[33m İmaj Yeniden Yükle                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 8.%R%[33m İmaj Topla                                %R%[90m│%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[36m 9.%R%[33m Regedit yükle%R%[90m [İmaj]                      │%R%[0m
echo  %R%[90m│  %R%[32m 10.%R%[33m Regedit topla%R%[90m [İmaj]                      │%R%[0m 
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│  %R%[36m 11.%R%[33m Güncelleme Yükleyici%R%[90m [İmaj                │%R%[0m
echo  %R%[90m│  %R%[36m 12.%R%[33m Appx yükleyici%R%[90m [İmaj]                     │%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│  %R%[32m 13.%R%[33m Driver Yedekle%R%[90m [Yüklü Sistem]             │%R%[0m
echo  %R%[90m│  %R%[36m 14.%R%[33m Driver Yükle%R%[90m [İmaj]                       │%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│  %R%[32m 15.%R%[33m Setup Düzenle%R%[90m [İmaj]                      │%R%[0m
echo  %R%[90m│  %R%[36m 16.%R%[33m Yeni Simgeleri yükle%R%[90m [İmaj]               │%R%[0m
echo  %R%[90m│  %R%[36m 17.%R%[33m Katılımsız Program / Ayar ekle%R%[90m [İmaj]     │%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│  %R%[36m 18.%R%[36m İmaj yol tanımla                          %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[37m Menü / Kapat                              %R%[90m│%R%[0m
echo  %R%[90m└─────────────────────────────────────────────────┘%R%[0m
set /p WindowsEditMenu= %R%[92m İşlem : %R%[0m
	if %WindowsEditMenu%==1 (Call :WimReader)
	if %WindowsEditMenu%==2 (Call :AIO.Maker)
	if %WindowsEditMenu%==3 (Call :ISOMaker)
	if %WindowsEditMenu%==4 (Call :esdtowim)
	if %WindowsEditMenu%==5 (Call :WimDelete)
	if %WindowsEditMenu%==6 (Call :WimMount)
	if %WindowsEditMenu%==7 (Call :ImageRemount Call)
	if %WindowsEditMenu%==8 (Call :ImageUnmount Call)
	if %WindowsEditMenu%==9 (Call :RegeditInstall Call)
	if %WindowsEditMenu%==10 (Call :RegeditCollect Call)
	if %WindowsEditMenu%==11 (Call :UpdateInstaller)
	if %WindowsEditMenu%==12 (Call :AppxInstaller)
	if %WindowsEditMenu%==13 (Call :DriverYedek)
	if %WindowsEditMenu%==14 (Call :DriverYukle)
	if %WindowsEditMenu%==15 (Call :SetupEdit)
	if %WindowsEditMenu%==16 (Call :Newico)
	if %WindowsEditMenu%==17 (Call :Powershell "Start-Process '%Location%\Extra\Katilimsiz.Hazirlayici.bat'")
	if %WindowsEditMenu%==18 (Call :degisken3)
	if %WindowsEditMenu%==x exit
	if %WindowsEditMenu%==X exit
)
goto WindowsEditMenu
	
:WimReader
Call :Panel "%R%[100m                        WIM / ESD Okuyucu                         %R%[0m"
Call :degisken1 
mode con cols=99 lines=40
Call :OgnitorenKs.Reader "%MainWim%" echo :: :: :: :: ::
echo                      %R%[92m Menüye dönmek için herhangi bir tuşa basınız.%R%[0m
Call :LogSave "WIM/ESD.Okuyucu" ""%MainWim%" dosyasının içeriği okundu"
pause > NUL 
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:AIO.Maker
Call :Panel "%R%[100m                       AIO Windows Hazırla                        %R%[0m"
echo   ►%R%[96m Ana Sürüm%R%[0m ◄
Call :degisken1
echo   ►%R%[96m Eklenecek Sürüm%R%[0m ◄
Call :degisken2
mode con cols=99 lines=40
Call :OgnitorenKs.Reader "%MainWim%" :: echo "%R%[100m                                          ► ANA SÜRÜM ◄                                        %R%[0m" :: :: ::
Call :OgnitorenKs.Reader "%AddWim%" :: :: :: echo "%R%[100m                                       ► EKLENECEK SÜRÜM ◄                                     %R%[0m" echo
echo %AddWim% %MainWim% | find "install.esd" > NUL 2>&1
	if %errorlevel%==0 (echo  %R%[1;97m%R%[41m ESD dosya tespit edildi. İşlem yapılamaz %R%[0m&pause > NUL&goto WindowsEditMenu)
set /p $index=%R%[96m  Çoklu Seçim %R%[90mx,y%R%[0m :

echo %$index% | findstr "x" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu

cls
FOR %%a in (%$index%) do ( 
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%AddWim% /Index:%%a ^| FIND "Architecture"') do (
		FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%AddWim% /Index:%%a ^| FIND "Name"') do (
			Call :Panel2 "►%R%[33m (%%c %%b)%R%[32m birleştirme işlemi gerçekleştiriliyor...%R%[0m"
			Call :imagexexport %AddWim% "%%a" %MainWim% "%%c" "%%b"
			)
		)
	)
)
cls
Call :OgnitorenKs.Reader "%MainWim%" "echo" :: :: :: :: ::
echo.
echo %R%[92m Birleştirme işlemi tamamlandı%R%[0m
echo %R%[92m Menüye dönmek için herhangi bir tuşa basınız.%R%[0m
pause > NUL
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:ISOMaker
Call :Panel "%R%[100m                             ISO MAKER                            %R%[0m"
echo  %R%[96m Örnek:%R%[33m C:\Windows10Pro%R%[0m
set /p MainWim=%R%[92m   İmaj klasör yolu : %R%[0m
	if %MainWim%==x GOTO WindowsEditMenu
	if %MainWim%==X GOTO WindowsEditMenu
echo.
set /p etiket=%R%[92m   Etiket ismi : %R%[0m
echo.
set /p isokayit=%R%[92m   ISO ismi : %R%[0m
 
mode con cols=99 lines=40
Call :LogSave "ISOMaker" "İmaj:'%MainWim%' -Etiket:'%etiket%' -ISO:'%isokayit%' ISO dosyası oluşturuldu"
echo ►%R%[33m ISO dosyası hazırlanıyor...%R%[0m
%Location%\Files\oscdimg.exe -m -o -u2 -udfver102 -bootdata:2#p0,e,b%MainWim%\boot\etfsboot.com#pEF,e,b%MainWim%\efi\microsoft\boot\efisys.bin -L%etiket% %MainWim%\ %Location%\Edit\%isokayit%.iso
Call :Powershell "Start-Process '%Location%\Edit'"
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:esdtowim
Call :Panel "%R%[100m                             ESD to WIM                           %R%[0m"
Call :degisken1
mode con cols=99 lines=40
Call :OgnitorenKs.Reader "%MainWim%" "echo" :: :: :: :: ::
set /p $index=%R%[96m  Çoklu Seçim %R%[90mx,y%R%[0m :

echo %$index% | findstr "x" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
cls
FOR %%a in (%$index%) do (
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| FIND "Architecture"') do (
		FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| FIND "Name"') do (
			Call :Panel2 "%R%[33m %%a %R%[37m►%R%[33m (%%c %%b)%R%[37m dönüştürülüyor...%R%[0m"
			Call :esdtowimturn %MainWim% "%%a"
			)
		)
	)
)
Call :Powershell "Start-Process '%Location%\Edit'"
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:WimDelete
Call :Panel "%R%[100m                               WIM SİL                            %R%[0m"
Call :degisken1
mode con cols=99 lines=40
Call :OgnitorenKs.Reader "%MainWim%" echo :: :: :: :: ::
set /p index=%R%[92m İşlem : %R%[0m

echo %$index% | findstr "x" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
cls
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%index% ^| FIND "Architecture"') do (set iarch=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%index% ^| FIND "Name"') do (set iname=%%c)
Call :Panel2 "%R%[33m%index% %R%[37m►%R%[33m (%iname% %iarch%)%R%[37m siliniyor...%R%"
Call :Powershell "Remove-WindowsImage -ImagePath '%MainWim%' -Index '%index%' -CheckIntegrity"
Call :LogSave "WimDelete" "Index='%index%' silindi. '%MainWim%'"
cls
Call :OgnitorenKs.Reader "%MainWim%" echo :: :: :: :: ::
echo.
echo %R%[92m Silme işlemi tamamlandı%R%[0m
echo %R%[92m Menüye dönmek için herhangi bir tuşa basınız.%R%[0m
pause > NUL
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:WimMount
:: Mount klasörünün içindeki herhangi bir dosya varsa işlem gerçekleştirilemez.
RD /S /Q "%Location%\Edit\Mount" > NUL 2>&1
dir /b %Location%\Edit\Mount\* > NUL 2>&1
	if %errorlevel%==0 (echo %R%[31m Mount klasörü dolu işlem yapılamaz%R%[0m
						timeout /t 5 /nobreak > NUL
						goto :eof)
MD "%Location%\Edit\Mount" > NUL 2>&1
cls
Call :Panel "%R%[100m                              WIM MOUNT                           %R%[0m"
Call :degisken1
mode con cols=99 lines=40
Call :OgnitorenKs.Reader "%MainWim%" echo :: :: :: :: ::
echo %MainWim% | find "install.esd" > NUL 2>&1
	if %errorlevel%==0 (echo  %R%[1;97m%R%[41m ESD dosya tespit edildi. İşlem yapılamaz %R%[0m&pause > NUL&goto WindowsEditMenu)
set /p index= %R%[92m İşlem : %R%[0m
	if %index%==x goto WindowsEditMenu
	if %index%==X goto WindowsEditMenu
cls
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%index% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%index% ^| FIND "Name"') do ( set iname=%%c)
Call :Panel2 "%R%[33m %index% %R%[37m►%R%[33m (%iname% %iarc%)%R%[37m açılıyor...%R%"
Dism /Mount-Image /ImageFile:"%MainWim%" /MountDir:"%Location%\Edit\Mount" /Index:%index%
Call :LogSave "WimMount" "'%index%' - '%iname%' - '%iarc%' sürümü Mount edildi. '%MainWim%'"
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:ImageRemount
%~1 :Panel "%R%[100m                        İmaj Yeniden Yükleniyor                   %R%[0m"
Call :LogSave ImageRemount "'%Mount%' yeniden yükleme işlemi yapıldı"
Dism /Remount-Image /MountDir:"%Location%\Edit\Mount"
%~1 :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:ImageUnmount
%~1 :Panel "%R%[100m                            İmaj Toplanıyor                       %R%[0m"
if %Unmount% EQU 0 (Call :Powershell "Dismount-WindowsImage -Path '%Mount%' -Save")
if %Unmount% EQU 1 (Dism /Unmount-Wim  /MountDir:%Mount% /commit
						if %errorlevel% EQU 1 (Call :Powershell "Dismount-WindowsImage -Path '%Mount%' -Save"))
%~1 :ProcessCompleted
goto :eof


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:AppxInstaller
Call :Panel "%R%[100m                           Appx Yükleyici                         %R%[0m"
for /f %%i in ('"dir /b %Location%\Edit\Appx\*"') do (
	Call :LogSave "OfflineAppxYukle" "'%Location%\Edit\Appx\%%i' appx dosyası yüklendi"
	Dism /Image:%Mount% /Add-ProvisionedAppxPackage /PackagePath:%Location%\Edit\Appx\%%i /SkipLicense
)
Dism /Image:%Mount% /Optimize-ProvisionedAppxPackage
	if %errorlevel%==1 (Call :LogSave "OfflineAppxYukle" "HATA! Optimize-ProvisionedAppxPackage işlemi hata verdi. '%Mount%'")
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:UpdateInstaller
Call :Panel "%R%[100m                        Güncelleme Yükleyici                      %R%[0m"
for /f %%i in ('"dir /b %Location%\Edit\Update\*"') do (
	Call :LogSave "OfflineDismYukle" "'%Location%\Edit\Update\%%i' update dosyası yüklendi. '%Mount%'" 
	Dism /Image:%Mount% /add-package /packagepath=%Location%\Edit\Update\%%i
)
echo %R%[92m WinSxS temizleniyor...%R%[0m
Dism /Image:%Mount% /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 (echo %R%[91m Temizleme işlemi başarısız.%R%[0m
						Call :LogSave "OfflineDismYukle" "WinSxS temizlenirken hata oluştu. '%Mount%'"
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:DriverYedek
RD /S /Q "%Location%\Edit\Driver\Yedek" > NUL 2>&1
MD "%Location%\Edit\Driver\Yedek" > NUL 2>&1
Call :Panel "%R%[100m                           Driver Yedekle                        %R%[0m"
Dism /Online /Export-Driver /Destination:%Location%\Edit\Driver\Yedek
Call :LogSave "DriverYedek" "Driverlar yedeklendi"
Call :Powershell "Start-Process '%Location%\Edit\Driver\Yedek'"
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:DriverYukle
Call :Panel "%R%[100m                            Driver Yükle                         %R%[0m"
Call :LogSave "DriverYukle" "Driver yüklendi. '%Mount%'"
Dism /Image:%Mount% /Add-Driver /Driver:%Location%\Edit\Driver /Recurse
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:SetupEdit
:: Setup.zip dosyasını kontrol eder yoksa yeniden indirir.
Call :ToolboxFileChecker Setup.zip
RD /S /Q "%Location%\Edit\Mount" > NUL 2>&1	
:: Yüklü regedit kaydı varsa toplanması için uyarı yapıyorum
:: Farklı programların yüklediği regedit kayıtlarını tespit edemez.
reg query HKLM\OFF_SOFTWARE > NUL 2>&1
	if %errorlevel%==0 (echo %R%[31m HATA! Offline regedit kayıtları yüklü%R%[0m
						timeout /t 5 /nobreak > NUL
						goto :eof)
:: Mount klasörünün içindeki herhangi bir dosya varsa işlem gerçekleştirilemez.
dir /b %Location%\Edit\Mount\* > NUL 2>&1
	if %errorlevel%==0 (echo %R%[31m Mount klasörü dolu işlem yapılamaz%R%[0m
						timeout /t 5 /nobreak > NUL
						goto :eof)
:: Mount klasörü işlem öncesi silinip yeniden oluşturulması olası hataların önüne geçmektedir.
MD "%Location%\Edit\Mount" > NUL 2>&1

Call :Panel "%R%[100m                           Setup Düzenle                         %R%[0m"
:: Boot.wim yolunu almak için degisken4 fonksiyonu aranır.
Call :degisken4
mode con cols=99 lines=40
:: boot.wim dosyasının içeriği okunur.
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%index% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%index% ^| FIND "Name"') do ( set iname=%%c)
:: Alınan içerik bilgileri ekrana yansıtılır.
Call :Panel2 "%R%[33m %index% %R%[37m►%R%[33m (%iname%)%R%[37m açılıyor...%R%[0m"
:: Dism ile setup bölümü mount edilir.
Dism /Mount-Image /ImageFile:%MainWim% /MountDir:"%Location%\Edit\Mount" /Index:%index%
cls
echo ►%R%[33m Dosyalar imaja ekleniyor...%R%[0m
:: Setup.zip dosyası Mount klasörüne çıkarılır.
%NSudo% Powershell -command "Expand-Archive -Force '%Location%\Files\Download\Setup.zip' '%Location%\Edit\Mount'"
cls
:: Lerup Launch Bar konumu seçmeniz istenir.
Call :Panel2 "%R%[96m 'Lerup Launch Bar' menü konumunu seçiniz%R%[0m"
set /p barkonum=%R%[97m  ► %R%[92m[%R%[92m Sol:%R%[1;97m 1 %R%[35m/%R%[92m Üst:%R%[1;97m 2 %R%[35m/%R%[92m Sağ:%R%[1;97m 3 %R%[35m/%R%[92m Alt:%R%[1;97m 4 %R%[92m] : %R%[0m
:: Regedit kayıtları yüklenir ve alttaki reg kayıtları imaja eklendikten sonra regedit kayıtları toplanır. 
Call :RegeditInstall ::
Call :sz "HKLM\OFF_HKU\SOFTWARE\Peter Lerup\LaunchBar" "Location" %barkonum%
Call :sz "HKLM\OFF_HKU\SOFTWARE\Peter Lerup\LaunchBar" "UseLargeIcons" 1
Call :sz "HKLM\OFF_HKU\SOFTWARE\Peter Lerup\LaunchBar" "UseLargeMenus" 1
Call :sz "HKLM\OFF_HKU\SOFTWARE\Peter Lerup\LaunchBar" "AlwaysOnTop" 1
Call :sz "HKLM\OFF_HKU\SOFTWARE\Peter Lerup\LaunchBar" "AutoHide" 0
Call :sz "HKLM\OFF_HKU\SOFTWARE\Peter Lerup\LaunchBar" "Center" 1
Call :sz "HKLM\OFF_HKU\SOFTWARE\Peter Lerup\LaunchBar" "Buttons" "Power.lnk;BypassToolbox.lnk;setup.exe.lnk;Explorer++.lnk;Start Menu.lnk;"
Call :RegeditCollect ::
cls
:: Driver ekleme işleminiz varsa bunu size sorar.
set /p value=►%R%[92m Driver yüklensin mi? [E/H]: %R%[0m
	if %value%==E (Call :DriverYukle)
	if %value%==e (Call :DriverYukle)
:: İşlem sonrası yapılacak farklı işlemler yok ise toplanması için soru yöneltir.
set /p value=►%R%[92m İmaj toplansın mı? [E/H]: %R%[0m
	if %value%==E (Call :ImageUnmount ::)
	if %value%==e (Call :ImageUnmount ::)
goto :eof


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Newico
Call :ToolboxFileChecker Newico.zip
Call :Panel "%R%[100m                 Windows 10 Yeni Simge Yükleyici                  %R%[0m"
Call :LogSave "Newico" "Yeni simgeler entegre edildi. '%Mount%'"
%NSudo% Powershell -command "Expand-Archive -Force '%Location%\Files\Download\Newico.zip' '%Mount%\Windows'"
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:imagexexport
Call :LogSave AIO Maker "'%~3' dosyasına '%~1' dosyasından '%~4 %~5' sürümü entegre edildi"
Dism /Export-Image /SourceImageFile:%~1 /SourceIndex:%~2 /DestinationImageFile:%~3 /DestinationName:"%~4" /Compress:Max
goto :eof

:: --------------------------------------------------------------------------------------------------------

:esdtowimturn
Call :LogSave "ESDtoWIM" "'%~2'-'%~1' sürümü dönüştürüldü"
dir /b %Location%\Edit\install.wim > NUL 2>&1
	if %errorlevel%==0 (Call :LogSave "ESDtoWIM" "HATA! Mevcut install.wim dosyası üzerine ekleme işlemi gerçekleştirildi"
						Dism /Export-Image /SourceImageFile:"%~1" /SourceIndex:%~2 /DestinationImageFile:%Location%\Edit\install.wim /Compress:max /CheckIntegrity
						timeout /t 1 /nobreak > NUL)
	if %errorlevel%==1 (Call :LogSave "ESDtoWIM" "Dönüştürme işlemi yapıldı"
						Dism /Export-Image /SourceImageFile:"%~1" /SourceIndex:%~2 /DestinationImageFile:%Location%\Edit\install.wim /Compress:max /CheckIntegrity
						timeout /t 1 /nobreak > NUL)
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Panel
mode con cols=70 lines=40
echo  %R%[90m┌──────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%~1%R%[90m│%R%[0m
echo  %R%[90m└──────────────────────────────────────────────────────────────────┘%R%[0m
goto :eof

:: --------------------------------------------------------------------------------------------------------

:Panel2
echo  %R%[90m┌───────────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo   %~1
echo  %R%[90m└───────────────────────────────────────────────────────────────────────────────────────────────┘%R%[0m
goto :eof

:: --------------------------------------------------------------------------------------------------------

:OgnitorenKs.Reader
%~3  %R%[90m┌───────────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
%~3  %R%[90m│%R%[1;97m%~4%R%[90m│%R%[0m
%~3  %R%[90m├───────┬────────┬─────────────┬────────┬─────────────┬─────────────────────────────────────────┤%R%[0m
%~5  %R%[90m├───────┴────────┴─────────────┴────────┴─────────────┴─────────────────────────────────────────┤%R%[0m
%~5  %R%[90m│%R%[1;97m%~6%R%[90m│%R%[0m
%~5  %R%[90m├───────┬────────┬─────────────┬────────┬─────────────┬─────────────────────────────────────────┤%R%[0m
%~2  %R%[90m┌───────┬────────┬─────────────┬────────┬─────────────┬─────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[0m %R%[32mINDEX%R%[0m %R%[90m│%R%[0m %R%[32mMİMARİ%R%[0m %R%[90m│%R%[0m %R%[32m   SÜRÜM%R%[0m    %R%[90m│%R%[0m  %R%[32mDİL%R%[0m   %R%[90m│%R%[0m    %R%[32mEDİT%R%[0m     %R%[90m│%R%[0m    %R%[32mİSİM%R%[0m
FOR /F "tokens=3" %%a IN ('Dism /Get-WimInfo /WimFile:%~1 ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%~1 /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| findstr /i Modified') do (
								echo  %R%[90m├───────┼────────┼─────────────┼────────┼─────────────┼─────────────────────────────────────────┤%R%[0m
								echo      %R%[92m%%a%R%[0m   ►   %R%[33m%%b%R%[0m    %R%[36m %%d.%%e%R%[0m    %R%[33m%%f%R%[0m    %R%[36m%%h%R%[0m  %R%[37m %%g%R%[0m
								)
							)
						)
					)
				)
			)
		)
	)
)
%~2  %R%[90m└───────┴────────┴─────────────┴────────┴─────────────┴─────────────────────────────────────────┘%R%[0m
%~7  %R%[90m└───────┴────────┴─────────────┴────────┴─────────────┴─────────────────────────────────────────┘%R%[0m
goto :eof

:: --------------------------------------------------------------------------------------------------------

:ToolboxFileChecker
dir /b "%Location%\Files\Download\%~1" > NUL 2>&1
	if %errorlevel% EQU 1 (Call :InternetControl
						   FOR /F "tokens=1" %%i in ('FIND "%~1" %Location%\Extra\Links.txt') do set link=%%i
						   %Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -O %Location%\Files\Download\%~1
)
goto :eof

:: --------------------------------------------------------------------------------------------------------

:InternetControl
if %InternetCheck% EQU 1 (goto :eof)
FOR /F "tokens=1" %%a in ('FIND "InternetControlPing" %Location%\Extra\Links.txt') do (set link=%%a)
ping -n 1 %link% > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m İnternet bağlantısı yok %R%[0m
						Call :LogSave "InternetControl" "HATA! İnternet bağlantısı yok."
						timeout /t 3 /nobreak > NUL
						goto :eof)
goto :eof

:: --------------------------------------------------------------------------------------------------------

:LogSave
:: %~1: Bölüm adı | %~2: Bilgi kısmı
echo %LogsSettings% > NUL 2>&1
	if %LogsSettings%==1 (goto :eof)
echo [%date% - %time%] ^| %~1 ^| %~2 >> %Location%\Logs
goto :eof

:: --------------------------------------------------------------------------------------------------------

:MobileValue
echo.
set /p MobileValue=%R%[96m %~1 : %R%[0m
	if %MobileValue%==x (goto %~2)
	if %MobileValue%==X (goto %~2)
goto :eof

:: --------------------------------------------------------------------------------------------------------

:Powershell
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:degisken1
set /p MainWim=%R%[97m  ►%R%[92m Klasör veya Dosya yolu : %R%[0m
	if %MainWim%==x GOTO menu
	if %MainWim%==X GOTO menu
echo %MainWim%\ | Find /C /I "\\" > NUL 2>&1
	if %errorlevel%==0 (set MainWim=%MainWim:~0,-1%
						Call :LogSave "degisken1" "ISO kalıbından yol verildi. '%MainWim%'")
echo %MainWim% | Findstr /C:"boot.wim" > NUL 2>&1
	if %errorlevel%==0 (Call :LogSave "degisken1" "boot.wim dosyası tanımlandı. '%MainWim%'"
						goto :eof)		
echo %MainWim% | Findstr /C:"install." > NUL 2>&1
	if %errorlevel%==0 (Call :LogSave "degisken1" "install.wim/esd dosya yolu direkt tanımlandı. '%MainWim%'"
						goto :eof)				
dir /b %MainWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set MainWim="%MainWim%\sources\install.wim")
	if %errorlevel%==1 (set MainWim="%MainWim%\sources\install.esd")
Call :LogSave "degisken1" "İmaj klasör yolu verildi. '%MainWim%'"
goto :eof

:: --------------------------------------------------------------------------------------------------------

:degisken2
set /p AddWim=%R%[97m  ►%R%[92m Klasör veya Dosya yolu : %R%[0m
	if %AddWim%==x GOTO menu
	if %AddWim%==X GOTO menu

echo %AddWim%\ | Find /C /I "\\" > NUL 2>&1
	if %errorlevel%==0 (set AddWim=%AddWim:~0,-1%
						Call :LogSave "degisken2" "ISO kalıbından yol verildi. '%AddWim%'")

echo %AddWim% | Findstr /C:"boot.wim" > NUL 2>&1
	if %errorlevel%==0 (Call :LogSave "degisken2" "boot.wim dosyası tanımlandı. '%AddWim%'"
						goto :eof)
						
echo %AddWim% | Findstr /C:"install." > NUL 2>&1
	if %errorlevel%==0 (Call :LogSave "degisken2" "install.wim/esd dosya yolu direkt tanımlandı. '%AddWim%'"
						goto :eof)
						
dir /b %AddWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set AddWim="%AddWim%\sources\install.wim")
	if %errorlevel%==1 (set AddWim="%AddWim%\sources\install.esd")
Call :LogSave "degisken2" "İmaj klasör yolu verildi. '%AddWim%'"
goto :eof

:: --------------------------------------------------------------------------------------------------------

:degisken3
mode con cols=90 lines=20
echo.
echo  %R%[96m Örnek:%R%[33m "C:\OgnitorenKs.Toolbox\Edit\Mount"%R%[0m
set /p Mount=%R%[97m  ►%R%[92m Imaj klasör yolu : %R%[0m
	if %Mount%==x GOTO WindowsEditMenu
	if %Mount%==X GOTO WindowsEditMenu
Call :LogSave "degisken3" "Mount klasör yolu tanımlandı. '%Mount%'"
goto :eof

:: --------------------------------------------------------------------------------------------------------

:degisken4
set /p MainWim=%R%[97m  ►%R%[92m Klasör veya Dosya yolu : %R%[0m
	if %MainWim%==x GOTO menu
	if %MainWim%==X GOTO menu
	
echo %MainWim%\ | Find /C /I "\\" > NUL 2>&1
	if %errorlevel%==0 (echo %R%[91m HATA! ISO dosyası bağlanamaz.%R%[0m
						Call :LogSave "degisken4" "HATA! ^> ISO kalıbı bağlanmaya çalıştı. '%MainWim%'"
						timeout /t 4 /nobreak > NUL
						goto WindowsEditMenu)
						
echo %MainWim% | Findstr /C:"boot.wim" > NUL 2>&1
	if %errorlevel%==0 (Call :LogSave "degisken1" "boot.wim dosyası tanımlandı. '%AddWim%'"
						goto degisken4index)
						
dir /b %MainWim%\sources\boot.wim > NUL 2>&1
	if %errorlevel%==0 (set MainWim="%MainWim%\sources\boot.wim")
	if %errorlevel%==1 (set MainWim="%MainWim%\boot.wim")
:degisken4index
Dism /Get-WimInfo /WimFile:%MainWim% /Index:1 | Find "Microsoft Windows Setup" > NUL 2>&1
	if %errorlevel%==0 (set index=1)
	if %errorlevel%==1 (set index=2)
Call :LogSave "degisken4" "Setup '%index%' index tespit edildi. '%MainWim%'"
cls
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

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:RegeditInstall
reg load HKLM\OFF_COMPONENTS "%Mount%\Windows\System32\config\COMPONENTS" > NUL
reg load HKLM\OFF_HKU "%Mount%\Windows\System32\config\default" > NUL
reg load HKLM\OFF_HKCU "%Mount%\Users\Default\ntuser.dat" > NUL
reg load HKLM\OFF_SOFTWARE "%Mount%\Windows\System32\config\SOFTWARE" > NUL
reg load HKLM\OFF_SYSTEM "%Mount%\Windows\System32\config\SYSTEM" > NUL
Call :LogSave "RegeditInstall" "'%Mount%' klasöründen regedit kayıtları yüklendi"
%~1 :ProcessCompleted
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
Call :LogSave "RegeditCollect" "'%Mount%' klasöründen regedit kayıtları toplandı"
%~1 :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

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