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
::  Hazırlayan: Hüseyin UZUNYAYLA / OgnitorenKs
::
::  İletişim - Contact;
::  --------------------------------------
::  • Discord: OgnitorenKs#2737 
::  •    Mail: ognitorenks@gmail.com
::  •    Site: https://ognitorenks.blogspot.com/
::
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
echo off
cls
chcp 65001 > NUL 2>&1
mode con cols=61 lines=20
title OgnitorenKs Windows Editör

:: Renklendirme komutları 
setlocal
call :ColorEnd
Call :ColorEnd2

:: Konum bilgisi alınır
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Location=%Location:~0,-6%
Call :NSudo

:: Varsayılan Mount klasör yolu
set Mount=%Location%\Edit\Mount

set LogsSettings=0&FOR /F "tokens=2" %%a in ('findstr /C:"LogsSettings" %Location%\Settings.ini') do set value=%%a
	if %value%==1 (set LogsSettings=1)

:: İhtiyaç duyulan dosyaları indirir.
echo                   %R%[92m Dosyalar kontrol ediliyor...%R%[0m
FOR %%a in (Setup.zip Newico.zip Oldico.zip) do (
	dir /b %Location%\Files\%%a > NUL 2>&1
		if %errorlevel%==1 (Call :FilesDownloader %%a)
)

:WindowsEditMenu
cls
mode con cols=53 lines=31
echo  %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m            OgnitorenKs Windows Editör           %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m WIM / ESD Okuyucu                         %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m AIO Windows Hazırla                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 3.%C%[33m ISO Hazırla                               %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 4.%C%[33m ESD to WIM dönüştürücü                    %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 5.%C%[33m İndex silici                              %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 6.%C%[33m İmaj Yükle                                %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 7.%C%[33m İmaj Yeniden Yükle                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 8.%C%[33m İmaj Topla                                %R%[90m│%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[36m 9.%C%[33m Regedit yükle%R%[90m [İmaj]                      │%R%[0m
echo  %R%[90m│  %R%[32m 10.%C%[33m Regedit topla%R%[90m [İmaj]                      │%R%[0m 
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│  %R%[36m 11.%C%[33m Güncelleme Yükleyici%C%[90m [İmaj                │%R%[0m
echo  %R%[90m│  %R%[36m 12.%C%[33m Appx yükleyici%C%[90m [İmaj]                     │%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│  %R%[32m 13.%C%[33m Driver Yedekle%C%[90m [Yüklü Sistem]             │%R%[0m
echo  %R%[90m│  %R%[36m 14.%C%[33m Driver Yükle%C%[90m [İmaj]                       │%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│  %R%[32m 15.%C%[33m Setup Düzenle%C%[90m [İmaj]                      │%R%[0m
echo  %R%[90m│  %R%[36m 16.%C%[33m Yeni Simgeleri yükle%C%[90m [İmaj]               │%R%[0m
echo  %R%[90m│  %R%[36m 17.%C%[33m Gpedit.msc ekle%C%[90m [İmaj]                    │%R%[0m
echo  %R%[90m│  %R%[36m 18.%C%[33m Hyper-V ekle%C%[90m [İmaj]                       │%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│  %R%[36m 19.%R%[36m İmaj yol tanımla                          %R%[90m│%R%[0m
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
	if %WindowsEditMenu%==10 (Call :RegeditCollet Call)
	if %WindowsEditMenu%==11 (Call :UpdateInstaller)
	if %WindowsEditMenu%==12 (Call :AppxInstaller)
	if %WindowsEditMenu%==13 (Call :DriverYedek)
	if %WindowsEditMenu%==14 (Call :DriverYukle)
	if %WindowsEditMenu%==15 (Call :SetupEdit)
	if %WindowsEditMenu%==16 (Call :Newico)
	if %WindowsEditMenu%==17 (Call :gpeditmsc)
	if %WindowsEditMenu%==18 (Call :HyperV)
	if %WindowsEditMenu%==19 (Call :degisken3)
) else
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
echo   ►%C%[96m Ana Sürüm%R%[0m ◄
Call :degisken1
echo   ►%C%[96m Eklenecek Sürüm%R%[0m ◄
Call :degisken2
mode con cols=99 lines=40
Call :OgnitorenKs.Reader "%MainWim%" :: echo "%R%[100m                                          ► ANA SÜRÜM ◄                                        %R%[0m" :: :: ::
Call :OgnitorenKs.Reader "%AddWim%" :: :: :: echo "%R%[100m                                       ► EKLENECEK SÜRÜM ◄                                     %R%[0m" echo
echo %AddWim% %MainWim% | find "install.esd" > NUL 2>&1
	if %errorlevel%==0 (echo  %R%[1;97m%R%[41m ESD dosya tespit edildi. İşlem yapılamaz %R%[0m&pause > NUL&goto WindowsEditMenu)
set /p $index=%R%[96m  Çoklu Seçim %R%[90mx,y%R%[0m :
	if %$index%==x goto WindowsEditMenu
	if %$index%==X goto WindowsEditMenu
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
dir /b "%Location%\Files\oscdimg.exe" > NUL 2>&1
	 if %errorlevel%==1 (echo %R%[1;97m%R%[41m oscdimg.exe dosyası bulunamadı %R%[0m&timeout /t 4 /nobreak > NUL&goto WindowsEditMenu)
Call :Panel "%R%[100m                             ISO MAKER                            %R%[0m"
echo  %R%[96m Örnek:%R%[33m C:\Windows10Pro%R%[0m
set /p MainWim=%C%[92m   İmaj klasör yolu : %C%[0m
	if %MainWim%==x GOTO WindowsEditMenu
	if %MainWim%==X GOTO WindowsEditMenu
echo.
set /p etiket=%C%[92m   Etiket ismi : %C%[0m
echo.
set /p isokayit=%C%[92m   ISO ismi : %C%[0m
 
mode con cols=99 lines=40
Call :LogSave "ISOMaker" "İmaj:'%MainWim%' -Etiket:'%etiket%' -ISO:'%isokayit%' ISO dosyası oluşturuldu"
echo ►%R%[33m ISO dosyası hazırlanıyor...%C%[0m
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
	if %$index%==x goto WindowsEditMenu
	if %$index%==X goto WindowsEditMenu
cls
FOR %%a in (%$index%) do (
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| FIND "Architecture"') do (
		FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| FIND "Name"') do (
			Call :Panel2 "%R%[33m %%a %R%[37m►%R%[33m (%%c %%b)%R%[37m dönüştürülüyor...%R%[0m"
			Call :esdtowim %MainWim% "%%a"
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
set /p index=%C%[92m İşlem : %C%[0m
	if %index%==x goto WindowsEditMenu
	if %index%==X goto WindowsEditMenu
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
Call :ImageRemount ::
Call :RegeditCollect ::
Call :ImageUnmount ::
RD /S /Q "%Location%\Edit\Mount" > NUL 2>&1
mkdir "%Location%\Edit\Mount" > NUL 2>&1
cls
Call :Panel "%R%[100m                              WIM MOUNT                           %R%[0m"
Call :degisken1
mode con cols=99 lines=40
Call :OgnitorenKs.Reader "%MainWim%" echo :: :: :: :: ::
echo %MainWim% | find "install.esd" > NUL 2>&1
	if %errorlevel%==0 (echo  %R%[1;97m%R%[41m ESD dosya tespit edildi. İşlem yapılamaz %R%[0m&pause > NUL&goto WindowsEditMenu)
set /p index= %C%[92m İşlem : %C%[0m
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
Call :LogSave "ImageUnmount" "'%Mount%' klasörü toplandı"
Call :Powershell "Dismount-WindowsImage -Path '%Location%\Edit\Mount' -Save"
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
	if %errorlevel%==1 (echo %R%[91m TEMİZLEME İŞLEMİ BAŞARISIZ%R%[0m
						Call :LogSave "OfflineDismYukle" "WinSxS temizlenirken hata oluştu. '%Mount%'"
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
Call :ProcessCompleted
goto :eof


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:DriverYedek
RD /S /Q "%Location%\Edit\Driver\Yedek" > NUL 2>&1
mkdir "%Location%\Edit\Driver\Yedek" > NUL 2>&1
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
RD /S /Q "%Location%\Edit\Mount" > NUL 2>&1
Call :RegeditCollet ::
dir /b %Location%\Edit\Mount\* > NUL 2>&1
	if %errorlevel%==0 (echo %R%[31m Mount klasörü dolu işlem yapılamaz%R%[0m
						Call :ImageRemount ::
						Call :ImageUnmount ::)
RD /S /Q "%Location%\Edit\Mount" > NUL 2>&1
mkdir "%Location%\Edit\Mount" > NUL 2>&1
set Mount=%Location%\Edit\Mount

dir /b %Location%\Files\Setup.zip > NUL 2>&1
	if %errorlevel%==1 (Call :FilesDownloader Setup.zip)

Call :Panel "%R%[100m                           Setup Düzenle                         %R%[0m"
Call :degisken4
mode con cols=99 lines=40
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%index% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%index% ^| FIND "Name"') do ( set iname=%%c)
Call :Panel2 "%R%[33m %index% %R%[37m►%R%[33m (%iname%)%R%[37m açılıyor...%R%[0m"
Dism /Mount-Image /ImageFile:%MainWim% /MountDir:"%Location%\Edit\Mount" /Index:%index%
cls
echo ►%R%[33m Dosyalar imaja ekleniyor...%R%[0m
%NSudo% Powershell -command "Expand-Archive -Force '%Location%\Files\Setup.zip' '%Location%\Edit\Mount'"
cls
Call :Panel2 "%R%[96m Lerup Launcher menü konumunu seçiniz%R%[0m"
set /p barkonum=%R%[97m  ► %R%[92m[%R%[92m Sol:%R%[1;97m 1 %R%[35m/%R%[92m Üst:%R%[1;97m 2 %R%[35m/%R%[92m Sağ:%R%[1;97m 3 %R%[35m/%R%[92m Alt:%R%[1;97m 4 %R%[92m] : %R%[0m 
Call :RegeditInstall ::
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Location" /t REG_SZ /d %barkonum% /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "UseLargeIcons" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "UseLargeMenus" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "AlwaysOnTop" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "AutoHide" /t REG_SZ /d 0 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Center" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Buttons" /t REG_SZ /d "Power.lnk;BypassToolbox.lnk;setup.exe.lnk;Explorer++.lnk;Start Menu.lnk;" /f > NUL 2>&1
Call :RegeditCollet ::
cls
set /p value=►%C%[92m Driver yüklensin mi? [E/H]: %C%[0m
	if %value%==E (Call :DriverYukle)
	if %value%==e (Call :DriverYukle)
set /p value=►%C%[92m İmaj toplansın mı? [E/H]: %C%[0m
	if %value%==E (Call :ImageUnmount ::)
	if %value%==e (Call :ImageUnmount ::)
goto :eof


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Newico
Call :Panel "%R%[100m                       Yeni Simge Yükleyici                       %R%[0m"
Call :LogSave "Newico" "Yeni simgeler entegre edildi. '%Mount%'"
%NSudo% Powershell -command "Expand-Archive -Force '%Location%\Files\Newico.zip' '%Mount%\Windows'"
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:gpeditmsc
Call :Panel "%R%[100m                       Gpedit.Msc Yükleyici                       %R%[0m"
Call :LogSave "Gpedit.msc" "Gpedit.msc entegre edildi. '%Mount%'"
FOR /f %%a IN ('"dir /b /s %Mount%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') do (Dism /Image:%Mount% /Add-Package:"%%a")
FOR /f %%a IN ('"dir /b /s %Mount%\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum") do (Dism /Image:%Mount% /Add-Package:"%%a")
Call :ProcessCompleted
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:HyperV
Call :Panel "%R%[100m                         Hyper-V Yükleyici                        %R%[0m"
Call :LogSave "HyperV" "Hyper-V entegre edildi. '%Mount%'"
For /f %%a IN ('"dir /b /s %Mount%\Windows\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (Dism /Image:%Mount% /Add-Package:"%%a")
Dism /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-All
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:imagexexport
Call :LogSave AIO Maker "'%~3' dosyasına '%~1' dosyasından '%~4 %~5' sürümü entegre edildi"
Dism /Export-Image /SourceImageFile:%~1 /SourceIndex:%~2 /DestinationImageFile:%~3 /DestinationName:"%~4" /Compress:Max
goto :eof

:: --------------------------------------------------------------------------------------------------------

:esdtowim
Call :LogSave "ESDtoWIM" "'%~2'-'%~1' sürümü dönüştürüldü"
dir /b %Location%\Edit\install.wim > NUL 2>&1
	if %errorlevel%==0 (Call :LogSave "ESDtoWIM" "HATA! Mevcut install.wim dosyası üzerine ekleme işlemi gerçekleştirildi"
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
echo  %R%[90m│%R%[0m %C%[32mINDEX%C%[0m %R%[90m│%R%[0m %C%[32mMİMARİ%C%[0m %R%[90m│%R%[0m %C%[32m   SÜRÜM%C%[0m    %R%[90m│%R%[0m  %C%[32mDİL%C%[0m   %R%[90m│%R%[0m    %C%[32mEDİT%C%[0m     %R%[90m│%R%[0m    %C%[32mİSİM%C%[0m
FOR /F "tokens=3" %%a IN ('Dism /Get-WimInfo /WimFile:%~1 ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%~1 /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| findstr /i Modified') do (
								echo  %R%[90m├───────┼────────┼─────────────┼────────┼─────────────┼─────────────────────────────────────────┤%R%[0m
								echo      %C%[92m%%a%C%[0m   ►   %C%[33m%%b%C%[0m    %C%[36m %%d.%%e%C%[0m    %C%[33m%%f%C%[0m    %C%[36m%%h%C%[0m  %C%[37m %%g%C%[0m
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

:NSudo
dir /b "%Location%\Files\NSudo.exe" > NUL 2>&1
	if %errorlevel%==1 (Call :LogSave "NSudo" "NSudo.exe dosyası bulunamadı. Yeniden indirildi."
						Call :FilesDownloader "https://docs.google.com/uc?export=download&id=1u26XInN1baT1zGhL5N4Kz1SUD4pYJys9" "%download%\NSudo.zip"
						Call :Powershell "Expand-Archive -Force '%download%\NSudo.zip' '%Location%\Files'"
						DEL /F /Q /A "%Location%\Files\NSudo.zip" > NUL 2>&1)
Call :LogSave "NSudo-TrustedInstaller" "%*"
set NSudo="%Location%\Files\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c
goto :eof

:: --------------------------------------------------------------------------------------------------------

:FilesDownloader [%~1=Download Name]
Call :InternetControl
FOR /F "tokens=1" %%i in ('FIND "%~1" %Location%\Extra\Links.txt') do set link=%%i
Call :LogSave "FilesDownloader" "'%~1' indirildi. '%link%'"
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -O %Location%\Files\%~1
goto :eof

:: --------------------------------------------------------------------------------------------------------

:InternetControl
ping -n 1 google.com > NUL
	if %errorlevel%==1 (echo   %R%[1;97m%R%[41m Internet yok %R%[0m
						Call :LogSave "InternetControl" "HATA! İnternet bağlantısı yok."
						timeout /t 4 /nobreak > NUL
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

:Powershell
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:degisken1
set /p MainWim=%C%[97m  ►%C%[92m Klasör veya Dosya yolu : %C%[0m
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
set /p AddWim=%C%[97m  ►%C%[92m Klasör veya Dosya yolu : %C%[0m
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
echo  %C%[96m Örnek:%C%[33m "C:\OgnitorenKs.Toolbox\Edit\Mount"%C%[0m
set /p Mount=%R%[97m  ►%R%[92m Imaj klasör yolu : %R%[0m
	if %Mount%==x GOTO WindowsEditMenu
	if %Mount%==X GOTO WindowsEditMenu
Call :LogSave "degisken3" "Mount klasör yolu tanımlandı. '%Mount%'"
goto :eof
:: --------------------------------------------------------------------------------------------------------

:degisken4
set /p MainWim=%C%[97m  ►%C%[92m Klasör veya Dosya yolu : %C%[0m
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

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:RegeditInstall
%~1 :Panel "%R%[100m                            Regedit Yükle                         %R%[0m"
reg load HKLM\OG_COMPONENTS "%Mount%\Windows\System32\config\COMPONENTS" > NUL
reg load HKLM\OG_DEFAULT "%Mount%\Windows\System32\config\default" > NUL
reg load HKLM\OG_NTUSER "%Mount%\Users\Default\ntuser.dat" > NUL
reg load HKLM\OG_SOFTWARE "%Mount%\Windows\System32\config\SOFTWARE" > NUL
reg load HKLM\OG_SYSTEM "%Mount%\Windows\System32\config\SYSTEM" > NUL
Call :LogSave "RegeditInstall" "'%Mount%' klasöründen regedit kayıtları yüklendi"
%~1 :ProcessCompleted
goto :eof

:: --------------------------------------------------------------------------------------------------------

:RegeditCollet
%~1 :Panel "%R%[100m                            Regedit Topla                         %R%[0m"
for /f "tokens=* delims=" %%a in ('reg query "HKLM" ^| findstr "{"') do (
	reg unload "%%a" >nul 2>&1
)
reg delete "HKLM\OG_SYSTEM\CurrentControlSet" /f >nul 2>&1
reg unload HKLM\OG_COMPONENTS > NUL 2>&1
reg unload HKLM\OG_DRIVERS > NUL 2>&1
reg unload HKLM\OG_DEFAULT > NUL 2>&1
reg unload HKLM\OG_NTUSER > NUL 2>&1
reg unload HKLM\OG_SCHEMA > NUL 2>&1
reg unload HKLM\OG_SOFTWARE > NUL 2>&1
reg unload HKLM\OG_SYSTEM > NUL 2>&1
Call :LogSave "RegeditCollet" "'%Mount%' klasöründen regedit kayıtları toplandı"
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

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

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
