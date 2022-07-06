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

:Optimizer
break
title Denizlili Performans Optimizasyonu
mode con cols=55 lines=16
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m          Denizlili Performans Optimizasyonu       %R%[0m%R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
reg query "HKLM\System\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" | findstr /i "0x380000" > NUL 2>&1
	if %errorlevel%==0 (set optvalue=%R%[100m %R%[0m)
	if %errorlevel%==1 (set optvalue=%R%[32m♦%R%[0m)
echo  %R%[90m│%R%[0m   %R%[32m 1%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%optvalue%%R%[90m -%R%[33m Svchost Ram Optimizasyonu            %R%[90m│%R%[0m
Call :SaveCheck Internet.bat
echo  %R%[90m│%R%[0m   %R%[32m 2%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%optvalue%%R%[90m -%R%[33m İnternet Optimizasyonu               %R%[90m│%R%[0m
Call :SaveCheck AMD.GPU.bat
echo  %R%[90m│%R%[0m   %R%[32m 3%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%optvalue%%R%[90m -%R%[33m AMD ekran kartı optimizasyon         %R%[90m│%R%[0m
Call :SaveCheck Nvidia.GPU.bat
echo  %R%[90m│%R%[0m   %R%[32m 4%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%optvalue%%R%[90m -%R%[33m NVIDIA ekran kartı optimizasyon      %R%[90m│%R%[0m
Call :SaveCheck Genel.bat
echo  %R%[90m│%R%[0m   %R%[32m 5%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]%R%[0m%optvalue%%R%[90m -%R%[33m Genel Optimizasyon                   %R%[90m│%R%[0m
echo  %R%[90m│%R%[0m   %R%[32m 6%C%[90m[%R%[36mA%C%[90m/%R%[36mK%C%[90m]  -%R%[33m Aygıt Optimizasyonu                  %R%[90m│%R%[0m
echo  %R%[90m│%R%[0m   %R%[32m 7%C%[90m       -%R%[33m Uygulama İşlem Önceliği Düzenleme    %R%[90m│%R%[0m
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
	if %value%==2a (Call :Block Internet.bat
					echo  ►%R%[96m Ayarlar yedekleniyor...%R%[0m
					Call :Internet RegSave Internet
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :Internet RegLogin Internet
					Call :ProcessCompletedReset)
	if %value%==2A (Call :Block Internet.bat
					echo  ►%R%[96m Ayarlar yedekleniyor...%R%[0m
					Call :Internet RegSave Internet
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :Internet RegLogin Internet
					Call :ProcessCompletedReset)
	if %value%==2K (Call :FindSave Internet.bat
					DEL /F /Q /A "%Yedek%\Internet.bat" > NUL 2>&1
					Call :ProcessCompletedReset)
	if %value%==2k (Call :FindSave Internet.bat
					DEL /F /Q /A "%Yedek%\Internet.bat" > NUL 2>&1
					Call :ProcessCompletedReset)
	if %value%==3a (Call :Block AMD.bat
					echo  ►%R%[96m Ayarlar yedekleniyor...%R%[0m
					Call :AMD.GPU RegSave AMD.GPU
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
				    Call :AMD.GPU RegLogin AMD.GPU
					Call :ProcessCompletedReset)
	if %value%==3A (Call :Block AMD.bat
					echo  ►%R%[96m Ayarlar yedekleniyor...%R%[0m
					Call :AMD.GPU RegSave AMD.GPU
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
				    Call :AMD.GPU RegLogin AMD.GPU
					Call :ProcessCompletedReset)
	if %value%==3K (Call :FindSave AMD.GPU.bat
					DEL /F /Q /A "%Yedek%\AMD.GPU.bat" > NUL 2>&1
					Call :ProcessCompletedReset)
	if %value%==3k (Call :FindSave AMD.GPU.bat
					DEL /F /Q /A "%Yedek%\AMD.GPU.bat" > NUL 2>&1
					Call :ProcessCompletedReset)
	if %value%==4a (Call :Block Nvidia.GPU.bat
					echo  ►%R%[96m Ayarlar yedekleniyor...%R%[0m
					Call :NVIDIA.GPU RegSave RegSave3 Nvidia.GPU
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
				    Call :NVIDIA.GPU RegLogin RegLogin Nvidia.GPU
					Call :ProcessCompletedReset)
	if %value%==4A (Call :Block Nvidia.GPU.bat
					echo  ►%R%[96m Ayarlar yedekleniyor...%R%[0m
					Call :NVIDIA.GPU RegSave RegSave3 Nvidia.GPU
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
				    Call :NVIDIA.GPU RegLogin RegLogin Nvidia.GPU
					Call :ProcessCompletedReset)
	if %value%==4K (Call :FindSave Nvidia.GPU.bat
					DEL /F /Q /A "%Yedek%\Nvidia.GPU.bat" > NUL 2>&1
					Call :ProcessCompletedReset)
	if %value%==4k (Call :FindSave Nvidia.GPU.bat
					DEL /F /Q /A "%Yedek%\Nvidia.GPU.bat" > NUL 2>&1
					Call :ProcessCompletedReset)
	if %value%==5a (Call :Block Genel.bat
					echo  ►%R%[96m Ayarlar yedekleniyor...%R%[0m
					Call :Optimizer RegSave RegSave Genel
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :Optimizer RegLogin RegDelete2 Genel
					Call :ProcessCompletedReset)
	if %value%==5A (Call :Block Genel.bat
					echo  ►%R%[96m Ayarlar yedekleniyor...%R%[0m
					Call :Optimizer RegSave RegSave Genel
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :Optimizer RegLogin RegDelete2 Genel
					Call :ProcessCompletedReset)
	if %value%==5K (Call :FindSave Genel.bat
					DEL /F /Q /A "%Yedek%\Genel.bat" > NUL 2>&1
					Call :ProcessCompletedReset)
	if %value%==5k (Call :FindSave Genel.bat
					DEL /F /Q /A "%Yedek%\Genel.bat" > NUL 2>&1
					Call :ProcessCompletedReset)
	if %value%==6a (cls
					Call :Warning2
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :DonanımOptimizer enable
					Call :ProcessCompletedReset)	
	if %value%==6A (cls
					Call :Warning2
					echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :DonanımOptimizer enable
					Call :ProcessCompletedReset)
	if %value%==6K (echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :DonanımOptimizer disable
					Call :ProcessCompletedReset)
	if %value%==6k (echo  ►%R%[96m Ayarlar uygulanıyor...%R%[0m
					Call :DonanımOptimizer disable
					Call :ProcessCompletedReset)
	if %value%==7 goto RuntimeLevel
) else
	goto Optimizer
goto Optimizer
	
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
	if %value2%==x goto Optimizer
	if %value2%==X goto Optimizer
echo.
echo %R%[90m  Görev Yöneticisi - Ayrıntılar 
echo %R%[90m  bölümünden uygulama isimlerini öğrenebilirsiniz.
set /p value=%R%[96m  ► Uygulama adı%R%[90m steam.exe :%R%[0m

for %%a in (%value%) do (
	reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%a\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "%value2%" /f
)
Call :ProcessCompleted
goto RuntimeLevel

:Game
:: ------------------------------------------------------
:: Regedit yedek alınırken değerler= %~1: RegSave | %~2: RegSave3 | %~3: Game - Yedek regedit.bat dosya ismi
:: Regedit kayıtları uygulanırken değerler= %~1: RegLogin | %~2: RegLogin | %~3: Game - Yedek regedit.bat dosya ismi
:: ------------------------------------------------------
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" "Win32PrioritySeparation" REG_DWORD "0x26" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" "IRQ8Priority" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" "IRQ16Priority" REG_DWORD "0x2" %~3 
Call :%~1 "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" "Win32PrioritySeparation" REG_DWORD "0x26" %~3
Call :%~1 "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" "IRQ8Priority" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" "IRQ16Priority" REG_DWORD "0x2" %~3
:: Oyun optimizasyonu
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" "AlwaysOn" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" "NetworkThrottlingIndex" REG_DWORD "0xffffffff" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" "NoLazyMode" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" "SystemResponsiveness" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" "Affinity" REG_DWORD "0x0" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" "Background Only" REG_SZ "True" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" "BackgroundPriority" REG_DWORD "0x24" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" "Clock Rate" REG_DWORD "0x10000" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" "GPU Priority" REG_DWORD "0x12" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" "Latency Sensitive" REG_SZ "True" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" "Priority" REG_DWORD "0x8" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" "SFIO Priority" REG_SZ "High" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" "Scheduling Category" REG_SZ "High" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "Affinity" REG_DWORD "0x0" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "Background Only" REG_SZ "False" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "Clock Rate" REG_DWORD "0x10000" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "GPU Priority" REG_DWORD "0x8" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "Priority" REG_DWORD "0x2" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "Scheduling Category" REG_SZ "High" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "SFIO Priority" REG_SZ "High" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "Latency Sensitive" REG_SZ "True" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" "Affinity" REG_DWORD "0x0" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" "Background Only" REG_SZ "False" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" "Clock Rate" REG_DWORD "0x10000" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" "GPU Priority" REG_DWORD "0x8" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" "Priority" REG_DWORD "0x2" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" "Scheduling Category" REG_SZ "High" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" "SFIO Priority" REG_SZ "High" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" "Latency Sensitive" REG_SZ "True" %~3
:: Oyun sesleri optimizasyonu
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" "Background Only" REG_SZ "True" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" "Clock Rate" REG_DWORD "0x10000" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" "GPU Priority" REG_DWORD "0x12" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" "Priority" REG_DWORD "0x6" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" "Scheduling Category" REG_SZ "Medium" %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" "SFIO Priority" REG_SZ "Normal" %~3
goto :eof

:Svchost [%~1: RegLogin]
::Toplam Ram değeri öğrenilir.
FOR /F "tokens=2" %%a in ('systeminfo ^| find "Total Physical Memory"') do set Svchost=%%a
:: GB olarak görünmesi için son dört değer silinir.
set Svchost=%Svchost:~0,-4%
:: Svchost Ram optimizasyonu için hesaplama yapılır.
set /a Svchost=%Svchost%*1024*1024+1024000
Call :%~1 "HKLM\System\CurrentControlSet\Control" "SvcHostSplitThresholdInKB" REG_DWORD "0x%Svchost%"
goto :eof

:Internet
:: ------------------------------------------------------
:: Regedit yedek alınırken değerler= %~1: RegSave | %~2: Internet - Yedek regedit.bat dosya ismi
:: Regedit kayıtları uygulanırken değerler= %~1: RegLogin | %~2: Internet - Yedek regedit.bat dosya ismi
:: ------------------------------------------------------
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters NegativeCacheTime REG_DWORD 0x0 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters NegativeSOACacheTime REG_DWORD 0x0 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters NetFailureCacheTime REG_DWORD 0x0 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters MaximumUdpPacketSize REG_DWORD 0x4864 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters DefaultTTL REG_DWORD 0x64 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters KeepAliveTime REG_DWORD 0x7200000 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters MaxUserPort REG_DWORD 0x65534 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters QualifyingDestinationThreshold REG_DWORD 0x3 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters SynAttackProtect REG_DWORD 0x1 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters Tcp1323Opts REG_DWORD 0x1 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters TcpCreateAndConnectTcbRateLimitDepth REG_DWORD 0x0 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters TcpMaxDataRetransmissions REG_DWORD 0x5 %~2
Call :%~1 HKLM\SOFTWARE\Microsoft\MSMQ\Parameters TCPNoDelay REG_DWORD 0x1 %~2
Call :%~1 HKLM\SOFTWARE\Microsoft\MSMQ\Parameters TcpNoDelay REG_DWORD 0x1 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider Class REG_DWORD 0x8 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider DnsPriority REG_DWORD 0x6 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider HostsPriority REG_DWORD 0x5 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider LocalPriority REG_DWORD 0x4 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider NetbtPriority REG_DWORD 0x7 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters EnableDCA REG_DWORD 0x1 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters EnableWsd REG_DWORD 0x0 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters EnableTCPA REG_DWORD 0x1 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters DefaultTTL REG_DWORD 0x64 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters DisableLargeMTU REG_DWORD 0x0 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters DisableTaskOffload REG_DWORD 0x0 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters EnableConnectionRateLimiting REG_DWORD 0x0 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters TCPMaxDataRetransmissions REG_DWORD 0x5 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters TcPMaxDataRetransmissions REG_DWORD 0x5 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters Tcp1323Opts REG_DWORD 0x1 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters TcpNumConnections REG_DWORD 0x1280 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters TcpTimedWaitDelay REG_DWORD 0x25 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters SynAttackProtect REG_DWORD 0x1 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters TcpCreateAndConnectTcbRateLimitDepth REG_DWORD 0x0 %~2
Call :%~1 HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters SizReqBuf REG_DWORD 0x25344 %~2
Call :%~1 HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer NoRecentDocsNetHood REG_DWORD 0x1 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters DisableBandwidthThrottling REG_DWORD 0x1 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters DisableLargeMtu REG_DWORD 0x0 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters MaxCmds REG_DWORD 0x100 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters MaxThreads REG_DWORD 0x100 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters MaxCollectionCount REG_DWORD 0x32 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters KeepConn REG_DWORD 0x86400 %~2
Call :%~1 HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched NonBestEffortLimit REG_DWORD 0x0 %~2
Call :%~1 HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched MaxOutstandingSends REG_DWORD 0x65535 %~2
Call :%~1 HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched NonBestEffortLimit REG_DWORD 0x0 %~2
Call :%~1 HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\parameters IRPStackSize REG_DWORD 0x48 %~2
netsh int tcp set global chimney=enabled > NUL 2>&1
netsh int tcp set global autotuninglevel=normal > NUL 2>&1
netsh int tcp set global dca=enabled > NUL 2>&1
netsh int tcp set global netdma=enabled > NUL 2>&1
netsh int tcp set global ecncapability=enabled > NUL 2>&1
ipconfig /release > NUL 2>&1
ipconfig /renew > NUL 2>&1
ipconfig /flushdns > NUL 2>&1
netsh winsock reset > NUL 2>&1
goto :eof

:AMD.GPU
:: ------------------------------------------------------
:: Regedit yedek alınırken değerler= %~1: RegSave | %~2: AMD.GPU - Yedek regedit.bat dosya ismi
:: Regedit kayıtları uygulanırken değerler= %~1: RegLogin | %~2: AMD.GPU  - Yedek regedit.bat dosya ismi
:: ------------------------------------------------------
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "HwSchMode" REG_DWORD "2" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" "EnablePreemption" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" "VsyncIdleTimeout" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "3D_Refresh_Rate_Override_DEF" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "3to2Pulldown_NA" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "AAF_NA" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "Adaptive De-interlacing" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "AllowRSOverlay" REG_SZ "false" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "AllowSkins" REG_SZ "false" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "AllowSnapshot" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "AllowSubscription" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "AntiAlias_NA" REG_SZ "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "AreaAniso_NA" REG_SZ "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "ASTT_NA" REG_SZ "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "AutoColorDepthReduction_NA" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableSAMUPowerGating" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableUVDPowerGatingDynamic" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableVCEPowerGating" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "EnableAspmL0s" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "EnableAspmL1" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "EnableUlps" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "EnableUlps_NA" REG_SZ "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "KMD_DeLagEnabled" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableDMACopy" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableBlockWrite" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "StutterMode" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_SclkDeepSleepDisable" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_ThermalAutoThrottlingEnable" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DisableDrmdmaPowerGating" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "KMD_EnableComputePreemption" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "TVEnableOverscan" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "GCOOPTION_DisableGPIOPowerSaveMode" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_AllGraphicLevel_DownHyst" REG_DWORD "20" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_AllGraphicLevel_UpHyst" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "KMD_FRTEnabled" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "KMD_MaxUVDSessions" REG_DWORD "32" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DalAllowDirectMemoryAccessTrig" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "DalAllowDPrefSwitchingForGLSync" REG_DWORD "0" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "WmAgpMaxIdleClk" REG_DWORD "32" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_MCLKStutterModeThreshold" REG_DWORD "4096" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_ActivityTarget" REG_DWORD "30" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "PP_ODNFeatureEnable" REG_DWORD "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" "Main3D_DEF" REG_SZ "1" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" "Main3D" REG_BINARY "3100" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" "FlipQueueSize" REG_BINARY "3100" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" "ShaderCache" REG_BINARY "3200" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" "Tessellation_OPTION" REG_BINARY "3200" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" "Tessellation" REG_BINARY "3100" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" "VSyncControl" REG_BINARY "3000" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" "TFQ" REG_BINARY "3200" %~2
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" "ProtectionControl" REG_BINARY "0100000001000000" %~2
goto :eof

:NVIDIA.GPU
:: ------------------------------------------------------
:: Regedit yedek alınırken değerler= %~1: RegSave | %~2: RegSave3 | %~3: Nvidia.GPU - Yedek regedit.bat dosya ismi
:: Regedit kayıtları uygulanırken değerler= %~1: RegLogin | %~2: RegLogin | %~3: Nvidia.GPU  - Yedek regedit.bat dosya ismi
:: ------------------------------------------------------
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "HwSchMode" REG_DWORD "2" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" "EnablePreemption" REG_DWORD "1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" "VsyncIdleTimeout" REG_DWORD "0" %~3
Call :%~1 "HKCU\SOFTWARE\NVIDIA Corporation\Global\NVTweak" "Gestalt" REG_DWORD "2" %~3
Call :%~1 "HKCU\Software\Microsoft\GameBar" "AllowAutoGameMode" REG_DWORD "1" %~3
Call :%~1 "HKCU\Software\Microsoft\GameBar" "AutoGameModeEnabled" REG_DWORD "1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" "TCCSupported" REG_DWORD "0" %~3
Call :%~1 "HKCU\Software\NVIDIA Corporation\Global\NVTweak\Devices\509901423-0\Color" "NvCplUseColorCorrection" REG_DWORD "0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "PlatformSupportMiracast" REG_DWORD "0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" "DisplayPowerSaving" REG_DWORD "0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "DisableWriteCombining" REG_DWORD "1" %~3
Call :%~1 "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" "OptInOrOutPreference" REG_DWORD 0 %~3
Call :%~1 "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" "EnableRID44231" REG_DWORD 0 %~3
Call :%~1 "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" "EnableRID64640" REG_DWORD 0 %~3
Call :%~1 "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" "EnableRID66610" REG_DWORD 0 %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "RmGpsPsEnablePerCpuCoreDpc" REG_DWORD "1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" "RmGpsPsEnablePerCpuCoreDpc" REG_DWORD "1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "RmGpsPsEnablePerCpuCoreDpc" REG_DWORD "1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" "RmGpsPsEnablePerCpuCoreDpc" REG_DWORD "1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" "RmGpsPsEnablePerCpuCoreDpc" REG_DWORD "1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" "ThreadPriority" REG_DWORD "31" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" "EnableRID61684" REG_DWORD "1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "DisablePreemption" REG_DWORD "1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "DisablePreemptionOnS3S4" REG_DWORD "1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "EnableCEPreemption" REG_DWORD "0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "ComputePreemption" REG_DWORD "0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "DisableCudaContextPreemption" REG_DWORD "1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" "EnableTiledDisplay" REG_DWORD "0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" EnableRID73779 REG_DWORD 1 %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" EnableRID73780 REG_DWORD 1 %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" EnableRID74361 REG_DWORD 1 %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\services\NvTelemetryContainer" Start REG_DWORD 4 %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup" SendTelemetryData REG_DWORD 0 %~3
Call :%~1 "HKLM\SOFTWARE\NVIDIA Corporation\Global\Startup\SendTelemetryData" 0 REG_DWORD 0 %~3
Call :%~2 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" "NvBackend" : : %~3
DEL /F /Q /A %windir%\System32\DriverStore\FileRepository\NvTelemetry*.dll > NUL 2>&1
RD /S /Q "%ProgramFiles%\NVIDIA Corporation\NvTelemetry" > NUL 2>&1
RD /S /Q "%ProgramFiles(x86)%\NVIDIA Corporation\NvTelemetry" > NUL 2>&1
goto :eof

:Optimizer
:: ------------------------------------------------------
:: Regedit yedek alınırken değerler= %~1: RegSave | %~2: RegSave | %~3: Genel - Yedek regedit.bat dosya ismi
:: Regedit kayıtları uygulanırken değerler= %~1: RegLogin | %~2: RegDelete2 | %~3: Genel - Yedek regedit.bat dosya ismi
:: ------------------------------------------------------
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\943c8cb6-6f93-4227-ad87-e9a3feec08d1" "Attributes" REG_SZ "2" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" "SystemResponsiveness" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" "NetworkThrottlingIndex" REG_SZ "fffffff" %~3
Call :%~1 "HKCU\Control Panel\Desktop" "AutoEndTasks" REG_SZ "1" %~3
Call :%~1 "HKCU\Control Panel\Desktop" "HungAppTimeout" REG_SZ "3000" %~3
Call :%~1 "HKCU\Control Panel\Desktop" "MenuShowDelay" REG_SZ "0" %~3
Call :%~1 "HKCU\Control Panel\Desktop" "WaitToKillAppTimeout" REG_SZ "10000" %~3
Call :%~1 "HKCU\Control Panel\Desktop" "LowLevelHooksTimeout" REG_SZ "4000" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control" "WaitToKillServiceTimeout" REG_SZ "2000" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoLowDiskSpaceChecks" REG_DWORD "0x1" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "LinkResolveIgnoreLinkInfo" REG_DWORD "0x1" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveSearch" REG_DWORD "0x1" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveTrack" REG_DWORD "0x1" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoInternetOpenWith" REG_DWORD "0x1" %~3
Call :%~1 "HKCU\Control Panel\Desktop" "Win8DpiScaling" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoInstrumentation" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" "PreventHandwritingErrorReports" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "AITEnable" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion" "maxconnectionsperserver" REG_DWORD "0x22" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion" "MAXCONNECTIONSPER1_0SERVER" REG_DWORD "0x22" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Control Panel\Mouse" "MouseHoverTime" REG_DWORD "0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" "LargeSystemCache" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" "DisablePagingExecutive" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" "EnablePreemption" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" "VsyncIdleTimeout" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "HwSchMode" REG_DWORD "0x2" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" "EnabledV9" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\GameBar" "UseNexusForGameBarEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Shell\USB" "NotifyOnWeakCharger" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Narrator" "KeyboardLayoutMigrationState" REG_DWORD "0x2" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "TdrLevel" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Holographic" "FirstRunSucceeded" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" REG_DWORD "0x0" %~3
:: Hibernate (Hazırda Bekletme) Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" REG_DWORD "0x0" %~3
:: Arka Planda Uygulamaların Çalışması Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "GlobalUserDisabled" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" "LetAppsRunInBackground" REG_DWORD "0x2" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "Migrated" REG_DWORD "0x4" %~3
:: Telemetry Hizmeti Devre Dışı Bırakılıyor...
net stop DiagTrack /y >nul 2>&1
sc delete DiagTrack >nul 2>&1
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" "AllowTelemetry" REG_DWORD "0x0" %~3
Call :%~2 "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "DisableDeviceDelete" : :  %~3
:: Başlangıç Gecikmesi Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" REG_DWORD "0x0" %~3
:: SMB 1-2 (WannaCry Açığı) Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" "SMB1" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" "SMB2" REG_DWORD "0x0" %~3
:: Windows 255 Karakter Sınırını Kaldırılıyor...
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" "LongPathsEnabled" REG_DWORD "0x1" %~3
:: Kullanıcı Etkinliği Geçmişi Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "EnableActivityFeed" REG_DWORD "0x0" %~3
:: Otomatik Tehşis Kaydedici Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" "Start" REG_DWORD "0x0" %~3
:: Windows Hata Raporlama Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" REG_DWORD "0x1" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\Windows Error Reporting" "Disabled" REG_DWORD "0x1" %~3
:: Wifi Hotspot Raporlama Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" REG_DWORD "0x0" %~3
:: Güvenli Wifi Noktalarına Otomatik Bağlan Devre Dışı Bırakılıyor..
Call :%~1 "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" "value" REG_DWORD "0x0" %~3
:: Windows Reklam Kimliği Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" REG_DWORD "0x0" %~3
::  Müşteri Deneyim Ve Geliştirme Programı Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" "CEIPEnable" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" REG_DWORD "0x1" %~3
:: Ayrılmış Depolama Alanı Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" "ShippedWithReserves" REG_DWORD "0x0" %~3
:: İnternetten İndirilen Dosyaların Yüklenmesinin Engeli Kaldırılıyor...
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" "ScanWithAntiVirus" REG_DWORD "0x3" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" "SaveZoneInformation" REG_DWORD "0x1" %~3
:: SEHOP Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" "DisableExceptionChainValidation" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" "KernelSEHOPEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" "EnableCfg" REG_DWORD "0x0" %~3
:: AutoLogger DiagTrack Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener\{DD17FA14-CDA6-7191-9B61-37A28F7A10DA}" "Start" REG_DWORD "0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" "Start" REG_DWORD "0x0" %~3
:: Yeniden Başlatma Hızlandırılıyor...
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" "EnableQuickReboot" REG_DWORD "0x1" %~3
:: NTFS Optimize Ediliyor...
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" "NtfsDisable8dot3NameCreation" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" "NtfsDisableLastAccessUpdate" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" "NtfsMftZoneReservation" REG_DWORD "0x3" %~3
:: Kullanılmayan DLL'lerin Silinmesi Etkinleştiriliyor...
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "AlwaysUnloadDll" REG_DWORD "0x1" %~3
:: Önyükleme Dosyalarınız Optimize Ediliyor...
Call :%~1 "HKLM\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction" "Enable" REG_SZ "Y" %~3
:: Otomatik Bakım Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" "MaintenanceDisabled" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "HIDESCAHEALTH" REG_DWORD "0x1" %~3
:: Saydamlık Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" "EnableTransparency" REG_DWORD "0x0" %~3
:: Windows Uygulama İzleyici Dışı Bırakılıyor...
Call :%~1 "HKCU\Software\Policies\Microsoft\Windows\EdgeUI" "DisableMFUTracking" REG_DWORD "0x1" %~3
:: Uygulama Önerileri Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" REG_DWORD "0x1" %~3
:: Görsel Efekt Ayarları Yapılıyor...
Call :%~1 "HKCU\Control Panel\Desktop" "UserPreferencesMask" REG_BINARY "9012038010020000" %~3
Call :%~1 "HKCU\Control Panel\Desktop" "DragFullWindows" REG_SZ "0" %~3
Call :%~1 "HKCU\Control Panel\Desktop\WindowMetrics" "MinAnimate" REG_SZ "0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" "ShellState" REG_BINARY "240000003E28000000000000000000000000000001000000130000000000000072000000" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "IconsOnly" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ListviewAlphaSelect" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ListviewShadow" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAnimations" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" "VisualFXSetting" REG_DWORD "0x3" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\DWM" "AlwaysHibernateThumbnails" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\DWM" "EnableAeroPeek" REG_DWORD "0x0" %~3
:: Timeline Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "EnableActivityFeed" REG_DWORD "0x0" %~3
:: Dosya Gezgini Bu Bilgisayar Menüsünden Başlaması Etkinleştiriliyor...
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "LaunchTo" REG_DWORD "0x1" %~3
:: Başlat Menüsünde Uygulama Önerileri Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" REG_DWORD "0x1" %~3
:: Önerilen Uygulamaların Otomatik Kurulumu Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SilentInstalledAppsEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPaneSuggestionsEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SoftLandingEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "RotatingLockScreenEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "RotatingLockScreenOverlayEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-310093Enabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-314563Enabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338387Enabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338388Enabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338389Enabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338389Enabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353698Enabled" REG_DWORD "0x0" %~3
:: Atlama Listeleri Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackDocs" REG_DWORD "0x0" %~3
:: Arama Geçmişi Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\Software\Policies\Microsoft\Windows\Explorer" "DisableSearchBoxSuggestions" REG_DWORD "0x1" %~3
:: Yönetim Paylaşımları Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" "AutoShareWks" REG_DWORD "0x0" %~3
:: Mağaza Uygulamalarının Otomatik Güncellenmesi Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "AutoDownload" REG_DWORD "0x2" %~3
:: Geri Bildirim Frekansı Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" REG_DWORD "0x0" %~3
Call :%~2 "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "PeriodInNanoSeconds" : : %~3
:: Oturum Açarken Arka Plan Görüntüsü Bulanıklığı Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "PublishUserActivities" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "UploadUserActivities" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "DisableLogonBackgroundImage" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "DisableAcrylicBackgroundOnLogon" REG_DWORD "0x1" %~3
:: USB Hatalarının Bildirilmesi Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\SOFTWARE\Microsoft\Shell\USB" "NotifyOnUsbErrors" REG_DWORD "0x0" %~3
:: Bildirimler Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" "ToastEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" "LockScreenToastEnabled" REG_DWORD "0x0" %~3
:: Windows Güvenlik Bildirimi Simgesi Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" "HideSystray" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" "SecurityHealth" REG_BINARY "07000000a7c0ae8e3b30d601" %~3
:: Sesle Etkinleştirme Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" "AgentActivationEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" "AgentActivationLastUsed" REG_DWORD "0x0" %~3
:: Güvenli Arama Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" "SafeSearchMode" REG_DWORD "0x0" %~3
:: Dokunmatik Geri Bildirim Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\Control Panel\Cursors" "ContactVisualization" REG_DWORD "0x0" %~3
:: Otomatik Harita Güncellemesi Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SYSTEM\Maps" "AutoUpdateEnabled" REG_DWORD "0x0" %~3
:: Tablet Modu Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" "TabletMode" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" "SignInMode" REG_DWORD "0x1" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" "ConvertibleSlateModePromptPreference" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAppsVisibleInTabletMode" REG_DWORD "0x1" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarAutoHideInTabletMode" REG_DWORD "0x0" %~3
:: Uzaktan Yardım Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" "fAllowFullControl" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" "fAllowToGetHelp" REG_DWORD "0x0" %~3
:: Arama Geçmişi Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" "IsDeviceSearchHistoryEnabled" REG_DWORD "0x0" %~3
:: Tam Ekran Optimizasyonları Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\System\GameConfigStore" "GameDVR_FSEBehaviorMode" REG_DWORD "0x2" %~3
Call :%~1 "HKCU\System\GameConfigStore" "GameDVR_DSEBehavior" REG_DWORD "0x2" %~3
:: Ekran Okuyucusunu Hızlı Başlattan Kapatılıyor...
Call :%~1 "HKCU\Software\Microsoft\Narrator\QuickStart" "SkipQuickStart" REG_DWORD "0x1" %~3
:: Windows Hata Raporunu Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled" REG_DWORD "0x1" %~3
:: Canlı Döşeme Bildirimlerini Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" "NoTileApplicationNotification" REG_DWORD "0x1" %~3
:: Windows Reklamları Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SilentInstalledAppsEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPaneSuggestionsEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowSyncProviderNotifications" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SoftLandingEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "RotatingLockScreenOverlayEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-310093Enabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353694Enabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353696Enabled" REG_DWORD "0x0" %~3
:: Duvar Kağıdı Kalitesini Arttırılıyor...
Call :%~1 "HKCU\Control Panel\Desktop" "JPEGImportQuality" REG_DWORD "0x100" %~3
:: Windows Mürekkep Çalışma Alanını Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\WindowsInkWorkspace" "AllowWindowsInkWorkspace" REG_DWORD "0x0" %~3
:: Internet Explorer Smiley Düğmesi Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions" "NoHelpItemSendFeedback" REG_DWORD "0x1" %~3
:: Atlama Listesi Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackDocs" REG_DWORD "0x0" %~3
:: True Play Kapatılıyor...
Call :%~1 "HKCU\Software\Microsoft\Games" "EnableXBGM" REG_DWORD "0x0" %~3
:: Yapışkan Tuşlar Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\Control Panel\Accessibility\StickyKeys" "Flags" REG_SZ "0x0" %~3
:: Yeni Program Yüklendi Uyarısı Kapatılıyor...
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" "NoNewAppAlert" REG_DWORD "0x1" %~3
:: Başlat Menüsünden Yardım ve Destek Kaldırılıyor...
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoSMHelp" REG_DWORD "0x1" %~3
:: Başlat Menüsünde Yeni Yüklenen Programların Vurgulanması Kapatılıyor...
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_NotifyNewApps" REG_DWORD "0x0" %~3
:: Uzaktan Yardım Kapatılıyor...
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" "AllowTSConnections" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" "fDenyTSConnections" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" "fAllowToGetHelp" REG_DWORD "0x0" %~3
:: Uzak Masaüstü CredSSP Şifrelemesi Düzeltmesi...
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters" "AllowEncryptionOracle" REG_DWORD "0x2" %~3
:: Rezerve Ayarları...
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" "ShippedWithReserves" REG_DWORD "0x0" %~3
:: Prefetch Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" REG_DWORD "0x0" %~3
:: Gizlilik Ayarları
Call :%~1 "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" REG_DWORD "0x1" %~3 & :: Mürekkep oluşturma
Call :%~1 "HKCU\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" REG_DWORD "0x1" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "PublishUserActivities" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "UploadUserActivities" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Control Panel\Cursors" "ContactVisualization" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Control Panel\Cursors" "GestureVisualization" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" "DisableAutoplay" REG_DWORD "0x1" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\FindMyDevice" "AllowFindMyDevice" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Settings\FindMyDevice" "LocationSyncEnabled" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "EnableCdp" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-310093Enabled" REG_DWORD "0x0" %~3
:: Ekran Kaydediciyisi Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" "ScreenSaveActive" REG_SZ "0" %~3
:: Otomatik Düzeltme Devre Dışı Bırakılıyor...
Call :%~1 "HKCU\SOFTWARE\Microsoft\TabletTip\1.7" "EnableAutocorrection" REG_DWORD "0x0" %~3
Call :%~1 "HKCU\SOFTWARE\Microsoft\TabletTip\1.7" "EnableSpellchecking" REG_DWORD "0x0" %~3
:: İlk Oturum Açma Animasyonu Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" "EnableFirstLogonAnimation" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" "EnableFirstLogonAnimation" REG_DWORD "0x0" %~3
:: Microsoft Edge İlk Başlatma Devre Dışı Bırakılıyor...
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" "AllowPrelaunch" REG_DWORD "0x0" %~3
Call :%~1 "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" "AllowTabPreloading" REG_DWORD "0x0" %~3
:: HPET Devre Dışı Bırakılıyor...
bcdedit /set disabledynamictick yes > NUL 2>&1
bcdedit /set useplatformtick yes > NUL 2>&1
bcdedit /deletevalue useplatformclock > NUL 2>&1
net stop LanmanServer /y > NUL 2>&1
sc config LanmanServer start= disabled > NUL 2>&1
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
set /p Warning=%R%[37m Devam etmek için%R%[36m 'E'%R%[37m, çıkış için%R%[36m 'H'%R%[37m tuşlayın%R%[0m
	if %Warning%==h exit
	if %Warning%==H exit
goto :eof

:Warning2
echo.
echo  ► Aşağıdaki sorun yaşanabilir;
echo   •%R%[33m VPN hizmetlerinde sorun yaşanabilir%R%[0m
echo  ► Sorun yaşarsanız bu işlemi kapatınız.
echo.
set /p Warning=%R%[37m Devam etmek için%R%[36m 'E'%R%[37m, çıkış için%R%[36m 'H'%R%[37m tuşlayın%R%[0m
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
	if %value%==x goto Optimizer
	if %value%==X goto Optimizer
) else 
	goto Optimizer
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