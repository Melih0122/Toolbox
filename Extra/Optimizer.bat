chcp 65001 > NUL 2>&1
echo off
cls

cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Location=%Location:~0,-6%
set Yedek=%Location%\Files\Yedek
set NSudo="%Location%\Files\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c

setlocal
Call :ColorEnd
Call :ColorEnd2

:OptimizerMenu
break
title Denizlili Performans Optimizasyonu
mode con cols=55 lines=15
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m         Denizlili Performans Optimizasyonu        %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
reg query "HKLM\System\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" | findstr /i "0x380000" > NUL 2>&1
	if %errorlevel%==0 (set optvalue=%R%[100m %R%[0m)
	if %errorlevel%==1 (set optvalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m   %R%[32m 1%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%optvalue%%R%[90m -%R%[33m Svchost Ram Optimizasyonu            %R%[90m│%R%[0m
powercfg -list | findstr /C:"Nihai" > NUL 2>&1
	if %errorlevel%==0 (set optvalue=%R%[32m♦%R%[0m)
	if %errorlevel%==1 (set optvalue=%R%[100m %R%[0m)
echo  %R%[90m│%R%[0m   %R%[32m 2%C%[90m[%R%[36m A %C%[90m]%R%[0m%optvalue%%R%[90m -%R%[33m Nihai Performans Güç Seçeneği        %R%[90m│%R%[0m
echo  %R%[90m│%R%[0m   %R%[32m 3%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]  -%R%[33m Aygıt Optimizasyonu                  %R%[90m│%R%[0m
echo  %R%[90m│%R%[0m   %R%[32m 4%C%[90m       -%R%[33m Uygulama İşlem Önceliği Düzenleme    %R%[90m│%R%[0m
echo  %R%[90m│%R%[0m   %R%[32m X%C%[90m       -%R%[37m Menü / Kapat                         %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value= %C%[92m İşlem :%C%[0m
	if %value%==1a (cls
					Call :Warning1
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :Svchost RegLogin
					Call :ProcessCompletedReset)
	if %value%==1A (cls
					Call :Warning1
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :Svchost RegLogin
					Call :ProcessCompletedReset)
	if %value%==1K (Call :RegLogin "HKLM\System\CurrentControlSet\Control" "SvcHostSplitThresholdInKB" REG_DWORD "0x380000"
					Call :ProcessCompletedReset)
	if %value%==1k (Call :RegLogin "HKLM\System\CurrentControlSet\Control" "SvcHostSplitThresholdInKB" REG_DWORD "0x380000"
					Call :ProcessCompletedReset)
	if %value%==2a (Call :NihaiPow)
	if %value%==2A (Call :NihaiPow)
	if %value%==3a (cls
					Call :Warning2
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :DonanımOptimizer enable
					Call :ProcessCompletedReset)	
	if %value%==3A (cls
					Call :Warning2
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :DonanımOptimizer enable
					Call :ProcessCompletedReset)
	if %value%==3K (echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :DonanımOptimizer disable
					Call :ProcessCompletedReset)
	if %value%==3k (echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :DonanımOptimizer disable
					Call :ProcessCompletedReset)
	if %value%==4 goto RuntimeLevel
	if %value%==x exit
	if %value%==X exit
) 
goto OptimizerMenu
	
:FindSave
dir /b "%Yedek%\%~1" > NUL 2>&1
	if %errorlevel%==0 (cmd /c "%Yedek%\%~1"
						goto :eof)
	if %errorlevel%==1 (echo %R%[91m Yedek dosyası bulunamadı%R%[0m
						timeout /t 3 /nobreak > NUL
						goto :eof)
						
:SaveCheck
dir /b "%Yedek%\%~1" > NUL 2>&1
	if %errorlevel%==0 (set optvalue=%R%[32m♦%R%[0m)
	if %errorlevel%==1 (set optvalue=%R%[100m %R%[0m)
goto :eof

:Block
dir /b "%Yedek%\%~1" > NUL 2>&1
	if %errorlevel%==0 (echo %R%[91m Ayarlar uygulanmış%R%[0m
						timeout /t 3 /nobreak > NUL
						exit)
goto :eof

:NihaiPow
powercfg -list | findstr /C:"Nihai" > NUL 2>&1
	if %errorlevel%==0 (echo  ►%R%[31m Güç seçeneği ekli...%R%[0m
						timeout /t 2 /nobreak > NUL)
	if %errorlevel%==1 (echo  ►%R%[96m Nihai Performans Güç Seçeneği ekleniyor...%R%[0m
						powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 > NUL 2>&1)
FOR /F "tokens=4" %%b in ('powercfg -list ^| findstr /C:"Nihai"') do (powercfg -setactive %%b > NUL)
Call :ProcessCompleted
goto :eof

:RuntimeLevel
title OgnitorenKs
mode con cols=55 lines=17
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m             Çalışma Öncelik Planlayıcı            %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%C%[33m Yüksek                                      %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%C%[33m Normal Üstü                                 %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 3.%C%[33m Normal Altı                                 %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 4.%C%[33m Düşük                                       %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Menü                                        %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
set /p value2=%R%[32m  İşlem :%R%[0m
	if %value2%==1 (set value2=3)
	if %value2%==2 (set value2=6)
	if %value2%==3 (set value2=5)
	if %value2%==4 (set value2=1)
	if %value2%==x goto OptimizerMenu
	if %value2%==X goto OptimizerMenu

echo.
echo %R%[90m  Görev Yöneticisi - Ayrıntılar 
echo %R%[90m  bölümünden uygulama isimlerini öğrenebilirsiniz.
set /p value=%R%[96m  ► Uygulama adı%R%[90m steam.exe :%R%[0m

for %%a in (%value%) do (
	reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%a\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "%value2%" /f
)
Call :ProcessCompleted
goto RuntimeLevel

:Svchost [%~1: RegLogin]
::Toplam Ram değeri öğrenilir.
FOR /F "tokens=2" %%a in ('systeminfo ^| find "Total Physical Memory"') do set Svchost=%%a
:: GB olarak görünmesi için son dört değer silinir.
set Svchost=%Svchost:~0,-4%
:: Svchost Ram optimizasyonu için hesaplama yapılır.
set /a Svchost=%Svchost%*1024*1024+1024000
Call :%~1 "HKLM\System\CurrentControlSet\Control" "SvcHostSplitThresholdInKB" REG_DWORD "0x%Svchost%"
goto :eof

:DonanımOptimizer
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
goto :eof

:: --------------------------------------------------------------------------------------------------------

:RegSave
:: Alttaki özel durumlar dışındaki regedit kayıtlarının yedekleri bu bölümden alınır.
for /f "skip=2 tokens=2" %%a in ('reg query "%~1" /v "%~2" 2^> NUL') do set regtur=%%a
for /f "skip=2 tokens=3" %%a in ('reg query "%~1" /v "%~2" 2^> NUL') do set deger=%%a
reg query "%~1" /v "%~2" /s > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~1" /v "%~2" /t %regtur% /d "%deger%" /f ^> NUL 2^>^&1 >> %Yedek%\%~5.bat)
	if %errorlevel%==1 (echo reg delete "%~1" /v "%~2" /f ^> NUL 2^>^&1 >> %Yedek%\%~5.bat)
goto :eof

:RegSave2
:: Varsayılan regedit değerleri için kullanılır.
for /f "skip=2 tokens=2" %%a in ('reg query "%~1" /ve 2^> NUL') do set regtur=%%a
for /f "skip=2 tokens=3" %%a in ('reg query "%~1" /ve 2^> NUL') do set deger=%%a
reg query "%~1" /ve > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~1" /ve /t %regtur% /d "%deger%" /f ^> NUL 2^>^&1 >> %Yedek%\%~4.bat)
	if %errorlevel%==1 (echo reg delete "%~1" /ve /f ^> NUL 2^>^&1 >> %Yedek%\%~4.bat)
goto :eof

:RegSave3
:: Regedit kaydında %~2 değerinde boşluk olduğunda bu bölüm kullanılır.
for /f "skip=2 tokens=3" %%a in ('reg query "%~1" /v "%~2" 2^> NUL') do set regtur=%%a
for /f "skip=2 tokens=4" %%a in ('reg query "%~1" /v "%~2" 2^> NUL') do set deger=%%a
reg query "%~1" /v "%~2" /s > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~1" /v "%~2" /t %regtur% /d "%deger%" /f ^> NUL 2^>^&1 >> %Yedek%\%~5.bat)
	if %errorlevel%==1 (echo reg delete "%~1" /v "%~2" /f ^> NUL 2^>^&1 >> %Yedek%\%~5.bat)
goto :eof

:: --------------------------------------------------------------------------------------------------------

:RegLogin
:: Varsayılan değerler hariç tüm regedit kayıtları buraya yönlendirilir.
reg add "%~1" /v "%~2" /t %~3 /d "%~4" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~1" /v "%~2" /t %~3 /d "%~4" /f)
goto :eof

:RegLoginV
:: Varsayılan regedit kayıtları buraya yönlendirilir.
reg add "%~1" /ve /t %~2 /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~1" /ve /t %~2 /d "%~3" /f)
goto :eof

:RegDelete
:: Regedit Key(Genel) silme işlemleri buraya yönlendirilir.
reg delete "%~1" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg delete "%~1" /f)
goto :eof

:RegDelete2
:: Tekli silmeler buraya yönlendirilir.
reg delete "%~1" /v "%~2" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg delete "%~1" /v "%~2" /f)
goto :eof

:: --------------------------------------------------------------------------------------------------------

:Warning1
echo.
echo  ► Aşağıdaki sorun yaşanabilir;
echo   •%R%[33m Mikrofon veya ses ayarlarına girerken,%R%[0m
echo   •%R%[33m yığın bellek taşma hatası alabilirsiniz.%R%[0m
echo  ► Sorun yaşarsanız bu işlemi kapatınız.
echo.
set /p Warning=%R%[37m Devam etmek için%R%[36m 'E'%R%[37m, çıkış için%R%[36m 'H'%R%[37m tuşlayın: %R%[0m
	if %Warning%==h exit
	if %Warning%==H exit
goto :eof

:Warning2
echo.
echo  ► Aşağıdaki sorun yaşanabilir;
echo   •%R%[33m VPN hizmetlerinde sorun yaşanabilir%R%[0m
echo  ► Sorun yaşarsanız bu işlemi kapatınız.
echo.
set /p Warning=%R%[37m Devam etmek için%R%[36m 'E'%R%[37m, çıkış için%R%[36m 'H'%R%[37m tuşlayın: %R%[0m
	if %Warning%==h exit
	if %Warning%==H exit
goto :eof

:: --------------------------------------------------------------------------------------------------------

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
	if %value%==x goto OptimizerMenu
	if %value%==X goto OptimizerMenu
) else 
	goto OptimizerMenu
goto :eof

:: --------------------------------------------------------------------------------------------------------

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