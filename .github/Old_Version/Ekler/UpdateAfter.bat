echo off
cls

net session >NUL 2>&1|| powershell Start-Process '%0' -Verb RunAs&& exit /b|| exit /b

title G�ncelleme Sonras� Temizlik / OgnitorenKs
cd /d "%~dp0"

setlocal
call :setESC

echo  %ESC%[92m Windows/System32 i�inde SmartScreen ve Defender kal�nt�lar� etkisiz hale getiriliyor...%ESC%[0m 

for /f %%i in ('"cd"') do set cd=%%i
set cd2=%cd:~0,-6%
for /f %%a in ('"dir /b Tool\*"') do "%cd2%\Python\python.exe" "%cd2%\Python\Tools\NonRemovable\%%a"

PowerShell.exe -Command "Get-AppxPackage -allusers *BioEnrollment* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *Win32WebViewHost* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *ParentalControls* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *NarratorQuickStart* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *PeopleExperienceHost* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *SecHealthUI* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *SecureAssessmentBrowser* | Remove-AppxPackage"
cls

DEL /F /Q /A "%windir%\System32\CompatTelRunner.exe"
DEL /F /Q /A "%windir%\System32\securityhealthhost.exe"
DEL /F /Q /A "%windir%\System32\securityhealthservice.exe"
DEL /F /Q /A "%windir%\System32\securityhealthsystray.exe"
DEL /F /Q /A "%windir%\System32\SgrmBroker.exe"
DEL /F /Q /A "%windir%\System32\smartscreen.exe"
RD /S /Q "%programfiles(x86)%\Windows Defender"
RD /S /Q "%programfiles%\Windows Defender"
RD /S /Q "%programfiles%\Windows Security"
RD /S /Q "%programfiles%\Windows Defender Advanced Threat Protection"
cls

echo   ==============================================================
echo               H�ZMETLER B�L�M�NDE D�ZENLE YAPILIYOR...
echo   ==============================================================
REM Ba�l� Kullan�c� Deneyimleri ve Telemetrisi kapat�l�yor...
net stop DiagTrack
sc delete DiagTrack 
REM C�zdan Hizmeti
net stop WalletService
sc delete WalletService 
REM Da��t�lm�� Ba�lant� �zleme �stemcisi kapat�l�yor...
net stop TrkWks
sc delete TrkWks
REM Dokunmatik Klavyeyi ve El yaz�s� Paneli Hizmeti kapat�l�yor...
net stop TabletInputService
sc delete TabletInputService 
REM Ebeveyn Denetimleri kapat�l�yor...
net stop WpcMonSvc
sc delete WpcMonSvc
REM G�venlik Merkezi kapat�l�yor...
net stop wscsvc
sc delete wscsvc 
REM Microsoft Edge G�ncelle�tirmeleri kapat�l�yor...
net stop edgeupdate
net stop edgeupdatem
sc config edgeupdate start= disabled
sc config edgeupdatem start= disabled
REM Windows Defender kapat�l�yor...
net stop Sense
sc delete Sense 
net stop WdNisSvc
sc delete WdNisSvc 
net stop SecurityHealthService
sc delete SecurityHealthService 
net stop WinDefend
sc delete WinDefend
REM SysMain (Superfetch) kapat�l�yor...
net stop Sysmain
sc delete Sysmain 
REM Sistem Koruma �al��ma Zaman� �zleyicisi Arac�s� kapat�l�yor... 
net stop SgrmBroker
sc delete SgrmBroker 
REM Teslim En �yile�tirme kapat�l�yor...
net stop DoSvc
sc config DoSvc start= disabled
REM Windows Biyometrik Hizmeti kapat�l�yor...
net stop WbioSrvc
sc config WbioSrvc start= disabled
REM Windows Hata Raporlama Hizmeti kapat�l�yor...
net stop WerSvc
sc config WerSvc start= disabled
REM Windows Insider Hizmeti kapat�l�yor...
net stop wisvc
sc config wisvc start= disabled
REM Windows Search kapat�l�yor...
net stop WSearch
sc config WSearch start= disabled
REM BrancCache
net stop "PeerDistSvc"
sc config"PeerDistSvc" start= disabled
REM Tan�lama merkezi
net stop "diagnosticshub.standardcollector.service"
sc config diagnosticshub.standardcollector.service start= disabled
REM Telemetry sevisi
net stop "dmwappushservice"
sc delete dmwappushservice 
cls

echo   ==============================================================
echo              REGED�T �ZER�NDE D�ZENLEMELER YAPILIYOR...
echo   ==============================================================

REM SmartScreen Devre D��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "ContentEvaluation" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "SmartScreenEnabled" /t REG_SZ /d "Off" 

REM DiagTrack Devre D��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\DiagTrack" /f /v "Start" /t REG_DWORD /d 4 
REM Automatic Diagnostic Logger (Otomatik Te�his Kaydedici) devre d��� 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /f /v "Start" /t REG_DWORD /d 0 

REM Telemetry Devre D��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0 

REM Windows Defender Devre D��� b�rak�l�yor...
REM �nternetten indirilen dosyalar� i�in tarama yapma �zelli�ini kapat�yoruz.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "ScanWithAntiVirus" /t REG_DWORD /d 3 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "SaveZoneInformation" /t REG_DWORD /d 1 
REM Ger�ek zamanl� izlemeyi devre d��� b�rak
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /f /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 
REM Casus yaz�l�mdan korunmay� devre d��� b�rak
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /f /v "DisableAntiSpyware" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f /v "Start" /t REG_DWORD /d 4 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinDefend" /f /v "Start" /t REG_DWORD /d 4 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /f /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "PromptOnSecureDesktop" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "EnableLUA" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 0 
REM Microsoft Store i�in Defender devre d��� b�rak�l�yor
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 
REM G�venlik Merkezi - Kritik olmayan bildirimler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableEnhancedNotifications" /t REG_DWORD /d 1 
REM G�venlik Merkezi - T�m bildirimler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableNotifications" /t REG_DWORD /d 1 
REM Defender hesap koruma uyar�s� 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows Security Health\State" /f /v "AccountProtection_MicrosoftAccount_Disconnected" /t REG_DWORD /d 0 
REM Sabotaj korumas� devre d��� b�rak�l�yor
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features" /f /v "TamperProtection" /t REG_DWORD /d 0 

REM Kapatma i�leminde uygulamalar a��k ise otomatik kapat ve bekleme s�resi azalt�l�yor
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

REM Bilgi kutucuklar� g�sterim s�resi k�salt�l�yor...
REM Men� g�sterimi bekleme s�resini azalt�r. B�ylelikle t�kland��� zaman men�ler daha h�zl� gelecek.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "MenuShowDelay" /t REG_SZ /d "8" 

REM D���k Depolama alan� uyar�s� devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1 

REM Bilgi kutucuklar�n�n g�r�n�m� h�zland�r�l�yor...
REM Farenizle birlikte bir nesnenin �zerine geldi�inizde g�r�len a��klaman�n ��k�� s�resini k�salt�r
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /f /v "MouseHoverTime" /t REG_SZ /d 8 

REM K�sayol taramas� kapat�l�yor...
REM Bilgisayar�n�zda mevcut olmayan programlara ait k�sayollar�n ba�lant�s�n�n Windows taraf�ndan bo�a vakit harcanarak aranmas�n� �nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1 
REM K�sayol ba�lant� sorununu ��zmek i�in Windows'un diski aramas�n� �nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveSearch" /t REG_DWORD /d 1 
REM K�sayol ba�lant� sorununu ��zmek i�in Windows'un NTFS dosya sisteminin izleme �zelli�ini kullanmas�n� engeller
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveTrack" /t REG_DWORD /d 1 

REM Birlikte a� se�ene�inden internette ara se�ene�i kald�r�l�yor...
REM Birlikte a� se�ene�ine t�klad���n�zda uygulamalar� internette arama se�ene�inin ��kmas�n� �nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoInternetOpenWith" /t REG_DWORD /d 1 

REM Kapatma s�ras�nda sayfa dosyalar�n� temizle
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /f /v "ClearPageFileAtShutdown" /t REG_DWORD /d 1 

REM Prefetch devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnablePrefetcher" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnableSuperFetch" /t REG_DWORD /d 0 

REM Startup Delay (Ba�lang�� Gecikmesi) devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /f /v "StartupDelayInMSec" /t REG_DWORD /d 0 

REM Qos Limiti Devre D��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /f /v "NonBestEffortLimit" /t REG_DWORD /d 0 

REM Uygulamalar a��l�rken g�venlik uyar�lar� devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /f /v ModRiskFileTypes /t "REG_SZ /d ".bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd" 

REM Ayarlar uygulamas�nda Zaman �izelgesi devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 

REM AutoLogger devre d��� b�rak�l�yor...
REM ��letim sistemi �ny�kleme i�leminde meydana gelen olaylar� kaydeder.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /f /v "Start" /t REG_DWORD /d 0 

REM Teslimat Optimizasyonu devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /f /v "DODownloadMode" /t REG_DWORD /d 0 

REM Reklam kimli�i etkinli�i kapat�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v DisabledByGroupPolicy /t REG_DWORD /d 1 

REM OneDrive E�itlemesi devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 

REM Windows Hata Raporlama devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /f /v "DontSendAdditionalData" /t REG_DWORD /d 1 

REM Wifi Hotspot Raporlama devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" /f /v "value" /t REG_DWORD /d 0 

REM G�venli Wifi noktalar�na otomatik ba�lan devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" /f /v "value" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "WiFiSenseOpen" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "PaidWifi" /t REG_DWORD /d 0 

REM Windows Reklam Kimli�ini devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v "Enabled" /t REG_DWORD /d 0 

REM Web sayfalar�n�n Dil se�eneklerine eri�imi engelleniyor...
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 

REM Windows 10 Bildirimleri devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /f /v "UseActionCenterExperience" /t REG_DWORD /d 0 

REM G�venlik ve Bak�m simgesi devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "HideSCAHealth" /t REG_DWORD /d 1 

REM M��teri Deneyim Program� devre d��� b�rak�r�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SQMClient\Windows" /f /v "CEIPEnable" /t REG_DWORD /d 0 

REM G�ncelle�tirmeler Manuel yap�l�yor...
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "NoAutoUpdate" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallDay" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallTime" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "RescheduleWaitTime" 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "AUOptions" /t REG_DWORD /d "2" 

REM Deneyim geli�tirme program�na izin ver(NVIDIA S�r�c�s�) kapat�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /f /v "OptInOrOutPreference" /t REG_DWORD /d 0 

REM Deneyler kapat�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowExperimentation" /t REG_DWORD /d 0 

REM SecurityHealth Devre d��� b�rak�l�yor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v "SecurityHealth" 
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /f /v "SecurityHealth" 

REM Metadata izleme dosyalar� kald�r�l�yor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /f

REM Son a��lan belgelerin ge�mi�i kapat�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoRecentDocsHistory" /t REG_DWORD /d 0 

REM G�rev G�r�n�m� Simgesi Kald�r�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowTaskViewButton" /t REG_DWORD /d 0 

REM Dosya kopyalama ileti�im kutusuda daha fazla detay g�ster
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /f /v "EnthusiastMode" /t REG_DWORD /d 1 

REM Uygulamalar�n arka planda �al��mas� engelleniyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "Migrated" /t REG_DWORD /d 4 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "GlobalUserDisabled" /t REG_DWORD /d 1 

REM Ayarlar uygulamas�n �nerilen i�eri�i g�stermesi kapat�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 

REM HotSpot 2.0 devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WlanSvc\AnqpCache" /f /v "OsuRegistrationStatus" /t REG_DWORD /d 0 

REM Windows izleme uygulamas� devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackProgs" /t REG_DWORD /d 0 

REM Ba�lang��taki �neriler kapat�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 

REM Edge i�in SmartScreen devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /f /v "EnabledV9" /t REG_DWORD /d 0 

REM Yaz� geli�tirme i�in Microsoft'a veri g�nderimi engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Input\TIPC" /f /v "Enabled" /t REG_DWORD /d 0 

REM Giri� verilerinin Microsoft'a g�nderilmesi engelleniyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Personalization\Settings" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts " /t REG_DWORD /d 0 

REM Geri Bildirim frekans� kapat�l�yor.
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /f /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 

REM H�zl� Eri�imden S�k Kullan�lanlar kald�r�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowFrequent" /t REG_DWORD /d 0 

REM Internet Explorer i�in SmartScreen devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\PhishingFilter" /f /v "Enabledv9" /t REG_DWORD /d 0 

REM Konum Hizmetlerini kapat�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowLocation" /t REG_DWORD /d 0 

REM Web Sitelerinin kullan�c� dil listesine eri�imini engeller...
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 

REM Kullan�c�n�n di�er cihazlardaki uygulamalar�n uygulamalar� a�mas� engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /f /v "UserAuthPolicy" /t REG_DWORD /d 0 

REM K�t� ama�l� uygulamalara kar�� SmartScreen kapat�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "SmartScreenEnabled" /t REG_SZ /d "Off" 

REM G�z Atma Verilerinin Microsoft'a G�nderilmesi engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" /f /v "FPEnabled" /t REG_DWORD /d 0 

REM Skype Ki�iler ba�lant�s� devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" /f /v "Skype-UserConsentAccepted" /t REG_DWORD /d 0 

REM Son kullan�lan dosyalar�n h�zl� eri�imde g�r�nt�lenmesi engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowRecent" /t REG_DWORD /d 0 

REM T�ketici Deneyimi kapat�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 

REM Tan�lama verilerinin Microsoft'a g�nderilmesi engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 

REM Windows Kilit Ekran� Spot I���� kapat�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "RotatingLockScreenEnabled" /t REG_DWORD /d 0 

REM Windows'un bilgisayardaki etkinlikleri toplamas� engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "PublishUserActivities" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 

REM Windows belge izleme �zelli�i devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackDocs" /t REG_DWORD /d 0 

REM �evrimi�i konu�ma hizmetleri devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\InputPersonalization" /f /v "AllowInputPersonalization" /t REG_DWORD /d 0 

REM �nceden y�klenmi� OEM uygulamalar devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "PreInstalledAppsEnabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 

REM ��g�r�sel yazma engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Input\Settings" /f /v "InsightsEnabled" /t REG_DWORD /d 0 

REM Atlama Listelerinde en son a��lan ��eler engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\Start" /f /v "HideRecentJumplists" /t REG_DWORD /d 1 

REM Bildirim Merkezi devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d 1 

REM Etkin olmayan ba�l�klar�n vurgu rengi ayarlan�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\DWM" /f /v "AccentColorInactive" /t REG_DWORD /d "5854282" 

REM Windows kar��lama deneyimi kapat�l�yor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0 

REM Windows �nerileri devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SoftLandingEnabled" /t REG_DWORD /d 0 

REM ��aret�i hassasiyeti devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /f /v "MouseSpeed" /t REG_SZ /d 0 

REM Tam ekran optimizasyonlar� devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 

REM Program uyumluluk yard�mc�s� devre d��� b�rak�l�yor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /f /v "DisablePCA" /t REG_DWORD /d 1 

REM Ayr�lm�� depolama alan� devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "ShippedWithReserves" /t REG_DWORD /d 0 

REM Teslimat Optimizasyonu BITS hizmeti olarak ayarlan�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /f /v "DODownloadMode" /t REG_DWORD /d "100" 

REM Driverlar kurulu de�il ise kurulmas� i�in ayarlan�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /f /v "SearchOrderConfig" /t REG_DWORD /d 2 

REM Defender g�ncelle�tirmeleri devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /f /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 

REM Konu�ma modellerinin g�ncele�tirmeleri devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "ModelDownloadAllowed" /t REG_DWORD /d 0 

REM G�ncelleme sonras� yeniden ba�latma bildirimi devre d��� b�rak�l�yor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "RestartNotificationsAllowed2" /t REG_DWORD /d 0 
cls

echo  %ESC%[92m G�rev Zamanlay�c�s�nda d�zenlemeler yap�l�yor...%ESC%[0m
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /f 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /f 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /f 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /f 
schtasks /delete /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /f
schtasks /delete /TN "\Microsoft\Windows\Maps\MapsToastTask" /f
schtasks /delete /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /f
schtasks /delete /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /f
schtasks /delete /TN "\Microsoft\Windows\HelloFace\FODCleanupTask" /f
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /DISABLE

timeout /t 5 /nobreak
exit

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0