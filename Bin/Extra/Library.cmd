:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
::
::              ██████   ██████   ██    ██ ████ ████████  ██████  ████████  ████████ ██    ██ ██    ██  ██████
::             ██    ██ ██    ██  ███   ██  ██     ██    ██    ██ ██     ██ ██       ███   ██ ██   ██  ██    █
::             ██    ██ ██        ████  ██  ██     ██    ██    ██ ██     ██ ██       ████  ██ ██  ██   ██
::             ██    ██ ██   ████ ██ ██ ██  ██     ██    ██    ██ ████████  ██████   ██ ██ ██ █████      ██████
::             ██    ██ ██    ██  ██  ████  ██     ██    ██    ██ ██   ██   ██       ██  ████ ██  ██         ██
::             ██    ██ ██    ██  ██   ███  ██     ██    ██    ██ ██    ██  ██       ██   ███ ██   ██  ██    ██
::              ██████   ██████   ██    ██ ████    ██     ██████  ██     ██ ████████ ██    ██ ██    ██  ██████ 
::
::      ████████ ███████ ███████ ██      ██████  ███████  ██    ██  #  █████  ██  ██ ████ ██     █████   ██████ ██████
::         ██    ██   ██ ██   ██ ██      ██   ██ ██   ██   ██  ██   #  ██  ██ ██  ██  ██  ██     ██  ██  ██     ██  ██
::         ██    ██   ██ ██   ██ ██      ██████  ██   ██     ██     #  █████  ██  ██  ██  ██     ██   ██ █████  ██████
::         ██    ██   ██ ██   ██ ██      ██   ██ ██   ██   ██  ██   #  ██  ██ ██  ██  ██  ██     ██  ██  ██     ██ ██ 
::         ██    ███████ ███████ ███████ ██████  ███████  ██    ██  #  █████  ██████ ████ ██████ █████   ██████ ██  ██
::
::  ► Hazırlayan/Created: Hüseyin UZUNYAYLA / OgnitorenKs
::
::  ► İletişim - Contact;
::  --------------------------------------
::  • İletişim: https://ognitorenks.com.tr/iletisim
::  •  Discord: OgnitorenKs#2737 
::  •     Mail: ognitorenks@gmail.com
::  •  Website: https://ognitorenks.com.tr
::  •  Youtube: https://www.youtube.com/channel/UCb3QI93VpF34xNAWDSF6TgA
::  •   Github: https://github.com/OgnitorenKs
:: 
:: =============================================================
::
::  ► Toolbox;
::    --------
::   •  Github: https://github.com/OgnitorenKs
::   • WebSite: https://ognitorenks.com.tr/2022/04/ognitorenks-toolbox-windows-yardimcisi.html
::
::  ► Builder;
::    --------
::   •  Github:
::   • WebSite:
:: 
:: =============================================================
::
:: ► Error değişken karşılıkları;
::   ---------------------------
::    • Error1 = Klasör yollarında Türkçe karakter var ise verilen hata
::    • Error2 = Klasör yollarında boşluk var ise verilen hata
::    • Error3 = ESD ile işlem yapılamayan bölümde install.esd tanımlandığında verilen hata.
::    • Error4 = Boot.wim ile işlem yapılamayan bölümde tanımlandığında verilen hata.
::    • Error5 = ISO ile işlem yapılamayan bölümde ISO dosya yolu tanımlandığında verilen hata.
::    • Error6 = Sistem mimarisi x64 olmadığında verilen hata.
::    • Error7 = Mount klasörü dolu olduğunda verilen hata
::    • Error8 = Install.wim/esd dosyası olmadığında verilen hata.
::    • Error9 = İnternet bağlantısı olmadığında verilen hata.
::		• Error9 = Bu değişkende internet olmasına rağmen hata alınıyorsa "9a" tuşlayarak kontrol mekanizması atlanabilir. Bunu her hata aldığınızda yapmanız gerekir.
::
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ►
:: #########################################################################################################
:: Yönlendirme yapılır
Call %*
goto :eof
:: #########################################################################################################
:: ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄

:Check_Update
Call :Date
:: Settings.ini dosyası içinden güncelleme ayarını kontrol ederek yönlendirme yapar.
FOR /F "tokens=2" %%a in ('findstr /C:"AutoUpdate" %Location%\Bin\Settings.ini') do (if %%a EQU 1 (goto :eof))
:: Builder otomatik güncelleme işleminin durumunu kontrol eder ve yönlendirir.
Call :Border 80 30
%Lang% :Update_1
:: Settings.ini dosyasına kaydedilen tarih ile güncel tarih verisi karşılaştırılır. Tarihler farklı ise güncellemeler kontrol edilir.
if %TimeLog% NEQ %DateDay% (Call :Powershell "(Get-Content %Location%\Bin\Settings.ini) | ForEach-Object { $_ -replace '%TimeLog%', '%DateDay%' } | Set-Content '%Location%\Bin\Settings.ini'"
							Call :wget %Location%\Bin\Extra\Links.txt
							FOR /F "tokens=2" %%b in ('Findstr /C:"%~1" %Location%\Bin\Extra\Links.txt') do (
							if %%b NEQ %version% (cls&%Lang% :Update_2
												  timeout /t 5 /nobreak > NUL
												  Call :wget %temp%\%~2
												  Call :Powershell "Start-Process '%temp%\%~2'"
												  exit)
	)
)
goto :eof

:: -------------------------------------------------------------
:Chocolatey_Check
:: Chocolatey indirme sisteminin yüklü olup olmadığını kontrol eder. Yüklü değilse kurulum işlemini gerçekleştirir.
dir /b "%ProgramData%\chocolatey" > NUL 2>&1
	if %errorlevel% EQU 1 (%Lang% :Chocolatey_1
						   %NSudoTop% Powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && set "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
)
goto :eof

:: -------------------------------------------------------------
:Wget_Check
:: Wget kontrolü yapar, yoksa indirir.
dir /b "%Location%\Bin\wget.exe" > NUL 2>&1
	if %errorlevel% EQU 1 (Call :PSDownload "%Location%\Bin\wget.exe")
goto :eof

:: -------------------------------------------------------------
:Language_Select
FOR /F "tokens=3" %%g in ('Findstr /i "Batch_Language" %Location%\Bin\Settings.ini') do (set Language_Select=%%g)
goto :eof

:: -------------------------------------------------------------
:New_Folder
FOR %%g in (%~2) do (MD "%~1\%%g" > NUL 2>&1)
goto :eof

:: -------------------------------------------------------------
:Date
:: Tarih bilgisi alınır
for /f "tokens=2" %%a in ('echo %date%') do set Date=%%a
:: YIL.AY.GÜN
set DateYear=%Date:~6%-%Date:~3,-5%-%Date:~0,-8%
:: GÜN.AY.YIL
set DateDay=%Date:~0,-8%.%Date:~3,-5%.%Date:~6%
goto :eof

:: -------------------------------------------------------------
:Time
for /f "tokens=1" %%a in ('echo %time%') do set Time=%%a
goto :eof

:: -------------------------------------------------------------
:NSudo
set NSudoTop="%Location%\Files\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c
set NSudoAdmin="%Location%\Files\NSudo.exe" -U:E -P:E -ShowWindowMode:hide cmd /c
set NSudoNormal="%Location%\Files\NSudo.exe" -U:C -P:D -Wait -ShowWindowMode:hide cmd /c
goto :eof

:: -------------------------------------------------------------
:Check_RemountImage
:: Yüklü mount yollarını alır ve remount işlemi yapar. Bunun uygulanması olası hataları önlemektedir.
FOR /F "tokens=4" %%a in ('dism /get-mountedwiminfo ^| FIND "Mount Dir"') do (
	FOR /F "delims=\\? tokens=*" %%b in ('echo %%a') do (
		Dism /Remount-Image /MountDir:"%%b" > NUL 2>&1
	)
)
goto :eof
:: -------------------------------------------------------------
:Check_Admin
:: Admin yetkisini kontrol eder
reg query "HKU\S-1-5-19" > NUL 2>&1
	if %errorlevel%==1 (%NSudo2% Powershell -command "Start-Process '%Location%\%~1'"
						exit)
goto :eof
:: -------------------------------------------------------------
:Check_x64
FOR /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "PROCESSOR_ARCHITECTURE" 2^>NUL') do (
	if %%a NEQ AMD64 (cls&Call :Error_Print "ERROR 6"&echo.&Call :Error_Print "HATA! Sistem mimarisi x64 değil"&echo.&Call :Error_Print "Builder kapatılıyor"&timeout /t 4 /nobreak > NUL&exit)
)
goto :eof

:: -------------------------------------------------------------
:Bug_Fix
set menu=E%Random%
set Error=Error%Random%
goto :eof

:: -------------------------------------------------------------
:Error_Character
:: Klasör yolunda Türkçe karakterleri kontrol eder
set Check=%~1
echo %Check% | Find /I "ö" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&Call :Error_Print "ERROR 1"&echo.&Call :Error_Print "HATA! Klasör yolunda Türkçe karakter var"&echo.&Call :Error_Print "Toolbox kapanıyor..."&timeout /t 4 /nobreak > NUL&exit)
echo %Check% | Find /I "ü" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&Call :Error_Print "ERROR 1"&echo.&Call :Error_Print "HATA! Klasör yolunda Türkçe karakter var"&echo.&Call :Error_Print "Toolbox kapanıyor..."&timeout /t 4 /nobreak > NUL&exit)
echo %Check% | Find /I "ğ" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&Call :Error_Print "ERROR 1"&echo.&Call :Error_Print "HATA! Klasör yolunda Türkçe karakter var"&echo.&Call :Error_Print "Toolbox kapanıyor..."&timeout /t 4 /nobreak > NUL&exit)
echo %Check% | Find /I "ş" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&Call :Error_Print "ERROR 1"&echo.&Call :Error_Print "HATA! Klasör yolunda Türkçe karakter var"&echo.&Call :Error_Print "Toolbox kapanıyor..."&timeout /t 4 /nobreak > NUL&exit)
echo %Check% | Find /I "ç" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&Call :Error_Print "ERROR 1"&echo.&Call :Error_Print "HATA! Klasör yolunda Türkçe karakter var"&echo.&Call :Error_Print "Toolbox kapanıyor..."&timeout /t 4 /nobreak > NUL&exit)
echo %Check% | Find "ı" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&Call :Error_Print "ERROR 1"&echo.&Call :Error_Print "HATA! Klasör yolunda Türkçe karakter var"&echo.&Call :Error_Print "Toolbox kapanıyor..."&timeout /t 4 /nobreak > NUL&exit)
echo %Check% | Find "İ" > NUL 2>&1
	if %errorlevel% EQU 0 (cls&Call :Error_Print "ERROR 1"&echo.&Call :Error_Print "HATA! Klasör yolunda Türkçe karakter var"&echo.&Call :Error_Print "Toolbox kapanıyor..."&timeout /t 4 /nobreak > NUL&exit)
:: Klasör yolunda boşlukları tespit eder.
if "%Check%" NEQ "%Check: =%" (cls&Call :Error_Print "ERROR 2"&echo.&Call :Error_Print "HATA! Klasör yolunda boşluk var"&echo.&Call :Error_Print "Toolbox kapanıyor..."&timeout /t 4 /nobreak > NUL&exit)
goto :eof

:: -------------------------------------------------------------
:For_Print
:: Dism komutlu for döngülerinde renklendirme komutları sorun çıkardığı için bu bölüm oluşturuldu.
echo ►%R%[92m Index%R%[33m %~1 - "%~2 %~3"%R%[92m %~4...%R%[0m
goto :eof

:: -------------------------------------------------------------
:Error_Print
echo %R%[1;97m%R%[41m %~1 %R%[0m
goto :eof

:: -------------------------------------------------------------
:Border
mode con cols=%~1 lines=%~2
goto :eof

:: -------------------------------------------------------------
:Powershell
:: Powershell komutları kullanıldığında komut istemi compact moda girmektedir. Bunu önlemek için karakter takımları arasında geçiş yapıyoruz.
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof

:: -------------------------------------------------------------
:Powershell_2
:: Powershell komutları kullanıldığında komut istemi compact moda girmektedir. Bunu önlemek için karakter takımları arasında geçiş yapıyoruz.
chcp 437 > NUL 2>&1
Powershell -NoLogo -NoProfile -NonInteractive -ExecutionPolicy Bypass -Command %*
chcp 65001 > NUL 2>&1
goto :eof

:: -------------------------------------------------------------
:Chocolatey
choco install -y --force --limit-output --ignore-checksums %~1
goto :eof

:: -------------------------------------------------------------
:Winget
winget install -e --silent --force --accept-source-agreements --accept-package-agreements --id %~1
goto :eof

:: -------------------------------------------------------------
:wget
:: [%~1=Download Location] [%~n1: Download Name] [%~x1: İndirme uzantısı]
Call :InternetControl
dir /b "%Location%\Bin\wget.exe" > NUL 2>&1
	if %errorlevel% EQU 1 (Call :PSDownload "%Location%\Bin\wget.exe")
FOR /F "tokens=1" %%i in ('Findstr /C:"%~n1%~x1" %Location%\Bin\Extra\Links.txt') do set link=%%i
%Location%\Bin\wget --no-check-certificate "%link%" -t 10 -O %~1 > NUL 2>&1
goto :eof

:: -------------------------------------------------------------
:PSDownload
Call :InternetControl
echo    %R%[90m[Powershell]%R%[0m ►%R%[33m %~n1%R%[0m indiriliyor...
FOR /F "tokens=1" %%i in ('Findstr /C:"%~n1%~x1" %Location%\Bin\Extra\Links.txt') do set link=%%i
Call :Powershell "& { iwr %link% -OutFile %~1 }"
goto :eof

:: -------------------------------------------------------------
:InternetControl
if %Error% EQU 9a (goto :eof)
if %Error% EQU 9A (goto :eof)
FOR /F "tokens=1" %%g in ('FIND "PingCheckRoad" %Location%\Bin\Extra\Links.txt') do (set link=%%g)
ping -n 1 %link% > NUL
	if %errorlevel% EQU 1 (cls&Call :Error_Print "ERROR 9"&echo.&set /p Error=%R%[1,97m%R%[41m HATA! İnternet bağlantısını sağlayıp herhangi bir tuşa basınız [Geç: 9A]= %R%[0m&Call :InternetControl)
goto :eof

:: -------------------------------------------------------------
:Mount_Check
:: Mount klasöründe yüklü sistem var ise değişkeni ayarlar. Yok ise Mount klasörünü siler
dir /b "%Location%\Mount\Windows\regedit.exe" > NUL 2>&1
	if %errorlevel% EQU 0 (set Error=7)
	if %errorlevel% EQU 1 (RD /S /Q "%Location%\Mount" > NUL 2>&1)	
:: Yüklü regedit kayıtları var ise kaldırır. Ancak builder aracı dışında farklı isimle kayıt edildiyse kaldırmaz.
reg query HKLM | find /C /I "OFF_" > NUL 2>&1
	if %errorlevel% EQU 0 (Call :RegeditCollect)
reg query HKLM | findstr /i "{" > NUL 2>&1
	if %errorlevel% EQU 0 (Call :RegeditCollect)
:: Mount klasörü işlem öncesi silinip yeniden oluşturulması olası hataların önüne geçmektedir.
MD "%Location%\Mount" > NUL 2>&1
goto :eof

:: -------------------------------------------------------------
:Regedit_Convert
:: Offline regedit eklemek için Regedit klasörüne eklenen .reg dosyaları uygun şekilde düzenlenir.
:: Regedit kayıtlarında boşluk ve Türkçe harf olma ihtimaline karşılık isimlerine random sayılar veriyorum.
FOR /f "tokens=*" %%g in ('dir /b /s %Location%\Add\Image\Regedit\*.reg 2^>NUL') do (Call :Rename_Reg "%%g")
timeout /t 1 /nobreak > NUL
:: Regedit kayıtlarını offline kayıtlar göre düzenler.
FOR /F "tokens=*" %%g in ('dir /b /s %Location%\Add\Image\Regedit\*.reg 2^>NUL') do (
	Call :Powershell "(Get-Content %%g) | ForEach-Object { $_ -replace 'HKEY_USERS', 'HKU' } | Set-Content '%%g'"
)
::
FOR /F "tokens=*" %%g in ('dir /b /s %Location%\Add\Image\Regedit\*.reg 2^>NUL') do (
	Call :Powershell "(Get-Content %%g) | ForEach-Object { $_ -replace 'HKEY_LOCAL_MACHINE', 'HKLM' } | Set-Content '%%g'"
)
::
FOR /F "tokens=*" %%g in ('dir /b /s %Location%\Add\Image\Regedit\*.reg 2^>NUL') do (
	Call :Powershell "(Get-Content %%g) | ForEach-Object { $_ -replace 'HKEY_CLASSES_ROOT', 'HKCR' } | Set-Content '%%g'"
)
::
FOR /F "tokens=*" %%g in ('dir /b /s %Location%\Add\Image\Regedit\*.reg 2^>NUL') do (
	Call :Powershell "(Get-Content %%g) | ForEach-Object { $_ -replace 'HKEY_CURRENT_USER', 'HKCU' } | Set-Content '%%g'"
)
::
FOR /F "skip=2 delims=\_ tokens=2" %%g in ('Find "HKU\S-1-5" %Location%\Add\Image\Regedit\*.reg 2^>NUL') do (set ValueR=%%g)
FOR /F "tokens=*" %%g in ('dir /b /s %Location%\Add\Image\Regedit\*.reg 2^>NUL') do (
	Call :Powershell "(Get-Content %%g) | ForEach-Object { $_ -replace '%ValueR%', '.Default' } | Set-Content '%%g'"
)
timeout /t 2 /nobreak > NUL
Call :Powershell_2 "%Location%\Bin\ConvertReg.ps1" "%Location%\Add\Image\Regedit" "%Location%\Output\Regedit"
:: Regedit kayıtlarını yükler
FOR /F "tokens=*" %%g in ('dir /b /s %Location%\Output\Regedit\*.reg 2^>NUL') do (
	Regedit /s %%g
)
goto :eof

:: -------------------------------------------------------------
:Rename_Reg
Rename "%~1" "%Random%%~x1" > NUL 2>&1
goto :eof

:: -------------------------------------------------------------
:Builder_Reader
:: Bu bölümde Builder.ini dosyasını tanımlanan değişken üzerinden alacaksın.
FOR /F "tokens=2" %%a in ('findstr /C:"%~2" %Location%\Configs\Bulilder\') do (set Builder=%%a)
goto :eof

:: -------------------------------------------------------------
:OgnitorenKs.Reader
%~3  %R%[90m┌──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
%~3  %R%[90m│%R%[1;97m%~4%R%[90m│%R%[0m
%~3  %R%[90m├───────┬────────┬─────────────┬────────┬─────────────┬────────────────────────────────────────────────────────────────────────┤%R%[0m
%~5  %R%[90m├───────┴────────┴─────────────┴────────┴─────────────┴────────────────────────────────────────────────────────────────────────┤%R%[0m
%~5  %R%[90m│%R%[1;97m%~6%R%[90m│%R%[0m
%~5  %R%[90m├───────┬────────┬─────────────┬────────┬─────────────┬────────────────────────────────────────────────────────────────────────┤%R%[0m
%~2  %R%[90m┌───────┬────────┬─────────────┬────────┬─────────────┬────────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[0m %R%[32mINDEX%R%[0m %R%[90m│%R%[0m %R%[32mMİMARİ%R%[0m %R%[90m│%R%[0m %R%[32m   SÜRÜM%R%[0m    %R%[90m│%R%[0m  %R%[32mDİL%R%[0m   %R%[90m│%R%[0m    %R%[32mEDİT%R%[0m     %R%[90m│%R%[0m    %R%[32mİSİM%R%[0m
FOR /F "tokens=3" %%a IN ('Dism /Get-WimInfo /WimFile:%~1 ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%~1 /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%~1  /Index:%%a ^| findstr /i Modified') do (
								echo  %R%[90m├───────┼────────┼─────────────┼────────┼─────────────┼────────────────────────────────────────────────────────────────────────┤%R%[0m
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
%~2  %R%[90m└───────┴────────┴─────────────┴────────┴─────────────┴────────────────────────────────────────────────────────────────────────┘%R%[0m
%~7  %R%[90m└───────┴────────┴─────────────┴────────┴─────────────┴────────────────────────────────────────────────────────────────────────┘%R%[0m
goto :eof

:: ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► 
:Dism_Asistan
Call :Border 130 40
echo %R%[1;97m%R%[100m %~1 %R%[0m
echo.
Call :%~2
goto :eof

:Dism_Mount
Dism /Mount-Image /ImageFile:%MainWim% /MountDir:"%Mount%" /Index:%~1
goto :eof

:Dism_ReMount
Dism /Remount-Image /MountDir:"%Mount%"
goto :eof

:Dism_UnMount
:: Dism bazı durumlarda hata verip kapanabiliyor. Bu tarz bir durumda Powershell üzerinden toplama işlemi yapması için önlem aldım.
Call :RegeditCollect
Dism /Unmount-Image /MountDir:%Mount% /commit
	if %errorlevel% EQU 1 (echo %R%[31m Dism komutu hata verdiği için Powershell üzerinden toplama işlemi yapılıyor...%R%[0m
						   Call :Powershell "Dismount-WindowsImage -Path '%Mount%' -Save")
goto :eof

:Dism_Driver
Dism /Image:%Mount% /Add-Driver /Driver:%Location%\Add\Image\Driver /Recurse
goto :eof

:Dism_Update
for /f %%g in ('"dir /b %Location%\Add\Image\Update\*"') do (
	Dism /Image:%Mount% /Add-Package /Packagepath=%Location%\Add\Image\Update\%%g
)
goto :eof

:Dism_WinSxS
Dism /Image:%Mount% /Cleanup-Image /StartComponentCleanup
goto :eof

:Dism_PackagePath
FOR /F "tokens=*" %%g in ('dir /b /s %~1') do (
	Dism /Image:%Mount% /Add-Package /PackagePath=%%g
)
goto :eof

:Wimlib
"%Location%\Bin\wimlib-imagex.exe" %*
goto :eof

:: ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄
:: ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ►
:RegAdd
Reg add "%~1" /v "%~2" /t "%~3" /d "%~4" /f > NUL 2>&1
	if %errorlevel% EQU 1 (%NSudoTop% Reg add "%~1" /v "%~2" /t "%~3" /d "%~4" /f > NUL 2>&1)
goto :eof

:RegVeAdd
Reg add "%~1" /ve /t "%~2" /d "%~3" /f > NUL 2>&1
	if %errorlevel% EQU 1 (%NSudoTop% Reg add "%~1" /ve /t "%~2" /d "%~3" /f > NUL 2>&1)
goto :eof

:RegDel
Reg delete %* > NUL 2>&1
	if %errorlevel% EQU 1 (%NSudoTop% Reg delete %* > NUL 2>&1)
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

:: ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄


:ProcessCompleted
Call :Border 39 20
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
timeout /t 1 /nobreak > NUL
goto :eof

:ProcessCompletedReset
Call :Border 39 20
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
	if %value% EQU R (shutdown -r -f -t 0&exit)
	if %value% EQU r (shutdown -r -f -t 0&exit)
goto :eof

:FilesError
mode con cols=80 lines=30
echo.
echo.
echo.
echo.
echo.
echo.
%Lang% :FilesError_1
echo.
echo             %R%[31m████ ████ █   █ █ █████ ████ ████ ███ █   █ █  █ ████%R%[0m
echo             %R%[31m█  █ █    ██  █ █   █   █  █ █  █ █   ██  █ █ █  █   %R%[0m
echo             %R%[31m█  █ █ ██ █ █ █ █   █   █  █ ████ ██  █ █ █ ██   ████%R%[0m
echo             %R%[31m█  █ █  █ █  ██ █   █   █  █ █ █  █   █  ██ █ █     █%R%[0m
echo             %R%[31m████ ████ █   █ █   █   ████ █  █ ███ █   █ █  █ ████%R%[0m
timeout /t 10 /nobreak > NUL
start https://ognitorenks.com.tr/2022/04/ognitorenks-toolbox-windows-yardimcisi.html
exit
