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

:Value_3
set Choice=Dönüştürülecek Disk Harfi
goto :eof

:Value_4
set Choice=İşlem
goto :eof

:Value_5
set Choice=Kullanıcı Adı
goto :eof

:Value_6
set Choice=Lisans
goto :eof

:Value_7
set Choice=Uygulama adı
goto :eof

:Value_8
set Choice=Dakika olarak değer giriniz
goto :eof

:Value_9
set Choice=Hash Değerini Giriniz
goto :eof

:Value_10
set Choice=Kontrol edilecek dosya yolu
goto :eof

:Value_11
set hashcontrol=%R%[1;97m%R%[42m                               Hash değerleri aynı, dosya sorunsuz                             %R%[0m
goto :eof

:Value_12
set hashcontrol=%R%[1;97m%R%[41m                                  HATA! Hash değerleri farklı                                  %R%[0m
goto :eof

:Menu_1
:: Kılavuz çizgisi
echo            %R%[90m┌────────────────────────────────────┬───────────────────────────────────────┐%R%[0m
echo            %R%[90m│%R%[32m  1-%R%[37m Uygulama Yükleyici %R%[90m[M]         │%R%[32m   2-%R%[37m Hizmetleri Yönet%R%[90m [M]             │%R%[0m
echo            %R%[90m├────────────────────────────────────┼───────────────────────────────────────┤
echo            %R%[90m│%R%[32m  3-%R%[33m Hesap ve Lisans Yönetimi%R%[90m [M]   │%R%[32m  10-%R%[33m Ping Ölçer%R%[90m [*]                   │%R%[0m
echo            %R%[90m│%R%[32m  4-%R%[33m Zaman Ayarlı PC Kapat%R%[90m [M]      │%R%[32m  11-%R%[33m Güncelleme Sonrası Temizlik      %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  5-%R%[33m Appx - Güncelleme Yükleyici    %R%[90m│%R%[32m  12-%R%[33m Windows - Market Onar            %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  6-%R%[33m SHA-256 Karşılaştırıcı         %R%[90m│%R%[32m  13-%R%[33m Genel Temizlik                   %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  7-%R%[33m Fat32 to NTFS%R%[90m [M]              │%R%[32m%R%[90m%R%[90m                                       │%R%[0m
echo            %R%[90m│%R%[32m  8-%R%[33m Sistem Hakkında%R%[90m [*]            │%R%[32m%R%[90m%R%[90m                                       │%R%[0m
echo            %R%[90m│%R%[32m  9-%R%[33m Kayıtlı Wifi Bilgileri         %R%[90m│%R%[32m%R%[90m%R%[90m                                       │%R%[0m
echo            %R%[90m├────────────────────────────────────┼───────────────────────────────────────┤%R%[0m
echo            %R%[90m│%R%[32m  Z-%R%[36m İletişim                       %R%[90m│%R%[32m   X-%R%[36m Temizle ve Kapat                 %R%[90m│%R%[0m
echo            %R%[90m└────────────────────────────────────┴───────────────────────────────────────┘%R%[0m
goto :eof

:Menu_2
:: Kılavuz çizgisi
set xognitorenksx=%R%[90m►
echo.
echo   %R%[90m┌────────────────────────────┬──────────────────────────────┬──────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[32m    1-%R%[33m All in One Runtimes  %R%[90m│%xognitorenksx% Sıkıştırma                  %R%[90m│%xognitorenksx% Uzak Bağlantı                   %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Mesaj                     %R%[90m│%R%[32m   28-%R%[36m 7-Zip                  %R%[90m│%R%[32m   53-%R%[36m Teamviewer                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    2-%R%[36m Discord              %R%[90m│%R%[32m   29-%R%[36m Winrar                 %R%[90m│%R%[32m   54-%R%[36m AnyDesk                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    3-%R%[36m Whatsapp             %R%[90m│%xognitorenksx% Video-Ses Oynatıcı          %R%[90m│%xognitorenksx% Görev Çubuğu / Başlat Menüsü    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    4-%R%[36m Signal               %R%[90m│%R%[32m   30-%R%[33m K-Lite Codec           %R%[90m│%R%[32m   55-%R%[33m OpenShell                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    5-%R%[36m Telegram             %R%[90m│%R%[32m   31-%R%[33m VLC Media Player       %R%[90m│%R%[32m   56-%R%[33m TaskbarX                   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    6-%R%[36m Zoom                 %R%[90m│%R%[32m   32-%R%[33m PotPlayer              %R%[90m│%xognitorenksx% Diğer                           %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Oyun Kütüphane            %R%[90m│%R%[32m   33-%R%[33m Aimp                   %R%[90m│%R%[32m   57-%R%[36m Mem Reduct                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    7-%R%[33m Epic Games           %R%[90m│%R%[32m   34-%R%[33m Spotify                %R%[90m│%R%[32m   58-%R%[36m MSI Afterburner            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    8-%R%[33m Steam                %R%[90m│%xognitorenksx% İndirme Araçları            %R%[90m│%R%[32m   59-%R%[36m Everything                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    9-%R%[33m GOG Galaxy           %R%[90m│%R%[32m   35-%R%[36m Internet Download Man. %R%[90m│%R%[32m   60-%R%[36m Hamachi                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   10-%R%[33m Ubisoft Connect      %R%[90m│%R%[32m   36-%R%[36m Free Download Manager  %R%[90m│%R%[32m   61-%R%[36m Glasswire                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   11-%R%[33m EA Games/Origin      %R%[90m│%R%[32m   37-%R%[36m Qbittorrent            %R%[90m│%R%[32m   62-%R%[36m Stremio                    %R%[90m│%R%[0m
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
echo  ►%R%[92m Seçilenler:%R%[0m %multi%
goto :eof

:Menu_3
echo  %R%[90m┌────────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m      Kullanıcı Hesap Yönetimi                 Lisans Yönetimi          %R%[90m│%R%[0m
echo  %R%[90m├──────────────────────────────────────┬─────────────────────────────────┤%R%[0m
echo  %R%[90m│%R%[32m  1-%R%[33m Administrator Aktifleştir        %R%[90m│%R%[32m  8-%R%[36m Lisans Gir%R%[90m [ipk]            │%R%[0m
echo  %R%[90m│%R%[32m  2-%R%[33m Administrator Kapat              %R%[90m│%R%[32m  9-%R%[36m Lisans Durumu%R%[90m [dli]         │%R%[0m
echo  %R%[90m│%R%[32m  3-%R%[33m Admin grubuna kullanıcı ekle     %R%[90m│%R%[32m 10-%R%[36m Lisans Durumu Detaylı%R%[90m [dlv] │%R%[0m
echo  %R%[90m│%R%[32m  4-%R%[33m Yeni Kullanıcı Ekle              %R%[90m│%R%[32m 11-%R%[36m Lisans Süresini Öğren%R%[90m [xpr] │%R%[0m
echo  %R%[90m│%R%[32m  5-%R%[33m Kullanıcı Sil                    %R%[90m│%R%[32m 12-%R%[36m Lisans Sil%R%[90m [upk]            │%R%[0m
echo  %R%[90m│%R%[32m  6-%R%[33m Şifremi unuttum / değiştir       %R%[90m│%R%[32m 13-%R%[36m Lisans Süre Sıfırla%R%[90m [rearm] │%R%[0m
echo  %R%[90m│%R%[32m  7-%R%[33m Mevcut Kullanıcıları Göster%R%[90m [*]  │%R%[32m  X-%R%[37m Menu                        %R%[90m│%R%[0m
echo  %R%[90m└──────────────────────────────────────┴─────────────────────────────────┘%R%[0m
goto :eof

:Menu_4
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m            Otomatik Bilgisayar Kapatma            %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│                 %R%[32m 0.%R%[33m 30%R%[90m [Dakika]                   │%R%[0m
echo  %R%[90m│                 %R%[32m 1.%R%[33m  1%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 2.%R%[33m  2%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 3.%R%[33m  3%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 4.%R%[33m  4%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 5.%R%[33m  5%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 6.%R%[33m  6%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 7.%R%[33m  7%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 8.%R%[33m  8%R%[90m [Saat]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 9.%R%[33m  Manuel                       %R%[90m│%R%[0m
echo  %R%[90m│                 %R%[32m X.%R%[37m  Menu                         %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %ShutDownTime%
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
goto :eof

:Menu4_Value_1
set ShutDownTime=%R%[90m│                %R%[32m 10.%R%[31m  İptal Et                     %R%[90m│%R%[0m
goto :eof

:Menu4_Value_2
set ShutDownTime=%R%[90m│                                                   %R%[90m│%R%[0m
goto :eof

:Menu4_1
echo %R%[96m  Oto kapatma iptal edildi%R%[0m
goto :eof

:Update_1
echo %R%[92m Güncelleştirmeler kontrol ediliyor...%R%[0m
goto :eof

:Update_2
echo %R%[92m GÜNCELLEME %R%[0m
echo.
echo  • %R%[32m Yüklü Sürüm:%R%[37m %version%%R%[0m
echo  •%R%[32m Güncel Sürüm:%R%[37m %NewVersion%%R%[0m
echo.
echo %R%[96m Güncelleme işlemi başlıyor...%R%[0m
goto :eof

:Chocolatey_1
echo  ► %R%[33m Chocolatey yükleniyor...%R%[0m
goto :eof

:Runtimes_1
echo    %R%[92m All in One Runtimes yükleniyor... %R%[0m
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
echo  %R%[90m│%R%[92m                                     Windows / Store Onar                                       %R%[90m│%R%[0m
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

:Clear_1
echo  %R%[90m┌────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                       PC Temizleyici                       %R%[90m│%R%[0m
echo  %R%[90m└────────────────────────────────────────────────────────────┘%R%[0m
goto :eof

:Clear_2
echo %R%[92m   ico ve küçük resim belleği temizleniyor...%R%[0m
goto :eof

:Clear_3
echo %R%[92m   Temp dosyası temizleniyor...%R%[0m
goto :eof

:Clear_4
echo %R%[92m   SoftwareDistribution temizleniyor...%R%[0m
goto :eof

:Clear_5
echo %R%[92m   Prefetch temizleniyor...%R%[0m
goto :eof

:Clear_6
echo %R%[92m   Ekran Kartı Driver kalıntıları temizleniyor...%R%[0m
goto :eof

:Clear_7
echo %R%[92m   İnternet önbelleği temizleniyor...%R%[0m
goto :eof

:Installer_1
echo  %R%[90m┌──────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                     Appx - Güncelleme Yükleyici                  %R%[90m│%R%[0m
echo  %R%[90m└──────────────────────────────────────────────────────────────────┘%R%[0m
echo.
echo   %R%[37m Açılan klasör penceresinden%R%[0m
echo.
echo    •%R%[37m Güncelleme dosyalarını %R%[33m'Update'%R%[37m klasörüne%R%[0m
echo    •%R%[37m Appx dosyalarını %R%[33m'Appx'%R%[37m klasörüne atın%R%[0m
echo.
echo   %R%[32m İşleme devam etmek için herhangi bir tuşa basın%R%[0m
goto :eof

:Converter_1
echo   %R%[90m┌──────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[92m                      Fat32 to NTFS                       %R%[90m│%R%[0m
echo   %R%[90m├──────────────────────────────────────────────────────────┤%R%[0m
echo       %R%[32mHarf      İsim%R%[0m
goto :eof

:Hash_1
echo   %R%[1;97m%R%[46m                                 Hash değerleri karşılaştırılıyor                               %R%[0m
goto :eof

:Hash_2
echo  ► Girilen;
goto :eof

:Hash_3
echo  ► Bulunan;
goto :eof

:Menu_Road
echo  %R%[96m Menüye dönmek için herhangi bir tuşa basınız...%R%[0m
goto :eof

:Wifi_1
echo  %R%[90m┌─────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                    Kayıtlı Wifi Bilgileri                   %R%[90m│%R%[0m
echo  %R%[90m│%R%[92m                          (Archley)                          %R%[90m│%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────────────────┤%R%[0m
goto :eof

:Service_Menu_1
echo  %R%[90m┌─────────────────────────────────────────┬─────────────────────────────────────────┐%R%[0m
echo  %R%[90m│► Hizmetler                              │► Özellikler                             │%R%[0m
goto :eof
:Service_Menu_2
echo  %R%[90m│%R%[32m  1%DL% Bluetooth                    %R%[90m│%R%[32m 33%DR% Paint                        %R%[90m│%R%[0m
goto :eof
:Service_Menu_3
echo  %R%[90m│%R%[32m  2%DL% Telefon                      %R%[90m│%R%[32m 34%DR% Wordpad                      %R%[90m│%R%[0m
goto :eof
:Service_Menu_4
echo  %R%[90m│%R%[32m  3%DL% Yazıcı                       %R%[90m│%R%[32m 35%DR% Notepad                      %R%[90m│%R%[0m
goto :eof
:Service_Menu_5
echo  %R%[90m│%R%[32m  4%DL% Tarayıcı ve Kamera           %R%[90m│%R%[32m 36%DR% Adım Kaydedici               %R%[90m│%R%[0m
goto :eof
:Service_Menu_6
echo  %R%[90m│%R%[32m  5%DL% Kalem ve Dokunmatik          %R%[90m│%R%[32m 37%DR% Powershell-ISE               %R%[90m│%R%[0m
goto :eof
:Service_Menu_7
echo  %R%[90m│%R%[32m  6%DL% Fax                          %R%[90m│%R%[32m 38%DR% Matematik ifade tanıyıcı     %R%[90m│%R%[0m
goto :eof
:Service_Menu_8
echo  %R%[90m│%R%[32m  7%DL% Bitlocker Sürücü Şifreleme   %R%[90m│%R%[32m 39%DR% Windows Media Player         %R%[90m│%R%[0m
goto :eof
:Service_Menu_9
echo  %R%[90m│%R%[32m  8%DL% Tarifeli Ağlar               %R%[90m│%R%[32m 40%DR% Internet Explorer            %R%[90m│%R%[0m
goto :eof
:Service_Menu_10
echo  %R%[90m│%R%[32m  9%DL% IP Yardımcısı (IPV6)         %R%[90m│%R%[32m 41%DR% Linux için altyapı           %R%[90m│%R%[0m
goto :eof
:Service_Menu_11
echo  %R%[90m│%R%[32m 10%DL% Mobil Etkin Nokta            %R%[90m│%R%[32m 42%DR% Net Framework 3.5            %R%[90m│%R%[0m
goto :eof
:Service_Menu_12
echo  %R%[90m│%R%[32m 11%DL% Radyo ve Uçak Modu           %R%[90m│%R%[32m 43%DR% Net Framework 4.5            %R%[90m│%R%[0m
goto :eof
:Service_Menu_13
echo  %R%[90m│%R%[32m 12%DL% Windows Şimdi Bağlan (WPS)   %R%[90m│%R%[32m 44%DR% DirectPlay                   %R%[90m│%R%[0m
goto :eof
:Service_Menu_14
echo  %R%[90m│%R%[32m 13%DL% Wifi                         %R%[90m│%R%[32m 45%DR% CompactOS%R%[90m Windows Sıkıştırma │%R%[0m
goto :eof
:Service_Menu_15
echo  %R%[90m│%R%[32m 14%DL% Konum                        %R%[90m│%R%[32m 46%DR% Eski Fotoğraf Görüntüleyici  %R%[90m│%R%[0m
goto :eof
:Service_Menu_16
echo  %R%[90m│%R%[32m 15%DL% Miracast                     %R%[90m│%R%[32m 47%DR% Eski ALT + TAB               %R%[90m│%R%[0m
goto :eof
:Service_Menu_17
echo  %R%[90m│%R%[32m 16%DL% Akış                         %R%[90m│%R%[32m 48%DR% Güncellemeleri 2050'ye ertele%R%[90m│%R%[0m
goto :eof
:Service_Menu_18
echo  %R%[90m│%R%[32m 17%DL% Uzak Masaüstü                %R%[90m│► Optimizasyon                           %R%[90m│%R%[0m
goto :eof
:Service_Menu_19
echo  %R%[90m│%R%[32m 18%DL% Hızlı Getir (Sysmain)        %R%[90m│%R%[32m 49%DR% Svchost                      %R%[90m│%R%[0m
goto :eof
:Service_Menu_20
echo  %R%[90m│%R%[32m 19%DL% Hızlı Başlat (Hibernate)     %R%[90m│%R%[32m 50%DR% Oyun Modu                    %R%[90m│%R%[0m
goto :eof
:Service_Menu_21
echo  %R%[90m│%R%[32m 20%DL% Windows Search               %R%[90m│%R%[32m 51%DR% CPU Çekirdek Uyku Modu       %R%[90m│%R%[0m
goto :eof
:Service_Menu_22
echo  %R%[90m│%R%[32m 21%DL% Xbox                         %R%[90m│%R%[32m 52%DR% Gereksiz Aygıtlar            %R%[90m│%R%[0m
goto :eof
:Service_Menu_23
echo  %R%[90m│%R%[32m 22%DL% Karma Gerçeklik (VR)         %R%[90m│► Sağ-Tık Yöneticisi                     %R%[90m│%R%[0m
goto :eof
:Service_Menu_24
echo  %R%[90m│%R%[32m 23%DL% Tanı İlkesi (Uyumluluk)      %R%[90m│%R%[32m 53%DR% Sahiplik Al                  %R%[90m│%R%[0m
goto :eof
:Service_Menu_25
echo  %R%[90m│%R%[32m 24%DL% Hızlı Kullanıcı Değiştir     %R%[90m│%R%[32m 54%DR% Yönet                        %R%[90m│%R%[0m
goto :eof
:Service_Menu_26
echo  %R%[90m│%R%[32m 25%DL% Yazı Tipi Önbelliği          %R%[90m│%R%[32m 55%DR% Çalıştırma Seçenekleri       %R%[90m│%R%[0m
goto :eof
:Service_Menu_27
echo  %R%[90m│%R%[32m 26%DL% Insider                      %R%[90m│%R%[32m 56%DR% Terminal%R%[90m (Win11)             │%R%[0m
goto :eof
:Service_Menu_28
echo  %R%[90m│%R%[32m 27%DL% Biyometrik                   %R%[90m│%R%[32m 57%DR% Eski Menu%R%[90m (Win11)            │%R%[0m
goto :eof
:Service_Menu_29
echo  %R%[90m│%R%[32m 28%DL% Hyper-V                      %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_30
echo  %R%[90m│%R%[32m 29%DL% Sistem Geri Yükleme          %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_31
echo  %R%[90m│%R%[32m 30%DL% Driver Yükle - Güncelle      %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_32
echo  %R%[90m│%R%[32m 31%DL% Bellek Sıkıştırma            %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_33
echo  %R%[90m│%R%[32m 32%DL% Disk Birleştirme (Defrag)    %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof

:Service_Menu_On_Off
:: Aç kapat olarak kullanılacak kısayollar yazılmalıdır
set E1=A
set D1=K
goto :eof

:Value_13
if %~1 EQU 0 (set Choice=açılıyor)
if %~1 EQU 1 (set Choice=kapatılıyor)
goto :eof

:Service_1
echo  ►%R%[96m Bluetooth hizmeti %Choice%...%R%[0m
goto :eof

:Service_2
echo  ►%R%[96m Telefon hizmeti %Choice%...%R%[0m
goto :eof

:Service_3
echo  ►%R%[96m Yazıcı hizmetleri %Choice%...%R%[0m
goto :eof

:Service_4
echo  ►%R%[96m Tarayıcı ve Kamera hizmetleri %Choice%...%R%[0m
goto :eof

:Service_5
echo  ►%R%[96m Dokunmatik Klavye ve Kalem hizmeti %Choice%...%R%[0m
goto :eof

:Service_6
echo  ►%R%[96m Fax hizmeti %Choice%...%R%[0m
goto :eof

:Service_7
echo  ►%R%[96m Bitlocker hizmeti %Choice%...%R%[0m
goto :eof

:Service_8
echo  ►%R%[96m Tarifeli ağlar hizmeti %Choice%...%R%[0m
goto :eof

:Service_9
echo  ►%R%[96m IP yardımcısı hizmeti %Choice%...%R%[0m
goto :eof

:Service_10
echo  ►%R%[96m Mobil etkin nokta hizmeti %Choice%...%R%[0m
goto :eof

:Service_11
echo  ►%R%[96m Radyo yönetim ve uçak modu hizmeti %Choice%...%R%[0m
goto :eof

:Service_12
echo  ►%R%[96m Windows Şimdi Bağlan hizmeti %Choice%...%R%[0m
goto :eof

:Service_13
echo  ►%R%[96m Wifi hizmeti %Choice%...%R%[0m
goto :eof

:Service_14
echo  ►%R%[96m Konum hizmeti %Choice%...%R%[0m
goto :eof

:Service_15
echo  ►%R%[96m Miracast hizmeti %Choice%...%R%[0m
goto :eof

:Service_16
echo  ►%R%[96m Medya Akış hizmeti %Choice%...%R%[0m
goto :eof

:Service_17
echo  ►%R%[96m Uzak Masaüstü hizmetleri %Choice%...%R%[0m
goto :eof

:Service_18
echo  ►%R%[96m Hızlı Getir hizmeti %Choice%...%R%[0m
goto :eof

:Service_19
echo  ►%R%[96m Hızlı başlat %Choice%...%R%[0m
goto :eof

:Service_20
echo  ►%R%[96m Windows Search hizmeti %Choice%...%R%[0m
goto :eof

:Service_21
echo  ►%R%[96m Xbox hizmeti %Choice%...%R%[0m
goto :eof

:Service_22
echo  ►%R%[96m Karma Gerçeklik hizmeti %Choice%...%R%[0m
goto :eof

:Service_23
echo  ►%R%[96m Tanı ilkesi hizmeti %Choice%...%R%[0m
goto :eof

:Service_24
echo  ►%R%[96m Hızlı Kullanıcı Değiştirme hizmeti %Choice%...%R%[0m
goto :eof

:Service_25
echo  ►%R%[96m Yazı Tipi Önbellek hizmeti %Choice%...%R%[0m
goto :eof

:Service_26
echo  ►%R%[96m Windows Insider hizmeti %Choice%...%R%[0m
goto :eof

:Service_27
echo  ►%R%[96m Windows Biyometrik hizmeti %Choice%...%R%[0m
goto :eof

:Service_28
echo  ►%R%[96m Hyper-V hizmeti %Choice%...%R%[0m
goto :eof

:Service_29
echo  ►%R%[96m Sistem geri yükleme hizmeti %Choice%...%R%[0m
goto :eof

:Service_30
echo  ►%R%[96m Driver Yükle/Güncelle hizmeti %Choice%...%R%[0m
goto :eof

:Service_31
echo  ►%R%[96m Bellek sıkıştırma hizmeti %Choice%...%R%[0m
goto :eof

:Service_32
echo  ►%R%[96m Disk Birleştirme hizmeti %Choice%...%R%[0m
goto :eof

:Service_33
echo  ►%R%[96m Paint %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_34
echo  ►%R%[96m WordPad %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_35
echo  ►%R%[96m Notepad %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_36
echo  ►%R%[96m Adım Kaydedici %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_37
echo  ►%R%[96m Powershell-ISE %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_38
echo  ►%R%[96m Matematik ifade tanıyıcı %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_39
echo  ►%R%[96m Windows Media Player %Choice%...%R%[0m
goto :eof

:Service_40
echo  ►%R%[96m Internet Explorer %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_41
echo  ►%R%[96m Windows için Linux Altyapı desteği %Choice%...%R%[0m
goto :eof

:Service_42
echo  ►%R%[96m Net Framework 3.5 %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_43
echo  ►%R%[96m Net Framework 4.5+ %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_44
echo  ►%R%[96m DirectPlay %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_45
echo  ►%R%[96m CompactOS %Choice%...%R%[0m
goto :eof

:Service_46
echo  ►%R%[96m Windows Fotoğraf Görüntüleyici %Choice%...%R%[0m
goto :eof

:Service_47
echo  ►%R%[96m Eski Alt + Tab %Choice%...%R%[0m
goto :eof

:Service_48
echo  ►%R%[96m Güncelleştirmeleri 2050 yılına erteleme %Choice%...%R%[0m
goto :eof

:Service_49
echo  ►%R%[96m Svchost Optimizasyonu %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_50
echo  ►%R%[96m Oyun Modu %Choice%...%R%[0m
goto :eof

:Service_51
echo  ►%R%[96m İşlemci çekirdek bekleme hizmeti %Choice%...%R%[0m
goto :eof

:Service_52
echo  ►%R%[96m Gereksiz Aygıtlar %Choice%...%R%[0m
goto :eof

:Service_53
set Value2=Sahiplik Al
echo  ►%R%[96m %Value2% %Choice%...%R%[0m
goto :eof

:Service_54
set Value2=Yönet
set Value3=Denetim Masası
set Value4=Ayarlar
set Value5=Güç Yönetimi
set Value6=Görev Yöneticisi
set Value7=Komut İstemi
set Value8=Regedit
set Value9=Explorer Reset
set Value10=Temp Temizle
set Value11=Simge Önbelliğini Temizle
echo  ►%R%[96m %Value2% %Choice%...%R%[0m
goto :eof

:Service_55
set Value2=Çalıştırma seçenekleri
set Value3=Yüksek
set Value4=Normal Üstü
set Value5=Normal
set Value6=Normal Altı
set Value7=Düşük
echo  ►%R%[96m %Value2% %Choice%...%R%[0m
goto :eof

:Service_56
echo  ►%R%[96m Terminal %Choice%...%R%[0m
goto :eof
:Service56_1
echo %R%[91m Windows 10'da kullanılamaz%R%[0m
goto :eof

:Service_57
echo  ►%R%[96m Eski Windows menüsü %Choice%...%R%[0m
goto :eof

:Winget_1
echo  %R%[31m HATA! WINGET BULUNAMADI
echo.
echo  Lütfen "DesktopAppInstaller" kurunuz.%R%[0m
echo.
echo  Ana menü için herhangi bir tuşa basınız...
goto :eof

:Error_1
echo %R%[31m HATA 1
echo.
echo HATA! Klasör yolunda Türkçe karakter var
echo.
echo Toolbox kapanıyor...%R%[0m
timeout /t 4 /nobreak > NUL
goto :eof

:Error_2
echo %R%[31m HATA 2
echo.
echo HATA! Klasör yolunda boşluk var
echo.
echo Toolbox kapanıyor...%R%[0m
timeout /t 4 /nobreak > NUL
goto :eof

:Error_6
echo %R%[31m HATA 6
echo.
echo HATA! Sistem mimarisi x64 değil
echo.
echo Toolbox kapanıyor...%R%[0m
timeout /t 4 /nobreak > NUL
goto :eof


:Extra_Value_1
set Value5=UEFI-GPT
goto :eof

:Extra_Value_2
set Value5=BIOS-MBR
goto :eof

:Extra_Value_3
set Value1=RAM
goto :eof

:Extra_Value_4
set Value1=GPU
goto :eof

:Extra_1
echo                               %R%[92m Sistem ve donanım bilgisi alınıyor%R%[0m
echo.
echo                                      %R%[92m Lütfen bekleyiniz...%R%[0m
goto :eof

:Extra_2
echo  %R%[90m┌───────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                                       SİSTEM HAKKINDA                                     %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────────────────────────────────────────────┤%R%[0m
goto :eof

:Extra_3
echo   ►%R%[32m Bilgisayar:%R%[37m %Value2% %R%[0m
echo   ►%R%[32m Kullanıcı :%R%[37m %Value1% %R%[0m
goto :eof

:Extra_4
echo   ►%R%[32m Format Tarihi:%R%[37m %Value1%%R%[90m ^| %R%[32mSaat Dilimi:%R%[37m %Value2%%R%[90m ^|%R%[37m %Value3% - %Value4%%R%[0m
goto :eof

:Extra_5
echo   ►%R%[32m Sistem:%R%[37m %Value1%%R%[90m ^| %R%[37mx%Value2%%R%[90m ^| %R%[37m%Value4%%R%[90m ^| %R%[37m%Value3%%R%[90m ^| %R%[37m%Value5%%R%[0m
goto :eof

:Extra_6
echo   ►%R%[32m Anakart:%R%[37m %Value1%%Value2%%R%[90m ^| %R%[32mSoket:%R%[37m%Value3%%R%[90m ^| %R%[32mBios:%R%[37m%Value4%%R%[0m
goto :eof

:Extra_7
echo   ►%R%[32m CPU:%R%[37m%Value1% %R%[0m
echo   ►%R%[32m CPU Çekirdek:%R%[37m%Value2% %R%[90m^|%R%[32m Threads:%R%[37m%Value3% %R%[90m^|%R%[32m L2:%R%[37m%Value4%%R%[36m MB%R%[90m ^|%R%[32m L3:%R%[37m%Value5%%R%[36m MB%R%[90m ^|%R%[32m CPU MHZ:%R%[37m%Value6%%R%[0m
goto :eof

:Extra_8
echo   ►%R%[32m GPU:%R%[37m%Value1%%R%[90m ^|%R%[32m VRAM:%R%[37m%Value2%%R%[36m GB%R%[0m 
echo   ►%R%[32m GPU Driver:%R%[37m%Value3%%R%[90m ^| %R%[32mDriver Tarih:%R%[37m %Value4%%R%[0m
goto :eof

:Extra_9
echo   ►%R%[32m Monitör:%R%[37m%Value1% %R%[90m^|%R%[37m%Value4% %R%[36mHZ%R%[90m ^|%R%[37m%Value2% %R%[36mx%R%[37m%Value3%%R%[0m
goto :eof

:Extra_10
echo   ►%R%[32m RAM:%R%[37m %Value2% %R%[36mGB%R%[90m ^|%R%[37m%Value3% %R%[36m MHZ%R%[90m ^|%R%[32m Soket:%R%[37m %Value1% %R%[0m
goto :eof

:Extra_11
echo          %R%[32m Marka - Model - Kapasite - MHZ%R%[0m
goto :eof

:Extra_12
echo         %R%[32m Model - VRAM - Driver%R%[0m
goto :eof

:Extra_13
echo %R%[92m Ana menü için herhangi bir tuşa basınız.%R%[0m
goto :eof

:Ping_1
echo  %R%[90m┌────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m             Hazır Ping Ölçümleri           %R%[90m│%R%[0m
echo  %R%[90m├────────────────────────────────────────────┤%R%[0m
goto :eof

:Ping_2
echo  %R%[90m├────────────────────────────────────────────┤%R%[0m
echo  %R%[32m                   X-%R%[37m Menü%R%[0m
echo  %R%[90m└────────────────────────────────────────────┘%R%[0m
goto :eof

:Ping_Value_1
set Choice=[Site/IP]
goto :eof

:After_1
echo %R%[92m Güncelleme sonrası temizlik işlemi yapılıyor.%R%[0m
echo %R%[92m Defender dosyaları siliniyor...%R%[0m
goto :eof

:After_2
echo %R%[92m Hizmetler düzenleniyor...%R%[0m
goto :eof

:After_3
echo %R%[92m Regedit kayıtları düzenleniyor.%R%[0m
goto :eof

:After_4
echo %R%[92m Görev zamanlayıcısında düzenlemeler yapılıyor.%R%[0m
goto :eof