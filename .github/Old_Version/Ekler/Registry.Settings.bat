echo off
cls
title Regedit Ayarlar� / OgnitorenKs

cd /d "%~dp0"

setlocal
call :setESC


:menu
cls
title Regedit Toolbax  / OgnitorenKs
mode con cols=50 lines=35
echo   ==============================================
echo             %ESC%[96mOgnitorenKs Regedit Toolbax%ESC%[0m         
echo   ==============================================
echo    %ESC%[92m 1.%ESC%%ESC%[33m SmartScreen kapat%ESC%[0m 
echo    %ESC%[92m 2.%ESC%%ESC%[33m DiagTrack kapat%ESC%[0m
echo    %ESC%[92m 3.%ESC%%ESC%[33m Telemetry kapat%ESC%[0m
echo    %ESC%[92m 4.%ESC%%ESC%[33m Defender kapat%ESC%[0m
echo    %ESC%[92m 5.%ESC%%ESC%[33m PC H�zland�r%ESC%[0m
echo    %ESC%[92m 6.%ESC%%ESC%[33m G�rev �ubu�u simge ayar�%ESC%[0m
echo    %ESC%[92m 7.%ESC%%ESC%[33m Prefetch kapat%ESC%[0m 
echo    %ESC%[92m 8.%ESC%%ESC%[33m Startup Delay kapat%ESC%[0m   
echo    %ESC%[92m 9.%ESC%%ESC%[33m Qos Limit kapat%ESC%[0m      
echo   %ESC%[92m 10.%ESC%%ESC%[33m SMB kapat%ESC%[0m           
echo   %ESC%[92m 11.%ESC%%ESC%[33m Limit 255 kapat%ESC%[0m     
echo   %ESC%[92m 12.%ESC%%ESC%[33m Bildirim alan� ayar�%ESC%[0m     
echo   %ESC%[92m 13.%ESC%%ESC%[33m Sahiplik Al ekle%ESC%[0m       
echo   %ESC%[92m 14.%ESC%%ESC%[33m SVChost Ram Optimizasyon%ESC%[0m  
echo   %ESC%[92m 15.%ESC%%ESC%[33m Nihai Performans%ESC%[0m 
echo   %ESC%[92m 16.%ESC%%ESC%[33m Gpedit.msc ekle%ESC%[0m  
echo   %ESC%[92m 17.%ESC%%ESC%[33m Windows Foto�raf G�r�nt�leyicisi%ESC%[0m  
echo   %ESC%[92m 18.%ESC%%ESC%[33m Masa�st� Simgelerini aktfile�tir%ESC%[0m  
echo   %ESC%[92m 19.%ESC%%ESC%[33m Tam Ekran �yile�tirmeleri kapat%ESC%[0m  
echo   %ESC%[92m 20.%ESC%%ESC%[33m Meet Now kapat%ESC%[0m  
echo   %ESC%[92m 21.%ESC%%ESC%[33m G�ncelle�tirmeler Manuel yap%ESC%[0m  
echo   %ESC%[92m 22.%ESC%%ESC%[33m K�sayollardan, k�sayol yaz�s�n� kald�r%ESC%[0m  
echo   %ESC%[92m 23.%ESC%%ESC%[33m Sistem Geri Y�kleme kapat%ESC%[0m  
echo   %ESC%[92m 24.%ESC%%ESC%[33m Dosya Gezgini, Bu Bilgisayar yap%ESC%[0m  
echo   %ESC%[92m 25.%ESC%%ESC%[33m Dosya Listesini Kopyala ekle%ESC%[0m  
echo   %ESC%[92m 26.%ESC%%ESC%[33m Host Dosyas�n� D�zenle%ESC%[0m  
echo   %ESC%[92m 27.%ESC%%ESC%[33m OneDrive kald�r%ESC%[0m  
echo   ----------------------------------------------
echo                      %ESC%[91m 0. ��k��%ESC%[0m
echo   ==============================================
set /p menu= %ESC%[92m Yapmak istedi�iniz i�lem:%ESC%[0m
	if %menu%==1 GOTO smartscreen 	
	if %menu%==2 GOTO diagtrack
	if %menu%==3 GOTO telemetry					
	if %menu%==4 GOTO defender
	if %menu%==5 GOTO tepkime					
	if %menu%==6 GOTO ekrantepsi
	if %menu%==7 GOTO prefetch
	if %menu%==8 GOTO startupdelay
	if %menu%==9 GOTO qoslimit
	if %menu%==10 GOTO smb
	if %menu%==11 GOTO 255
	if %menu%==12 GOTO bildirim
	if %menu%==13 GOTO sahiplik 				
	if %menu%==14 GOTO svchost
	if %menu%==15 GOTO nihai
	if %menu%==16 GOTO gpedit
	if %menu%==17 GOTO eskifoto
	if %menu%==18 GOTO masaustu
	if %menu%==19 GOTO gamedvr
	if %menu%==20 GOTO meetnow
	if %menu%==21 GOTO uptmanuel
	if %menu%==22 GOTO kisayol
	if %menu%==23 GOTO geriyukle
	if %menu%==24 GOTO bubilgisayar
	if %menu%==25 GOTO dosyalistesi
	if %menu%==26 GOTO host
	if %menu%==27 GOTO onedrive
else
	goto menu
	
	
:smartscreen
cls
title SmartScreen kapat�l�yor... / OgnitorenKs
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0  
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "ContentEvaluation" /t REG_DWORD /d 0   
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "SmartScreenEnabled" /t REG_SZ /d "Off" 
DEL /F /Q /A "%windir%\System32\smartscreen.exe" 
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu
	
:diagtrack
cls
title Diagtrack kapat�l�yor... / OgnitorenKs
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\DiagTrack" /f /v "Start" /t REG_DWORD /d 4 
REM Automatic Diagnostic Logger (Otomatik Te�his Kaydedici) devre d��� 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /f /v "Start" /t REG_DWORD /d 0
net stop DiagTrack
sc delete DiagTrack
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:telemetry
cls
title Telemetri kapat�l�yor... / OgnitorenKs
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0 
net stop dmwappushservice
sc delete dmwappushservice
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:defender
cls
title Defender kapat�l�yor... / OgnitorenKs
"Python\python.exe" "Python\Tools\NonRemovable\SecHealthUI.py"
PowerShell.exe -Command "Get-AppxPackage -allusers *SecHealthUI* | Remove-AppxPackage"
REM �nternetten indirilen dosyalar� i�in tarama yapma �zelli�i devre d��� b�rak�l�yor
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "ScanWithAntiVirus" /t REG_DWORD /d 3 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "SaveZoneInformation" /t REG_DWORD /d 1 
REM Ger�ek zamanl� izlemeyi devre d��� b�rak�l�yor
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /f /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f /v "Start" /t REG_DWORD /d 4 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinDefend" /f /v "Start" /t REG_DWORD /d 4 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /f /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "PromptOnSecureDesktop" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "EnableLUA" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 0 
REM Casus yaz�l�mdan korunmay� devre d��� b�rak
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /f /v "DisableAntiSpyware" /t REG_DWORD /d 1 					
REM Microsoft Store i�in Defender devre d��� b�rak�l�yor
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 
REM G�venlik Merkezi - Kritik olmayan bildirimler devre d��� b�rak�l�yor
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableEnhancedNotifications" /t REG_DWORD /d 1 
REM G�venlik Merkezi - T�m bildirimler devre d��� b�rak�l�yor
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableNotifications" /t REG_DWORD /d 1 
REM Defender hesap koruma uyar�s� devre d��� b�rak�l�yor
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows Security Health\State" /f /v "AccountProtection_MicrosoftAccount_Disconnected" /t REG_DWORD /d 0 
REM Sabotaj korumas� devre d��� b�rak�l�yor 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features" /f /v "TamperProtection" /t REG_DWORD /d 0
REM G�venlik ve Bak�m simgesi devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "HideSCAHealth" /t REG_DWORD /d 1 
RD /S /Q "%programfiles(x86)%\Windows Defender"
RD /S /Q "%programfiles%\Windows Defender"
RD /S /Q "%programfiles%\Windows Security"
RD /S /Q "%programfiles%\Windows Defender Advanced Threat Protection"
DEL /F /Q /A "%windir%\System32\securityhealthhost.exe"
DEL /F /Q /A "%windir%\System32\securityhealthservice.exe"
DEL /F /Q /A "%windir%\System32\securityhealthsystray.exe"
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu
	
:tepkime
cls
title PC tepki s�resi h�zland�r�l�yor... / OgnitorenKs
REM Bilgisayar kapat�l�rken ya da oturumdan ��k�l�rken Windows'un ���nc� parti hizmetleri otomatik olarak kapatmas�n� sa�lar. Bu sayede uygulama kapanmaya engel oluyor uyar�lar�n� almayacaks�n�z.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "AutoEndTasks" /t REG_SZ /d 1 
REM Uygulamalar cevap vermedi�i zaman g�revi sonland�r se�ene�ine bas�lmadan �nceki bekleme s�resini k�salt�r.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "HungAppTimeout" /t REG_SZ /d "1000" 
REM Bilgisayar kapat�l�rken ya da oturumdan ��k�l�rken kullan�c� uygulamalar�n�n kapat�lmas� i�in sistem bekleme s�resini k�salt�r.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "WaitToKillAppTime" /t REG_SZ /d "2000" 
REM Cevap vermeyen hizmetlerin kapat�lmas�ndan �nceki sistem bekleme s�resini k�salt�r.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" 
REM Bilgisayar�n kapat�lmas� s�ras�nda durdurulacak hizmetler uyar�s� geldi�inde, uygulamalar�n kapanmas� i�in beklenen s�reyi k�salt�r.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /f /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" 
REM Men� g�sterimi bekleme s�resini azalt�r. B�ylelikle t�kland��� zaman men�ler daha h�zl� gelecek.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "MenuShowDelay" /t REG_SZ /d "8" 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1  
REM Farenizle birlikte bir nesnenin �zerine geldi�inizde g�r�len a��klaman�n ��k�� s�resini k�salt�r
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /f /v "MouseHoverTime" /t REG_SZ /d 8 
REM Bilgisayar�n�zda mevcut olmayan programlara ait k�sayollar�n ba�lant�s�n�n Windows taraf�ndan bo�a vakit harcanarak aranmas�n� �nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1  
REM K�sayol ba�lant� sorununu ��zmek i�in Windows'un diski aramas�n� �nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveSearch" /t REG_DWORD /d 1  
REM K�sayol ba�lant� sorununu ��zmek i�in Windows'un NTFS dosya sisteminin izleme �zelli�ini kullanmas�n� engeller
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveTrack" /t REG_DWORD /d 1  
REM Birlikte a� se�ene�ine t�klad���n�zda uygulamalar� internette arama se�ene�inin ��kmas�n� �nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoInternetOpenWith" /t REG_DWORD /d 1
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:prefetch
cls
title Prefect kapat�l�yor... / OgnitorenKs
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnablePrefetcher" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnableSuperFetch" /t REG_DWORD /d 0
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:startupdelay
cls
title Startup Delay kapat�l�yor... / OgnitorenKs
REM Ba�lang�� gecikmesi kapat�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /f /v "StartupDelayInMSec" /t REG_DWORD /d 0
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:qoslimit
cls
title Qos Limit kapat�l�yor... / OgnitorenKs
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /f /v "NonBestEffortLimit" /t REG_DWORD /d 0
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu
					
:smb
cls 
title SMB kapat�l�yor... / OgnitorenKs
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f /v "SMB1" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f /v "SMB2" /t REG_DWORD /d 0
PowerShell -Command "Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force"
sc config lanmanworkstation depend= bowser/mrxsmb20/nsi
sc config mrxsmb10 start= disabled
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu	

:255
cls
title 255 karakter s�n�r� kald�r�l�yor... / OgnitorenKs
REM Dosya yolu uzant�s� 255 karakteri ge�ince hata almay� �nler.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /f /v "LongPathsEnabled" /t REG_DWORD /d 1
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:ekrantepsi
cls
title G�rev �ubu�u d�zenleniyor... / OgnitorenKs
REM G�rev �ubu�undaki simgeleri a��p, kapatmak
echo A��k: 0 / Kapal�: 1
set /p ekrantepsi= %ESC%[92m Yapmak istedi�iniz i�lem : %ESC%[0m
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /f /v "EnableAutoTray" /t REG_DWORD /d %ekrantepsi%
taskkill /f /im explorer.exe
start explorer.exe
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:bildirim
cls
title Bildirim alan� d�zenleniyor... / OgnitorenKs
echo A��k: 0 / Kapal�: 1
set /p bildirim= %ESC%[92m Yapmak istedi�iniz i�lem : %ESC%[0m
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %bildirim%
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %bildirim%
taskkill /f /im explorer.exe
start explorer.exe
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:sahiplik
cls
title Sahiplik al ekleniyor... / OgnitorenKs
reg add "HKEY_CLASSES_ROOT\*\shell\runas" /f /ve /t REG_SZ /d "Sahipli�i Al" 
reg add "HKEY_CLASSES_ROOT\*\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" 
reg add "HKEY_CLASSES_ROOT\*\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" 
reg add "HKEY_CLASSES_ROOT\*\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" && ica \"%1\" /grant administrators:F" 
reg add "HKEY_CLASSES_ROOT\*\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" && ica \"%1\" /grant administrators:F" 
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /f /ve /t REG_SZ /d "Sahipli�i Al" 
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" 
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" 
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" /r /d y && ica \"%1\" /grant administrators:F /t" 
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" /r /d y && ica \"%1\" /grant administrators:F /t" 
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:svchost
cls
title Svchost Ram Optimizasyon yap�l�yor...
FOR /F "tokens=4" %%g IN ('systeminfo ^| FIND "Total"') DO set /a ramtotal=%%g
set ramtotal2= %ramtotal:~0,4%
set /a ramtotal3=(%ramtotal2%*1024*1024)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x%ramtotal3% /f
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:nihai
cls
title Nihai Performans ekleniyor...
powercfg -list ^| findstr /C:"Nihai"
	if %errorlevel%=0 goto menu
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"Nihai"') do set nihaiekle=%%f
powercfg -setactive %nihaiekle%
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:gpedit
cls
title Gpedit.msc ekleniyor...
dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt 
dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt 
for /f %%i in ('findstr /i . List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i" 
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:eskifoto
cls
title Windows Foto�raf G�r�nt�leyicisi aktifle�tiriliyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".tif" /t REG_SZ d/ "PhotoViewer.FileAssoc.Tiff"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".tiff" /t REG_SZ d/ "PhotoViewer.FileAssoc.Tiff"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".png" /t REG_SZ d/ "PhotoViewer.FileAssoc.Tiff"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".jpeg" /t REG_SZ d/ "PhotoViewer.FileAssoc.Tiff"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".jpg" /t REG_SZ d/ "PhotoViewer.FileAssoc.Tiff"
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:masaustu
cls
title Masa�st� Simgeleri aktfile�tiriliyor...
echo Masa�st� simgeleri aktif hale getiriliyor...
REM Bu Bilgisayar
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 
REM Denetim Masas�
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t REG_DWORD /d 0 
REM Kullan�c� Dosyalar�
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /t REG_DWORD /d 0 
REM ��p kutusu
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{645FF040-5081-101B-9F08-00AA002F954E}" /t REG_DWORD /d 0 
taskkill /f /im explorer.exe
start explorer.exe
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:gamedvr
cls
title Tam ekran optimizasyonlar� devre d��� b�rak�l�yor...
echo Tam ekran optimizasyonlar� devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:meetnow
cls
title Meet Now kald�r�l�yor...
echo G�rev �ubu�u Meet Now kald�r�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "HideSCAMeetNow" /t REG_DWORD /d 1 
taskkill /f /im explorer.exe
start explorer.exe
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:uptmanuel
cls
title G�ncelle�tirme manuel yap�ly�r...
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "NoAutoUpdate" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallDay" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallTime" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "RescheduleWaitTime" 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "AUOptions" /t REG_DWORD /d "2" 
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:kisayol
cls
title K�sayol kald�r...
echo K�sayol olu�turulurken K�sayol yaz�s� kald�r�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "Link" /t REG_BINARY /d "00000000" 
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:geriyukle
cls
titleSistem geri y�kleme kapat�l�yor...
echo Sistem geri y�kleme kapat�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /f /v "DisableSR" /t REG_DWORD /d 1
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:bubilgisayar
cls
title Explorer "Bu Bilgisayar" olarak ayarlan�yor..
echo Explorer "Bu Bilgisayar" olarak ayarlan�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "LaunchTo" /t REG_DWORD /d 1 
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:dosyalistesi
cls
title Dosya Listesini Kopyala se�ene�i ekleniyor...
echo Sa� t�k men�s�ne "Dosya Listesini Kopyala" se�ene�i ekleniyor...
reg add "HKEY_CLASSES_ROOT\Directory\shell\Dosya Listesini Kopyala\command" /f /v "(Varsay�lan)" /t REG_SZ /d "cmd /c dir \"%1\" /b /a:-d /o:n | clip" 
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:host
cls
title Host dosyas� d�zenleniyor...
FIND /C /I "telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 telemetry.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "vortex.data.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 vortex.data.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "vortex-win.data.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 vortex-win.data.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "telecommand.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 telecommand.telemetry.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "telecommand.telemetry.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 telecommand.telemetry.microsoft.com.nsatc.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "oca.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 oca.telemetry.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "oca.telemetry.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 oca.telemetry.microsoft.com.nsatc.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "sqm.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 sqm.telemetry.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "sqm.telemetry.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 sqm.telemetry.microsoft.com.nsatc.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "watson.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 watson.telemetry.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "watson.telemetry.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 watson.telemetry.microsoft.com.nsatc.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "redir.metaservices.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 redir.metaservices.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "choice.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 choice.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "choice.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 choice.microsoft.com.nsatc.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "df.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 df.telemetry.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "wes.df.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 wes.df.telemetry.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "reports.wes.df.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 reports.wes.df.telemetry.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "services.wes.df.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 services.wes.df.telemetry.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "sqm.df.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 sqm.df.telemetry.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "watson.ppe.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 watson.ppe.telemetry.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "telemetry.appex.bing.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 telemetry.appex.bing.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "telemetry.urs.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 telemetry.urs.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "telemetry.appex.bing.net:443" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 telemetry.appex.bing.net:443) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "settings-sandbox.data.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 settings-sandbox.data.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "vortex-sandbox.data.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 vortex-sandbox.data.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "watson.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 watson.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "survey.watson.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 survey.watson.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "watson.live.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 watson.live.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "statsfe2.ws.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 statsfe2.ws.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "corpext.msitadfs.glbdns2.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 corpext.msitadfs.glbdns2.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "compatexchange.cloudapp.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 compatexchange.cloudapp.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "cs1.wpc.v0cdn.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 cs1.wpc.v0cdn.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "a-0001.a-msedge.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 a-0001.a-msedge.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "fe2.update.microsoft.com.akadns.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 fe2.update.microsoft.com.akadns.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "statsfe2.update.microsoft.com.akadns.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 statsfe2.update.microsoft.com.akadns.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "sls.update.microsoft.com.akadns.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 sls.update.microsoft.com.akadns.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "diagnostics.support.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 diagnostics.support.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "corp.sts.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 corp.sts.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "statsfe1.ws.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 statsfe1.ws.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "pre.footprintpredict.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 pre.footprintpredict.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "i1.services.social.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 i1.services.social.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "i1.services.social.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 i1.services.social.microsoft.com.nsatc.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "feedback.windows.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 feedback.windows.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "feedback.microsoft-hohm.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 feedback.microsoft-hohm.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "feedback.search.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 feedback.search.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "cdn.content.prod.cms.msn.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 cdn.content.prod.cms.msn.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "cdn.content.prod.cms.msn.com.edgekey.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 cdn.content.prod.cms.msn.com.edgekey.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "e10663.g.akamaiedge.net" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 e10663.g.akamaiedge.net) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "dmd.metaservices.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 dmd.metaservices.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "schemas.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 schemas.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "go.microsoft.com" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 go.microsoft.com) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.76.0.0/14" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 40.76.0.0/14) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.96.0.0/12" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 40.96.0.0/12) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.124.0.0/16" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 40.124.0.0/16) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.112.0.0/13" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 40.112.0.0/13) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.125.0.0/17" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 40.125.0.0/17) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.74.0.0/15" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 40.74.0.0/15) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.80.0.0/12" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 40.80.0.0/12) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.120.0.0/14" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 40.120.0.0/14) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "137.116.0.0/16" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 137.116.0.0/16) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "23.192.0.0/11" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 23.192.0.0/11) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "23.32.0.0/11" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 23.32.0.0/11) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "23.64.0.0/14" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 23.64.0.0/14) >> %WINDIR%\System32\drivers\etc\hosts
FIND /C /I "23.55.130.182" %WINDIR%\system32\drivers\etc\hosts > NUL 2>&1
    if %errorlevel%==0 (echo 0.0.0.0 23.55.130.182) >> %WINDIR%\System32\drivers\etc\hosts

echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu

:onedrive
cls
title OneDrive kald�r�l�yor...
set x86="%SYSTEMROOT%\System32\OneDriveSetup.exe"
set x64="%SYSTEMROOT%\SysWOW64\OneDriveSetup.exe"
echo  %ESC%[92mClosing OneDrive process%ESC%[0m
taskkill /f /im OneDrive.exe > NUL 2>&1
ping 127.0.0.1 -n 5 > NUL 2>&1
echo  %ESC%[92mUninstalling OneDrive%ESC%[0m
if exist %x64% (
%x64% /uninstall
) else (
%x86% /uninstall
)
ping 127.0.0.1 -n 5 > NUL 2>&1
echo  %ESC%[92mRemoving OneDrive leftovers%ESC%[0m
rd "%USERPROFILE%\OneDrive" /Q /S > NUL 2>&1
rd "C:\OneDriveTemp" /Q /S > NUL 2>&1
rd "%LOCALAPPDATA%\Microsoft\OneDrive" /Q /S > NUL 2>&1
rd "%PROGRAMDATA%\Microsoft OneDrive" /Q /S > NUL 2>&1 
echo  %ESC%[92mRemoving OneDrive from the Explorer Side Panel%ESC%[0m
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f > NUL 2>&1
REG DELETE "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f > NUL 2>&1

echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak
goto menu


:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0






