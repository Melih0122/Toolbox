echo off
cls

net session >NUL 2>&1|| powershell Start-Process '%0' -Verb RunAs&& exit /b|| exit /b

title GÅncelleme Sonrasç Temizlik / OgnitorenKs
cd /d "%~dp0"

setlocal
call :setESC

echo  %ESC%[92m Windows/System32 iáinde SmartScreen ve Defender kalçntçlarç etkisiz hale getiriliyor...%ESC%[0m 

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
echo               HòZMETLER BôLöMöNDE DöZENLE YAPILIYOR...
echo   ==============================================================
REM Baßlç Kullançcç Deneyimleri ve Telemetrisi kapatçlçyor...
net stop DiagTrack
sc delete DiagTrack 
REM CÅzdan Hizmeti
net stop WalletService
sc delete WalletService 
REM Daßçtçlmçü Baßlantç òzleme òstemcisi kapatçlçyor...
net stop TrkWks
sc delete TrkWks
REM Dokunmatik Klavyeyi ve El yazçsç Paneli Hizmeti kapatçlçyor...
net stop TabletInputService
sc delete TabletInputService 
REM Ebeveyn Denetimleri kapatçlçyor...
net stop WpcMonSvc
sc delete WpcMonSvc
REM GÅvenlik Merkezi kapatçlçyor...
net stop wscsvc
sc delete wscsvc 
REM Microsoft Edge GÅncelleütirmeleri kapatçlçyor...
net stop edgeupdate
net stop edgeupdatem
sc config edgeupdate start= disabled
sc config edgeupdatem start= disabled
REM Windows Defender kapatçlçyor...
net stop Sense
sc delete Sense 
net stop WdNisSvc
sc delete WdNisSvc 
net stop SecurityHealthService
sc delete SecurityHealthService 
net stop WinDefend
sc delete WinDefend
REM SysMain (Superfetch) kapatçlçyor...
net stop Sysmain
sc delete Sysmain 
REM Sistem Koruma Äalçüma Zamanç òzleyicisi Aracçsç kapatçlçyor... 
net stop SgrmBroker
sc delete SgrmBroker 
REM Teslim En òyileütirme kapatçlçyor...
net stop DoSvc
sc config DoSvc start= disabled
REM Windows Biyometrik Hizmeti kapatçlçyor...
net stop WbioSrvc
sc config WbioSrvc start= disabled
REM Windows Hata Raporlama Hizmeti kapatçlçyor...
net stop WerSvc
sc config WerSvc start= disabled
REM Windows Insider Hizmeti kapatçlçyor...
net stop wisvc
sc config wisvc start= disabled
REM Windows Search kapatçlçyor...
net stop WSearch
sc config WSearch start= disabled
REM BrancCache
net stop "PeerDistSvc"
sc config"PeerDistSvc" start= disabled
REM Tançlama merkezi
net stop "diagnosticshub.standardcollector.service"
sc config diagnosticshub.standardcollector.service start= disabled
REM Telemetry sevisi
net stop "dmwappushservice"
sc delete dmwappushservice 
cls

echo   ==============================================================
echo              REGEDòT öZERòNDE DöZENLEMELER YAPILIYOR...
echo   ==============================================================

REM SmartScreen Devre Dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "ContentEvaluation" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "SmartScreenEnabled" /t REG_SZ /d "Off" 

REM DiagTrack Devre Dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\DiagTrack" /f /v "Start" /t REG_DWORD /d 4 
REM Automatic Diagnostic Logger (Otomatik Teühis Kaydedici) devre dçüç 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /f /v "Start" /t REG_DWORD /d 0 

REM Telemetry Devre Dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0 

REM Windows Defender Devre Dçüç bçrakçlçyor...
REM ònternetten indirilen dosyalarç iáin tarama yapma îzellißini kapatçyoruz.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "ScanWithAntiVirus" /t REG_DWORD /d 3 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "SaveZoneInformation" /t REG_DWORD /d 1 
REM Geráek zamanlç izlemeyi devre dçüç bçrak
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /f /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 
REM Casus yazçlçmdan korunmayç devre dçüç bçrak
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /f /v "DisableAntiSpyware" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f /v "Start" /t REG_DWORD /d 4 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinDefend" /f /v "Start" /t REG_DWORD /d 4 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /f /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "PromptOnSecureDesktop" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "EnableLUA" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 0 
REM Microsoft Store iáin Defender devre dçüç bçrakçlçyor
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 
REM GÅvenlik Merkezi - Kritik olmayan bildirimler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableEnhancedNotifications" /t REG_DWORD /d 1 
REM GÅvenlik Merkezi - TÅm bildirimler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableNotifications" /t REG_DWORD /d 1 
REM Defender hesap koruma uyarçsç 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows Security Health\State" /f /v "AccountProtection_MicrosoftAccount_Disconnected" /t REG_DWORD /d 0 
REM Sabotaj korumasç devre dçüç bçrakçlçyor
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features" /f /v "TamperProtection" /t REG_DWORD /d 0 

REM Kapatma iüleminde uygulamalar aáçk ise otomatik kapat ve bekleme sÅresi azaltçlçyor
REM Bilgisayar kapatçlçrken ya da oturumdan áçkçlçrken Windows'un ÅáÅncÅ parti hizmetleri otomatik olarak kapatmasçnç saßlar. Bu sayede uygulama kapanmaya engel oluyor uyarçlarçnç almayacaksçnçz.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "AutoEndTasks" /t REG_SZ /d 1 
REM Uygulamalar cevap vermedißi zaman gîrevi sonlandçr seáeneßine basçlmadan înceki bekleme sÅresini kçsaltçr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "HungAppTimeout" /t REG_SZ /d "1000" 
REM Bilgisayar kapatçlçrken ya da oturumdan áçkçlçrken kullançcç uygulamalarçnçn kapatçlmasç iáin sistem bekleme sÅresini kçsaltçr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "WaitToKillAppTime" /t REG_SZ /d "2000" 
REM Cevap vermeyen hizmetlerin kapatçlmasçndan înceki sistem bekleme sÅresini kçsaltçr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" 
REM Bilgisayarçn kapatçlmasç sçrasçnda durdurulacak hizmetler uyarçsç geldißinde, uygulamalarçn kapanmasç iáin beklenen sÅreyi kçsaltçr.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /f /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" 

REM Bilgi kutucuklarç gîsterim sÅresi kçsaltçlçyor...
REM MenÅ gîsterimi bekleme sÅresini azaltçr. Bîylelikle tçklandçßç zaman menÅler daha hçzlç gelecek.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "MenuShowDelay" /t REG_SZ /d "8" 

REM DÅüÅk Depolama alanç uyarçsç devre dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1 

REM Bilgi kutucuklarçnçn gîrÅnÅmÅ hçzlandçrçlçyor...
REM Farenizle birlikte bir nesnenin Åzerine geldißinizde gîrÅlen aáçklamançn áçkçü sÅresini kçsaltçr
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /f /v "MouseHoverTime" /t REG_SZ /d 8 

REM Kçsayol taramasç kapatçlçyor...
REM Bilgisayarçnçzda mevcut olmayan programlara ait kçsayollarçn baßlantçsçnçn Windows tarafçndan boüa vakit harcanarak aranmasçnç înler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1 
REM Kçsayol baßlantç sorununu áîzmek iáin Windows'un diski aramasçnç înler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveSearch" /t REG_DWORD /d 1 
REM Kçsayol baßlantç sorununu áîzmek iáin Windows'un NTFS dosya sisteminin izleme îzellißini kullanmasçnç engeller
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveTrack" /t REG_DWORD /d 1 

REM Birlikte aá seáeneßinden internette ara seáeneßi kaldçrçlçyor...
REM Birlikte aá seáeneßine tçkladçßçnçzda uygulamalarç internette arama seáeneßinin áçkmasçnç înler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoInternetOpenWith" /t REG_DWORD /d 1 

REM Kapatma sçrasçnda sayfa dosyalarçnç temizle
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /f /v "ClearPageFileAtShutdown" /t REG_DWORD /d 1 

REM Prefetch devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnablePrefetcher" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnableSuperFetch" /t REG_DWORD /d 0 

REM Startup Delay (Baülangçá Gecikmesi) devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /f /v "StartupDelayInMSec" /t REG_DWORD /d 0 

REM Qos Limiti Devre Dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /f /v "NonBestEffortLimit" /t REG_DWORD /d 0 

REM Uygulamalar aáçlçrken gÅvenlik uyarçlarç devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /f /v ModRiskFileTypes /t "REG_SZ /d ".bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd" 

REM Ayarlar uygulamasçnda Zaman Äizelgesi devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 

REM AutoLogger devre dçüç bçrakçlçyor...
REM òületim sistemi înyÅkleme iüleminde meydana gelen olaylarç kaydeder.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /f /v "Start" /t REG_DWORD /d 0 

REM Teslimat Optimizasyonu devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /f /v "DODownloadMode" /t REG_DWORD /d 0 

REM Reklam kimlißi etkinlißi kapatçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v DisabledByGroupPolicy /t REG_DWORD /d 1 

REM OneDrive Eüitlemesi devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 

REM Windows Hata Raporlama devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /f /v "DontSendAdditionalData" /t REG_DWORD /d 1 

REM Wifi Hotspot Raporlama devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" /f /v "value" /t REG_DWORD /d 0 

REM GÅvenli Wifi noktalarçna otomatik baßlan devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" /f /v "value" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "WiFiSenseOpen" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "PaidWifi" /t REG_DWORD /d 0 

REM Windows Reklam Kimlißini devre dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v "Enabled" /t REG_DWORD /d 0 

REM Web sayfalarçnçn Dil seáeneklerine eriüimi engelleniyor...
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 

REM Windows 10 Bildirimleri devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /f /v "UseActionCenterExperience" /t REG_DWORD /d 0 

REM GÅvenlik ve Bakçm simgesi devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "HideSCAHealth" /t REG_DWORD /d 1 

REM MÅüteri Deneyim Programç devre dçüç bçrakçrçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SQMClient\Windows" /f /v "CEIPEnable" /t REG_DWORD /d 0 

REM GÅncelleütirmeler Manuel yapçlçyor...
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "NoAutoUpdate" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallDay" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallTime" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "RescheduleWaitTime" 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "AUOptions" /t REG_DWORD /d "2" 

REM Deneyim geliütirme programçna izin ver(NVIDIA SÅrÅcÅsÅ) kapatçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /f /v "OptInOrOutPreference" /t REG_DWORD /d 0 

REM Deneyler kapatçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowExperimentation" /t REG_DWORD /d 0 

REM SecurityHealth Devre dçüç bçrakçlçyor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v "SecurityHealth" 
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /f /v "SecurityHealth" 

REM Metadata izleme dosyalarç kaldçrçlçyor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /f

REM Son aáçlan belgelerin geámiüi kapatçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoRecentDocsHistory" /t REG_DWORD /d 0 

REM Gîrev GîrÅnÅmÅ Simgesi Kaldçrçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowTaskViewButton" /t REG_DWORD /d 0 

REM Dosya kopyalama iletiüim kutusuda daha fazla detay gîster
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /f /v "EnthusiastMode" /t REG_DWORD /d 1 

REM Uygulamalarçn arka planda áalçümasç engelleniyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "Migrated" /t REG_DWORD /d 4 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "GlobalUserDisabled" /t REG_DWORD /d 1 

REM Ayarlar uygulamasçn înerilen iáerißi gîstermesi kapatçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 

REM HotSpot 2.0 devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WlanSvc\AnqpCache" /f /v "OsuRegistrationStatus" /t REG_DWORD /d 0 

REM Windows izleme uygulamasç devre dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackProgs" /t REG_DWORD /d 0 

REM Baülangçátaki îneriler kapatçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 

REM Edge iáin SmartScreen devre dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /f /v "EnabledV9" /t REG_DWORD /d 0 

REM Yazç geliütirme iáin Microsoft'a veri gînderimi engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Input\TIPC" /f /v "Enabled" /t REG_DWORD /d 0 

REM Giriü verilerinin Microsoft'a gînderilmesi engelleniyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Personalization\Settings" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts " /t REG_DWORD /d 0 

REM Geri Bildirim frekansç kapatçlçyor.
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /f /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 

REM Hçzlç Eriüimden Sçk Kullançlanlar kaldçrçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowFrequent" /t REG_DWORD /d 0 

REM Internet Explorer iáin SmartScreen devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\PhishingFilter" /f /v "Enabledv9" /t REG_DWORD /d 0 

REM Konum Hizmetlerini kapatçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowLocation" /t REG_DWORD /d 0 

REM Web Sitelerinin kullançcç dil listesine eriüimini engeller...
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 

REM Kullançcçnçn dißer cihazlardaki uygulamalarçn uygulamalarç aámasç engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /f /v "UserAuthPolicy" /t REG_DWORD /d 0 

REM KîtÅ amaálç uygulamalara karüç SmartScreen kapatçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "SmartScreenEnabled" /t REG_SZ /d "Off" 

REM Gîz Atma Verilerinin Microsoft'a Gînderilmesi engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" /f /v "FPEnabled" /t REG_DWORD /d 0 

REM Skype Kiüiler baßlantçsç devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" /f /v "Skype-UserConsentAccepted" /t REG_DWORD /d 0 

REM Son kullançlan dosyalarçn hçzlç eriüimde gîrÅntÅlenmesi engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowRecent" /t REG_DWORD /d 0 

REM TÅketici Deneyimi kapatçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 

REM Tançlama verilerinin Microsoft'a gînderilmesi engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 

REM Windows Kilit Ekranç Spot Iüçßç kapatçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "RotatingLockScreenEnabled" /t REG_DWORD /d 0 

REM Windows'un bilgisayardaki etkinlikleri toplamasç engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "PublishUserActivities" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 

REM Windows belge izleme îzellißi devre dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackDocs" /t REG_DWORD /d 0 

REM Äevrimiái konuüma hizmetleri devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\InputPersonalization" /f /v "AllowInputPersonalization" /t REG_DWORD /d 0 

REM ônceden yÅklenmiü OEM uygulamalar devre dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "PreInstalledAppsEnabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 

REM òágîrÅsel yazma engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Input\Settings" /f /v "InsightsEnabled" /t REG_DWORD /d 0 

REM Atlama Listelerinde en son aáçlan îßeler engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\Start" /f /v "HideRecentJumplists" /t REG_DWORD /d 1 

REM Bildirim Merkezi devre dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d 1 

REM Etkin olmayan baülçklarçn vurgu rengi ayarlançyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\DWM" /f /v "AccentColorInactive" /t REG_DWORD /d "5854282" 

REM Windows karüçlama deneyimi kapatçlçyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0 

REM Windows înerileri devre dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SoftLandingEnabled" /t REG_DWORD /d 0 

REM òüaretái hassasiyeti devre dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /f /v "MouseSpeed" /t REG_SZ /d 0 

REM Tam ekran optimizasyonlarç devre dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 

REM Program uyumluluk yardçmcçsç devre dçüç bçrakçlçyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /f /v "DisablePCA" /t REG_DWORD /d 1 

REM Ayrçlmçü depolama alanç devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "ShippedWithReserves" /t REG_DWORD /d 0 

REM Teslimat Optimizasyonu BITS hizmeti olarak ayarlançyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /f /v "DODownloadMode" /t REG_DWORD /d "100" 

REM Driverlar kurulu deßil ise kurulmasç iáin ayarlançyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /f /v "SearchOrderConfig" /t REG_DWORD /d 2 

REM Defender gÅncelleütirmeleri devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /f /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 

REM Konuüma modellerinin gÅnceleütirmeleri devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "ModelDownloadAllowed" /t REG_DWORD /d 0 

REM GÅncelleme sonrasç yeniden baülatma bildirimi devre dçüç bçrakçlçyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "RestartNotificationsAllowed2" /t REG_DWORD /d 0 
cls

echo  %ESC%[92m Gîrev Zamanlayçcçsçnda dÅzenlemeler yapçlçyor...%ESC%[0m
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