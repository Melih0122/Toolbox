:: ==============================================================================================================================
::                               NOTEPAD++ > Kodlama > Karakter Takm > Trk‡e > OEM857
:: ==============================================================================================================================
::
::       þþþþþþþ   þþþþþþ   þþ    þþ þþþþ þþþþþþþþ  þþþþþþþ  þþþþþþþþ  þþþþþþþþ þþ    þþ þþ    þþ  þþþþþþ
::      þþ     þþ þþ    þþ  þþþ   þþ  þþ     þþ    þþ     þþ þþ     þþ þþ       þþþ   þþ þþ   þþ  þþ    þ
::      þþ     þþ þþ        þþþþ  þþ  þþ     þþ    þþ     þþ þþ     þþ þþ       þþþþ  þþ þþ  þþ   þþ
::      þþ     þþ þþ   þþþþ þþ þþ þþ  þþ     þþ    þþ     þþ þþþþþþþþ  þþþþþþ   þþ þþ þþ þþþþþ      þþþþþþ 
::      þþ     þþ þþ    þþ  þþ  þþþþ  þþ     þþ    þþ     þþ þþ   þþ   þþ       þþ  þþþþ þþ  þþ         þþ
::      þþ     þþ þþ    þþ  þþ   þþþ  þþ     þþ    þþ     þþ þþ    þþ  þþ       þþ   þþþ þþ   þþ  þþ    þþ
::       þþþþþþþ   þþþþþþ   þþ    þþ þþþþ    þþ     þþþþþþþ  þþ     þþ þþþþþþþþ þþ    þþ þþ    þþ  þþþþþþ 
::
::  Hazrlayan: Hseyin UZUNYAYLA / OgnitorenKs
::  -------------------------------------------
::  Toolbox' hazrlad§m sistemlerde temel programlar indirip, basit bir Ÿekilde sistem zerinde dzenleme yapmas i‡in hazrladm.
::  Srekli olarak gncellenecektir. Toolbox' indirmek i‡in aŸa§daki linkleri kullanabilirsiniz.
::
::  ˜stek ve ”nerileriniz olursa, iletiŸim;
::  --------------------------------------
::  >> Discord: OgnitorenKs#2737 
::  >>    Mail: ognitorenks@gmail.com
::
::                                                >>   WEB PAGE   <<
::                                         --------------------------------
::                                         >>  ognitorenks.blogspot.com  <<

:: ==============================================================================================================================
echo off
cls
title OgnitorenKs Windows Edit”r

setlocal
call :ColorEnd
Call :ColorEnd2

:: ==============================================================================================================================
::  RENK HAR˜TASI
::  -------------
:: %C%^[32m > ISO okuma b”lmlerinde bilgi b”lmlerinde kullanlyor. (YeŸil)
:: %C%^[33m > Sar renkli b”lmler. Men i‡indeki sar renkli b”lmler
:: %C%^[36m > Mavi renkli b”lmler. Men i‡indeki mavi renkli b”lmler
:: %C%^[37m > ISO okuma b”lmlerinde kullanlyor                                                                                                        
:: %C%^[90m > Gri renkli b”lmler. Men i‡indeki gri renkli b”lmler(€er‡eveler dahil de§il)
:: %C%^[92m > De§iŸken rengi (YeŸil). Kullancdan bir de§er girmesi istenilen b”lmlere aittir.
:: %C%^[96m > ˜kinci de§iŸken veya bilgi rengi (A‡k Mavi) | Menye yansyan bilgi mesajlar. Ana ekrana dŸecek olan ikinci de§iŸken b”lmlerine aittir.
::
:: %R%^[32m > ˜Ÿlem (yeŸil) numara rengidir. Men i‡indeki iŸlem numaralardr.
:: %R%^[36m > Mende mavi renkli iŸlem numara rengidir. Ayrca menye d”n renk ayardr.
:: %R%^[100m > BaŸlk b”lmlerinde arka plan dolduran renktir.
:: %R%^[1;97m > BaŸlkta dolgu b”lmnn i‡inde yer alan yaz rengidir. 1; b”lm kaln yazmasn sa§lar. 97m beyaz renk yazmasn sa§lar.
:: %R%^[90m > €er‡eveleri ve | iŸaretlerinin rengini de§iŸir.
:: 
:: ==============================================================================================================================

Call :Location
set Mount=%Location%\Edit\Mount

:AdminKontrol
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo 
echo 
echo 
echo 
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº                                                         º%R%[0m
echo  %R%[90mº%R%[1;97m%R%[41m               ! UYARI !          ! UYARI !              %R%[0m%R%[90mº%R%[0m
echo  %R%[90mº                                                         º%R%[0m
echo  %R%[90mº%R%[1;97m%R%[42m            Sa§-Tk Y”netici olarak ‡alŸtrn           %R%[0m%R%[90mº%R%[0m
echo  %R%[90mº                                                         º%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo 
echo              %R%[92mKapatmak i‡in herhangi bir tuŸa basnz%R%[0m
pause > nul
exit
)

:WindowsEditMenu
cls
mode con cols=53 lines=41
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m            OgnitorenKs Windows Edit”r           %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº   %R%[32m 1.%C%[33m WIM / ESD Okuyucu%C%[0m                         %R%[90mº%R%[0m
echo  %R%[90mº   %R%[32m 2.%C%[33m AIO Windows Hazrla%C%[0m                       %R%[90mº%R%[0m
echo  %R%[90mº   %R%[32m 3.%C%[33m ISO Hazrla%C%[0m                               %R%[90mº%R%[0m
echo  %R%[90mº   %R%[32m 4.%C%[33m ESD to WIM%C%[90m [D™NšžTšR]%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mº   %R%[32m 5.%C%[33m WIM /Delete%C%[90m [S˜L]%C%[0m                         %R%[90mº%R%[0m
echo  %R%[90mº   %R%[32m 6.%C%[33m WIM Mount%C%[90m [YšKLE]%C%[0m                         %R%[90mº%R%[0m
echo  %R%[90mº   %R%[32m 7.%C%[33m WIM Remount%C%[90m [YEN˜DEN YšKLE]%C%[0m               %R%[90mº%R%[0m
echo  %R%[90mº   %R%[32m 8.%C%[33m WIM Unmount%C%[90m [TOPLA]%C%[0m                       %R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº   %R%[36m 9.%C%[33m Regedit%C%[90m [YšKLE]%C%[0m                           %R%[90mº%R%[0m
echo  %R%[90mº  %R%[32m 10.%C%[33m Regedit%C%[90m [TOPLA]%C%[0m                           %R%[90mº%R%[0m 
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº  %R%[32m 11.%C%[33m Dism Update%C%[90m [ONLINE]%C%[0m                      %R%[90mº%R%[0m
echo  %R%[90mº  %R%[36m 12.%C%[33m Dism Update%C%[90m [OFFLINE]%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº  %R%[36m 13.%C%[33m Appx ykleyici%C%[90m [OFFLINE]%C%[0m                  %R%[90mº%R%[0m
echo  %R%[90mº  %R%[32m 14.%C%[33m Appx ykleyici%C%[90m [ONLINE]%C%[0m                   %R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº  %R%[32m 15.%C%[33m Driver Yedekle%C%[90m [ONLINE]%C%[0m                   %R%[90mº%R%[0m
echo  %R%[90mº  %R%[36m 16.%C%[33m Driver Ykle%C%[90m [OFFLINE]%C%[0m                    %R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº  %R%[32m 17.%C%[33m Setup Dzenle%C%[90m [OFFLINE]%C%[0m                   %R%[90mº%R%[0m
echo  %R%[90mº  %R%[36m 18.%C%[33m Yeni Simgeleri ykle%C%[90m [OFFLINE]%C%[0m            %R%[90mº%R%[0m
echo  %R%[90mº  %R%[36m 19.%C%[33m Walpaper De§iŸtir%C%[90m [OFFLINE]%C%[0m               %R%[90mº%R%[0m
echo  %R%[90mº  %R%[36m 20.%C%[33m Telemetry engelle (Hosts)%C%[90m[OFFLINE]%C%[0m        %R%[90mº%R%[0m
echo  %R%[90mº  %R%[36m 21.%C%[33m OneDrive Sil %C%[90m[OFFLINE]%C%[0m                    %R%[90mº%R%[0m
echo  %R%[90mº  %R%[36m 22.%C%[33m Gpedit.msc ekle%C%[90m[OFFLINE]%C%[0m                  %R%[90mº%R%[0m
echo  %R%[90mº  %R%[36m 23.%C%[33m Hyper-V ekle%C%[90m[OFFLINE]%C%[0m                     %R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº  %R%[36m 24.%C%[90m [M]%C%[33m Katlmsz Program/Ayar ekle %C%[90m[OFFLINE]%C%[0m%R%[90mº%R%[0m
echo  %R%[90mº  %R%[36m 25.%C%[90m [M]%C%[33m Katlmsz Program/Ayar ekle %C%[90m[ONLINE]%C%[0m %R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº  %R%[36m 26.%R%[36m Mount yol tanmla%R%[0m                         %R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p WindowsEditMenu= %R%[92m ˜Ÿlem : %R%[0m
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
	if %WindowsEditMenu%==11 (Call :OnDismUpdate)
	if %WindowsEditMenu%==12 (Call :OffDismUpdate)
	if %WindowsEditMenu%==13 (Call :OffAppx)
	if %WindowsEditMenu%==14 (Call :OnAppx)
	if %WindowsEditMenu%==15 (Call :Driveryedek)
	if %WindowsEditMenu%==16 (Call :Driveryukle)
	if %WindowsEditMenu%==17 (Call :SetupEdit)
	if %WindowsEditMenu%==18 (Call :Newico)
	if %WindowsEditMenu%==19 (Call :walpaper)
	if %WindowsEditMenu%==20 (Call :Hosts)
	if %WindowsEditMenu%==21 (Call :OneDrivedel)
	if %WindowsEditMenu%==22 (Call :gpeditmsc)
	if %WindowsEditMenu%==23 (Call :HyperV)
	if %WindowsEditMenu%==24 (Call :katilimsizoffline)
	if %WindowsEditMenu%==25 (Call :katilimsizonline)
	if %WindowsEditMenu%==26 (Call :degisken3)
) else
	goto WindowsEditMenu

:WimReader
cls
mode con cols=70 lines=15
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                        WIM / ESD Okuyucu                         %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
Call :degisken1

echo [%date% - %time%] ^| WimReader ^| "%MerkezWim%" dosyasnn i‡eri§i okundu. >> %Location%\Logs

mode con cols=99 lines=27
echo  %R%[90mÉÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
Call :MerkezWim
echo  %R%[90mÈÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo                      %R%[92m Menye d”nmek i‡in herhangi bir tuŸa basnz.%R%[0m
pause > NUL 
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:stop
:AioImport
mode con cols=70 lines=20
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                       AIO Windows Hazrla                        %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo   %C%[96m Ana Srm%R%[0m 
Call :degisken1

:aioimport2
echo   %C%[96m Eklenecek Srm%R%[0m 
Call :degisken2

cls
mode con cols=99 lines=40
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                                           ANA SšRšM                                         %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
Call :MerkezWim
echo  %R%[90mÌÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                                        EKLENECEK SšRšM                                      %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo  %R%[90mº%R%[0m %R%[32mINDEX%R%[0m %R%[90mº%R%[0m %R%[32mM˜MAR˜%R%[0m %R%[90mº%R%[0m %R%[32m   SšRšM%R%[0m    %R%[90mº%R%[0m  %R%[32mD˜L%R%[0m   %R%[90mº%R%[0m    %R%[32mED˜T%R%[0m     %R%[90mº%R%[0m    %R%[32m˜S˜M%R%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%EkleWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Modified') do (
								echo  %R%[90mÌÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
								echo      %R%[32m%%a%R%[0m      %R%[33m%%b%R%[0m    %R%[36m %%d.%%e%R%[0m    %R%[33m%%f%R%[0m    %R%[36m%%h%R%[0m  %R%[37m %%g%R%[0m
								)
							)
						)
					)
				)
			)
		)
	)
)
echo  %R%[90mÈÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p $selectindex=%R%[96m  €oklu Se‡im %R%[90mx,y%R%[0m :

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
echo  %R%[90mÉÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
Call :MerkezWim
echo  %R%[90mÈÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo 
echo %R%[92m BirleŸtirme iŸlemi tamamland%R%[0m
echo %R%[92m Menye d”nmek i‡in herhangi bir tuŸa basnz.%R%[0m
pause > NUL
goto :eof
:stop

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ


:ISOMaker
cls
mode con cols=70 lines=20
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                             ISO MAKER                            %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo  %R%[96m ™rnek:%R%[33m C:\Windows10Pro%R%[0m
set /p MerkezWim=%C%[92m   ˜maj klas”r yolu : %C%[0m
	if %MerkezWim%==x GOTO WindowsEditMenu
	if %MerkezWim%==X GOTO WindowsEditMenu
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
set /p etiket=%C%[92m   Etiket ismi : %C%[0m
	if %etiket%==x GOTO WindowsEditMenu
	if %etiket%==X GOTO WindowsEditMenu
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
set /p isokayit=%C%[92m   ISO ismi : %C%[0m
	if %isokayit%==x GOTO WindowsEditMenu
	if %isokayit%==X GOTO WindowsEditMenu
 
mode con cols=85 lines=45
echo [%date% - %time%] ^| ISO Maker ^| ˜maj:"%MerkezWim%" ^| Etiket ismi:"%etiket%" ^| ISO ismi:"%isokayit%" olarak ISO'ya dosyas oluŸturuldu. >> %Location%\Logs
::%Location%\Files\oscdimg.exe -b%MerkezWim%\boot\etfsboot.com -h -u2 -m -l%etiket% %MerkezWim%\ %Location%\Edit\%isokayit%.iso
::%Location%\Files\oscdimg.exe -m -o -u2 -udfver102 -bootdata:2#p0,e,bd%MerkezWim%\boot\etfsboot.com#pEF,e,bd%MerkezWim%\efi\microsoft\boot\efisys.bin %etiket% %isokayit%.iso
%Location%\Files\oscdimg.exe -m -o -u2 -udfver102 -bootdata:2#p0,e,b%MerkezWim%\boot\etfsboot.com#pEF,e,b%MerkezWim%\efi\microsoft\boot\efisys.bin -L%etiket% %MerkezWim%\ %Location%\Edit\%isokayit%.iso

powershell -command "Start-Process '%Location%\Edit'"
echo %R%[92m ˜Ÿlem tamamland.%R%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:esdtowimexport
cls
mode con cols=70 lines=20
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                         ESD / WIM D”nŸtr                       %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
Call :degisken1
mode con cols=99 lines=30
echo  %R%[90mÉÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
Call :MerkezWim
echo  %R%[90mÈÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p $selectindex=%R%[96m  €oklu Se‡im %R%[90mx,y%R%[0m :

echo %$selectindex% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
echo %$selectindex% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu

FOR %%a in (%$selectindex%) do (
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Architecture"') do (
		FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Name"') do (
			echo [%date% - %time%] ^| ESDtoWIM ^| %MerkezWim% - %%a - %%c - %%b srm ‡karld >> %Location%\Logs
			Call :esdtowim "%MerkezWim%" "%%a" "%%c" "%%b"
			)
		)
	)
)

powershell -command "Start-Process '%Location%\Edit\ESDtoWIM'"
echo %R%[92m ˜Ÿlem tamamland.%R%[0m 
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:WimDelete
cls
mode con cols=70 lines=20
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                               WIM S˜L                            %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
Call :degisken1
mode con cols=99 lines=30
:WimDell
echo  %R%[90mÉÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
Call :MerkezWim
echo  %R%[90mÈÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p selectindex=%C%[92m ˜Ÿlem : %C%[0m
	if %selectindex%==X goto WindowsEditMenu
	if %selectindex%==x goto WindowsEditMenu
echo [%date% - %time%] ^| WimDelete ^| Index="%selectindex%" silindi. "%MerkezWim%" >> %Location%\Logs
Powershell -command "Remove-WindowsImage -ImagePath '%MerkezWim%' -Index '%selectindex%' -CheckIntegrity"
:: Kullanlabilecek farkl y”ntemler
::%Location%\Files\imagex.exe /delete "%MerkezWim%" %selectindex% /check
::Dism /Delete-Image /ImageFile:%MerkezWim% /Index:%selectindex% /CheckIntegrity
cls
goto WimDell

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:WimMount
cls
mode con cols=70 lines=20
dir /b %Location%\Edit\Mount\Windows > NUL 2>&1
	if %errorlevel%==0 (echo %R%[32m Mevcut imaj toplanyor...%R%[0m 
						Call :WimRemount
						Call :WimUnmount)
RD /S /Q "%Location%\Edit\Mount" > NUL 2>&1
mkdir "%Location%\Edit\Mount" > NUL 2>&1
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                              WIM MOUNT                           %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
Call :degisken1
mode con cols=99 lines=30
echo  %R%[90mÉÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
Call :MerkezWim
echo  %R%[90mÈÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p selectindex= %C%[92m ˜Ÿlem : %C%[0m
	if %selectindex%==X goto WindowsEditMenu
	if %selectindex%==x goto WindowsEditMenu
:: AŸa§daki FOR d”ngleri ile sistem "ismi" ile "mimarisi" alnmaktadr. 
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%selectindex% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%selectindex% ^| FIND "Name"') do ( set iname=%%c)
cls
:: Ger‡ekleŸtirilen iŸlemi g”stermektedir.
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo    %R%[32m Index%R%[33m %selectindex% %R%[32m%R%[33m (%iname% %iarc%)%R%[32m a‡lyor...%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
Dism /Mount-Image /ImageFile:"%MerkezWim%" /MountDir:"%Location%\Edit\Mount" /Index:%selectindex%
::%Location%\Files\imagex.exe /mountrw %MerkezWim% %selectindex% "%Location%\Edit\Mount"
echo [%date% - %time%] ^| WimMount ^| "%selectindex%" - "%%c - %%b" srm Mount edildi. "%MerkezWim%" >> %Location%\Logs
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:WimRemount
mode con cols=70 lines=20
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                             WIM Remount                          %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo [%date% - %time%] ^| WimRemount ^| %Mount% yeniden ykleme iŸlemi yapld >> %Location%\Logs
Dism /Remount-Image /MountDir:"%Location%\Edit\Mount"
::%Location%\Files\imagex.exe /remount %Location%\Edit\Mount
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:WimUnmount
cls
mode con cols=70 lines=20
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                             WIM Unmount                          %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo [%date% - %time%] ^| WimUnmount ^| %Mount% klas”r topland >> %Location%\Logs
Dism /UnMount-Image /MountDir:%Location%\Edit\Mount /Commit
	if %errorlevel%==1 (echo  %R%[91m TOPLAMA ˜žLEM˜ BAžARISIZ! %R%[0m
						echo [%date% - %time%] ^| WimUnmount ^| HATA! %Mount% klas”r unmount yaplamyor >> %Location%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
						
::%Location%\Files\imagex.exe /unmount /commit %Location%\Edit\Mount
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:stop
:RegYukle
mode con cols=70 lines=20
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                            Regedit Ykle                         %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m

:Offreg
dir /b %Mount%\Windows\System32\config\SOFTWARE > NUL 2>&1
	if %errorlevel%==1 (echo  %R%[1;97m%R%[41m            Yol hatal! Regedit kaytlar bulunumad.               %R%[0m
						echo [%date% - %time%] ^| RegYukle ^| HATA! Regedit kaytlar yklenemedi. Mount="%Mount%" >> %Location%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)

echo [%date% - %time%] ^| RegYukle ^| %Mount% klas”rnden regedit kaytlar yklendi >> %Location%\Logs
reg load HKLM\OG_COMPONENTS "%Mount%\Windows\System32\config\COMPONENTS" >nul
reg load HKLM\OG_DEFAULT "%Mount%\Windows\System32\config\default" >nul
reg load HKLM\OG_NTUSER "%Mount%\Users\Default\ntuser.dat" >nul
reg load HKLM\OG_SOFTWARE "%Mount%\Windows\System32\config\SOFTWARE" >nul
reg load HKLM\OG_SYSTEM "%Mount%\Windows\System32\config\SYSTEM" >nul
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:RegTopla
cls
echo [%date% - %time%] ^| RegTopla ^| "%Mount%" klas”rnden regedit kaytlar topland >> %Location%\Logs
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

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:OnAppx
cls
mode con cols=70 lines=40
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                        Online Appx Ykleyici                     %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
for /f %%i in ('"dir /b %Location%\Edit\Appx\*"') do (
	echo [%date% - %time%] ^| OnlineAppxYukle ^| "%Location%\Edit\Appx\%%i" appx dosyas yklendi >> %Location%\Logs 
	PowerShell.exe -Command "Add-AppxPackage -Path %Location%\Edit\Appx\%%i"
)

echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:OffAppx
cls
mode con cols=70 lines=40
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                        Offline Appx Ykleyici                    %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m

for /f %%i in ('"dir /b %Location%\Edit\Appx\*"') do (
	echo [%date% - %time%] ^| OfflineAppxYukle ^| "%Location%\Edit\Appx\%%i" appx dosyas yklendi >> %Location%\Logs 
	DISM /Image:%Mount% /Add-ProvisionedAppxPackage /PackagePath:%Location%\Edit\Appx\%%i /SkipLicense
)
Dism /Image:%Mount% /Optimize-ProvisionedAppxPackage
	if %errorlevel%==1 (echo [%date% - %time%] ^| OfflineAppxYukle ^| HATA! Optimize-ProvisionedAppxPackage iŸlemi hata verdi. Mount=%Mount% >> %Location%\Logs)
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:stop
:OffDismUpdate
cls
mode con cols=70 lines=40
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                         DISM Update Offline                      %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
	
:OffDism
for /f %%i in ('"dir /b %Location%\Edit\Update\*"') do (
	echo [%date% - %time%] ^| OfflineDismYukle ^| "%Location%\Edit\Update\%%i" update dosyas yklendi. Mount=%Mount% >> %Location%\Logs 
	DISM /Image:%Mount% /add-package /packagepath="%Location%\Edit\Update\%%i"
)
echo %R%[92m WinSxS temizleniyor...%R%[0m
DISM /Image:%Mount% /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 (echo %R%[91m TEM˜ZLEME ˜žLEM˜ BAžARISIZ%R%[0m
						echo [%date% - %time%] ^| OfflineDismYukle ^| WinSxS temizlenirken hata oluŸtu. Mount=%Mount% >> %Location%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
echo %R%[92m Appx dosyalar optimize ediliyor...%R%[0m
Dism /Image:%Mount% /Optimize-ProvisionedAppxPackage
	if %errorlevel%==1 (echo [%date% - %time%] ^| OfflineDismYukle ^| Optimize-ProvisionedAppxPackage iŸleminde hata oluŸtu. Mount=%Mount% >> %Location%\Logs)
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:OnDismUpdate
cls
mode con cols=70 lines=40
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                         DISM Update Online                      %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
for /f %%i in ('"dir /b %Location%\Edit\Update\*"') do (
	echo [%date% - %time%] ^| OnlineDismYukle ^| "%Location%\Edit\Update\%%i" update dosyas yklendi >> %Location%\Logs 
	DISM /Online /add-package /packagepath="%Location%\Edit\Update\%%i"
)
echo %R%[92m WinSxS temizleniyor...%R%[0m
DISM /Online /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 ( echo  %R%[91m TEM˜ZLEME ˜žLEM˜ BAžARISIZ! %R%[0m 
						 timeout /t 5 /nobreak > NUL
						 goto WindowsEditMenu)

echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof
:stop

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:DriverYedek
cls
mode con cols=70 lines=40
RD /S /Q "%Location%\Edit\Driver\Yedek" > NUL 2>&1
mkdir "%Location%\Edit\Driver\Yedek" > NUL 2>&1
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                           Driver Yedekle                        %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo [%date% - %time%] ^| DriverYedek ^| Driverlar yedeklendi >> %Location%\Logs
Dism /Online /Export-Driver /Destination:%Location%\Edit\Driver\Yedek

powershell -command "Start-Process '%Location%\Edit\Driver\Yedek'"
echo %R%[92m ˜Ÿlem tamamland.%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:DriverYukle
cls
mode con cols=70 lines=40
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                        Driver Ykle Offline                     %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo [%date% - %time%] ^| DriverYukle ^| Driver yklendi. Mount=%Mount% >> %Location%\Logs
Dism /Image:%Mount% /Add-Driver /Driver:%Location%\Edit\Driver /Recurse
	if %errorlevel%==1 (RD /S /Q "%Location%\Edit\Driver" > NUL 2>&1
						mkdir "%Location%\Edit\Driver" > NUL 2>&1
						echo [%date% - %time%] ^| DriverYukle ^| HATA! Driver yklenirken hata oluŸtu. Mount=%Mount% >> %Location%\Logs
						goto DriverYukle)

echo  %R%[92m ˜Ÿlem tamamland. %R%[0m 
timeout /t 2 /nobreak > NUL
goto :eof
:stop

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:SetupEdit
cls
mode con cols=70 lines=40
:: Setup dosyas kontrol edilir. Yok ise indirilir.
dir /b %Location%\Files\Setup10.zip > NUL 2>&1
	if %errorlevel%==1 (Call :SetupDownload)

:: Mount klas”rnn i‡eri§i kontorl edilir. Klas”r i‡inde eski sisteme ait kalntlar var ise iŸlem iptal edilir.	
dir /b "%Location%\Edit\Mount\Windows" > NUL 2>&1
	if %errorlevel%==0 (echo %R%[32m ™ncelikle ykl olan Mount klas”rn toplaynz.%R%[0m
						echo [%date% - %time%] ^| SetupEdit ^| HATA! Mount klas”rnde ykl sistem var >> %Location%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)

:: Hata alnmamas i‡in Mount klas”r silinip yeniden oluŸturulur.						
RD /S /Q "%Location%\Edit\Mount" > NUL 2>&1
mkdir "%Location%\Edit\Mount" > NUL 2>&1

echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                           Setup Dzenle                         %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
Call :degisken4

mode con cols=99 lines=30
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%index% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%index% ^| FIND "Name"') do ( set iname=%%c)
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[92m Index%R%[33m %index% %R%[92m%R%[33m (%iname%)%R%[92m a‡lyor...%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo [%date% - %time%] ^| SetupEdit ^| %MerkezWim% - %iname% ‡karlyor >> %Location%\Logs
Dism /Mount-Image /ImageFile:"%MerkezWim%" /MountDir:"%Location%\Edit\Mount" /Index:%index%
:: %Location%\Files\imagex.exe /mountrw %MerkezWim% %index% "%Location%\Edit\Mount"

:: AŸa§daki Mount tanmlamas Reg ykleme b”lm i‡indir. O b”lmde Mount de§iŸkenine setup dosyalarn ‡kard§mz klas”rn yolunu tanmlyoruz
set Mount=%Location%\Edit\Mount

Call :PowerRun
cls
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo    %C%[96m ˜Ÿlem yaplacak Windows srmn se‡iniz%C%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
set /p windowssetup=%R%[97m  %R%[92m [ Windows 11:%R%[1;97m 1 %R%[35m/%R%[92m Windows 10:%R%[1;97m 2 %R%[92m] : %R%[0m
	if %windowssetup%==1 (%PowerRun% powershell -command "Expand-Archive -Force '%Location%\Files\Setup10.zip' '%Location%\Edit\Mount'"
						  %PowerRun% powershell -command "Expand-Archive -Force '%Location%\Files\Setup11.zip' '%Location%\Edit\Mount'"
						  echo [%date% - %time%] ^| SetupEdit ^| Windows 11 setup dosyalar Setup imajna entegre edildi. >> %Location%\Logs
						  timeout /t 5 /nobreak > NUL)
	if %windowssetup%==2 (%PowerRun% powershell -command "Expand-Archive -Force '%Location%\Files\Setup10.zip' '%Location%\Edit\Mount'"
						  echo [%date% - %time%] ^| SetupEdit ^| Windows 10 setup dosyalar Setup imajna entegre edildi. >> %Location%\Logs
						  timeout /t 5 /nobreak > NUL)
echo 
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo    %C%[96m Men konumunu se‡iniz%C%[0m
echo  %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
set /p barkonum=%R%[97m   %R%[92m[%R%[92m Sol:%R%[1;97m 1 %R%[35m/%R%[92m šst:%R%[1;97m 2 %R%[35m/%R%[92m Sa§:%R%[1;97m 3 %R%[35m/%R%[92m Alt:%R%[1;97m 4 %R%[92m] : %R%[0m 
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
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo    %R%[92m Setup dosyas toplanyor...%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
Dism /UnMount-Image /MountDir:"%Location%\Edit\Mount" /Commit
::%Location%\Files\imagex.exe /unmount /commit %Location%\Edit\Mount
echo  %R%[92m ˜Ÿlem tamamland. %R%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

:SetupBar
echo [%date% - %time%] ^| SetupEdit ^| Lerup Launcher konumu "%~1" se‡ildi >> %Location%\Logs
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

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Newico
cls
mode con cols=70 lines=40
dir /b %Location%\Files\Newico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :icodownload)
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                    Yeni Simgeleri Ykle Offline                 %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
Call :PowerRun
echo [%date% - %time%] ^| Newico ^| Yeni simgeler entegre edildi. Mount=%Mount% >> %Location%\Logs
%PowerRun% Powershell -command "Expand-Archive -Force '%Location%\Files\Newico.zip' '%Mount%\Windows'"

echo  %R%[92m ˜Ÿlem tamamland. %R%[0m  
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:walpaper
cls
mode con cols=70 lines=40
Call :RegTopla
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                     Walpaper De§iŸtir Offline                   %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
Call :PowerRun
echo [%date% - %time%] ^| Walpaper ^| Yeni duvar ka§tlar yklendi. Mount=%Mount% >> %Location%\Logs
%PowerRun% Powershell -command "Expand-Archive -Force '%Location%\Files\Walpaper.zip' '%Mount%\Windows\Web'"

echo  %R%[92m ˜Ÿlem tamamland. %R%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Hosts
echo [%date% - %time%] ^| Hosts ^| Yeni simgeler entegre edildi. Mount=%Mount% >> %Location%\Logs
%PowerRun% copy /y "%Location%\Files\Hosts" "%Mount%\Windows\System32\Drivers\etc"
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:OneDrivedel
cls
mode con cols=70 lines=40
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                       OneDrive Sil Offline                       %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
Call :RegTopla
echo [%date% - %time%] ^| OneDrive ^| OneDrive silindi. Mount=%Mount% >> %Location%\Logs
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDriveSetup.exe"
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDriveSettingSyncProvider.dll"
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDrive.ico"
Call :Offreg
reg delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f >nul 2>&1
Call :RegTopla
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:gpeditmsc
mode con cols=70 lines=40
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                        Gpedit.Msc Offline                        %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo [%date% - %time%] ^| Gpedit.msc ^| Gpedit.msc entegre edildi. Mount=%Mount% >> %Location%\Logs
FOR /f %%a IN ('"dir /b %Mount%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') do (Dism /Image:%Mount% /Add-Package:"%SystemRoot%\servicing\Packages\%%a")
FOR /f %%a IN ('"dir /b %Mount%\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum") do (Dism /Image:%Mount% /Add-Package:"%SystemRoot%\servicing\Packages\%%a")
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:HyperV
mode con cols=70 lines=40
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo  %R%[90mº%R%[1;97m%R%[100m                          Hyper-V Offline                         %R%[0m%R%[90mº%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo [%date% - %time%] ^| HyperV ^| Hyper-V entegre edildi. Mount=%Mount% >> %Location%\Logs
For /f %%a IN ('"dir /b %Mount%\Windows\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Image:%Mount% /Add-Package:"%Mount%\Windows\servicing\Packages\%%a")
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-All
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Tools-All
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Management-PowerShell
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Hypervisor
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Services
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Management-Clients
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:katilimsizonline
powershell -command "Start-Process '%Location%\Extra\On.Katilimsiz.bat'
goto :eof

:katilimsizoffline
powershell -command "Start-Process '%Location%\Extra\Off.Katilimsiz.bat'
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Location
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Location=%Location:~0,-6%
goto :EOF

:MerkezWim
echo  %R%[90mº%R%[0m %C%[32mINDEX%C%[0m %R%[90mº%R%[0m %C%[32mM˜MAR˜%C%[0m %R%[90mº%R%[0m %C%[32m   SšRšM%C%[0m    %R%[90mº%R%[0m  %C%[32mD˜L%C%[0m   %R%[90mº%R%[0m    %C%[32mED˜T%C%[0m     %R%[90mº%R%[0m    %C%[32m˜S˜M%C%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%MerkezWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Modified') do (
								echo  %R%[90mÌÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
								echo      %C%[92m%%a%C%[0m      %C%[33m%%b%C%[0m    %C%[36m %%d.%%e%C%[0m    %C%[33m%%f%C%[0m    %C%[36m%%h%C%[0m  %C%[37m %%g%C%[0m
								)
							)
						)
					)
				)
			)
		)
	)
)
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:degisken1
set /p MerkezWim=%C%[97m  %C%[92m Klas”r veya Dosya yolu : %C%[0m
	if %MerkezWim%==x GOTO menu
	if %MerkezWim%==X GOTO menu

echo %MerkezWim%\ > %Location%\Edit\Logs\Slash.txt
Find /C /I "\\" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set MerkezWim=%MerkezWim:~0,-1%
						echo [%date% - %time%] ^| degisken1 ^| ISO kalbndan yol verildi. %MerkezWim% >> %Location%\Logs
						DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL)
Find "boot.wim" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken1 ^| boot.wim dosyas tanmland. %MerkezWim% >> %Location%\Logs
						goto :eof)
Find "install" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken1 ^| install.wim dosya yolu direkt tanmland. %MerkezWim% >> %Location%\Logs
						goto :eof)
dir /b %MerkezWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set MerkezWim="%MerkezWim%\sources\install.wim")
	if %errorlevel%==1 (set MerkezWim="%MerkezWim%\sources\install.esd")
echo [%date% - %time%] ^| degisken1 ^| ˜maj klas”r yolu verildi. %MerkezWim% >> %Location%\Logs
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:degisken2
set /p EkleWim=%C%[97m  %C%[92m Klas”r veya Dosya yolu : %C%[0m
	if %EkleWim%==x GOTO menu
	if %EkleWim%==X GOTO menu

echo %EkleWim%\ > %Location%\Edit\Logs\Slash.txt
Find /C /I "\\" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set EkleWim=%EkleWim:~0,-1%
						echo [%date% - %time%] ^| degisken2 ^| ISO kalbndan yol verildi. %EkleWim% >> %Location%\Logs
						DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL)
Find "install" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set EkleWim=%EkleWim%
						echo [%date% - %time%] ^| degisken2 ^| install.wim dosya yolu direkt tanmland. %EkleWim% >> %Location%\Logs
						DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL
						goto :eof)
dir /b %EkleWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set EkleWim="%EkleWim%\sources\install.wim")
	if %errorlevel%==1 (set EkleWim="%EkleWim%\sources\install.esd")
echo [%date% - %time%] ^| degisken2 ^| ˜maj klas”r yolu verildi. %EkleWim% >> %Location%\Logs
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:degisken3
mode con cols=90 lines=20
echo 
echo  %C%[96m ™rnek:%C%[33m "C:\OgnitorenKs.Toolbox\Edit\Mount"%C%[0m
set /p Mount=%R%[97m  %R%[92m Imaj klas”r yolu : %R%[0m
	if %Mount%==x GOTO WindowsEditMenu
	if %Mount%==X GOTO WindowsEditMenu
echo [%date% - %time%] ^| degisken3 ^| Mount klas”r yolu tanmland. Mount=%Mount% >> %Location%\Logs
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:degisken4
set /p MerkezWim=%C%[97m  %C%[92m Klas”r veya Dosya yolu : %C%[0m
	if %MerkezWim%==x GOTO menu
	if %MerkezWim%==X GOTO menu
	
echo %MerkezWim%\ > %Location%\Edit\Logs\Slash.txt
Find /C /I "\\" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (echo %R%[91m HATA! ISO dosyas ba§lanamaz.%R%[0m
						echo %R%[92m Klas”re ‡karp deneyiniz.%R%[0m
						echo [%date% - %time%] ^| degisken4 ^| HATA! ^> ISO kalb ba§lanmaya ‡alŸt. "%MerkezWim%" >> %Location%\logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
Find "boot.wim" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken4 ^| boot.wim dosya yolu tanmland. "%MerkezWim%" >> %Location%\logs
						goto :eof)
dir /b %MerkezWim%\sources\boot.wim > NUL 2>&1
	if %errorlevel%==0 (set MerkezWim="%MerkezWim%\sources\boot.wim")
	if %errorlevel%==1 (set MerkezWim="%MerkezWim%\boot.wim")
echo [%date% - %time%] ^| degisken4 ^| ˜maj klas”r yolu verildi. "%MerkezWim%" >> %Location%\logs
Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:1 > %Location%\Edit\Logs\setupindex.txt
FIND "Setup" %Location%\Edit\Logs\setupindex.txt > NUL 2>&1
	if %errorlevel%==0 (set index=1)
	if %errorlevel%==1 (set index=2)
echo [%date% - %time%] ^| degisken4 ^| Setup index numaras "%index%" tespit edildi. "%MerkezWim%" >> %Location%\logs
DEL /F /Q /A "%Location%\Edit\Logs\setupindex.txt" > NUL 2>&1
cls
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PowerRun
set PowerRun=%Location%\Files\PowerRun.exe /SW:0 %SystemRoot%\system32\cmd.exe /c
goto :EOF


:SetupDownload
FOR /F "tokens=1" %%i in ('FIND "Setup.zip" %Location%\Extra\Links.bat') do set link=%%i
%Location%\Files\wget -q --no-check-certificate --show-progress "%link%" -O %Location%\Download\Setup.zip
powershell -command "Expand-Archive -Force '%Location%\Download\Setup.zip' '%Location%\Files'"
echo [%date% - %time%] ^| SetupDownload ^| Setup.zip dosyas indirildi >> %Location%\logs
goto :eof

:icodownload
FOR /F "tokens=1" %%i in ('FIND "Newico.zip" %Location%\Extra\Links.bat') do set link=%%i
%Location%\Files\wget -q --no-check-certificate --show-progress "%link%" -O %Location%\Files\Newico.zip
echo [%date% - %time%] ^| icodownload ^|  Newico.zip dosyas indirildi >> %Location%\logs
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:imagexexport
mode con cols=99 lines=30
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo    %R%[33m (%~4 %~5)%R%[32m birleŸtirme iŸlemi ger‡ekleŸtiriliyor...%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
echo [%date% - %time%] ^| AIO Maker ^| "%~3" dosyasna "%~1" dosyasndan "%~4 %~5" srm entegre edildi >> %Location%\Logs
Dism /Export-Image /SourceImageFile:%~1 /SourceIndex:%~2 /DestinationImageFile:%~3 /DestinationName:"%~4" /Compress:Max
::%Location%\Files\imagex.exe /export "%~1" %~2 "%~3" "%~4 %~5"
goto :eof

::---------------------------------------------------------------------------------------------------------------------------------------------------------
::  %~1: Eklewim | %~2: %%a(indexnumaralar) | %~3: (MerkezWim) | %~4: %%c(Srm ismi) | %~5: %%b(Srm mimarisi)" |
:: ========================================================================================================================================================

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:esdtowim
cls
echo  %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo    %R%[32m Index%R%[33m %~2 %R%[32m%R%[33m (%~3 %~4)%R%[32m d”nŸtrlyor...%R%[0m
echo  %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
dir /b %Location%\Edit\ESDtoWIM\install.wim > NUL 2>&1
	if %errorlevel%==0 (echo ESDtoWIM ^| HATA! Mevcut install.wim dosyas zerine ekleme iŸlemi ger‡ekleŸtirildi %~1 %~2 %~3 %~4 >> %Location%\logs)
Dism /Export-Image /SourceImageFile:"%~1" /SourceIndex:%~2 /DestinationImageFile:%Location%\Edit\ESDtoWIM\install.wim /Compress:max /CheckIntegrity
timeout /t 1 /nobreak > NUL
goto :eof
::---------------------------------------------------------------------------------------------------------------------------------------------------------
::  %~1: MerkezWim | %~2: %%a(indexnumaralar) | %~3: %%c(Srm ismi) | %~4: %%b(Srm mimarisi)" |
:: ========================================================================================================================================================

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

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

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

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


::---------------------------------------------------------------------------------------------------------------------------------------------------------


:PasifeAlinanlar
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:: delhard
Call :PowerRun
::%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\MsSecFlt.sys" > NUL 
REM System Guard Runtime Monitor Agent (Sistem korumas)
::%PowerRun% DEL "%Mount%\Windows\System32\drivers\SgrmAgent.sys" > NUL 
REM Windows Defender
::%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\WdBoot.sys" > NUL 
REM Windows Defender
::%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\WdFilter.sys" > NUL 
REM Windows Defender
::%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\WdNisDrv.sys" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\smartscreen.exe" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\CompatTelRunner.exe" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\securityhealthhost.exe" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\securityhealthservice.exe" > NUL  
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\securityhealthsystray.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\SgrmBroker.exe" > NUL 2>&1
::Dism /Image:"%Mount%" /Remove-Capability /CapabilityName:App.Support.QuickAssist~~~~0.0.1.0 > NUL 2>&1
::Dism /Image:"%Mount%" /Remove-Capability /CapabilityName:Print.Fax.Scan~~~~0.0.1.0 > NUL 2>&1
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

::Windows10regedit
echo [%date% - %time%] ^| Win10regedit ^| Windows 10 hazr regedit kaytlar eklendi. Mount=%Mount% >> %Location%\Logs
Call :PowerRun
Call :RegTopla
Call :Offreg
Call :sz "HKLM\OG_NTUSER\System\GameConfigStore" "GameDVR_Enabled" "0" & :: Oyun modu devre dŸ braklyor... 
Call :dword "HKLM\OG_NTUSER\System\GameConfigStore" "GameDVR_FSEBehavior" "2" & :: Tam ekran iyileŸtirmeleri devre dŸ braklyor...
goto RegeditOrtak

::Windows11regedit
echo [%date% - %time%] ^| Win11regedit ^| Windows 11 hazr regedit kaytlar eklendi. Mount=%Mount% >> %Location%\Logs
Call :PowerRun
Call :RegTopla
Call :Offreg
Call :delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" & :: Terminal sa§ tktan kaldrlyor...
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "GlobalUserDisabled" "1" & :: Arka planda uygulamalarn ‡alŸmasn engelleniyor... 
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" "LetAppsRunInBackground" "2" & :: Arka planda uygulamalarn ‡alŸmasn engelleniyor... 
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "SeparateProcess" "0" & :: Windows 11 Explorer Ram kullanm sorun dzeltiliyor...
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarMn" "0" & :: Sohbet ikonu kaldrlyor...
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarDa" "0" & :: Widget ikonu kaldrlyor...
Call :dword "HKLM\OG_NTUSER\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" "1" & :: Arama ‡ubu§u g”rev ‡ubu§undan kaldrlyor.
Call :dword "HKLM\OG_SOFTWARE\Microsoft\MdmCommon\SettingValues" "LocationSyncEnabled" 0 & :: Cihazm bul ”zelli§i kapatlyor.
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" 0 & :: Reklam kimli§i kapatlyor
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\DWM" "ColorPrevalence" 1 & :: BaŸlk ‡ubuklarnda ve pencere kenarlarnda vurgu rengi g”sterilsin.
goto RegeditOrtak

::RegeditOrtak
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
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Narrator\QuickStart" "SkipQuickStart" 1 &  :: Narrator QuickStart kapatlyor
:: 3.Parti programlarn yklenmesini engelle
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
:: Microsoft Store otomatik gncelleŸtirmeler devre dŸ braklyor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\WindowsStore" "AutoDownload" "2"
:: ™nerilen uygulamalarn yeniden yklenmesi engelleniyor
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
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "AutoEndTasks" 1 & :: Kapatma iŸleminde uygulamalar a‡k ise otomatik kapat ve bekleme sresi azaltlyor
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "HungAppTimeout" "1000" & :: Uygulamalar cevap vermedi§i zaman g”revi sonlandr se‡ene§ine baslmadan ”nceki bekleme sresini ksaltr.
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "WaitToKillAppTime" "2000" & :: Bilgisayar kapatlrken ya da oturumdan ‡klrken kullanc uygulamalarnn kapatlmas i‡in sistem bekleme sresini ksaltr.
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "LowLevelHooksTimeout" "1000" & :: Cevap vermeyen hizmetlerin kapatlmasndan ”nceki sistem bekleme sresini ksaltr.
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Control" "WaitToKillServiceTimeout" "2000" & :: Bilgisayarn kapatlmas srasnda durdurulacak hizmetler uyars geldi§inde, uygulamalarn kapanmas i‡in beklenen sreyi ksaltr.
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "MenuShowDelay" "8" & :: Men g”sterimi bekleme sresini azaltr
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoLowDiskSpaceChecks" 1 & :: DŸk Depolama alan uyars devre dŸ braklyor... 
Call :sz "HKLM\OG_NTUSER\Control Panel\Mouse" "MouseHoverTime" 8 & :: Farenizle birlikte bir nesnenin zerine geldi§inizde g”rlen a‡klamann ‡kŸ sresini ksaltr
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "LinkResolveIgnoreLinkInfo" 1 & :: Bilgisayarnzda mevcut olmayan programlara ait ksayollarn ba§lantsnn Windows tarafndan boŸa vakit harcanarak aranmasn ”nler
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveSearch" 1 & :: Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un diski aramasn ”nler
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveTrack" 1 & :: Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un NTFS dosya sisteminin izleme ”zelli§ini kullanmasn engeller
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Power" "HiberbootEnabled" 0 & :: Hiberboot Devre DŸ braklyor
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" 0 & :: Prefetch devre dŸ braklyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" 0 & :: Prefetch devre dŸ braklyor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" 0 & :: Startup Delay (BaŸlang‡ Gecikmesi) devre dŸ braklyor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" 0 & :: Qos Limiti Devre DŸ braklyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB1" 0 & :: SMB 1-2 Devre DŸ braklyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB2" 0 & :: SMB 1-2 Devre DŸ braklyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\FileSystem" "LongPathsEnabled" 1 & :: Windows 255 Karakter Snr devre dŸ braklyor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableSR" 1 & :: Sistem geri ykleme kapatlyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" 0 & :: Automatic Diagnostic Logger (Otomatik TeŸhis Kaydedici) devre dŸ 
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management" "ClearPageFileAtShutdown" "1" & :: Kapatma srasnda Pagefile dosyalarn temizle
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" "EnableActiveProbing" "0" & :: Kapatma srasnda Pagefile dosyalarn temizle
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" "0" & :: :: Disabled Startup Delay
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" "0" & :: Prefetch Kapat
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" "0" & :: Prefetch Kapat
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" "0" & :: Qos Limit Kaldr
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB1" "0" & :: SMB1-2 Kapatma
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB2" "0" & :: SMB1-2 Kapatma
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\FileSystem" "LongPathsEnabled" "1" & :: Windows 255 Karakter Snrn Kaldrma
Call :sz "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" "ModRiskFileTypes" ".bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd" & :: Uygulamalar a‡lrken gvenlik uyarlar devre dŸ braklsn
Call :delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" & :: Metadata Tracking delete
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\System" "EnableActivityFeed" "0" & :: Timeline Kapat
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" "0" & :: Automatic Diagnostic Logger (Otomatik TeŸhis Kaydedici) devre dŸ 
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\SQMLogger" "Start" "0" & :: ˜Ÿletim sistemi ”nykleme iŸleminde meydana gelen olaylar kaydeder.
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy" "1" & :: Reklam kimli§i etkinli§i kapatlyor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices" "TCGSecurityActivationDisabled" "0" & :: Windows'un GeliŸmiŸ Depolama aygtlarn etkinleŸtirmesine izin verme
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" "1" & :: Windows Hata Raporlama devre dŸ braklyor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" "0" & :: Wifi Hotspot Raporlama devre dŸ braklyor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" "value" "0" & :: Gvenli Wifi noktalarna otomatik ba§lan devre dŸ braklyor..
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" "0" & :: Windows Reklam Kimli§ini devre dŸ braklyor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "HideSCAHealth" "1" & :: Gvenlik ve Bakm simgesi devre dŸ braklyor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Power" "HiberbootEnabled" "0" & :: Hiberboot Devre DŸ 
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Power" "HibernateEnabled" "0" & :: Hazrda bekletme ”zelli§i Devre DŸ
Call :dword "HKLM\OG_SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" "0" & :: MŸteri Deneyim Programn devre dŸ brakr
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\SQMClient\Windows" "CEIPEnable" "0" & :: MŸteri Deneyim Programn devre dŸ brakr
Call :binary "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "Link" "00000000" & :: Ksayol yazs kaldrlyor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableSR" "1" & :: Sistem geri ykleme kapatr
::Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Photos.8wekyb3d8bbwe" Disabled 1 & ::Foto§raflar uygulamas arka planda ‡alŸmaz
::Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Photos.8wekyb3d8bbwe" SleepDisabled 1 & ::Foto§raflar uygulamas arka planda ‡alŸmaz
::Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Photos.8wekyb3d8bbwe" DisabledByUser 1 & :: Foto§raflar uygulamas arka planda ‡alŸmaz
:: eklentiler
Call :sz "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" "update_url" "https://clients2.google.com/service/update2/crx" & :: UBlock Origin
Call :sz "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" "update_url" "https://clients2.google.com/service/update2/crx" & :: HTTPS Everywhere 
Call :sz "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" "update_url" "https://clients2.google.com/service/update2/crx" & :: Clear URL's
:: Sahipli§i al
Call :vesz "HKLM\OG_SOFTWARE\Classes\*\shell\runas" "Sahipli§i Al" 
Call :sz "HKLM\OG_SOFTWARE\Classes\*\shell\runas" "Icon" "imageres.dll,73" 
Call :sz "HKLM\OG_SOFTWARE\Classes\*\shell\runas" "NoWorkingDirectory" "" 
Call :vesz "HKLM\OG_SOFTWARE\Classes\*\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F" 
Call :sz "HKLM\OG_SOFTWARE\Classes\*\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F"
Call :vesz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas" "Sahipli§i Al"
Call :sz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas" "Icon" "imageres.dll,73"
Call :sz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas" "NoWorkingDirectory" ""
Call :vesz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t"
Call :sz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t"
Call :sz "HKLM\OG_SOFTWARE\Classes\.bat\ShellNew" "NullFile" "" & :: Sa§ tk Yeni b”lmne Bat dosyas oluŸturma ekle
::3D Nesneler
::Call :delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
::Call :delete "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
Call :sz "HKLM\OG_NTUSER\System\GameConfigStore" "GameDVR_Enabled" "0" & :: Oyun modu devre dŸ braklyor... 
Call :dword "HKLM\OG_NTUSER\System\GameConfigStore" "GameDVR_FSEBehavior" "2" & :: Tam ekran iyileŸtirmeleri devre dŸ braklyor...
Call :sz "HKLM\OG_NTUSER\Control Panel\Accessibility\StickyKeys" "Flags" 506 & :: YapŸkan tuŸlar kapatr
timeout /t 7 /nobreak > NUL
Call :RegTopla
goto WindowsEditMenu
