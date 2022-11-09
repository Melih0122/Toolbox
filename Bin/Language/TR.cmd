::
:: Türkçe Dil
:: ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ►
:: #########################################################################################################
:: Yönlendirme yapılır
Call %*
goto :eof
:: #########################################################################################################
:: ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄

:Value_1
set Choice=Seçim
goto :eof

:Value_2
set Choice=Çoklu Seçim
goto :eof

:Menu_1
:: Kılavuz çizgisi
::------------------------------------------------------------------------------------------------------
echo               %R%[90m┌─────────────────────────────────┬────────────────────────────────────┐%R%[0m
echo               %R%[90m│%R%[32m  1-%R%[37m Uygulama Yükleyici %R%[90m[M]      │%R%[32m   2-%R%[37m Hizmetleri Yönet%R%[90m [M]          │%R%[0m
echo               %R%[90m├─────────────────────────────────┼────────────────────────────────────┤
echo               %R%[90m│%R%[32m  3-%R%[33m Görev Çubuğu Yöneticisi     %R%[90m│%R%[32m  10-%R%[33m Ping Ölçer %R%[90m [*]               │%R%[0m
echo               %R%[90m│%R%[32m  4-%R%[33m Hesap ve Lisans Yönetimi%R%[90m[M] │%R%[32m  11-%R%[33m Fat32 to NTFS%R%[90m [M]             │%R%[0m
echo               %R%[90m│%R%[32m  5-%R%[33m Güncelleme Sonrası Temizlik %R%[90m│%R%[32m  12-%R%[33m Zaman Ayarlı PC Kapat%R%[90m [M]     │%R%[0m
echo               %R%[90m│%R%[32m  6-%R%[33m Windows - Market Onar       %R%[90m│%R%[32m  13-%R%[33m Appx - Güncelleme Yükleyici   %R%[90m│%R%[0m
echo               %R%[90m│%R%[32m  7-%R%[33m Genel Temizlik              %R%[90m│%R%[32m  14-%R%[33m Hash Karşılaştırıcı%R%[90m [SHA-256] │%R%[0m
echo               %R%[90m│%R%[32m  8-%R%[33m Sistem Hakkında%R%[90m [*]         │%R%[32m  15-%R%[33m Kaldırılamayan Uygulamalar%R%[90m [M]│%R%[0m
echo               %R%[90m│%R%[32m  9-%R%[33m Kayıtlı Wifi Bilgileri      %R%[90m│%R%[32m  16-%R%[33m İşlem Önceliği%R%[90m [M]            │%R%[0m
echo               %R%[90m├─────────────────────────────────┼────────────────────────────────────┤%R%[0m
echo               %R%[90m│%R%[32m  Z-%R%[36m İletişim                    %R%[90m│%R%[32m   X-%R%[36m Temizle ve Kapat              %R%[90m│%R%[0m
echo               %R%[90m└─────────────────────────────────┴────────────────────────────────────┘%R%[0m
goto :eof

:Menu_2
:: Kılavuz çizgisi
::------------------------------------------------------------------------------------------------------
set xognitorenksx=%R%[90m►
echo   %R%[90m┌──────────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[1;97m%R%[100m                             Online Katılımsız Uygulama Yükleyici                             %R%[0m%R%[90m│%R%[0m
echo   %R%[90m├────────────────────────────┬──────────────────────────────┬──────────────────────────────────┤%R%[0m
echo   %R%[90m│%R%[32m    1-%R%[33m All in One Runtimes  %R%[90m│%xognitorenksx% Sıkıştırma                  %R%[90m│%xognitorenksx% Uzak Bağlantı                   %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Mesaj                     %R%[90m│%R%[32m   28-%R%[36m 7-Zip                  %R%[90m│%R%[32m   53-%R%[36m Teamviewer                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    2-%R%[36m Discord              %R%[90m│%R%[32m   29-%R%[36m Winrar                 %R%[90m│%R%[32m   54-%R%[36m AnyDesk                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    3-%R%[36m Whatsapp             %R%[90m│%xognitorenksx% Video-Ses Oynatıcı          %R%[90m│%xognitorenksx% Görev Çubuğu / Başlat Menüsü    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    4-%R%[36m Signal               %R%[90m│%R%[32m   30-%R%[33m K-Lite Codec           %R%[90m│%R%[32m   55-%R%[33m OpenShell                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    5-%R%[36m Telegram             %R%[90m│%R%[32m   31-%R%[33m VLC Media Player       %R%[90m│%R%[32m   56-%R%[33m TaskbarX                   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    6-%R%[36m Zoom                 %R%[90m│%R%[32m   32-%R%[33m PotPlayer              %R%[90m│%xognitorenksx% Diğer                           %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Oyun Kütüphane            %R%[90m│%R%[32m   33-%R%[33m Aimp                   %R%[90m│%R%[32m   57-%R%[33m Mem Reduct                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    7-%R%[33m Epic Games           %R%[90m│%R%[32m   34-%R%[33m Spotify                %R%[90m│%R%[32m   58-%R%[33m MSI Afterburner            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    8-%R%[33m Steam                %R%[90m│%xognitorenksx% İndirme Araçları            %R%[90m│%R%[32m   59-%R%[33m Everything                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    9-%R%[33m GOG Galaxy           %R%[90m│%R%[32m   35-%R%[36m Internet Download Man. %R%[90m│%R%[32m   60-%R%[33m Hamachi                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   10-%R%[33m Ubisoft Connect      %R%[90m│%R%[32m   36-%R%[36m Free Download Manager  %R%[90m│%R%[32m   61-%R%[33m Glasswire                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   11-%R%[33m EA Games/Origin      %R%[90m│%R%[32m   37-%R%[36m Qbittorrent            %R%[90m│%R%[32m   62-%R%[33m Stremio                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   12-%R%[33m Playnite             %R%[90m│%xognitorenksx% Belgeler                    %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Tarayıcı                  %R%[90m│%R%[32m   38-%R%[33m Libre Office           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   13-%R%[36m Google Chrome        %R%[90m│%R%[32m   39-%R%[33m Adobe Reader           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   14-%R%[36m Mozilla Firefox      %R%[90m│%R%[32m   40-%R%[33m PDF X-Change           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   15-%R%[36m Brave                %R%[90m│%R%[32m   41-%R%[33m Calibre                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   16-%R%[36m Microsoft Edge       %R%[90m│%xognitorenksx% Geliştirme                  %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   17-%R%[36m OperaGX              %R%[90m│%R%[32m   42-%R%[33m Notepad++              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Multimedya                %R%[90m│%R%[32m   43-%R%[36m Python                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   18-%R%[33m Kdenlive             %R%[90m│%R%[32m   44-%R%[36m Visual Studio Code     %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   19-%R%[33m Openshot             %R%[90m│%R%[32m   45-%R%[36m Github                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   20-%R%[33m Shoutcut             %R%[90m│%R%[32m   46-%R%[36m Node.JS                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   21-%R%[33m Krita                %R%[90m│%R%[32m   47-%R%[36m Unity Hub              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   22-%R%[33m Gimp                 %R%[90m│%R%[32m   48-%R%[36m Blender                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   23-%R%[33m OBS Studio           %R%[90m│%xognitorenksx% Temizlik                    %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   24-%R%[33m ShareX               %R%[90m│%R%[32m   49-%R%[33m Unlocker               %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   25-%R%[33m Audacity             %R%[90m│%R%[32m   50-%R%[33m Wise Care 365          %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   26-%R%[33m HandBrake            %R%[90m│%R%[32m   51-%R%[33m Hibit Uninstaller      %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   27-%R%[33m FileConverter        %R%[90m│%R%[32m   52-%R%[33m Revo Uninstaller       %R%[90m│%R%[32m    X-%R%[37m Menu                       %R%[90m│%R%[0m
echo   %R%[90m└────────────────────────────┴──────────────────────────────┴──────────────────────────────────┘%R%[0m
goto :eof

:Menu2_1
echo  ►%R%[92m Seçilenler:%R%[0m %$multi%
goto :eof

:Update_1
echo %R%[92m Güncelleştirmeler kontrol ediliyor...%R%[0m
goto :eof

:Update_2
echo %R%[1;97m%R%[100m GÜNCELLEME MEVCUT %R%[0m
echo.
echo  • %R%[32m Yüklü Sürüm:%R%[37m %version%%R%[0m
echo  •%R%[32m Güncel Sürüm:%R%[37m %%b%R%[0m
echo.
echo %R%[96m Güncelleme işlemi başlıyor...%R%[0m
goto :eof

:Chocolatey_1
echo  ► %R%[33m Chocolatey yükleniyor...%R%[0m
goto :eof

:FilesError_1
echo                                 %R%[41m EKSİK DOSYA %R%[0m
echo.
echo                          %R%[41m Toolbox'ı yeniden indiriniz %R%[0m
echo.
echo               %R%[31m[##################### HATA #####################]%R%[0m
goto :eof

:Runtimes_1
echo    %R%[1;97m%R%[42m All in One Runtimes yükleniyor... %R%[0m
goto :eof

:Runtimes_2
echo    ►%R%[33m Net Framework 3.5%R%[0m yükleniyor...
goto :eof

:Runtimes_3
echo    ►%R%[33m Net Framework 4.5+%R%[0m yükleniyor...
goto :eof

:Runtimes_4
echo    ►%R%[33m DirectPlay%R%[0m yükleniyor...
goto :eof

:Repair_1
echo  %R%[90m┌────────────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[1;97m%R%[100m                                     Windows / Store Onar                                       %R%[0m%R%[90m│%R%[0m
echo  %R%[90m└────────────────────────────────────────────────────────────────────────────────────────────────┘%R%[0m
goto :eof

:Repair_2
echo %R%[92m   Simge hataları onarılıyor...%R%[0m
goto :eof

:Repair_3
echo %R%[92m   Sfc /scannow komutu çalışıyor...%R%[0m
goto :eof

:Repair_4
echo %R%[92m   WinSxS Temizleniyor...%R%[0m
goto :eof

:Repair_5
echo %R%[92m   DISM /Online /Cleanup-Image /RestoreHealth komutu çalıştırılıyor...%R%[0m
goto :eof

:Repair_6
echo %R%[92m   SoftwareDistribution temizleniyor...%R%[0m
goto :eof

:Repair_7
echo %R%[92m   Microsoft Store onarılıyor...%R%[0m
goto :eof

:Repair_8
echo %R%[92m   DLL dosyaları kontrol ediliyor...%R%[0m
goto :eof

:Repair_9
echo %R%[92m   Mağaza resetleniyor...%R%[0m
goto :eof

:Repair_10
echo %R%[92m   Genel Onarım yapılıyor...%R%[0m
goto :eof