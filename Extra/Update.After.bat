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

DEL /F /Q /A "%windir%\System32\CompatTelRunner.exe"
DEL /F /Q /A "%windir%\System32\drivers\MsSecFlt.sys"
DEL /F /Q /A "%windir%\System32\drivers\WdBoot.sys"
DEL /F /Q /A "%windir%\System32\drivers\WdFilter.sys"
DEL /F /Q /A "%windir%\System32\drivers\WdNisDrv.sys"
DEL /F /Q /A "%windir%\System32\smartscreen.exe"
DEL /F /Q /A "%windir%\System32\securityhealthhost.exe"
DEL /F /Q /A "%windir%\System32\securityhealthservice.exe"
DEL /F /Q /A "%windir%\System32\securityhealthsystray.exe"
DEL /F /Q /A "%windir%\System32\SgrmBroker.exe"
RD /S /Q "%programfiles%\Windows Defender Advanced Threat Protection"
RD /S /Q "%programfiles%\Windows Defender"
RD /S /Q "%programfiles%\Windows Security"
RD /S /Q "%programfiles(x86)%\Windows Security"
RD /S /Q "%programfiles(x86)%\Windows Defender"
RD /S /Q "%programfiles(x86)%\Windows Defender Advanced Threat Protection"
RD /S /Q "%programdata%\Microsoft\Windows Security Health"
RD /S /Q "%programdata%\Microsoft\Windows Defender Advanced Threat Protection"
RD /S /Q "%programdata%\Microsoft\Windows Defender"
RD /S /Q "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy"
:: Servisler
net stop SecurityHealthService
sc delete SecurityHealthService
net stop Sense
sc delete Sense
net stop SgrmBroker
sc delete SgrmBroker
net stop WdNisSvc
sc delete WdNisSvc
net stop WinDefend
sc delete WinDefend 
net stop wscsvc
sc delete wscsvc 
echo %R%[92m Hizmetler düzenleniyor...%R%[0m
:: Akıllı kart
sc config SCardSvr start= disabled
net stop SCardSvr
:: Akıllı kart cihaz numaralandırma hizmeti
sc config ScDeviceEnum start= disabled
net stop ScDeviceEnum
:: Akıllı kart kaldırma ilkesi
sc config SCPolicySvc start= disabled
net stop SCPolicySvc
:: Sertifika yayma (Akıllı Kart)
sc config CertPropSvc start= disabled
net stop CertPropSvc
:: All joyn yönlendirici hizmeti
sc config AJRouter start= disabled
net stop AJRouter
:: BrancCache istemcisi
sc config PeerDistSvc start= disabled
net stop PeerDistSvc
:: Coğrafi Location hizmeti
:: sc config Ifsvc start= disabled
:: net stop Ifsvc
:: Cüzdan Hizmeti
sc config WalletService start= disabled
net stop WalletService
:: Dağıtılmış bağlantı izleme istemcisi
sc config TrkWks start= disabled
net stop TrkWks
:: Bağlı kullanıcı deneyimleri ve Telemetrisi
net stop DiagTrack
sc delete DiagTrack
net stop dmwappushservice
sc delete dmwappushservice
net stop diagnosticshub.standartcollector.service
sc delete diagnosticshub.standartcollector.service
:: Diagnostic Execution Service (Teşhis ve Sorun Giderme)
net stop diagsvc
sc delete diagsvc
:: Dosya Geçmişi Hizmeti
:: sc config fhsvc start= disabled
:: net stop fhsvc
:: Ebeveyn Kontrolleri
sc config WpcMonSvc start= disabled
net stop WpcMonSvc
:: Fax
:: sc config fax start= disabled
:: net stop fax
:: Kişi hizmeti
sc config PimIndexMaintenanceSvc start= disabled
net stop PimIndexMaintenanceSvc
:: Kurumsal uygulama yönetimi hizmeti
sc config EntAppSvc start= disabled
net stop EntAppSvc
:: Edge güncelleme hizmeti
net stop edgeupdate
net stop edgeupdatem
net stop MicrosoftEdgeElevationService
sc config edgeupdate start= disabled
sc config edgeupdatem start= disabled
sc config MicrosoftEdgeElevationService start= disabled
:: Parekende Gösteri hizmeti
sc config RetailDemo start= disabled
net stop RetailDemo
:: Program Uyumluluk Yardımcısı Hizmeti
sc config PcaSvc start= disabled
net stop PcaSvc
:: Tanılama İlkesi Hizmeti
sc config DPS start= disabled
net stop DPS
:: Karma Gerçeklik
sc config SharedRealitySvc start= disabled
net stop SharedRealitySvc
sc config VacSvc start= disabled
net stop VacSvc
sc config perceptionsimulation start= disabled
net stop perceptionsimulation
sc config spectrum start= disabled
net stop spectrum
net stop MixedRealityOpenXRSvc
sc config MixedRealityOpenXRSvc start= disabled
:: Windows Hata Raporlama
sc config WerSvc start= disabled
net stop WerSvc
:: Windows Search
:: net stop WSearch
:: sc config WSearch start= disabled
:: Çevrimdışı dosyalar
sc config CscService start= disabled
net stop CscService
:: NFC/SE hizmeti
sc config SEMgrSvc start= disabled
net stop SEMgrSvc
:: Önerilen Sorun giderme hizmeti
net stop TroubleshootingSvc
sc config TroubleshootingSvc start= disabled
:: İndirilen haritalar yöneticisi
net stop MapsBroker
sc config MapsBroker start= disabled
:: Kişi verileri
net stop PimIndexMainteanceSvc
sc config PimIndexMainteanceSvc start= disabled
:: Natural Kimlik Doğrulaması
net stop NaturalAuthentication
sc config NaturalAuthentication start= disabled
:: Perakende gösteri hizmeti
net stop RetailDemo
sc config RetailDemo start= disabled
:: Resim alma olayları
:: net stop WiaRpc
:: sc config WiaRpc start= disabled
:: Windows resim alma (WIA) 
:: net stop StiSvc
:: sc config StiSvc start= disabled
:: Temalar
net stop Themes
sc config Themes start= disabled
:: Çalışma klasörleri istemcisi
net stop workfolderssvc
sc config workfolderssvc start= disabled
:: İkincil oturum açma 
:: sc config seclogon start= disabled
exit