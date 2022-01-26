::                               NOTEPAD++ > Kodlama > Karakter Takçmç > TÅrkáe > OEM857
:: ==============================================================================================================================
::                                               HAZIRLAYAN 
::
::       ˛˛˛˛˛˛˛   ˛˛˛˛˛˛   ˛˛    ˛˛ ˛˛˛˛ ˛˛˛˛˛˛˛˛  ˛˛˛˛˛˛˛  ˛˛˛˛˛˛˛˛  ˛˛˛˛˛˛˛˛ ˛˛    ˛˛ ˛˛    ˛˛  ˛˛˛˛˛˛
::      ˛˛     ˛˛ ˛˛    ˛˛  ˛˛˛   ˛˛  ˛˛     ˛˛    ˛˛     ˛˛ ˛˛     ˛˛ ˛˛       ˛˛˛   ˛˛ ˛˛   ˛˛  ˛˛    ˛
::      ˛˛     ˛˛ ˛˛        ˛˛˛˛  ˛˛  ˛˛     ˛˛    ˛˛     ˛˛ ˛˛     ˛˛ ˛˛       ˛˛˛˛  ˛˛ ˛˛  ˛˛   ˛˛
::      ˛˛     ˛˛ ˛˛   ˛˛˛˛ ˛˛ ˛˛ ˛˛  ˛˛     ˛˛    ˛˛     ˛˛ ˛˛˛˛˛˛˛˛  ˛˛˛˛˛˛   ˛˛ ˛˛ ˛˛ ˛˛˛˛˛      ˛˛˛˛˛˛ 
::      ˛˛     ˛˛ ˛˛    ˛˛  ˛˛  ˛˛˛˛  ˛˛     ˛˛    ˛˛     ˛˛ ˛˛   ˛˛   ˛˛       ˛˛  ˛˛˛˛ ˛˛  ˛˛         ˛˛
::      ˛˛     ˛˛ ˛˛    ˛˛  ˛˛   ˛˛˛  ˛˛     ˛˛    ˛˛     ˛˛ ˛˛    ˛˛  ˛˛       ˛˛   ˛˛˛ ˛˛   ˛˛  ˛˛    ˛˛
::       ˛˛˛˛˛˛˛   ˛˛˛˛˛˛   ˛˛    ˛˛ ˛˛˛˛    ˛˛     ˛˛˛˛˛˛˛  ˛˛     ˛˛ ˛˛˛˛˛˛˛˛ ˛˛    ˛˛ ˛˛    ˛˛  ˛˛˛˛˛˛ 
::
::  Hazçrlayan: HÅseyin UZUNYAYLA / OgnitorenKs
::  Toolbox'ç hazçrladçßçm sistemlerde bazç konularda kullançcçlara yardçmcç olmasç iáin hazçrlamçütçm.
::  Zamanla yaptçßçm geliütirmeler sonucu Toolbox'a kullançcç dostu biráok bîlÅm ekledim.
::  Toolbox sÅrekli olarak gÅncellenecektir. Toolbox'ç indirebileceßiniz siteler;
::   www.technopat.net\Sosyal 
::   ognitorenks.blogspot.com (ûu an bu bîlÅm pasif, áalçümalarçm devam ediyor.)
::  Bu iki site harici herhangi bir site de paylaüçm yapmayacaßçm. Harici bir sayfa Åzerinden indirmeyiniz
::  Farklç istek ve înerileriniz olursa, òletiüim;
::   Discord: OgnitorenKs#2737 
::   Mail: ognitorenks@gmail.com
::   
::   Site: ognitorenks.blogspot.com 
::   Site: www.technopat.net\Sosyal (Yeni bir konu aáçp yada hazçrladçßçm konularda @OgnitorenKs yazarak etiketleyebilirsiniz) 
:: ============================================================================================================================== 
echo off
cls
title OgnitorenKs Windows Edition

setlocal
call :setESC
Call :menuRGB

:: ==============================================================================================================================
::  RENK HARòTASI
::  -------------
:: %RGB%^[32m > ISO okuma bîlÅmlerinde bilgi bîlÅmlerinde kullançlçyor. (Yeüil)
:: %RGB%^[33m > Sarç renkli bîlÅmler. MenÅ iáindeki sarç renkli bîlÅmler
:: %RGB%^[36m > Mavi renkli bîlÅmler. MenÅ iáindeki mavi renkli bîlÅmler
:: %RGB%^[37m > ISO okuma bîlÅmlerinde kullançlçyor                                                                                                        
:: %RGB%^[90m > Gri renkli bîlÅmler. MenÅ iáindeki gri renkli bîlÅmler(Äeráeveler dahil deßil)
:: %RGB%^[92m > Deßiüken rengi (Yeüil). Kullançcçdan bir deßer girmesi istenilen bîlÅmlere aittir.
:: %RGB%^[96m > òkinci deßiüken veya bilgi rengi (Aáçk Mavi) | MenÅye yansçyan bilgi mesajlarç. Ana ekrana dÅüecek olan ikinci deßiüken bîlÅmlerine aittir.
::
:: %ESC%^[32m > òülem (yeüil) numara rengidir. MenÅ iáindeki iülem numaralarçdçr.
:: %ESC%^[36m > MenÅde mavi renkli iülem numara rengidir. Ayrçca menÅye dîn renk ayarçdçr.
:: %ESC%^[100m > Baülçk bîlÅmlerinde arka planç dolduran renktir.
:: %ESC%^[1;97m > Baülçkta dolgu bîlÅmÅnÅn iáinde yer alan yazç rengidir. 1; bîlÅmÅ kalçn yazmasçnç saßlar. 97m beyaz renk yazmasçnç saßlar.
:: %ESC%^[90m > Äeráeveleri ve | iüaretlerinin rengini deßiüir.
:: 
:: ==============================================================================================================================

Call :konum2
set Mount=%konum2%\Edit\Mount

:AdminKontrol
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo  ___________________________________________________________
echo 
echo                           -------
echo                       %ESC%[91m***  UYARI ***%ESC%[0m
echo                           -------
echo 
echo              %ESC%[92mSaß-Tçk Yînetici olarak áalçütçrçnçz...%ESC%[0m 
echo 
echo  ___________________________________________________________
echo 
echo             %ESC%[92mKapatmak iáin herhangi bir tuüa basçnçz.%ESC%[0m 
pause > nul
exit
)

:WindowsEditMenu
cls
mode con cols=53 lines=42
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m           OgnitorenKs Windows Edition           %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
echo  %ESC%[90m∫   %ESC%[32m 1.%ESC%%RGB%[33m WIM / ESD Okuyucu%RGB%[0m                         %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫   %ESC%[32m 2.%ESC%%RGB%[33m AIO Windows Hazçrla%RGB%[0m                       %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫   %ESC%[32m 3.%ESC%%RGB%[33m ISO Hazçrla%RGB%[0m                               %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫   %ESC%[32m 4.%ESC%%RGB%[33m ESD to WIM%RGB%%RGB%[90m [DôNöûTöR]%RGB%[0m                     %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫   %ESC%[32m 5.%ESC%%RGB%[33m WIM /Delete%RGB%%RGB%[90m [SòL]%RGB%[0m                         %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫   %ESC%[32m 6.%ESC%%RGB%[33m WIM Mount%RGB%%RGB%[90m [YöKLE]%RGB%[0m                         %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫   %ESC%[32m 7.%ESC%%RGB%[33m WIM Remount%RGB%%RGB%[90m [YENòDEN YöKLE]%RGB%[0m               %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫   %ESC%[32m 8.%ESC%%RGB%[33m WIM Unmount%RGB%%RGB%[90m [TOPLA]%RGB%[0m                       %ESC%[90m∫%ESC%[0m
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
echo  %ESC%[90m∫   %ESC%[36m 9.%ESC%%RGB%[33m Regedit%RGB%%RGB%[90m [YöKLE]%RGB%[0m                           %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[32m 10.%ESC%%RGB%[33m Regedit%RGB%%RGB%[90m [TOPLA]%RGB%[0m                           %ESC%[90m∫%ESC%[0m 
echo  %ESC%[90m∫  %ESC%[36m 11.%ESC%%RGB%[33m Win10 Hazçr Regedit Kayçtlarç%RGB%%RGB%[90m [EKLE]%RGB%[0m      %ESC%[90m∫%ESC%[0m 
echo  %ESC%[90m∫  %ESC%[36m 12.%ESC%%RGB%[33m Win11 Hazçr Regedit Kayçtlarç%RGB%%RGB%[90m [EKLE]%RGB%[0m      %ESC%[90m∫%ESC%[0m 
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
echo  %ESC%[90m∫  %ESC%[32m 13.%ESC%%RGB%[33m Dism Update%RGB%%RGB%[90m [ONLINE]%RGB%[0m                      %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 14.%ESC%%RGB%[33m Dism Update%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                     %ESC%[90m∫%ESC%[0m
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 15.%ESC%%RGB%[33m Appx yÅkleyici%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                  %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[32m 16.%ESC%%RGB%[33m Appx yÅkleyici%RGB%%RGB%[90m [ONLINE]%RGB%[0m                   %ESC%[90m∫%ESC%[0m
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
echo  %ESC%[90m∫  %ESC%[32m 17.%ESC%%RGB%[33m Driver Yedekle%RGB%%RGB%[90m [ONLINE]%RGB%[0m                   %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 18.%ESC%%RGB%[33m Driver YÅkle%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                    %ESC%[90m∫%ESC%[0m
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
echo  %ESC%[90m∫  %ESC%[32m 19.%ESC%%RGB%[33m Setup DÅzenle%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                   %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 20.%ESC%%RGB%[33m Yeni Simgeleri yÅkle%RGB%%RGB%[90m [OFFLINE]%RGB%[0m            %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 21.%ESC%%RGB%[33m Walpaper Deßiütir%RGB%%RGB%[90m [OFFLINE]%RGB%[0m               %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 22.%ESC%%RGB%[33m Telemetry engelle (Hosts)%RGB%%RGB%[90m[OFFLINE]%RGB%[0m        %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 23.%ESC%%RGB%[33m OneDrive Sil %RGB%%RGB%[90m[OFFLINE]%RGB%[0m                    %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 24.%ESC%%RGB%[33m Gpedit.msc ekle%RGB%%RGB%[90m[OFFLINE]%RGB%[0m                  %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 25.%ESC%%RGB%[33m Hyper-V ekle%RGB%%RGB%[90m[OFFLINE]%RGB%[0m                     %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 26.%ESC%%RGB%[33m Silinmesi gerekenler%RGB%%RGB%[90m[OFFLINE]%RGB%[0m             %ESC%[90m∫%ESC%[0m
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 27.%ESC%%RGB%[33m Katçlçmsçz program ve ayar ekle %RGB%%RGB%[90m[OFFLINE]%RGB%[0m %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 28.%ESC%%RGB%[33m Katçlçmsçz program ve ayar ekle %RGB%%RGB%[90m[ONLINE]%RGB%[0m  %ESC%[90m∫%ESC%[0m
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
echo  %ESC%[90m∫  %ESC%[36m 29.%ESC%%ESC%[36m Mount yol tançmla%ESC%[0m                         %ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
set /p WindowsEditMenu= %ESC%[92m Yapmak istedißiniz iülem : %ESC%[0m
	if %WindowsEditMenu%==1 (Call :WimReader)
	if %WindowsEditMenu%==2 (Call :AioImport)
	if %WindowsEditMenu%==3 (Call :ISOMaker)
	if %WindowsEditMenu%==4 (Call :esdtowimexport)
	if %WindowsEditMenu%==5 GOTO WimDelete
	if %WindowsEditMenu%==6 (Call :WimMount)
	if %WindowsEditMenu%==7 (Call :WimRemount)
	if %WindowsEditMenu%==8 (Call :WimUnmount)
	if %WindowsEditMenu%==9 (Call :RegYukle)
	if %WindowsEditMenu%==10 (Call :RegTopla)
	if %WindowsEditMenu%==11 GOTO Windows10regedit
	if %WindowsEditMenu%==12 GOTO Windows11regedit
	if %WindowsEditMenu%==13 (Call :OnDismUpdate)
	if %WindowsEditMenu%==14 (Call :OffDismUpdate)
	if %WindowsEditMenu%==15 (Call :OffAppx)
	if %WindowsEditMenu%==16 (Call :OnAppx)
	if %WindowsEditMenu%==17 (Call :Driveryedek)
	if %WindowsEditMenu%==18 (Call :Driveryukle)
	if %WindowsEditMenu%==19 (Call :SetupEdit)
	if %WindowsEditMenu%==20 (Call :Newico)
	if %WindowsEditMenu%==21 (Call :walpaper)
	if %WindowsEditMenu%==22 (Call :Hosts)
	if %WindowsEditMenu%==23 (Call :OneDrivedel)
	if %WindowsEditMenu%==24 (Call :gpeditmsc)
	if %WindowsEditMenu%==25 (Call :HyperV)
	if %WindowsEditMenu%==26 (Call :delhard)
	if %WindowsEditMenu%==27 (Call :katilimsizoffline)
	if %WindowsEditMenu%==28 (Call :katilimsizonline)
	if %WindowsEditMenu%==29 (Call :degisken3)
else
	goto WindowsEditMenu

:WimReader
cls
mode con cols=70 lines=15
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        WIM / ESD Okuyucu                         %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
Call :degisken1
echo [%date% - %time%] ^| WimReader ^| %MerkezWim% dosyasçnçn iáerißi okundu >> %konum2%\Logs
mode con cols=99 lines=27
echo  %ESC%[90m…ÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
Call :MerkezWim
echo  %ESC%[90m»ÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo                      %ESC%[92m MenÅye dînmek iáin herhangi bir tuüa basçnçz.%ESC%[0m
pause > NUL 
goto :eof

:stop
:AioImport
mode con cols=70 lines=20
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                       AIO Windows Hazçrla                        %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo   %RGB%[96m Ana SÅrÅm%ESC%[0m 
Call :degisken1
:aioimport2
echo   %RGB%[96m Eklenecek SÅrÅm%ESC%[0m 
Call :degisken2
cls
mode con cols=99 lines=40
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%[1;97m%ESC%%ESC%[100m                                           ANA SöRöM                                         %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90mÃÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
Call :MerkezWim
echo  %ESC%[90mÃÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
echo  %ESC%[90m∫%ESC%[1;97m%ESC%%ESC%[100m                                        EKLENECEK SöRöM                                      %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90mÃÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
echo  %ESC%[90m∫%ESC%[0m %ESC%[32mINDEX%ESC%[0m %ESC%[90m∫%ESC%[0m %ESC%[32mMòMARò%ESC%[0m %ESC%[90m∫%ESC%[0m %ESC%[32m   SöRöM%ESC%[0m    %ESC%[90m∫%ESC%[0m  %ESC%[32mDòL%ESC%[0m   %ESC%[90m∫%ESC%[0m    %ESC%[32mEDòT%ESC%[0m     %ESC%[90m∫%ESC%[0m    %ESC%[32mòSòM%ESC%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%EkleWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Modified') do (
								echo  %ESC%[90mÃÕÕÕÕÕÕÕŒÕÕÕÕÕÕÕÕŒÕÕÕÕÕÕÕÕÕÕÕÕÕŒÕÕÕÕÕÕÕÕŒÕÕÕÕÕÕÕÕÕÕÕÕÕŒÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
								echo      %ESC%[32m%%a%ESC%[0m      %ESC%[33m%%b%ESC%[0m    %ESC%[36m %%d.%%e%ESC%[0m    %ESC%[33m%%f%ESC%[0m    %ESC%[36m%%h%ESC%[0m  %ESC%[37m %%g%ESC%[0m
								)
							)
						)
					)
				)
			)
		)
	)
)
echo  %ESC%[90m»ÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
set /p $selectindex= %RGB%[92m Eklenecek sÅrÅmleri seáiniz : %RGB%[0m

echo %$selectindex% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
echo %$selectindex% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu

FOR %%a in (%$selectindex%) do ( 
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| FIND "Architecture"') do (
		FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| FIND "Name"') do (
		    Call :imagexexport "%EkleWim%" "%%a" %MerkezWim% "%%c %%b"
			)
		)
	)
)
cls
echo  %ESC%[90m…ÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
Call :MerkezWim
echo  %ESC%[90m»ÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo 
echo %ESC%[92m Birleütirme iülemi tamamlandç%ESC%[0m
echo %ESC%[92m MenÅye dînmek iáin herhangi bir tuüa basçnçz.%ESC%[0m
pause > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------
:stop
:ISOMaker
cls
mode con cols=70 lines=20
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                             ISO MAKER                            %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo  %ESC%[96m ôrnek:%ESC%%ESC%[33m C:\Windows10Pro%ESC%[0m
set /p MerkezWim=%RGB%[92m   òmaj klasîr yolu : %RGB%[0m
	if %MerkezWim%==x GOTO WindowsEditMenu
	if %MerkezWim%==X GOTO WindowsEditMenu
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
set /p etiket=%RGB%[92m   Etiket ismi : %RGB%[0m
	if %etiket%==x GOTO WindowsEditMenu
	if %etiket%==X GOTO WindowsEditMenu
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
set /p isokayit=%RGB%[92m   ISO ismi : %RGB%[0m
	if %isokayit%==x GOTO WindowsEditMenu
	if %isokayit%==X GOTO WindowsEditMenu
 
mode con cols=85 lines=45
echo [%date% - %time%] ^| ISO Maker ^| òmaj:"%MerkezWim%" ^| Etiket ismi:"%etiket%" ^| ISO ismi:"%isokayit%" olarak ISO'ya dosyasç oluüturuldu. >> %konum2%\Logs
%konum2%\Files\oscdimg.exe -b%MerkezWim%\boot\etfsboot.com -h -u2 -m -l%etiket% %MerkezWim%\ %konum2%\Edit\%isokayit%.iso

powershell -command "Start-Process '%konum2%\Edit'"
echo %ESC%[92m òülem tamamlandç.%ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------

:esdtowimexport
cls
mode con cols=70 lines=20
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                         ESD / WIM DînÅütÅr                       %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
Call :degisken1
mode con cols=99 lines=30
echo  %ESC%[90m…ÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
Call :MerkezWim
echo  %ESC%[90m»ÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
set /p $selectindex= %RGB%[92m DînÅütÅrÅlecek sÅrÅmleri seáiniz : %RGB%[0m

echo %$selectindex% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
echo %$selectindex% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
	
FOR %%a in (%$selectindex%) do (
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Architecture"') do (
		FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Name"') do (
			echo [%date% - %time%] ^| ESDtoWIM ^| %MerkezWim% - %%a - %%c - %%b sÅrÅmÅ áçkarçldç >> %konum2%\Logs
			Call :esdtowim "%MerkezWim%" "%%a" "%%c" "%%b"
			)
		)
	)
)

powershell -command "Start-Process '%konum2%\Edit\ESDtoWIM'"
echo %ESC%[92m òülem tamamlandç.%ESC%[0m 
timeout /t 3 /nobreak > NUL
goto :eof

:: ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛

:WimDelete
cls
mode con cols=70 lines=20
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                               WIM SòL                            %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
Call :degisken1
mode con cols=99 lines=30
:WimDell
echo  %ESC%[90m…ÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
Call :MerkezWim
echo  %ESC%[90m»ÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
set /p selectindex=%RGB%[92m Silinecek sÅrÅmÅ seáiniz : %RGB%[0m
	if %selectindex%==X goto WindowsEditMenu
	if %selectindex%==x goto WindowsEditMenu
echo [%date% - %time%] ^| WimDelete ^| Index="%selectindex%" silindi. "%MerkezWim%" >> %konum2%\Logs
Powershell -command "Remove-WindowsImage -ImagePath '%MerkezWim%' -Index '%selectindex%' -CheckIntegrity"
:: Kullançlabilecek farklç yîntemler
::%konum2%\Files\imagex.exe /delete "%MerkezWim%" %selectindex% /check
::Dism /Delete-Image /ImageFile:%MerkezWim% /Index:%selectindex% /CheckIntegrity
cls
goto WimDell


:WimMount
cls
mode con cols=70 lines=20
dir /b %konum2%\Edit\Mount\Windows > NUL 2>&1
	if %errorlevel%==0 (echo %ESC%[32m Mevcut imaj toplançyor...%ESC%[0m 
						Call :WimRemount
						Call :WimUnmount)
RD /S /Q "%konum2%\Edit\Mount" > NUL 2>&1
mkdir "%konum2%\Edit\Mount" > NUL 2>&1
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                              WIM MOUNT                           %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
Call :degisken1
mode con cols=99 lines=30
echo  %ESC%[90m…ÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
Call :MerkezWim
echo  %ESC%[90m»ÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
set /p selectindex= %RGB%[92m Aáçlacak sÅrÅmÅ seáiniz : %RGB%[0m
	if %selectindex%==X goto WindowsEditMenu
	if %selectindex%==x goto WindowsEditMenu
:: Aüaßçdaki FOR dîngÅleri ile sistem "ismi" ile "mimarisi" alçnmaktadçr. 
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%selectindex% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%selectindex% ^| FIND "Name"') do ( set iname=%%c)
cls
:: Geráekleütirilen iülemi gîstermektedir.
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo    %ESC%[32m Index%ESC%%ESC%[33m %selectindex% %ESC%%ESC%[32m%ESC%%ESC%[33m (%iname% %iarc%)%ESC%%ESC%[32m aáçlçyor...%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
Dism /Mount-Image /ImageFile:"%MerkezWim%" /MountDir:"%konum2%\Edit\Mount" /Index:%selectindex%
::%konum2%\Files\imagex.exe /mountrw %MerkezWim% %selectindex% "%konum2%\Edit\Mount"
echo [%date% - %time%] ^| WimMount ^| "%selectindex%" - "%%c - %%b" sÅrÅmÅ Mount edildi. "%MerkezWim%" >> %konum2%\Logs
echo %ESC%[92m òülem tamamlandç.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:WimRemount
mode con cols=70 lines=20
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                             WIM Remount                          %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo [%date% - %time%] ^| WimRemount ^| %Mount% yeniden yÅkleme iülemi yapçldç >> %konum2%\Logs
Dism /Remount-Image /MountDir:"%konum2%\Edit\Mount"
::%konum2%\Files\imagex.exe /remount %konum2%\Edit\Mount
goto :eof

:WimUnmount
cls
mode con cols=70 lines=20
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                             WIM Unmount                          %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo [%date% - %time%] ^| WimUnmount ^| %Mount% klasîrÅ toplandç >> %konum2%\Logs
Dism /UnMount-Image /MountDir:%konum2%\Edit\Mount /Commit
	if %errorlevel%==1 (echo  %ESC%[91m TOPLAMA òûLEMò BAûARISIZ! %ESC%[0m
						echo [%date% - %time%] ^| WimUnmount ^| HATA! %Mount% klasîrÅ unmount yapçlamçyor >> %konum2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
						
::%konum2%\Files\imagex.exe /unmount /commit %konum2%\Edit\Mount
echo %ESC%[92m òülem tamamlandç.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:stop
:RegYukle
mode con cols=70 lines=20
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                            Regedit YÅkle                         %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m

:Offreg
dir /b %Mount%\Windows\System32\config\SOFTWARE > NUL 2>&1
	if %errorlevel%==1 (echo  %ESC%[1;97m%ESC%%ESC%[41m            Yol hatalç! Regedit kayçtlarç bulunumadç.               %ESC%[0m
						echo [%date% - %time%] ^| RegYukle ^| HATA! Regedit kayçtlarç yÅklenemedi. Mount="%Mount%" >> %konum2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)

echo [%date% - %time%] ^| RegYukle ^| %Mount% klasîrÅnden regedit kayçtlarç yÅklendi >> %konum2%\Logs
reg load HKLM\OG_COMPONENTS "%Mount%\Windows\System32\config\COMPONENTS" >nul
reg load HKLM\OG_DEFAULT "%Mount%\Windows\System32\config\default" >nul
reg load HKLM\OG_NTUSER "%Mount%\Users\Default\ntuser.dat" >nul
reg load HKLM\OG_SOFTWARE "%Mount%\Windows\System32\config\SOFTWARE" >nul
reg load HKLM\OG_SYSTEM "%Mount%\Windows\System32\config\SYSTEM" >nul
goto :eof

:RegTopla
cls
echo [%date% - %time%] ^| RegTopla ^| %Mount% klasîrÅnden regedit kayçtlarç toplandç >> %konum2%\Logs
for /f "tokens=* delims=" %%a in ('reg query "HKLM" ^| findstr "{"') do (
	reg unload "%%a" >nul 2>&1
)
reg delete "HKLM\OG_SYSTEM\CurrentControlSet" /f >nul 2>&1
reg unload HKLM\OG_COMPONENTS >nul 2>&1
reg unload HKLM\OG_DRIVERS >nul 2>&1
reg unload HKLM\OG_DEFAULT >nul 2>&1
reg unload HKLM\OG_NTUSER >nul 2>&1
reg unload HKLM\OG_SCHEMA >nul 2>&1
reg unload HKLM\OG_SOFTWARE >nul 2>&1
reg unload HKLM\OG_SYSTEM >nul 2>&1
goto :eof
:stop

:OnAppx
cls
mode con cols=70 lines=40
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        Online Appx YÅkleyici                     %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
for /f %%i in ('"dir /b %konum2%\Edit\Appx\*"') do (
	echo [%date% - %time%] ^| OnlineAppxYukle ^| "%konum2%\Edit\Appx\%%i" appx dosyasç yÅklendi >> %konum2%\Logs 
	PowerShell.exe -Command "Add-AppxPackage -Path %konum2%\Edit\Appx\%%i"
)

echo %ESC%[92m òülem tamamlandç.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:OffAppx
cls
mode con cols=70 lines=40
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        Offline Appx YÅkleyici                    %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m

for /f %%i in ('"dir /b %konum2%\Edit\Appx\*"') do (
	echo [%date% - %time%] ^| OfflineAppxYukle ^| "%konum2%\Edit\Appx\%%i" appx dosyasç yÅklendi >> %konum2%\Logs 
	DISM /Image:%Mount% /Add-ProvisionedAppxPackage /PackagePath:%konum2%\Edit\Appx\%%i /SkipLicense
)
Dism /Image:%Mount% /Optimize-ProvisionedAppxPackage
	if %errorlevel%==1 (echo [%date% - %time%] ^| OfflineAppxYukle ^| HATA! Optimize-ProvisionedAppxPackage iülemi hata verdi. Mount=%Mount% >> %konum2%\Logs)
goto :eof

:stop
:OffDismUpdate
cls
mode con cols=70 lines=40
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                         DISM Update Offline                      %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
	
:OffDism
for /f %%i in ('"dir /b %konum2%\Edit\Update\*"') do (
	echo [%date% - %time%] ^| OfflineDismYukle ^| "%konum2%\Edit\Update\%%i" update dosyasç yÅklendi. Mount=%Mount% >> %konum2%\Logs 
	DISM /Image:%Mount% /add-package /packagepath="%konum2%\Edit\Update\%%i"
)
echo %ESC%[92m WinSxS temizleniyor...%ESC%[0m
DISM /Image:%Mount% /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 (echo %ESC%[91m TEMòZLEME òûLEMò BAûARISIZ%ESC%[0m
						echo [%date% - %time%] ^| OfflineDismYukle ^| WinSxS temizlenirken hata oluütu. Mount=%Mount% >> %konum2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
echo %ESC%[92m Appx dosyalar optimize ediliyor...%ESC%[0m
Dism /Image:%Mount% /Optimize-ProvisionedAppxPackage
	if %errorlevel%==1 (echo [%date% - %time%] ^| OfflineDismYukle ^| Optimize-ProvisionedAppxPackage iüleminde hata oluütu. Mount=%Mount% >> %konum2%\Logs)
echo %ESC%[92m òülem tamamlandç.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:OnDismUpdate
cls
mode con cols=70 lines=40
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                         DISM Update Online                      %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
for /f %%i in ('"dir /b %konum2%\Edit\Update\*"') do (
	echo [%date% - %time%] ^| OnlineDismYukle ^| "%konum2%\Edit\Update\%%i" update dosyasç yÅklendi >> %konum2%\Logs 
	DISM /Online /add-package /packagepath="%konum2%\Edit\Update\%%i"
)
echo %ESC%[92m WinSxS temizleniyor...%ESC%[0m
DISM /Online /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 ( echo  %ESC%[91m TEMòZLEME òûLEMò BAûARISIZ! %ESC%[0m 
						 timeout /t 5 /nobreak > NUL
						 goto WindowsEditMenu)

echo %ESC%[92m òülem tamamlandç.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:stop
:DriverYedek
cls
mode con cols=70 lines=40
RD /S /Q "%konum2%\Edit\Driver\Yedek" > NUL 2>&1
mkdir "%konum2%\Edit\Driver\Yedek" > NUL 2>&1
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                           Driver Yedekle                        %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo [%date% - %time%] ^| DriverYedek ^| Driverlar yedeklendi >> %konum2%\Logs
Dism /Online /Export-Driver /Destination:%konum2%\Edit\Driver\Yedek

powershell -command "Start-Process '%konum2%\Edit\Driver\Yedek'"
echo %ESC%[92m òülem tamamlandç.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:DriverYukle
cls
mode con cols=70 lines=40
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        Driver YÅkle Offline                     %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo [%date% - %time%] ^| DriverYukle ^| Driver yÅklendi. Mount=%Mount% >> %konum2%\Logs
Dism /Image:%Mount% /Add-Driver /Driver:%konum2%\Edit\Driver /Recurse
	if %errorlevel%==1 (RD /S /Q "%konum2%\Edit\Driver"
						mkdir "%konum2%\Edit\Driver"
						echo [%date% - %time%] ^| DriverYukle ^| HATA! Driver yÅklenirken hata oluütu. Mount=%Mount% >> %konum2%\Logs
						goto DriverYukle)

echo  %ESC%[92m òülem tamamlandç. %ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof
:stop
::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:SetupEdit
cls
mode con cols=70 lines=40
dir /b %konum2%\Files\Setup10.zip > NUL 2>&1
	if %errorlevel%==1 (Call :SetupDownload)
dir /b "%konum2%\Edit\Mount\Windows" > NUL 2>&1
	if %errorlevel%==0 (echo %ESC%[32m ôncelikle yÅklÅ olan Mount klasîrÅnÅ toplayçnçz.%ESC%[0m
						echo [%date% - %time%] ^| SetupEdit ^| HATA! Mount klasîrÅnde yÅklÅ sistem var >> %konum2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
RD /S /Q "%konum2%\Edit\Mount" > NUL 2>&1
mkdir "%konum2%\Edit\Mount" > NUL 2>&1
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                           Setup DÅzenle                         %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
Call :degisken4

mode con cols=99 lines=30
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%index% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%index% ^| FIND "Name"') do ( set iname=%%c)
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo   %ESC%[92m Index%ESC%%ESC%[33m %index% %ESC%%ESC%[92m%ESC%%ESC%[33m (%iname%)%ESC%%ESC%[92m aáçlçyor...%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo [%date% - %time%] ^| SetupEdit ^| %MerkezWim% - %iname% áçkarçlçyor >> %konum2%\Logs
Dism /Mount-Image /ImageFile:"%MerkezWim%" /MountDir:"%konum2%\Edit\Mount" /Index:%index%
:: %konum2%\Files\imagex.exe /mountrw %MerkezWim% %index% "%konum2%\Edit\Mount"

:: Aüaßçdaki Mount tançmlamasç Reg yÅkleme bîlÅmÅ iáindir. O bîlÅmde Mount deßiükenine setup dosyalarçnç áçkardçßçmçz klasîrÅn yolunu tançmlçyoruz
set Mount=%konum2%\Edit\Mount

Call :PowerRun
cls
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo    %RGB%[96m òülem yapçlacak Windows sÅrÅmÅnÅ seáiniz%RGB%[0m
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
set /p windowssetup=%ESC%[97m  %ESC%%ESC%[92m [ Windows 11:%ESC%%ESC%[1;97m 1 %ESC%%ESC%[35m/%ESC%%ESC%[92m Windows 10:%ESC%%ESC%[1;97m 2 %ESC%%ESC%[92m] : %ESC%[0m
	if %windowssetup%==1 (%PowerRun% powershell -command "Expand-Archive -Force '%konum2%\Files\Setup10.zip' '%konum2%\Edit\Mount'"
						  %PowerRun% powershell -command "Expand-Archive -Force '%konum2%\Files\Setup11.zip' '%konum2%\Edit\Mount'"
						  echo [%date% - %time%] ^| SetupEdit ^| Windows 11 setup dosyalarç Setup imajçna entegre edildi. >> %konum2%\Logs
						  timeout /t 5 /nobreak > NUL)
	if %windowssetup%==2 (%PowerRun% powershell -command "Expand-Archive -Force '%konum2%\Files\Setup10.zip' '%konum2%\Edit\Mount'"
						  echo [%date% - %time%] ^| SetupEdit ^| Windows 10 setup dosyalarç Setup imajçna entegre edildi. >> %konum2%\Logs
						  timeout /t 5 /nobreak > NUL)
echo 
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
echo    %RGB%[96m MenÅ konumunu seáiniz%RGB%[0m
echo  %ESC%[90mÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
set /p barkonum=%ESC%[97m   %ESC%%ESC%[92m[%ESC%%ESC%[92m Sol:%ESC%%ESC%[1;97m 1 %ESC%%ESC%[35m/%ESC%%ESC%[92m öst:%ESC%%ESC%[1;97m 2 %ESC%%ESC%[35m/%ESC%%ESC%[92m Saß:%ESC%%ESC%[1;97m 3 %ESC%%ESC%[35m/%ESC%%ESC%[92m Alt:%ESC%%ESC%[1;97m 4 %ESC%%ESC%[92m] : %ESC%[0m 
	if %barkonum%==1 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
	if %barkonum%==2 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
	if %barkonum%==3 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
	if %barkonum%==4 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
:setupunmount
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo    %ESC%[92m Setup dosyasç toplançyor...%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
Dism /UnMount-Image /MountDir:"%konum2%\Edit\Mount" /Commit
::%konum2%\Files\imagex.exe /unmount /commit %konum2%\Edit\Mount
echo  %ESC%[92m òülem tamamlandç. %ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

:SetupBar
echo [%date% - %time%] ^| SetupEdit ^| Lerup Launcher konumu %~1 seáildi >> %konum2%\Logs
Call :RegTopla
Call :Offreg
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Location" /t REG_SZ /d %~1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "UseLargeIcons" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "UseLargeMenus" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "AlwaysOnTop" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "AutoHide" /t REG_SZ /d 0 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Center" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Buttons" /t REG_SZ /d "" /f > NUL 2>&1
Call :RegTopla
goto :eof
:stop
::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:Newico
cls
mode con cols=70 lines=40
dir /b %konum2%\Files\Newico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :icodownload)
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                    Yeni Simgeleri YÅkle Offline                 %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
Call :PowerRun
echo [%date% - %time%] ^| Newico ^| Yeni simgeler entegre edildi. Mount=%Mount% >> %konum2%\Logs
%PowerRun% Powershell -command "Expand-Archive -Force '%konum2%\Files\Newico.zip' '%Mount%'"

echo  %ESC%[92m òülem tamamlandç. %ESC%[0m  
timeout /t 2 /nobreak > NUL
goto :eof

::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:walpaper
cls
mode con cols=70 lines=40
Call :RegTopla
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                     Walpaper Deßiütir Offline                   %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
Call :PowerRun
echo [%date% - %time%] ^| Walpaper ^| Yeni duvar kaßçtlarç yÅklendi. Mount=%Mount% >> %konum2%\Logs
%PowerRun% Powershell -command "Expand-Archive -Force '%konum2%\Files\Walpaper.zip' '%Mount%\Windows\Web'"

echo  %ESC%[92m òülem tamamlandç. %ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

::------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:Hosts
echo [%date% - %time%] ^| Hosts ^| Yeni simgeler entegre edildi. Mount=%Mount% >> %konum2%\Logs
%PowerRun% copy /y "%konum2%\Files\Hosts" "%Mount%\Windows\System32\Drivers\etc"
goto :eof

::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:OneDrivedel
cls
mode con cols=70 lines=40
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                       OneDrive Sil Offline                       %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
Call :RegTopla
echo [%date% - %time%] ^| OneDrive ^| OneDrive silindi. Mount=%Mount% >> %konum2%\Logs
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDriveSetup.exe"
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDriveSettingSyncProvider.dll"
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDrive.ico"
Call :Offreg
reg delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f >nul 2>&1
Call :RegTopla
goto :eof

:gpeditmsc
mode con cols=70 lines=40
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        Gpedit.Msc Offline                        %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo [%date% - %time%] ^| Gpedit.msc ^| Gpedit.msc entegre edildi. Mount=%Mount% >> %konum2%\Logs
FOR /f %%a IN ('"dir /b %Mount%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') do (Dism /Image:%Mount% /Add-Package:"%SystemRoot%\servicing\Packages\%%a")
FOR /f %%a IN ('"dir /b %Mount%\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum") do (Dism /Image:%Mount% /Add-Package:"%SystemRoot%\servicing\Packages\%%a")
goto :eof


:HyperV
mode con cols=70 lines=40
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo  %ESC%[90m∫%ESC%%ESC%[1;97m%ESC%%ESC%[100m                          Hyper-V Offline                         %ESC%[0m%ESC%[90m∫%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo [%date% - %time%] ^| HyperV ^| Hyper-V entegre edildi. Mount=%Mount% >> %konum2%\Logs
For /f %%a IN ('"dir /b %Mount%\Windows\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Image:%Mount% /Add-Package:"%Mount%\Windows\servicing\Packages\%%a")
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-All
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Tools-All
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Management-PowerShell
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Hypervisor
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Services
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Management-Clients
goto :eof

:delhard
Call :PowerRun
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\MsSecFlt.sys" > NUL 
REM System Guard Runtime Monitor Agent (Sistem korumasç)
%PowerRun% DEL "%Mount%\Windows\System32\drivers\SgrmAgent.sys" > NUL 
REM Windows Defender
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\WdBoot.sys" > NUL 
REM Windows Defender
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\WdFilter.sys" > NUL 
REM Windows Defender
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\WdNisDrv.sys" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\smartscreen.exe" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\CompatTelRunner.exe" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\securityhealthhost.exe" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\securityhealthservice.exe" > NUL  
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\securityhealthsystray.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\SgrmBroker.exe" > NUL 2>&1
goto :eof

:: ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛

:Windows10regedit
echo [%date% - %time%] ^| Win10regedit ^| Windows 10 hazçr regedit kayçtlarç eklendi. Mount=%Mount% >> %konum2%\Logs
Call :PowerRun
Call :RegTopla
Call :Offreg
Call :sz "HKLM\OG_NTUSER\System\GameConfigStore" "GameDVR_Enabled" "0" & :: Oyun modu devre dçüç bçrakçlçyor... 
Call :dword "HKLM\OG_NTUSER\System\GameConfigStore" "GameDVR_FSEBehavior" "2" & :: Tam ekran iyileütirmeleri devre dçüç bçrakçlçyor...
goto RegeditOrtak

:Windows11regedit
echo [%date% - %time%] ^| Win11regedit ^| Windows 11 hazçr regedit kayçtlarç eklendi. Mount=%Mount% >> %konum2%\Logs
Call :PowerRun
Call :RegTopla
Call :Offreg
Call :delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" & :: Terminal saß tçktan kaldçrçlçyor...
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "GlobalUserDisabled" "1" & :: Arka planda uygulamalarçn áalçümasçnç engelleniyor... 
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" "LetAppsRunInBackground" "2" & :: Arka planda uygulamalarçn áalçümasçnç engelleniyor... 
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "SeparateProcess" "0" & :: Windows 11 Explorer Ram kullançmç sorun dÅzeltiliyor...
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarMn" "0" & :: Sohbet ikonu kaldçrçlçyor..
goto RegeditOrtak

:RegeditOrtak
:: Cortana 
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" "0" 
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" "0"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" "0"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaConsent" "0"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaceable" "1"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaced" "1"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "SearchboxTaskbarMode" "0"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" "1"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI" "EnableCortana" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaConsent" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaceable" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaced" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "SearchboxTaskbarMode" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\PolicyManager\current\device\AboveLock" "AllowCortanaAboveLock" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\PolicyManager\current\device\Experience" "AllowCortana" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Speech_OneCore\Preferences" "ModelDownloadAllowed" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\InputPersonalization" "AllowInputPersonalization" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCloudSearch" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortana" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortanaAboveLock" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchPrivacy" "3"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchSafeSearch" "3"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" "AllowCortana" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" "AllowCortanaAboveLock" "0"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana ActionUriServer.exe" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|App=C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\ActionUriServer.exe|Name=Block Cortana ActionUriServer.exe|Desc=Block Cortana Outbound UDP/TCP Traffic|"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana Package" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|Name=Block Cortana Package|Desc=Block Cortana Outbound UDP/TCP Traffic|AppPkgId=S-1-15-2-1861897761-1695161497-2927542615-642690995-327840285-2659745135-2630312742|Platform=2:6:2|Platform2=GTEQ|"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana PlacesServer.exe" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|App=C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\PlacesServer.exe|Name=Block Cortana PlacesServer.exe|Desc=Block Cortana Outbound UDP/TCP Traffic|"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana RemindersServer.exe" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|App=C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\RemindersServer.exe|Name=Block Cortana RemindersServer.exe|Desc=Block Cortana Outbound UDP/TCP Traffic|"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana RemindersShareTargetApp.exe" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|App=C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\RemindersShareTargetApp.exe|Name=Block Cortana RemindersShareTargetApp.exe|Desc=Block Cortana Outbound UDP/TCP Traffic|"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana SearchUI.exe" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|App=C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\SearchUI.exe|Name=Block Cortana SearchUI.exe|Desc=Block Cortana Outbound UDP/TCP Traffic|"
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Narrator\QuickStart" "SkipQuickStart" 1 &  :: Narrator QuickStart kapatçlçyor
:: 3.Parti programlarçn yÅklenmesini engelle
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" "1"
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "ContentDeliveryAllowed" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "FeatureManagementEnabled" 0 
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEverEnabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "OemPreInstalledAppsEnabled" 0 
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEnabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SilentInstalledAppsEnabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-314559Enabled" 0 
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338387Enabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338388Enabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338389Enabled" 0 
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContentEnabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPane RecommendionsEnabled" 0
:: Microsoft Store otomatik gÅncelleütirmeler devre dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\WindowsStore" "AutoDownload" "2"
:: ônerilen uygulamalarçn yeniden yÅklenmesi engelleniyor
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" "1"
:: Windows Defender
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows Security Health\State" "AccountProtection_MicrosoftAccount_Disconnected" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" "DisableNotifications" "1"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" "DisableEnhancedNotifications" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows Security Health\State" "AccountProtection_MicrosoftAccount_Disconnected" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender" "DisableAntiSpyware" "1"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender" "DisableAntiVirus" "1"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender\Features" "TamperProtection" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender\Features" "TamperProtectionSource" "2"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender\Signature Updates" "FirstAuGracePeriod" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender\UX Configuration" "DisablePrivacyMode" "1"
Call :binary "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" "SecurityHealth" "030000000000000000000000"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\MRT" "DontOfferThroughWUAU" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\MRT" "DontReportInfectionInformation" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" "HideSystray" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender" "DisableAntiSpyware" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender" "PUAProtection" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender" "RandomizeScheduleTaskTimes" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions" "DisableAutoExclusions" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\MpEngine" "MpEnablePus" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" "LocalSettingOverridePurgeItemsAfterDelay" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" "PurgeItemsAfterDelay" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableBehaviorMonitoring" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableIOAVProtection" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableOnAccessProtection" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRealtimeMonitoring" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRoutinelyTakingAction" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableScanOnRealtimeEnable" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableScriptScanning" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" "Scan_ScheduleDay" "8"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" "Scan_ScheduleTime" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "AdditionalActionTimeOut" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "CriticalFailureTimeOut" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "DisableEnhancedNotifications" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "DisableGenericRePorts" 1
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "NonCriticalTimeOut" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "AvgCPULoadFactor" "10"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableArchiveScanning" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableCatchupFullScan" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableCatchupQuickScan" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableRemovableDriveScanning" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableRestorePoint" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableScanningMappedNetworkDrivesForFullScan" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableScanningNetworkFiles" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "PurgeItemsAfterDelay" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScanOnlyIfIdle" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScanParameters" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScheduleDay" 8
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScheduleTime" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "DisableUpdateOnStartupWithoutEngine" 1
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "ScheduleDay" 8
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "ScheduleTime" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "SignatureUpdateCatchupInterval" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\SpyNet" "DisableBlockAtFirstSeen" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "LocalSettingOverrideSpynetReporting" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReporting" "0"
Call :multisz "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReportingLocation" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SubmitSamplesConsent" "2"
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\DefenderApiLogger" "Start" "0"
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\DefenderAuditLogger" "Start" "0"
:: SmartScreen
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" 0
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" 0
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" 0
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" 0
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" 0
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" 0
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Security Health\State" "AppAndBrowser_StoreAppsSmartScreenOff" 0
Call :sz "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "SmartScreenEnabled" "Off"
Call :sz "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "SmartScreenEnabled" "Off"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" "EnabledV9" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" "PreventOverride" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" "EnabledV9" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" "PreventOverride" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\System" "EnableSmartScreen" "0"
Call :sz "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControl" "Anywhere"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControlEnabled" "0"
:: Toplu REgler
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "AutoEndTasks" 1 & :: Kapatma iüleminde uygulamalar aáçk ise otomatik kapat ve bekleme sÅresi azaltçlçyor
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "HungAppTimeout" "1000" & :: Uygulamalar cevap vermedißi zaman gîrevi sonlandçr seáeneßine basçlmadan înceki bekleme sÅresini kçsaltçr.
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "WaitToKillAppTime" "2000" & :: Bilgisayar kapatçlçrken ya da oturumdan áçkçlçrken kullançcç uygulamalarçnçn kapatçlmasç iáin sistem bekleme sÅresini kçsaltçr.
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "LowLevelHooksTimeout" "1000" & :: Cevap vermeyen hizmetlerin kapatçlmasçndan înceki sistem bekleme sÅresini kçsaltçr.
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Control" "WaitToKillServiceTimeout" "2000" & :: Bilgisayarçn kapatçlmasç sçrasçnda durdurulacak hizmetler uyarçsç geldißinde, uygulamalarçn kapanmasç iáin beklenen sÅreyi kçsaltçr.
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "MenuShowDelay" "8" & :: MenÅ gîsterimi bekleme sÅresini azaltçr
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoLowDiskSpaceChecks" 1 & :: DÅüÅk Depolama alanç uyarçsç devre dçüç bçrakçlçyor... 
Call :sz "HKLM\OG_NTUSER\Control Panel\Mouse" "MouseHoverTime" 8 & :: Farenizle birlikte bir nesnenin Åzerine geldißinizde gîrÅlen aáçklamançn áçkçü sÅresini kçsaltçr
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "LinkResolveIgnoreLinkInfo" 1 & :: Bilgisayarçnçzda mevcut olmayan programlara ait kçsayollarçn baßlantçsçnçn Windows tarafçndan boüa vakit harcanarak aranmasçnç înler
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveSearch" 1 & :: Kçsayol baßlantç sorununu áîzmek iáin Windows'un diski aramasçnç înler
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveTrack" 1 & :: Kçsayol baßlantç sorununu áîzmek iáin Windows'un NTFS dosya sisteminin izleme îzellißini kullanmasçnç engeller
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Power" "HiberbootEnabled" 0 & :: Hiberboot Devre Dçüç bçrakçlçyor
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" 0 & :: Prefetch devre dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" 0 & :: Prefetch devre dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" 0 & :: Startup Delay (Baülangçá Gecikmesi) devre dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" 0 & :: Qos Limiti Devre Dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB1" 0 & :: SMB 1-2 Devre Dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB2" 0 & :: SMB 1-2 Devre Dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\FileSystem" "LongPathsEnabled" 1 & :: Windows 255 Karakter Sçnçrç devre dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableSR" 1 & :: Sistem geri yÅkleme kapatçlçyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" 0 & :: Automatic Diagnostic Logger (Otomatik Teühis Kaydedici) devre dçüç 
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management" "ClearPageFileAtShutdown" "1" & :: Kapatma sçrasçnda Pagefile dosyalarçnç temizle
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" "EnableActiveProbing" "0" & :: Kapatma sçrasçnda Pagefile dosyalarçnç temizle
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" "0" & :: :: Disabled Startup Delay
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" "0" & :: Prefetch Kapat
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" "0" & :: Prefetch Kapat
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" "0" & :: Qos Limit Kaldçr
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB1" "0" & :: SMB1-2 Kapatma
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB2" "0" & :: SMB1-2 Kapatma
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\FileSystem" "LongPathsEnabled" "1" & :: Windows 255 Karakter Sçnçrçnç Kaldçrma
Call :sz "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" "ModRiskFileTypes" ".bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd" & :: Uygulamalar aáçlçrken gÅvenlik uyarçlarç devre dçüç bçrakçlsçn
Call :delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" & :: Metadata Tracking delete
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\System" "EnableActivityFeed" "0" & :: Timeline Kapat
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" "0" & :: Automatic Diagnostic Logger (Otomatik Teühis Kaydedici) devre dçüç 
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\SQMLogger" "Start" "0" & :: òületim sistemi înyÅkleme iüleminde meydana gelen olaylarç kaydeder.
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy" "1" & :: Reklam kimlißi etkinlißi kapatçlçyor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices" "TCGSecurityActivationDisabled" "0" & :: Windows'un Geliümiü Depolama aygçtlarçnç etkinleütirmesine izin verme
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" "1" & :: Windows Hata Raporlama devre dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" "0" & :: Wifi Hotspot Raporlama devre dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" "value" "0" & :: GÅvenli Wifi noktalarçna otomatik baßlan devre dçüç bçrakçlçyor..
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" "0" & :: Windows Reklam Kimlißini devre dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "HideSCAHealth" "1" & :: GÅvenlik ve Bakçm simgesi devre dçüç bçrakçlçyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Power" "HiberbootEnabled" "0" & :: Hiberboot Devre Dçüç 
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Power" "HibernateEnabled" "0" & :: Hazçrda bekletme îzellißi Devre Dçüç
Call :dword "HKLM\OG_SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" "0" & :: MÅüteri Deneyim Programçnç devre dçüç bçrakçr
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\SQMClient\Windows" "CEIPEnable" "0" & :: MÅüteri Deneyim Programçnç devre dçüç bçrakçr
Call :binary "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "Link" "00000000" & :: Kçsayol yazçsç kaldçrçlçyor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableSR" "1" & :: Sistem geri yÅkleme kapatçr
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Photos.8wekyb3d8bbwe" Disabled 1 & ::Fotoßraflar uygulamasç arka planda áalçümaz
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Photos.8wekyb3d8bbwe" SleepDisabled 1 & ::Fotoßraflar uygulamasç arka planda áalçümaz
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Photos.8wekyb3d8bbwe" DisabledByUser 1 & :: Fotoßraflar uygulamasç arka planda áalçümaz
:: eklentiler
Call :sz "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" "update_url" "https://clients2.google.com/service/update2/crx" & :: UBlock Origin
Call :sz "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" "update_url" "https://clients2.google.com/service/update2/crx" & :: HTTPS Everywhere 
Call :sz "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" "update_url" "https://clients2.google.com/service/update2/crx" & :: Clear URL's
:: Sahiplißi al
Call :vesz "HKLM\OG_SOFTWARE\Classes\*\shell\runas" "Sahiplißi Al" 
Call :sz "HKLM\OG_SOFTWARE\Classes\*\shell\runas" "Icon" "imageres.dll,73" 
Call :sz "HKLM\OG_SOFTWARE\Classes\*\shell\runas" "NoWorkingDirectory" "" 
Call :vesz "HKLM\OG_SOFTWARE\Classes\*\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F" 
Call :sz "HKLM\OG_SOFTWARE\Classes\*\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F"
Call :vesz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas" "Sahiplißi Al"
Call :sz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas" "Icon" "imageres.dll,73"
Call :sz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas" "NoWorkingDirectory" ""
Call :vesz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t"
Call :sz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t"
Call :sz "HKLM\OG_SOFTWARE\Classes\.bat\ShellNew" "NullFile" "" & :: Saß tçk Yeni bîlÅmÅne Bat dosyasç oluüturma ekle
::3D Nesneler
Call :delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
Call :delete "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
timeout /t 7 /nobreak > NUL
Call :RegTopla
goto WindowsEditMenu

:: ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:katilimsizonline
powershell -command "Start-Process '%konum2%\Ekler\On.Katilimsiz.bat'
goto :eof

:katilimsizoffline
powershell -command "Start-Process '%konum2%\Ekler\Off.Katilimsiz.bat'
goto :eof

:konum2
cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum2=%%a
set konum2=%konum2:~0,-6%
goto :EOF

:MerkezWim
echo  %ESC%[90m∫%ESC%[0m %RGB%[32mINDEX%RGB%[0m %ESC%[90m∫%ESC%[0m %RGB%[32mMòMARò%RGB%[0m %ESC%[90m∫%ESC%[0m %RGB%[32m   SöRöM%RGB%[0m    %ESC%[90m∫%ESC%[0m  %RGB%[32mDòL%RGB%[0m   %ESC%[90m∫%ESC%[0m    %RGB%[32mEDòT%RGB%[0m     %ESC%[90m∫%ESC%[0m    %RGB%[32mòSòM%RGB%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%MerkezWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Modified') do (
								echo  %ESC%[90mÃÕÕÕÕÕÕÕŒÕÕÕÕÕÕÕÕŒÕÕÕÕÕÕÕÕÕÕÕÕÕŒÕÕÕÕÕÕÕÕŒÕÕÕÕÕÕÕÕÕÕÕÕÕŒÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ%ESC%[0m
								echo      %RGB%[92m%%a%RGB%[0m      %RGB%[33m%%b%RGB%[0m    %RGB%[36m %%d.%%e%RGB%[0m    %RGB%[33m%%f%RGB%[0m    %RGB%[36m%%h%RGB%[0m  %RGB%[37m %%g%RGB%[0m
								)
							)
						)
					)
				)
			)
		)
	)
)
GOTO :EOF

:degisken1
set /p MerkezWim=%RGB%[97m  %RGB%%RGB%[92m Klasîr veya Dosya yolu : %RGB%[0m
	if %MerkezWim%==x GOTO menu
	if %MerkezWim%==X GOTO menu
	
echo %MerkezWim%\ > %konum2%\Edit\Logs\Slash.txt
Find /C /I "\\" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set MerkezWim=%MerkezWim:~0,-1%
						echo [%date% - %time%] ^| degisken1 ^| ISO kalçbçndan yol verildi. %MerkezWim% >> %konum2%\Logs
						DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL)
Find "boot.wim" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken1 ^| boot.wim dosyasç tançmlandç. %MerkezWim% >> %konum2%\Logs
						goto :eof)
Find "install" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken1 ^| install.wim dosya yolu direkt tançmlandç. %MerkezWim% >> %konum2%\Logs
						goto :eof)
dir /b %MerkezWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set MerkezWim="%MerkezWim%\sources\install.wim")
	if %errorlevel%==1 (set MerkezWim="%MerkezWim%\sources\install.esd")
echo [%date% - %time%] ^| degisken1 ^| òmaj klasîr yolu verildi. %MerkezWim% >> %konum2%\Logs
goto :eof

:degisken2
set /p EkleWim=%RGB%[97m  %RGB%%RGB%[92m Klasîr veya Dosya yolu : %RGB%[0m
	if %EkleWim%==x GOTO menu
	if %EkleWim%==X GOTO menu

echo %EkleWim%\ > %konum2%\Edit\Logs\Slash.txt
Find /C /I "\\" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set EkleWim=%EkleWim:~0,-1%
						echo [%date% - %time%] ^| degisken2 ^| ISO kalçbçndan yol verildi. %EkleWim% >> %konum2%\Logs
						DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL)
Find "install" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set EkleWim=%EkleWim%
						echo [%date% - %time%] ^| degisken2 ^| install.wim dosya yolu direkt tançmlandç. %EkleWim% >> %konum2%\Logs
						DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL
						goto :eof)
dir /b %EkleWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set EkleWim="%EkleWim%\sources\install.wim")
	if %errorlevel%==1 (set EkleWim="%EkleWim%\sources\install.esd")
echo [%date% - %time%] ^| degisken2 ^| òmaj klasîr yolu verildi. %EkleWim% >> %konum2%\Logs
goto :eof

:degisken3
mode con cols=90 lines=20
echo 
echo  %RGB%[96m ôrnek:%RGB%%RGB%[33m "C:\OgnitorenKs.Toolbox\Edit\Mount"%RGB%[0m
set /p Mount=%ESC%[97m  %ESC%%ESC%[92m Imaj klasîr yolu : %ESC%[0m
	if %Mount%==x GOTO WindowsEditMenu
	if %Mount%==X GOTO WindowsEditMenu
echo [%date% - %time%] ^| degisken3 ^| Mount klasîr yolu tançmlandç. Mount=%Mount% >> %konum2%\Logs
goto :eof

:degisken4
set /p MerkezWim=%RGB%[97m  %RGB%%RGB%[92m Klasîr veya Dosya yolu : %RGB%[0m
	if %MerkezWim%==x GOTO menu
	if %MerkezWim%==X GOTO menu
	
echo %MerkezWim%\ > %konum2%\Edit\Logs\Slash.txt
Find /C /I "\\" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (echo %ESC%[91m HATA! ISO dosyasç baßlanamaz.
						echo %ESC%[92m Klasîre áçkarçp deneyiniz.
						echo [%date% - %time%] ^| degisken4 ^| HATA! ^> ISO kalçbç baßlanmaya áalçütç. MerkezWim=%MerkezWim% >> %konum2%\logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
Find "boot.wim" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken4 ^| boot.wim dosya yolu tançmlandç. MerkezWim=%MerkezWim% >> %konum2%\logs
						goto :eof)
dir /b %MerkezWim%\sources\boot.wim > NUL 2>&1
	if %errorlevel%==0 (set MerkezWim="%MerkezWim%\sources\boot.wim")
	if %errorlevel%==1 (set MerkezWim="%MerkezWim%\boot.wim")
echo [%date% - %time%] ^| degisken4 ^| òmaj klasîr yolu verildi. MerkezWim=%MerkezWim% >> %konum2%\logs
Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:1 > %konum2%\Edit\Logs\setupindex.txt
FIND "Setup" %konum2%\Edit\Logs\setupindex.txt > NUL 2>&1
	if %errorlevel%==0 (set index=1)
	if %errorlevel%==1 (set index=2)
echo [%date% - %time%] ^| degisken4 ^| Setup index numarasç %index% tespit edildi. MerkezWim=%MerkezWim% >> %konum2%\logs
DEL /F /Q /A "%konum2%\Edit\Logs\setupindex.txt" > NUL 2>&1
cls
goto :eof

::---------------------------------------------------------------------------------------------------------------------------------------------------------
:PowerRun
set PowerRun=%konum2%\Files\PowerRun.exe /SW:0 %SystemRoot%\system32\cmd.exe /c
goto :EOF


:SetupDownload
%konum2%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=1WSaIkfQdiBywEYGguZEy_8X_jcDu--sN" -O %konum2%\Download\Setup.zip
powershell -command "Expand-Archive -Force '%konum2%\Download\Setup.zip' '%konum2%\Files'"
echo [%date% - %time%] ^| SetupDownload ^| Setup.zip dosyasç indirildi >> %konum2%\logs
goto :eof

:icodownload
echo 
%konum2%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=1_Vcmp6xUwlqwuUdAjscS9bnGEi_XW24G" -O %konum2%\Files\Newico.zip
echo [%date% - %time%] ^| icodownload ^|  Newico.zip dosyasç indirildi >> %konum2%\logs
goto :eof

:: ========================================================================================================================================================
:imagexexport
mode con cols=99 lines=30
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo    %ESC%[33m (%~4 %~5)%ESC%%ESC%[32m birleütirme iülemi geráekleütiriliyor...%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
echo [%date% - %time%] ^| AIO Maker ^| "%~3" dosyasçna "%~1" dosyasçndan "%~4 %~5" sÅrÅmÅ entegre edildi >> %konum2%\Logs
Dism /Export-Image /SourceImageFile:%~1 /SourceIndex:%~2 /DestinationImageFile:%~3 /DestinationName:"%~4" /Compress:Max
::%konum2%\Files\imagex.exe /export "%~1" %~2 "%~3" "%~4 %~5"
goto :eof

::---------------------------------------------------------------------------------------------------------------------------------------------------------
::  %~1: Eklewim | %~2: %%a(indexnumaralarç) | %~3: (MerkezWim) | %~4: %%c(SÅrÅm ismi) | %~5: %%b(SÅrÅm mimarisi)" |
:: ========================================================================================================================================================

:esdtowim
cls
echo  %ESC%[90m…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª%ESC%[0m
echo    %ESC%[32m Index%ESC%%ESC%[33m %~2 %ESC%%ESC%[32m%ESC%%ESC%[33m (%~3 %~4)%ESC%%ESC%[32m dînÅütÅrÅlÅyor...%ESC%[0m
echo  %ESC%[90m»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº%ESC%[0m
dir /b %konum2%\Edit\ESDtoWIM\install.wim > NUL 2>&1
	if %errorlevel%==0 (echo ESDtoWIM ^| HATA! Mevcut install.wim dosyasç Åzerine ekleme iülemi geráekleütirildi %~1 %~2 %~3 %~4 >> %konum2%\logs)
Dism /Export-Image /SourceImageFile:"%~1" /SourceIndex:%~2 /DestinationImageFile:%konum2%\Edit\ESDtoWIM\install.wim /Compress:max /CheckIntegrity
timeout /t 1 /nobreak > NUL
goto :eof
::---------------------------------------------------------------------------------------------------------------------------------------------------------
::  %~1: MerkezWim | %~2: %%a(indexnumaralarç) | %~3: %%c(SÅrÅm ismi) | %~4: %%b(SÅrÅm mimarisi)" |
:: ========================================================================================================================================================

:key
reg add "%~1" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /f)
goto :eof

:dword
reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f)
goto :eof

:binary
reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f)
goto :eof

:sz
reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f)
goto :eof

:vesz
reg add "%~1" /ve /t REG_SZ /d "%~2" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /ve /t REG_SZ /d "%~2" /f)
goto :eof

:multisz
reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f)
goto :eof

:delete
reg delete "%~1" /f
	if %errorlevel%==1 (%PowerRun% reg delete "%~1" /f)
goto :eof

::---------------------------------------------------------------------------------------------------------------------------------------------------------

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0

:menuRGB
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set RGB=%%b
  exit /B 0
)
exit /B 0


::---------------------------------------------------------------------------------------------------------------------------------------------------------


:PasifeAlinanlar
