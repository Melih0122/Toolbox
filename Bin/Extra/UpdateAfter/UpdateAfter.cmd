MD "%Location%\Bin\Extra\UpdateAfter\Backup" > NUL 2>&1
for /f "tokens=1" %%a in ('echo %time%') do set Time=%%a
Rename "%Location%\Bin\Extra\UpdateAfter\Backup\Update.bat" "Update.%DateDay%_%Random%.bat" > NUL 2>&1

cls
%Lang% :After_1
%NSudo% DEL /F /Q /A "%windir%\System32\CompatTelRunner.exe" "%windir%\System32\drivers\MsSecFlt.sys" "%windir%\System32\drivers\WdBoot.sys" "%windir%\System32\drivers\WdFilter.sys" "%windir%\System32\drivers\WdNisDrv.sys" "%windir%\System32\smartscreen.exe" "%windir%\System32\securityhealthhost.exe" "%windir%\System32\securityhealthservice.exe" "%windir%\System32\securityhealthsystray.exe" "%windir%\System32\SgrmBroker.exe"
%NSudo% RD /S /Q "%programfiles%\Windows Defender Advanced Threat Protection" "%programfiles%\Windows Defender" "%programfiles%\Windows Security" "%programfiles(x86)%\Windows Security" "%programfiles(x86)%\Windows Defender" "%programfiles(x86)%\Windows Defender Advanced Threat Protection" "%programdata%\Microsoft\Windows Security Health" "%programdata%\Microsoft\Windows Defender Advanced Threat Protection" "%programdata%\Microsoft\Windows Defender" "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy"

%Lang% :After_2
FOR /F "tokens=4" %%g in ('Findstr /i "Service-1" %Location%\Bin\Extra\UpdateAfter\Services.txt') do (
	%NSudo% sc config %%a start= disabled
	%NSudo% net stop %%a /y
)
FOR /F "tokens=4" %%g in ('Findstr /i "Service-2" %Location%\Bin\Extra\UpdateAfter\Services.txt') do (
	%NSudo% net stop %%a /y
	%NSudo% sc delete %%a
)
FOR /F "tokens=4" %%g in ('Findstr /i "Service-3" %Location%\Bin\Extra\UpdateAfter\Services.txt') do (
	%NSudo% sc config %%a start= demand
)

%Lang% :After_3
:: Defender
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" "DisableNotifications" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" "DisableEnhancedNotifications" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows Security Health\State" "AccountProtection_MicrosoftAccount_Disconnected" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender" "DisableAntiSpyware" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender" "DisableAntiVirus" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" "TamperProtection" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" "TamperProtectionSource" REG_DWORD 0x2
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender\Signature Updates" "FirstAuGracePeriod" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Defender\UX Configuration" "DisablePrivacyMode" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" "SecurityHealth" REG_BINARY "030000000000000000000000"
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\MRT" "DontOfferThroughWUAU" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\MRT" "DontReportInfectionInformation" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" "HideSystray" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" "DisableAntiSpyware" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" "PUAProtection" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" "RandomizeScheduleTaskTimes" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions" "DisableAutoExclusions" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\MpEngine" "MpEnablePus" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" "LocalSettingOverridePurgeItemsAfterDelay" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" "PurgeItemsAfterDelay" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableBehaviorMonitoring" REG_DWORD 0x1 
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableIOAVProtection" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableOnAccessProtection" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRealtimeMonitoring" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRoutinelyTakingAction" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableScanOnRealtimeEnable" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" "Scan_ScheduleDay" REG_DWORD 0x8
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" "Scan_ScheduleTime" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "AdditionalActionTimeOut" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "CriticalFailureTimeOut" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "DisableEnhancedNotifications" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "DisableGenericRePorts" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "NonCriticalTimeOut" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "AvgCPULoadFactor" REG_DWORD 0x10
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableArchiveScanning" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableCatchupFullScan" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableCatchupQuickScan" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableRemovableDriveScanning" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableRestorePoint" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableScanningMappedNetworkDrivesForFullScan" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableScanningNetworkFiles" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "PurgeItemsAfterDelay" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScanOnlyIfIdle" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScanParameters" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScheduleDay" REG_DWORD 0x8
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScheduleTime" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "DisableUpdateOnStartupWithoutEngine" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "ScheduleDay" REG_DWORD 0x8
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "ScheduleTime" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "SignatureUpdateCatchupInterval" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SpyNet" "DisableBlockAtFirstSeen" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "LocalSettingOverrideSpynetReporting" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReporting" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReportingLocation" REG_MULTI_SZ 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SubmitSamplesConsent" REG_DWORD 0x2
:: SmartScreen
::for "tokens=* USEBACKQ" %i in (`wmic.exe useraccount where "name="%username%"" get sid ^| findstr "S-"`) do set currentusername=%i
::set currentusername=%currentusername:~0,-3%
Call :Powershell "Get-CimInstance -ClassName Win32_UserAccount | Select-Object -Property Name,SID" > %Location%\Bin\Data\cusername
FOR /F "tokens=2" %%a in ('Findstr /i "%username%" %Location%\Bin\Data\cusername') do set currentusername=%%a
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" REG_DWORD 0x0
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" REG_DWORD 0x0
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows Security Health\State" "AppAndBrowser_StoreAppsSmartScreenOff" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "SmartScreenEnabled" REG_SZ "Off"
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "SmartScreenEnabled" REG_SZ "Off"
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" "EnabledV9" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" "PreventOverride" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" "EnabledV9" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" "PreventOverride" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "EnableSmartScreen" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControl" REG_SZ "Anywhere"
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControlEnabled" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "ContentEvaluation" REG_DWORD 0x0
:: Update
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "IsExpedited" REG_DWORD 0x0 & :: Güncellemenin yüklenmesi gerektiğinde bilgisayarı mümkün olan en kısa sürede devre dışı bırak
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "RestartNotificationsAllowed2" REG_DWORD 0x0 & :: Güncelleme sonrası yeniden başlatma bildirimi devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "ModelDownloadAllowed" REG_DWORD 0x0 & :: Konuşma modellerinin günceleştirmeleri devre dışı bırakılıyor...
::Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" "SearchOrderConfig" REG_DWORD 0x2 & :: Driverlar kurulu değil ise kurulması için ayarlanıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "NoAutoUpdate" REG_DWORD 0x0 & :: Update Manuel
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "AUOptions" REG_DWORD 0x2 & :: Update Manuel
:: Cortana
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" REG_DWORD 0x0
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" REG_DWORD 0x0 & :: Cortana - Oturum açtığım cihazlar geçmişimi kullan
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" REG_DWORD 0x0 & :: Cortana - Cihaz değiştirirken etkinlik önerileri
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaConsent" REG_DWORD 0x0
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaceable" REG_DWORD 0x1
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaced" REG_DWORD 0x1
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "SearchboxTaskbarMode" REG_DWORD 0x0
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" REG_DWORD 0x1
Call :RegSave Update "HKU\%currentusername%\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI" "EnableCortana" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaConsent" REG_DWORD 0x0
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaceable" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaced" REG_DWORD 0x1
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "SearchboxTaskbarMode" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\AboveLock" "AllowCortanaAboveLock" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Experience" "AllowCortana" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "ModelDownloadAllowed" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" "AllowInputPersonalization" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCloudSearch" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortana" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortanaAboveLock" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchPrivacy" REG_DWORD 0x3
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchSafeSearch" REG_DWORD 0x3
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" "AllowCortana" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" "AllowCortanaAboveLock" REG_DWORD 0x0
:: Taskbar
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowTaskViewButton" REG_DWORD 0x0 & :: Görev Görünümü Simgesi Kaldırılıyor...
::Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "MMTaskbarEnabled" REG_DWORD 0x1 & :: Görev Çubuğu ve bütün simgeleri tüm monitörlerde göster
::Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "MMTaskbarMode" REG_DWORD 0x0 & :: Görev Çubuğu ve bütün simgeleri tüm monitörlerde göster
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" "EnableTransparency" REG_DWORD 0x0 & :: Görev çubuğu transparan özelliği devre dışı bırakılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowCortanaButton" REG_DWORD 0x0 & :: Cortana Butonu kaldırılıyor...
:: Explorer
::Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "LaunchTo" REG_DWORD 0x1 & :: Explorer "Bu Bilgisayar" olarak ayarlanıyor...
::Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" "EnthusiastMode" REG_DWORD 0x1 & :: Dosya kopyalama iletişim kutusuda daha fazla detay göster olarak ayarlanıyor...
::Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "HideFileExt" REG_DWORD 0x0 & :: Dosya uzantıları aktifleştiriliyor...
::Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" "DisableAutoplay" REG_DWORD 0x1 & :: Otomatik oynatma kapatılıyor...
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoRecentDocsHistory" REG_DWORD 0x0 & :: Son açılan belgelerin geçmişi kapatılıyor...
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "ClearRecentDocsOnExit" REG_DWORD 0x1 & :: Windows'u kapatırken yeni açılan belgelerin geçmişini temizle aktifleştiriliyor...
::Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowRecent" REG_DWORD 0x0 & :: Son kullanılan dosyaların hızlı erişimde görüntülenmesi engelleniyor...
::Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "ShowFrequent" REG_DWORD 0x0 & :: Hızlı Erişimden Sık Kullanılan klasörler kaldırılıyor
::Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "Link" REG_BINARY "00000000"& :: Kısayol yazısı kaldırılıyor...
::Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoInternetOpenWith" REG_DWORD 0x1 & :: Birlikte aç seçeneğinden internette ara seçeneği kaldırılıyor...
:: Search
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" REG_DWORD 0x1 & :: Arama bölümü simge haline getiriliyor
::Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" REG_DWORD 0x1 & :: Web araması kapatılıyor.
::Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" REG_DWORD 0x0 & :: Web'de arama yapmayın veya Arama'da web sonuçlarını görüntülemeyin
::Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowIndexingEncryptedStoresOrItems" REG_DWORD 0x0 & :: Şifrelenmiş dosyaların indekslenme izni kaldırılıyor.
::Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" REG_DWORD 0x0 & :: Arama ve Cortana'nın Locationu kullanma izni kapatılıyor.
::Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AlwaysUseAutoLangDetection" REG_DWORD 0x0 & :: İçeriği ve özellikleri dizine eklerken her zaman otomatik dil algılamayı kullanın kapatılıyor.
::Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaConsent" REG_DWORD 0x0 & :: Cortana izni kapatılıyor.
::Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaInAmbientMode" REG_DWORD 0x0 & :: Cortana Ortam modu kapatılıyor.
::Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "AllowSearchToUseLocation" REG_DWORD 0x0 & :: Arama bölümünün Locationu kullanması engelleniyor.
::Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" "SafeSearchMode" REG_DWORD 0x0 & :: Güvenli arama modu kapatılıyor.
::Call :RegSave Update "HKCU\Software\Policies\Microsoft\Windows\Explorer" "DisableSearchBoxSuggestions" REG_DWORD 0x1 & :: Dosya Gezgini arama kutusundaki son arama girişlerinin görüntülenmesini kapatın
::Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" REG_DWORD 0x1 & :: Web araması kapatılıyor.
::Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" REG_DWORD 0x0 & :: Tarifeli bağlantılar üzerinden aramada web'de arama yapmayın veya web sonuçlarını görüntülemeyin
::Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCloudSearch" REG_DWORD 0x0 & :: Bulut arama kapatılıyor.
::Call :RegSave Update "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "AcceptedPrivacyPolicy" REG_DWORD 0x0 & :: Gizlilik politikası devre dışı bırakılıyor.
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "VoiceActivationDefaultOn" REG_DWORD 0x0 & :: Sesle etkinleştirme kapatılıyor.
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" "VoiceActivationEnableAboveLockscreen" REG_DWORD 0x0 & :: Kilit Ekranının Üstünde Sesle Etkinleştirme kapatılıyor.
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" "DisableVoice" REG_DWORD 0x1 & :: Ses etkinleştirme kapatılıyor.
::Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "BingSearchEnabled" REG_DWORD 0x0 & :: Arama - Bing web sonuçlarını dahil et kapatılıyor...
:: Optimizasyon
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" REG_DWORD 0x0 & :: Hiberboot Devre Dışı bırakılıyor
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" REG_DWORD 0x0 & :: Hazırda bekletme özelliği devre dışı bırakılıyor...
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" "ShowHibernateOption" REG_DWORD 0x0 & :: Kapatma menüsü - Hibernate kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" "ShippedWithReserves" REG_DWORD 0x0 & :: Ayrılmış depolama alanı devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" REG_DWORD 0x0 & :: Prefetch devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" REG_DWORD 0x0 & :: Prefetch devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" REG_DWORD 0x0 & :: Startup Delay (Başlangıç Gecikmesi) devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" REG_DWORD 0x0 & :: Qos Limiti Devre Dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" "LongPathsEnabled" REG_DWORD 0x1 & :: Windows 255 Karakter Sınırı devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" REG_DWORD 0x0 & :: DiagTrack Devre Dışı bırakılıyor...
::Call :RegSave Update "HKCU\Software\Microsoft\Narrator\QuickStart" "SkipQuickStart" REG_DWORD 0x1 & :: Narrator QuickStart kapatılıyor.
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SoftLandingEnabled" REG_DWORD 0x0 & :: Windows önerileri devre dışı bırakılıyor...
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-310093Enabled" REG_DWORD 0x0 & :: Windows karşılama deneyimi kapatılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisablePCA" REG_DWORD 0x1 & :: Program uyumluluk yardımcısı devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableUAR" REG_DWORD 0x1 & :: Program uyumluluk yardımcısı devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" "HwSchMode" REG_DWORD 0x2 & :: Donanım hızlandırmalı GPU Planlaması aktifleştiriliyor...
::Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseSpeed" REG_SZ 0 & :: İşaretçi hassasiyeti devre dışı bırakılıyor...
Call :RegSave Update "HKCU\Control Panel\Desktop" "AutoEndTasks" REG_SZ 1 & :: Kapatma işleminde uygulamalar açık ise otomatik kapat ve bekleme süresi azaltılıyor
Call :RegSave Update "HKCU\Control Panel\Desktop" "HungAppTimeout" REG_SZ "3000" & :: Uygulamalar cevap vermediği zaman görevi sonlandır seçeneğine basılmadan önceki bekleme süresini kısaltır.
Call :RegSave Update "HKCU\Control Panel\Desktop" "WaitToKillAppTime" REG_SZ "10000" & :: Bilgisayar kapatılırken ya da oturumdan çıkılırken kullanıcı uygulamalarının kapatılması için sistem bekleme süresini kısaltır.
Call :RegSave Update "HKCU\Control Panel\Desktop" "LowLevelHooksTimeout" REG_SZ "4000" & :: Cevap vermeyen hizmetlerin kapatılmasından önceki sistem bekleme süresini kısaltır.
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control" "WaitToKillServiceTimeout" REG_SZ "2000" & :: Bilgisayarın kapatılması sırasında durdurulacak hizmetler uyarısı geldiğinde, uygulamaların kapanması için beklenen süreyi kısaltır.
Call :RegSave Update "HKCU\Control Panel\Desktop" "MenuShowDelay" REG_SZ "0" & :: Menu gösterimi bekleme süresini azaltır. Böylelikle tıklandığı zaman menüler daha hızlı gelecek.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoLowDiskSpaceChecks" REG_DWORD 0x1 & :: Düşük Depolama alanı uyarısı devre dışı bırakılıyor...
Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseHoverTime" REG_SZ 100 & :: Farenizle birlikte bir nesnenin üzerine geldiğinizde görülen açıklamanın çıkış süresini kısaltır
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "LinkResolveIgnoreLinkInfo" REG_DWORD 0x1 & :: Bilgisayarınızda mevcut olmayan programlara ait kısayolların bağlantısının Windows tarafından boşa vakit harcanarak aranmasını önler
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveSearch" REG_DWORD 0x1 & :: Kısayol bağlantı sorununu çözmek için Windows'un diski aramasını önler
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveTrack" REG_DWORD 0x1 & :: Kısayol bağlantı sorununu çözmek için Windows'un NTFS dosya sisteminin izleme özelliğini kullanmasını engeller
::Call :RegSave Update "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours" "Enable" REG_DWORD 0x1 & :: Odak Yardımı aktifleştiriliyor
:: Store
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "ContentDeliveryAllowed" REG_DWORD 0x0 & :: 3.Parti Market uygulamalarının yeniden yüklenmesi engelleyen bölüm
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "FeatureManagementEnabled" REG_DWORD 0x0 & :: 3.Parti Market uygulamalarının yeniden yüklenmesi engelleyen bölüm
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEverEnabled" REG_DWORD 0x0 & :: 3.Parti Market uygulamalarının yeniden yüklenmesi engelleyen bölüm
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "OemPreInstalledAppsEnabled" REG_DWORD 0x0 & :: Önceden yüklenmiş OEM uygulamalar devre dışı bırakılıyor...
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEnabled" REG_DWORD 0x0 & :: Önceden yüklenmiş OEM uygulamalar (Minecraft, CandyCrush, Flipboard) kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SilentInstalledAppsEnabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-314559Enabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338387Enabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338388Enabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338389Enabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContentEnabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPane RecommendionsEnabled" REG_DWORD 0x0 & :: Önerilen uygulamaları otomatik olarak yükleyin kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" "AutoDownload" REG_DWORD 2 & :: Market otomatik güncelleştirme kapatır.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" REG_DWORD 0x1 & :: Market otomatik güncelleştirme kapatır.
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "Migrated" REG_DWORD 0x4 & :: Uygulamaların arka planda çalışması engelleniyor...
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "GlobalUserDisabled" REG_DWORD 0x1 & :: Uygulamaların arka planda çalışması engelleniyor...
:: Gizlilik
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" REG_DWORD 0x0 & :: Ayarlar uygulamasın önerilen içeriği göstermesi kapatılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353694Enabled" REG_DWORD 0x0 & :: Ayarlar uygulamasın önerilen içeriği göstermesi kapatılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353696Enabled" REG_DWORD 0x0 & :: Ayarlar uygulamasın önerilen içeriği göstermesi kapatılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache" "OsuRegistrationStatus" REG_DWORD 0x0 & :: Bağlanmak için Hotspot 2.0 Çevrimiçi kaydolmayı kullanın kapatılıyor
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackProgs" REG_DWORD 0x0 & :: Başlangıç ve arama sonuçlarını iyileştirmek için Windows izleme uygulamasının başlatılmasına izin verin kapatılıyor
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPaneSuggestionsEnabled" REG_DWORD 0x0 & :: Başlangıçtaki ara sıra öneriler kapatılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" "ScoobeSystemSettingEnabled" REG_DWORD 0x0 & :: Cihazımın kurulumunu çevrimiçi olarak tamamlayabileceğim yollar öner kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableCloudOptimizedContent" REG_DWORD 0x1 & :: Programlanabilir Görev Çubuğu özelliği devre dışı bırakılıyor.
Call :RegSave Update "HKCU\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" "OptInOrOutPreference" REG_DWORD 0x0 & :: Deneyim geliştirme programına izin ver(NVIDIA Sürücüsü) kapatılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowExperimentation" REG_DWORD 0x0 & :: Deneylere izin ver kapatılıyor
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Input\TIPC" "Enabled" REG_DWORD 0x0 & :: Gelecekte yazmayı iyileştirmenize yardımcı olması için nasıl yazdığım hakkında Microsoft'a bilgi gönderme kapatılıyor.
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" REG_DWORD 0x0 & :: Geri Bildirim frekansı kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" REG_DWORD 0x0 & :: Giriş verilerinizi Microsoft'a göndererek konuşma, yazma ve mürekkepleme girişinizi kişiselleştirin kapatılıyor
Call :RegSave Update "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" REG_DWORD 0x0 & :: Giriş verilerinizi Microsoft'a göndererek konuşma, yazma ve mürekkepleme girişinizi kişiselleştirin kapatılıyor
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" "AllowLocation" REG_DWORD 0x0 & :: Konum Hizmetlerini kapatılıyor...
Call :RegSave Update "HKCU\Control Panel\International\User Profile" "HttpAcceptLanguageOptOut" REG_DWORD 0x1 & :: Kullanıcı dil listesine erişerek web sitelerinin yerel olarak alakalı içerik sağlaması engelleniyor.
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" "UserAuthPolicy" REG_DWORD 0x0 & :: Kullanıcının diğer cihazlardaki uygulamaları açması engelleniyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" "FPEnabled" REG_DWORD 0x0 & :: Okumayı iyileştirmek, taramayı hızlandırmak için sayfa tahminini kullanın. Göz Atma Verilerinin Microsoft'a Gönderilmesi engelleniyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" "Skype-UserConsentAccepted" REG_DWORD 0x0 & :: Skype Kişiler bağlantısı devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" REG_DWORD 0x1 & :: Sponsorlu uygulamaların otomatik kurulumu (Tüketici Deneyimi)
Call :RegSave Update "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" REG_DWORD 0x1 & :: Sponsorlu uygulamaların otomatik kurulumu (Tüketici Deneyimi)
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" REG_DWORD 0x0 & :: Tanılama verilerinizi kullanarak Microsoft'un ilgili ipuçları ve önerilerle daha özel deneyimler sunmasına izin verin.
Call :RegSave Update "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" REG_DWORD 0x0 & :: Tanılama verilerinizi kullanarak Microsoft'un ilgili ipuçları ve önerilerle daha özel deneyimler sunmasına izin verin.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" REG_DWORD 0x0 & :: Telemetry Devre Dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy" REG_DWORD 0x1 & :: Uygulamaların uygulamalardaki deneyimler için kullanıcı reklam kimliğini kullanması engelleniyor.
Call :RegSave Update "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" REG_DWORD 0x0 & :: Windows ve Cortana'nın sizi daha iyi anlamasına izin vermek için kişileri toplama kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" REG_DWORD 0x1 & :: Windows ve Cortana'nın sizi daha iyi anlamasına izin vermek için yazılı metin (mürekkep) toplayın kapatılıyor.
Call :RegSave Update "HKCU\Software\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" REG_DWORD 0x1 & :: Windows ve Cortana'nın sizi daha iyi anlamasına izin vermek için yazılı metni toplayın.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "EnableActivityFeed" REG_DWORD 0x0 & :: Windows'un bu bilgisayardan etkinliklerimi toplamasına izin ver (Zaman çizelgesi)
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackDocs" REG_DWORD 0x0 & :: Windows'un sıçrama listelerini doldurmak için açılan belgeleri izlemesi kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" "AllowInputPersonalization" REG_DWORD 0x0 & :: Çevrimiçi konuşma hizmetleri devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" "WiFiSenseOpen" REG_DWORD 0x0 & :: Önerilen açık sıcak noktalara otomatik bağlan kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" "value" REG_DWORD 0x0 :: Önerilen açık sıcak noktalara otomatik bağlan kapatılıyor.
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" "PaidWifi" REG_DWORD 0x0 & :: Ücretli ağ hizmetlerinin mevcut olup olmadığını görmek için geçici olarak erişim noktalarına otomatik olarak bağlanma kapatılıyor.
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Input\Settings" "InsightsEnabled" REG_DWORD 0x0 & :: İçgörüsel yazma engelleniyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" "DisableFileSyncNGSC" REG_DWORD 0x1 & :: OneDrive Eşitlemesi devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" "Start" REG_DWORD 0x0 & :: AutoLogger devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" REG_DWORD 0x1 & :: Windows Hata Raporlama devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" REG_DWORD 0x0 & :: Wifi Hotspot Raporlama devre dışı bırakılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" REG_DWORD 0x0 & :: Windows Reklam Kimliğini devre dışı bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" REG_DWORD 0x0 & :: Müşteri Deneyim Programı devre dışı bırakırılıyor...
Call :RegSave_Delete_Key Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" & ::Metadata izleme dosyaları kaldırılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "PublishUserActivities" REG_DWORD 0x0 & :: Windows'un bilgisayardaki etkinlikleri toplaması engelleniyor...
Call :RegSave Update "HKLM\Software\Policies\Microsoft\Windows\System" "EnableActivityFeed" REG_DWORD 0x0 & :: Windows'un bilgisayardaki etkinlikleri toplaması engelleniyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Start" "HideRecentJumplists" REG_DWORD 0x1 & :: Atlama Listelerinde en son açılan öğeler engelleniyor...
Call :RegSave Update "HKCU\Software\Policies\Microsoft\Windows\Explorer\NoBalloonFeatureAdvertisements" "NoBalloonFeatureAdvertisements" REG_DWORD 0x1 & :: Özellik reklam balonu bildirimlerini kapatılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" "PreventHandwritingErrorReports" REG_DWORD 0x1 & :: El yazısı hata raporlarının paylaşımını devre dışı bırak 
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" "PreventHandwritingDataSharing" REG_DWORD 0x1 & :: El yazısı verilerinin paylaşımını devre dışı bırak
:: Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableInventory" 0x1 & :: Envanter Toplayıcıyı Devre Dışı Bırak
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "01" 0x0 & :: Depolama algısı
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "04" 0x0 & :: Depolama algısı - Uygulamaların kullanmadığı geçici dosyaları sil
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "256" 0x0 & :: Geri dönüşüm kutusu uzun süre doluysa temizle
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "512" 0x0 & :: Depolama algısı
:: Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" "2048" 0x0 & :: İndirilen klasöründe uzun süre duran dosyaları sil
:: Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\EdgeUpdate" "InstallDefault" 0x0 & :: EdgeWebView2'nin kurulmasını engeller
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\EdgeUpdate" "DoNotUpdateToEdgeWithChromium" 0x1 & :: Microsoft Edge'in otomatik kurulmasını engeller
:: Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" "AllowDevelopmentWithoutDevLicense" 0x1 & :: Uygulama geliştirme modu aktifleştiriliyor.
::MOUSE HID OPTIMIZE
::Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" "TreatAbsolutePointerAsAbsolute" REG_DWORD 0x1
::Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" "TreatAbsoluteAsRelative" REG_DWORD 0x0
::DISABLE MOUSE ACCELERATION
::Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseHoverTime" REG_SZ "0"
::Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseSensitivity" REG_SZ "10"
::Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseSpeed" REG_DWORD 0x0
::Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseThreshold1" REG_DWORD 0x0
::Call :RegSave Update "HKCU\Control Panel\Mouse" "MouseThreshold2" REG_DWORD 0x0
::MOUSE ABSOLUTE CURVE
::Call :RegSave Update "HKCU\Control Panel\Mouse" "SmoothMouseXCurve" REG_BINARY "000000000000000000a0000000000000004001000000000000800200000000000000050000000000"
::Call :RegSave Update "HKCU\Control Panel\Mouse" "SmoothMouseYCurve" REG_BINARY "000000000000000066a6020000000000cd4c050000000000a0990a00000000003833150000000000"
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" "CursorSensitivity" REG_DWORD "0x2710"
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" "CursorUpdateInterval" REG_DWORD "0x1"
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" "IRRemoteNavigationDelta" REG_DWORD "0x1"
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "AttractionRectInsetInDIPS" REG_DWORD "0x5"
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "DistanceThresholdInDIPS" REG_DWORD "0x28"
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "MagnetismDelayInMilliseconds" REG_DWORD "0x32"
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "MagnetismUpdateIntervalInMilliseconds" REG_DWORD "0x10"
::Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" "VelocityInDIPSPerSecond" REG_DWORD "0x168"
:: Klavye optimizasyon
::Call :RegSave Update "HKCU\Control Panel\Keyboard" "KeyboardDelay" REG_SZ 0
::Call :RegSave Update "HKCU\Control Panel\Keyboard" "KeyboardSpeed" REG_SZ 31
::Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" "KeyboardDataQueueSize" REG_DWORD 0x10
::Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Preference" "On" REG_SZ 0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "AutoRepeatDelay" REG_SZ 0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "AutoRepeatRate" REG_SZ 0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "BounceTime" REG_SZ 0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "DelayBeforeAcceptance" REG_SZ 0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "Flags" REG_SZ 0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "Last BounceKey Setting" REG_DWORD 0x0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "Last Valid Delay" REG_DWORD 0x0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "Last Valid Repeat" REG_DWORD 0x0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\Keyboard Response" "Last Valid Wait" REG_DWORD 0x0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\MouseKeys" "Flags" REG_SZ 0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\MouseKeys" "MaximumSpeed" REG_SZ 0
::Call :RegSave Update "HKCU\Control Panel\Accessibility\MouseKeys" "TimeToMaximumSpeed" REG_SZ 0
:: Telemetri
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" REG_DWORD 0x0
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" "Start" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" "IsCensusDisabled" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" "DontRetryOnError" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" "TaskEnableRun" REG_DWORD 0x1
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\DataCollection" "AllowTelemetry" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" REG_DWORD 0x0
Call :RegSave Update "HKCU\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" REG_DWORD 0x0
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "AITEnable" REG_DWORD 0x0
Call :RegSave Update "HKCU\Policies\Microsoft\Assistance\Client\1.0" "NoExplicitFeedback" REG_DWORD 0x1
Call :RegSave Update "HKCU\OFF_SOFTWARE\Microsoft\MediaPlayer\Preferences" "UsageTracking" REG_DWORD 0x0 :: MediaPlayer istatistiklerini gönderilmesini engeller
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" "fAllowToGetHelp" REG_DWORD 0x0 :: Uzak masaüstü asistanı
Call :RegSave Update "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" "fAllowFullControl" REG_DWORD 0x0 :: Uzak masaüstü asistanı
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" REG_DWORD 0x0 :: Geri bildirim
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "DoNotShowFeedbackNotifications" REG_DWORD 0x1 :: Geri bildirim
Call :RegSave Update "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" REG_DWORD 0x0 :: Özelleştirilmiş deneyim (Tailored experiences)
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled" REG_DWORD 0x1 :: Hata geri bildirim
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled" REG_DWORD 0x1 :: Hata geri bildirim
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" REG_DWORD 0x0 :: Müşteri Deneyim Programı
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" "CEIPEnable" REG_DWORD 0x0 :: Müşteri Deneyim Programı
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" REG_DWORD 0x1 :: Müşteri Deneyim Programı
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" REG_DWORD 0x1 :: Windows Hata Raporlama 
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" REG_DWORD 0x0 :: Wifi Hotspot Raporlama 
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" REG_DWORD 0x0 :: Windows Reklam Kimliği
Call :RegSave Update "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy" REG_DWORD 0x1 :: Reklam kimliği etkinliği
Call :RegSave Update "HKCU\Microsoft\Speech\Preferences" "ModeForOff" REG_DWORD 0x1 :: Çevrimiçi konuşma tanıma
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod" REG_DWORD 0x0 :: Geri Bildirim Devre Dışı Bırakılıyor...
Call :RegSave_Delete Update "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "PeriodInNanoSeconds" :: Geri Bildirim Devre Dışı Bırakılıyor...
Call :RegSave Update "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled" REG_DWORD 0x1 :: Windows Hata Raporunu Devre Dışı Bırakılıyor...
Call :RegSave Update "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" "EnableTransparency" REG_DWORD 0x0 :: Transparan özelliğni kapatır

bcdedit /deletevalue useplatformclock > NUL 2>&1
bcdedit /set {current} recoveryenabled no > NUL 2>&1
powercfg /h off > NUL 2>&1
bcdedit /set useplatformtick yes > NUL 2>&1
bcdedit /set disabledynamictick yes > NUL 2>&1
"%Location%\Bin\DevManView.exe" /disable "High precision event timer"

%Lang% :After_4
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Maps\MapsToastTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /DISABLE  > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /DISABLE  > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\DiskCleanup\SilentCleanup" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Time Zone\SynchronizeTimeZone" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\WaaSMedic\PerformRemediation" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\USBCeip" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /DISABLE > NUL 2>&1
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /DISABLE > NUL 2>&1
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyRefresh" /DISABLE > NUL 2>&1
schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /DISABLE > NUL 2>&1
schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /DISABLE > NUL 2>&1
goto :eof

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:RegSave
for /f "skip=2 tokens=2" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set regtur=%%a
for /f "skip=2 tokens=3" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set deger=%%a
reg query "%~2" /v "%~3" /s > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~2" /v "%~3" /t %regtur% /d "%deger%" /f ^> NUL 2^>^&1 >> %Location%\Bin\Extra\UpdateAfter\Backup\%~1.bat)
	if %errorlevel%==1 (echo reg delete "%~2" /v "%~3" /f ^> NUL 2^>^&1 >> %Location%\Bin\Extra\UpdateAfter\Backup\%~1.bat)
reg add "%~2" /v "%~3" /t %~4 /d "%~5" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~2" /v "%~3" /t %~4 /d "%~5" /f)
::-------------------------------------
::  Bu bölüm eklenecek regedit kaydını okur ve var olan değeri yedekler.
::  Eklenecek bütün regedit değerleri buraya yönlendirilir. Yalnızca %~3 değerinde boşluk varsa RegSave_space bölümüne yönlendirilir.
::  %~1 : Yedek kayıt dosya adı  | %~2: Regedit yolu  | %~3: Regedit Adı  | %~4: Regedit Türü  | %~5: Regedit Veri
::  Regtur: Regedit Türü  | deger: Regedit Veri
::-------------------------------------
goto :eof

:RegSave_ve
:: Varsayılan regedit değerleri için kullanılır.
for /f "skip=2 tokens=2" %%a in ('reg query "%~2" /ve 2^> NUL') do set regtur=%%a
for /f "skip=2 tokens=3" %%a in ('reg query "%~2" /ve 2^> NUL') do set deger=%%a
reg query "%~2" /ve > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~2" /ve /t %regtur% /d "%deger%" /f ^> NUL 2^>^&1 >> %Location%\Bin\Extra\UpdateAfter\Backup\%~1.bat)
	if %errorlevel%==1 (echo reg delete "%~2" /ve /f ^> NUL 2^>^&1 >> %Location%\Bin\Extra\UpdateAfter\Backup\%~1.bat)
reg add "%~2" /ve /t %~3 /d "%~4" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~2" /ve /t %~3 /d "%~4" /f)
::-------------------------------------
::  Bu bölüm eklenecek regedit kaydını okur ve var olan değeri yedekler.
::  %~3 değeri varsayılan olan regedit değerleri buraya yönlendirilir.
::  %~1 : Yedek kayıt dosya adı  | %~2: Regedit yolu  | %~3: Regedit Adı  | %~4: Regedit Türü  | %~5: Regedit Veri
::  Regtur: Regedit Türü  | deger: Regedit Veri
::-------------------------------------
goto :eof

:RegSave_Delete_Key
reg query %~2 > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~2" /f ^> NUL 2^>^&1 >> %Location%\Bin\Extra\UpdateAfter\Backup\%~1.bat)
reg delete "%~2" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg delete "%~2" /f)
::-------------------------------------
::  Bu bölüm silinecek regedit kaydını okur ve var olan değeri yedekler.
::  %~1 : Yedek kayıt dosya adı  | %~2: Regedit yolu
::-------------------------------------
goto :eof

:RegSave_Delete
for /f "skip=2 tokens=2" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set regtur=%%a
for /f "skip=2 tokens=3" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set deger=%%a
reg query "%~2" /v "%~3" /s > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~2" /v "%~3" /t %regtur% /d "%deger%" /f ^> NUL 2^>^&1 >> %Location%\Bin\Extra\UpdateAfter\Backup\%~1.bat)
reg delete "%~2" /v "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg delete "%~2" /v "%~3" /f)
::-------------------------------------
::  Bu bölüm silinecek regedit kaydını okur ve var olan değeri yedekler.
::  %~1 : Yedek kayıt dosya adı  | %~2: Regedit yolu | %~3: Regedit Adı
::  Regtur: Regedit Türü  | deger: Regedit Veri
::-------------------------------------
goto :eof

:RegSave_space
:: Regedit kaydında %~2 değerinde boşluk olduğunda bu bölüm kullanılır.
for /f "skip=2 tokens=3" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set regtur=%%a
for /f "skip=2 tokens=4" %%a in ('reg query "%~2" /v "%~3" 2^> NUL') do set deger=%%a
reg query "%~2" /v "%~3" /s > NUL 2>&1
	if %errorlevel%==0 (echo reg add "%~2" /v "%~3" /t %regtur% /d "%deger%" /f ^> NUL 2^>^&1 >> %Location%\Bin\Extra\UpdateAfter\Backup\%~1.bat)
	if %errorlevel%==1 (echo reg delete "%~2" /v "%~3" /f ^> NUL 2^>^&1 >> %Location%\Bin\Extra\UpdateAfter\Backup\%~1.bat)
reg add "%~2" /v "%~3" /t %~4 /d "%~5" /f > NUL 2>&1
	if %errorlevel%==1 (%NSudo% reg add "%~2" /v "%~3" /t %~4 /d "%~5" /f)
::-------------------------------------
::  Bu bölüm eklenecek regedit kaydını okur ve var olan değeri yedekler.
::  %~3 değerinde boşluk varsa RegSave_space bölümüne yönlendirilir.
::  %~1 : Yedek kayıt dosya adı  | %~2: Regedit yolu  | %~3: Regedit Adı  | %~4: Regedit Türü  | %~5: Regedit Veri
::  Regtur: Regedit Türü  | deger: Regedit Veri
::-------------------------------------
goto :eof

:Powershell
:: Powershell komutları kullanıldığında komut istemi compact moda girmektedir. Bunu önlemek için karakter takımları arasında geçiş yapıyoruz.
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof