echo off
cls

::             Notepad++ > Kodlama > Karakter Takm > Turkce > Oem 857 secin. Turkce karakterler duzelecektir. 
:: ==============================================================================================================================
::                                               HAZIRLAYAN 
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
::  Toolbox' hazrlad§m sistemlerde baz konularda kullanclara yardmc olmas i‡in hazrlamŸtm.
::  Zamanla yapt§m geliŸtirmeler sonucu Toolbox'a kullanc dostu bir‡ok b”lm ekledim.
::  Toolbox srekli olarak gncellenecektir. Toolbox' indirebilece§iniz siteler;
::   www.technopat.net\Sosyal 
::   ognitorenks.blogspot.com
::  Bu iki site harici herhangi bir site de paylaŸm yapmayaca§m. Harici bir sayfa zerinden indirmeyiniz
::  Farkl istek ve ”nerileriniz olursa, ˜letiŸim;
::   Discord: OgnitorenKs#2737 
::   Mail: ognitorenks@gmail.com
::   
::   Site: ognitorenks.blogspot.com (Bu b”lm Ÿu an aktif de§il)
::   Site: www.technopat.net\Sosyal (Yeni bir konu a‡p yada hazrlad§m konularda @OgnitorenKs yazarak etiketleyebilirsiniz) 
:: ==============================================================================================================================


setlocal
call :setESC

:: Admin yetkisi kontrol edilir.
:AdminKontrol
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo  ___________________________________________________________
echo 
echo                           -------
echo                       %ESC%[91m***  UYARI ***%ESC%[0m
echo                           -------
echo 
echo              %ESC%[92mSa§-Tk Y”netici olarak ‡alŸtrnz...%ESC%[0m 
echo 
echo  ___________________________________________________________
echo 
echo             %ESC%[92mKapatmak i‡in herhangi bir tuŸa basnz.%ESC%[0m 
pause > nul
exit
)

:: ==============================================================================================================================
::                                                  DOWNLOAD KONUM B™LšMš
::
::   Download konumunu de§iŸtirmek istiyorsanz;
::   set download= eŸittirden sonra klas”r yolunu yazn.
::   Varsaylan olarak Toolbox klas”r i‡ine ykler.

call :konum
set download=%konum%\Download

:: ==============================================================================================================================

FOR /F "tokens=2 delims='='" %%A in ('wmic os get RegisteredUser /value') do SET registereduser=%%A  
FOR /F "tokens=2 delims='='" %%A in ('wmic os get CSName /value') do SET pcname=%%A
FOR /F "tokens=2 delims='='" %%i in ('wmic os get Caption /value') do SET caption=%%i
set caption=%caption:~10%
FOR /F "tokens=2 delims='='" %%A in ('wmic os get OSArchitecture /value') do SET osarch=%%A
set osarch=%osarch:~0,-5%
FOR /F "tokens=2 delims='='" %%b in ('wmic os get BuildNumber /value') do SET buildnumber=%%b
FOR /F "tokens=3 delims= " %%c in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" ^| find "DisplayVersion"') do set ImageBuild=%%c

:menu
cls
cd /d "%~dp0"
mode con cols=96 lines=35   
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo   %ESC%[35m^|%ESC%%ESC%[107m OGNITORENKS TOOLBOX %ESC%[0m%ESC%[35m^|%ESC%%ESC%[36m USER:%ESC%%ESC%[33m %registereduser% %ESC%%ESC%[35m^|%ESC%%ESC%[36m PC-Name: %ESC%%ESC%[33m%pcname%%ESC%[0m	
echo   %ESC%[35m^|%ESC%%ESC%[36m OS:%ESC%%ESC%[33m %caption% %ESC%%ESC%[35m^|%ESC%%ESC%[33m x%osarch% %ESC%%ESC%[35m^|%ESC%%ESC%[33m %ImageBuild% %ESC%[0m%ESC%[35m^|%ESC%%ESC%[33m %buildnumber%%ESC%[0m	
echo   %ESC%[35m^|%ESC%%ESC%[35m%ESC%%ESC%[35m^|%ESC%[0m
echo   %ESC%[35m^|%ESC%%ESC%[92m  1.%ESC%%ESC%[97m All ˜n One Runtimes%ESC%[0m  ^| %ESC%[92m 27.%ESC%%ESC%[36m Kdenlive%ESC%[0m               %ESC%[35m^|%ESC%[0m       %ESC%[92m Windows ED˜T %ESC%[0m          %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m  2.%ESC%%ESC%[33m Discord%ESC%[0m              ^| %ESC%[92m 28.%ESC%%ESC%[36m Krita%ESC%[0m                  %ESC%[35m^|%ESC%%ESC%[92m 53.%ESC%%ESC%[33m Windows 10 Edit%ESC%[0m             %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m  3.%ESC%%ESC%[33m Whatsapp%ESC%[0m             ^| %ESC%[92m 29.%ESC%%ESC%[36m Gimp%ESC%[0m                   %ESC%[35m^|%ESC%%ESC%[92m 54.%ESC%%ESC%[33m Windows 11 Edit%ESC%[0m             %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m  4.%ESC%%ESC%[33m Signal%ESC%[0m               ^| %ESC%[92m 30.%ESC%%ESC%[36m OBS Studio%ESC%[0m             %ESC%[35m^|%ESC%%ESC%[92m 55.%ESC%%ESC%[33m WIM / ESD Reader%ESC%[0m            %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m  5.%ESC%%ESC%[33m Telegram%ESC%[0m             ^| %ESC%[92m 31.%ESC%%ESC%[36m LightShoot%ESC%[0m             %ESC%[35m^|%ESC%%ESC%[92m 56.%ESC%%ESC%[33m AIO Maker%ESC%[0m                   %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m  6.%ESC%%ESC%[33m Microsoft Teams%ESC%[0m      ^| %ESC%[92m 32.%ESC%%ESC%[36m Audacity%ESC%[0m               %ESC%[35m^|%ESC%%ESC%[92m 57.%ESC%%ESC%[33m Regedit [Ykle]%ESC%[0m             %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m  7.%ESC%%ESC%[33m Skype%ESC%[0m                ^| %ESC%[92m 33.%ESC%%ESC%[36m K-Lite Codec%ESC%[0m           %ESC%[35m^|%ESC%%ESC%[92m 58.%ESC%%ESC%[33m Regedit [Topla]%ESC%[0m             %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m  8.%ESC%%ESC%[36m EpicGames%ESC%[0m            ^| %ESC%[92m 34.%ESC%%ESC%[36m VLC Media Player%ESC%[0m       %ESC%[35m^|%ESC%%ESC%[92m 59.%ESC%%ESC%[33m Dism Update [Online]%ESC%[0m        %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m  9.%ESC%%ESC%[36m Steam%ESC%[0m                ^| %ESC%[92m 35.%ESC%%ESC%[36m Aimp%ESC%[0m                   %ESC%[35m^|%ESC%%ESC%[92m 60.%ESC%%ESC%[33m Dism Update [Offline]%ESC%[0m       %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 10.%ESC%%ESC%[36m GOG Galaxy%ESC%[0m           ^| %ESC%[92m 36.%ESC%%ESC%[36m Format Factory%ESC%[0m         %ESC%[35m^|%ESC%%ESC%[92m 61.%ESC%%ESC%[33m Appx ykleyici [Offline]%ESC%[0m    %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 11.%ESC%%ESC%[36m Uplay%ESC%[0m                ^| %ESC%[92m 37.%ESC%%ESC%[33m Free Download Manager%ESC%[0m  %ESC%[35m^|%ESC%%ESC%[92m 62.%ESC%%ESC%[33m Appx ykleyici [Online]%ESC%[0m     %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 12.%ESC%%ESC%[36m Origin%ESC%[0m               ^| %ESC%[92m 38.%ESC%%ESC%[33m EagleGet%ESC%[0m               %ESC%[35m^|%ESC%%ESC%[92m 63.%ESC%%ESC%[33m Driver Yedekle [Online]%ESC%[0m     %ESC%[35m^|%ESC%[0m  
echo   %ESC%[35m^|%ESC%%ESC%[92m 13.%ESC%%ESC%[36m Cheat Engine%ESC%[0m         ^| %ESC%[92m 39.%ESC%%ESC%[33m ByClick Downloader%ESC%[0m     %ESC%[35m^|%ESC%%ESC%[92m 64.%ESC%%ESC%[33m Driver ykle [Offline]%ESC%[0m      %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 14.%ESC%%ESC%[36m Wemod%ESC%[0m                ^| %ESC%[92m 40.%ESC%%ESC%[33m Utorrent%ESC%[0m               %ESC%[35m^|%ESC%%ESC%[92m 65.%ESC%%ESC%[33m ˜maj i‡i de§iŸiklikler%ESC%[0m      %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 15.%ESC%%ESC%[37m League Of Legends%ESC%[0m    ^| %ESC%[92m 41.%ESC%%ESC%[33m GlassWire%ESC%[0m              %ESC%[35m^|%ESC%%ESC%[92m 66.%ESC%%ESC%[97m Windows Lite [Online]%ESC%[0m       %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 16.%ESC%%ESC%[37m Blitz%ESC%[0m                ^| %ESC%[92m 42.%ESC%%ESC%[33m TeamViewer%ESC%[0m             %ESC%[35m^|%ESC%[0m          %ESC%[92m BONUS%ESC%[0m               %ESC%[35m^|%ESC%[0m  
echo   %ESC%[35m^|%ESC%%ESC%[92m 17.%ESC%%ESC%[33m Google Chrome%ESC%[0m        ^| %ESC%[92m 43.%ESC%%ESC%[33m Hamachi%ESC%[0m                %ESC%[35m^|%ESC%%ESC%[92m 67.%ESC%%ESC%[97m %ESC%[0m                            %ESC%[35m^|%ESC%[0m  
echo   %ESC%[35m^|%ESC%%ESC%[92m 18.%ESC%%ESC%[33m Mozilla Firefox%ESC%[0m      ^| %ESC%[92m 44.%ESC%%ESC%[33m Stremio%ESC%[0m                %ESC%[35m^|%ESC%%ESC%[92m 68.%ESC%%ESC%[36m Gncelleme Sonras%ESC%[0m          %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 19.%ESC%%ESC%[33m Brave%ESC%[0m                ^| %ESC%[92m 45.%ESC%%ESC%[36m MSI Afterburner%ESC%[0m        %ESC%[35m^|%ESC%%ESC%[92m 69.%ESC%%ESC%[36m Sistem/Market Onar%ESC%[0m          %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 20.%ESC%%ESC%[33m Microsoft Edge%ESC%[0m       ^| %ESC%[92m 46.%ESC%%ESC%[36m Hibit Uninstaller%ESC%[0m      %ESC%[35m^|%ESC%%ESC%[92m 70.%ESC%%ESC%[36m PC Temizle%ESC%[0m                  %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 21.%ESC%%ESC%[36m Libre Office%ESC%[0m         ^| %ESC%[92m 47.%ESC%%ESC%[36m Unlocker%ESC%[0m               %ESC%[35m^|%ESC%%ESC%[92m 71.%ESC%%ESC%[93m Appx Y”netici (Online)%ESC%[0m      %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 22.%ESC%%ESC%[36m Adobe Reader%ESC%[0m         ^| %ESC%[92m 48.%ESC%%ESC%[36m OpenShell%ESC%[0m              %ESC%[35m^|%ESC%%ESC%[92m 72.%ESC%%ESC%[93m Folder to ISO%ESC%[0m               %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 23.%ESC%%ESC%[36m Notepad++%ESC%[0m            ^| %ESC%[92m 49.%ESC%%ESC%[36m SSD Fresh%ESC%[0m              %ESC%[35m^|%ESC%%ESC%[92m 73.%ESC%%ESC%[93m Fat32 to NTFS%ESC%[0m               %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 24.%ESC%%ESC%[36m Calibre%ESC%[0m              ^| %ESC%[92m 50.%ESC%%ESC%[36m Everything%ESC%[0m             %ESC%[35m^|%ESC%%ESC%[92m 74.%ESC%%ESC%[93m Sistem Hakknda%ESC%[0m             %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 25.%ESC%%ESC%[33m 7 - Zip%ESC%[0m              ^| %ESC%[92m 51.%ESC%%ESC%[36m TaskbarX%ESC%[0m               %ESC%[35m^|%ESC%%ESC%[92m 75.%ESC%%ESC%[93m Lisans Durumu%ESC%[0m               %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%%ESC%[92m 26.%ESC%%ESC%[33m WinRAR%ESC%[0m               ^| %ESC%[92m 52.%ESC%%ESC%[97m Format Sonras%ESC%[0m         %ESC%[35m^|%ESC%%ESC%[92m 76.%ESC%%ESC%[93m Ping ™l‡er%ESC%[0m                  %ESC%[35m^|%ESC%[0m 
echo   %ESC%[35m^|%ESC%[0m--------------------------------------------------------%ESC%[35m-%ESC%[0m---------------------------------%ESC%[35m^|%ESC%[0m
echo   %ESC%[35m^|%ESC%[0m                          %ESC%[92m 0.%ESC%%ESC%[91m Kalntlar temizleyerek kapat%ESC%[0m                              %ESC%[35m^|%ESC%[0m
echo   %ESC%[35m%ESC%[0m
set /p menu= %ESC%[92m  Yapmak istedi§iniz iŸlem : %ESC%[0m
	if %menu%==1 (Call :AIORuntimes)
	if %menu%==2 (Call :Discord)                
	if %menu%==3 (Call :Whatsapp)    
	if %menu%==4 (Call :Signal)          
	if %menu%==5 (Call :Telegram)       
	if %menu%==6 (Call :MicrosoftTeams)  
	if %menu%==7 (Call :Skype) 
	if %menu%==8 (Call :EpicGames)
	if %menu%==9 (Call :Steam)
	if %menu%==10 (Call :GOGGalaxy)
	if %menu%==11 (Call :Uplay)
	if %menu%==12 (Call :Origin)
	if %menu%==13 (Call :CheatEngine)
	if %menu%==14 (Call :Wemod)
	if %menu%==15 (Call :LOL)
	if %menu%==16 (Call :Blitz)
	if %menu%==17 (Call :GoogleChrome)
	if %menu%==18 (Call :Firefox)
	if %menu%==19 (Call :Brave)
	if %menu%==20 (Call :Edge)
	if %menu%==21 (Call :LibreOffice)
	if %menu%==22 (Call :AdobeReader)
	if %menu%==23 (Call :Notepad)
	if %menu%==24 (Call :Calibre)
	if %menu%==25 (Call :7Zip)
	if %menu%==26 (Call :WinRAR)
	if %menu%==27 (Call :Kdenlive)
	if %menu%==28 (Call :Krita)
	if %menu%==29 (Call :Gimp)
	if %menu%==30 (Call :OBS)
	if %menu%==31 (Call :LightShoot)
	if %menu%==32 (Call :DAudacity)
	if %menu%==33 (Call :Klite)
	if %menu%==34 (Call :VLC)
	if %menu%==35 (Call :Aimp)
	if %menu%==36 (Call :FormatFactory)
	if %menu%==37 (Call :FreeDownloadManager)
	if %menu%==38 (Call :EagleGet)
	if %menu%==39 (Call :ByClick)
	if %menu%==40 (Call :Utorrent)
	if %menu%==41 (Call :GlassWire)
	if %menu%==42 (Call :TeamViewer)
	if %menu%==43 (Call :Hamachi)
	if %menu%==44 (Call :Stremio)
	if %menu%==45 (Call :MsiAfterburner)
	if %menu%==46 (Call :HibitUninstaller)
	if %menu%==47 (Call :Unlocker)
	if %menu%==48 (Call :OpenShell)
	if %menu%==49 (Call :SSDFresh)    
	if %menu%==50 (Call :Everything)
	if %menu%==51 (Call :TaskbarX)
	if %menu%==52 (Call :FormatSonrasi)
	if %menu%==53 GOTO Win10SettingsMenu
	if %menu%==54 GOTO Win11SettingsMenu 
	if %menu%==55 GOTO Edit.Tweak.1.WimReader
	if %menu%==56 GOTO Edit.Tweak.2.AioImport
	if %menu%==57 (Call :Edit.Tweak.3.Regedit.Yukle)
	if %menu%==58 (Call :Edit.Tweak.4.Regedit.Topla)
	if %menu%==59 GOTO Edit.Tweak.8.DismUpdateOnline
	if %menu%==60 GOTO Edit.Tweak.7.DismUpdateOffline
	if %menu%==61 GOTO Edit.Tweak.6.OfflineAppxEkle
	if %menu%==62 GOTO Edit.Tweak.5.OnlineAppxEkle
	if %menu%==63 GOTO Edit.Tweak.9.Driver.Yedekle
	if %menu%==64 GOTO Edit.Tweak.10.Driver.Yukle
	if %menu%==65 GOTO Edit.Tweak.11.Setup.Edit
	if %menu%==66 GOTO Edit.Tweak.13.Online.Lite
	if %menu%==67 GOTO SistemiYedekle
	if %menu%==68 (Call :UpdateAfter)
	if %menu%==69 (Call :WindowsRepair)
	if %menu%==70 (Call :PCTemizle)
	if %menu%==71 (Call :AppxManager)
	if %menu%==72 (Call :FoldertoISO)
	if %menu%==73 (Call :Fat32toNTFS)
	if %menu%==74 (Call :SistemHakkinda)
	if %menu%==75 GOTO Slmgrvbs
	if %menu%==76 (Call :PingMeter)
	if %menu%==0 (cls&DEL /F /Q /A %download%\*&goto exit)
else
	goto menu
	
:AIORuntimes
:: https://www.microsoft.com/en-us/download/details.aspx?id=14431
Call :wget "https://download.microsoft.com/download/6/B/B/6BB661D6-A8AE-4819-B79F-236472F6070C/vcredist_x86.exe" 05x86ATL.exe /Q
Call :wget "https://download.microsoft.com/download/6/B/B/6BB661D6-A8AE-4819-B79F-236472F6070C/vcredist_x64.exe" 05x64ATL.exe /Q

:: https://www.microsoft.com/en-us/download/details.aspx?id=26347
Call :wget "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE" 05x86MFC.exe /Q
Call :wget "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE" 05x64MFC.exe /Q

:: https://www.microsoft.com/en-us/download/details.aspx?id=11895
Call :wget "https://download.microsoft.com/download/9/7/7/977B481A-7BA6-4E30-AC40-ED51EB2028F2/vcredist_x86.exe" 08x86ATL.exe /q
Call :wget "https://download.microsoft.com/download/9/7/7/977B481A-7BA6-4E30-AC40-ED51EB2028F2/vcredist_x64.exe" 08x64ATL.exe /q

:: https://www.microsoft.com/en-us/download/details.aspx?id=14431 
Call :wget "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe" 08x86MFC.exe /q
Call :wget "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe" 08x64MFC.exe /q

:: https://www.microsoft.com/en-us/download/details.aspx?id=26999
Call :wget "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe" 10x86.exe "/q /norestart"
Call :wget "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe" 10x64.exe "/q /norestart"

:: https://www.microsoft.com/en-us/download/details.aspx?id=30679
Call :wget "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe" 12x86.exe "/install /quiet /norestart"
Call :wget "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe" 12x64.exe "/install /quiet /norestart"

:: https://www.microsoft.com/en-us/download/details.aspx?id=40784
Call :wget "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe" 13x86.exe "/install /quiet /norestart"
Call :wget "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe" 13x64.exe "/install /quiet /norestart"

:: https://www.microsoft.com/tr-tr/download/details.aspx?id=48145
Call :wget "https://aka.ms/vs/16/release/vc_redist.x86.exe" 15x86.exe "/install /quiet /norestart"
Call :wget "https://aka.ms/vs/16/release/vc_redist.x64.exe" 15x64.exe "/install /quiet /norestart" 

:: https://www.java.com/tr/download/manual.jsp
Call :wget "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=245479_4d5417147a92418ea8b615e228bb6935" javax64.exe "INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable"

:: https://www.microsoft.com/en-us/download/details.aspx?id=20914
Call :wget "https://download.microsoft.com/download/A/C/2/AC2C903B-E6E8-42C2-9FD7-BEBAC362A930/xnafx40_redist.msi" xnafx40.msi /qn

:: https://www.openal.org/downloads/
Call :wgetozel "https://openal.org/downloads/oalinst.zip" oal.zip
Call :ZipExport 1 oal.zip
"%download%\oal\oalinst.exe" /SILENT

:: https://dotnet.microsoft.com/download/dotnet/5.0
Call :wget "https://download.visualstudio.microsoft.com/download/pr/06de9c13-4207-44e3-a802-1c90ff44048d/0d6cb312c95c7094434c381f77c75d8c/windowsdesktop-runtime-5.0.11-win-x64.exe" Desktop5x64.exe "/q /norestart"
Call :wget "https://download.visualstudio.microsoft.com/download/pr/0393fb31-b54e-4325-ba45-2b682fd6a43d/90036afbb9671be618554bf8fae3f66f/windowsdesktop-runtime-5.0.11-win-x86.exe" Desktop5x86.exe "/q /norestart"
goto :eof

:Discord
:: https://discord.com/
Call :wget "https://discord.com/api/download?platform=win" Discord.exe -s
goto :eof

:Whatsapp
:: https://www.whatsapp.com/download
Call :wget "https://web.whatsapp.com/desktop/windows/release/x64/WhatsAppSetup.exe" WhatsApp.exe --silent 
goto :eof

:Signal
:: https://signal.org/download/
Call :wget "https://updates.signal.org/desktop/signal-desktop-win-5.20.0.exe" Signal.exe /S
goto :eof

:Telegram
:: https://desktop.telegram.org/
Call :wget "https://telegram.org/dl/desktop/win64" Telegram.exe "/VERYSILENT /NORESTART"
goto :eof

:MicrosoftTeams
:: https://www.microsoft.com/tr-tr/microsoft-teams/download-app#desktopAppDownloadregion
Call :wget "https://go.microsoft.com/fwlink/p/?LinkID=869426&clcid=0x41f&culture=tr-tr&country=TR&lm=deeplink&lmsrc=groupChatMarketingPageWeb&cmpid=directDownloadWin64" Teams.exe -s
goto :eof

:Skype
:: https://www.skype.com/tr/get-skype/
Call :wget "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi" Skype.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:EpicGames
:: https://www.epicgames.com/store/tr/
Call :wget "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi" EpicGames.msi "/qn /norestart"
goto :eof

:Steam
:: https://store.steampowered.com/about/
Call :wget "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe" Steam.exe /S
goto :eof

:GOGGalaxy
Call :wget "https://cdn.gog.com/open/galaxy/client/2.0.37.384/setup_galaxy_2.0.37.384.exe" GOG.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Uplay
:: https://ubisoftconnect.com/tr-TR/
Call :wget "https://ubi.li/4vxt9" Uplay.exe /S
goto :eof

:Origin
:: https://www.origin.com/tur/en-us/store/download
Call :wget "https://www.dm.origin.com/download" -O Origin.exe /SILENT
goto :eof

:CheatEngine
:: https://www.cheatengine.org/
Call :wget "https://d3eit947wbxhoj.cloudfront.net/installer/1010809/5954706266554410090" -O CheatEngine.exe /SILENT
goto :eof

:Wemod
Call :wget "https://api.wemod.com/client/download" Wemod.exe --silent
goto :eof

:LOL
:: https://signup.tr.leagueoflegends.com/tr/signup/redownload?page_referrer=index
Call :wgetdesktop "https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.tr.exe" C:\users\%username%\Desktop\League.Of.Legends.exe 
goto :eof

:Blitz
:: https://blitz.gg/download
Call :wget "https://blitz.gg/download/win" Blitz.exe /S
goto :eof

:GoogleChrome
:: https://support.google.com/chrome/a/answer/7650032?hl=tr    
Call :wgetozel "https://dl.google.com/tag/s/appguid%253D%257B8A69D345-D564-463C-AFF1-A69D9E530F96%257D%2526iid%253D%257BBEF3DB5A-5C0B-4098-B932-87EC614379B7%257D%2526lang%253Den%2526browser%253D4%2526usagestats%253D1%2526appname%253DGoogle%252520Chrome%2526needsadmin%253Dtrue%2526ap%253Dx64-stable-statsdef_1%2526brand%253DGCEB/dl/chrome/install/GoogleChromeEnterpriseBundle64.zip?_ga%3D2.8891187.708273100.1528207374-1188218225.1527264447" Chrome.zip /qn
Call :ZipExport
"%download%\Chrome\Installers\GoogleChromeStandaloneEnterprise64.msi" %~3
REM UBlock Origin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM HTTPS Everywhere
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM Clear URL's
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
goto :eof 

:Firefox
Call :wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=tr" Firefox.exe /S
goto :eof

:Brave
Call :wget "ttps://brave-browser-downloads.s3.brave.com/latest/brave_installer-x64.exe" Brave.exe "--install --silent --system-level"
REM UBlock Origin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM HTTPS Everywhere
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM Clear URL's
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
goto :eof 

:Edge
:: https://www.microsoft.com/en-us/edge/business/download
Call :wget "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/77ecc2c5-913d-4fb8-90fb-c4353910c525/MicrosoftEdgeEnterpriseX64.msi" edge.msi /qn
goto :eof

:LibreOffice
:: https://tr.libreoffice.org/indir/libreoffice-taze-surum/
Call :wget "https://ftp.linux.org.tr/tdf/libreoffice/stable/7.2.2/win/x86_64/LibreOffice_7.2.2_Win_x64.msi" LibreOffice.msi "/qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL"
goto :eof

:AdobeReader
:: get.adobe.com/tr/reader/enterprise/
Call :wget "https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/1900820071/AcroRdrDC1900820071_tr_TR.exe" AdobeReader.exe "/sPB /rs /msi"
goto :eof

:Notepad
:: https://notepad-plus-plus.org/downloads/
Call :wget "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1.9/npp.8.1.9.Installer.x64.exe" Notepad.exe /S
goto :eof

:Calibre
:: https://calibre-ebook.com/download_windows64 
Call :wget "https://calibre-ebook.com/dist/win64" Calibre.msi /qn
goto :eof

:7Zip
:: https://www.7-zip.org/download.html
Call :wget "https://www.7-zip.org/a/7z2103-x64.msi" 7-Zip.msi /qn
goto :eof

:Winrar
:: https://www.win-rar.com/predownload.html?&L=5
Call :wget "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-602tr.exe" Winrar.exe /S
goto :eof

:Kdenlive
:: https://kdenlive.org/en/download/
Call :wget "https://download.kde.org/stable/kdenlive/21.08/windows/kdenlive-21.08.2.exe" Kdenlive.exe /S
goto :eof

:Krita
:: https://krita.org/en/download/krita-desktop/
Call :wget "https://download.kde.org/stable/krita/4.4.8/krita-x64-4.4.8-setup.exe" Krita.exe /S
goto :eof

:Gimp
:: https://www.gimp.org/downloads/
Call :wget "https://download.gimp.org/mirror/pub/gimp/v2.10/windows/gimp-2.10.28-setup.exe" Gimp.exe "/VERYSILENT /NORESTART /MERGETASKS=desktopicon /ALLUSERS"
goto :eof

:OBS
:: https://obsproject.com/tr/download
Call :wget "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-27.1.3-Full-Installer-x64.exe" OBS.exe /S
goto :eof

:LightShoot
:: https://app.prntscr.com/tr/download.html
Call :wget "https://app.prntscr.com/build/setup-lightshot.exe" LightShoot.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Audacity
:: https://www.audacityteam.org/download/
Call :wget "ttps://github.com/audacity/audacity/releases/download/Audacity-3.0.5/audacity-win-3.0.5-64bit.exe" Audacity.exe "/VERYSILENT /NORESTART"
goto :eof

:Klite
:: https://codecguide.com/download_k-lite_codec_pack_mega.htm
Call :wget "https://files2.codecguide.com/K-Lite_Codec_Pack_1650_Mega.exe" Klite.exe /verysilent
goto :eof

:VLC
:: https://www.videolan.org/index.tr.html
Call :wget "https://ftp.linux.org.tr/videolan/vlc/3.0.16/win64/vlc-3.0.16-win64.exe" VLCMediaPlayer.exe "/L=1055 /S"
goto :eof

:Aimp
:: https://www.aimp.ru/?do=download&os=windows
Call :wget "https://www.aimp.ru/?do=download.file&id=4" Aimp.exe "/AUTO /SILENT"
goto :eof

:FormatFactory
:: http://www.pcfreetime.com/formatfactory/index.php?language=en
Call :wget "http://public.pcfreetime.com/FFSetup5.8.1.0.exe" -O FormatFactory.exe /S
goto :eof

:FreeDownloadManager
:: https://www.freedownloadmanager.org/
Call :wget "https://dn3.freedownloadmanager.org/6/latest/fdm_x64_setup.exe" FreeDownloadManager.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:EagleGet
Call :wget "http://dl.eagleget.com/latest/eagleget_setup.exe" EagleGet.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:ByClick
:: https://www.byclickdownloader.com/tr/
Call :wget "https://proxy.byclickdownloader.com/ExternalSetup/InstallPage/ByClickDownloader-Setup.exe" ByClick.exe /q
goto :eof

:Utorrent
:: https://www.utorrent.com/intl/tr/desktop/compare/
Call :wget "https://download-hr.utorrent.com/track/stable/endpoint/utorrent/os/windows" Utorrent.exe /S
goto :eof

:GlassWire
:: https://www.glasswire.com/
Call :wget "https://download.glasswire.com/GlassWireSetup.exe" GlassWire.exe /S
goto :eof

:TeamViewer
:: https://www.teamviewer.com/tr/yukleme/windows/
Call :wget "https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe" TeamViewer.exe /S
goto :eof

:Hamachi
:: https://www.vpn.net/
Call :wget "https://secure.logmein.com/hamachi.msi" Hamachi.msi /q
goto :eof

:Stremio
:: https://www.stremio.com/downloads
Call :wget "https://www.strem.io/download?platform=windows&four=true" Stremio.exe /S
goto :eof

:MsiAfterburner
:: https://www.msi.com/Landing/afterburner/graphics-cards
Call :wgetozel "https://ftp.nluug.nl/pub/games/PC/guru3d/afterburner/[Guru3D.com]-MSIAfterburner.zip" MSIAfterburner.zip /S
Call :ZipExport 1 MSIAfterburner.zip 
for /f %%i in ('"dir /b %download%\MSIAfterburner\*.exe"') do "%download%\MSIAfterburner\%%i" /S
goto :eof

:HibitUninstaller
:: http://www.hibitsoft.ir/Uninstaller.html
Call :wget "http://www.hibitsoft.ir/HiBitUninstaller/HiBitUninstaller-setup-2.6.25.exe" Hibit.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Unlocker
:: https://www.iobit.com/en/iobit-unlocker.php#
Call :wget "https://cdn.iobit.com/dl/unlocker-setup.exe" Unlocker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:OpenShell
:: https://github.com/Open-Shell/Open-Shell-Menu/releases
Call :wget "https://github.com/Open-Shell/Open-Shell-kontrol/releases/download/v4.4.160/OpenShellSetup_4_4_160.exe" OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu"
goto :eof

:SSDFresh
:: https://www.abelssoft.de/de/windows/system-tools/ssd-fresh
Call :wget "https://www.abelssoft.de/ssdfreshsetup.exe" SSDFresh.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Everything
:: https://www.voidtools.com/tr-tr/
Call :wget "https://www.voidtools.com/Everything-1.4.1.1009.x64-Setup.exe" Everything.exe /S
goto :eof

:TaskbarX
:: https://github.com/ChrisAnd1998/TaskbarX/releases/tag/1.7.2.0
Call :wgetozel "https://github.com/ChrisAnd1998/TaskbarX/releases/download/1.7.2.0/TaskbarX_1.7.2.0_x64.zip" TaskbarX.zip 
powershell -command "Expand-Archive -Force '%download%\TaskbarX.zip' 'C:\Users\%username%\Desktop\TaskbarX'" > NUL
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX Configurator.exe'
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX.exe'
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------

:Stellarium
:: https://stellarium.org/
Call :wget "https://github.com/Stellarium/stellarium/releases/download/v0.21.2/stellarium-0.21.2-win64.exe" Stellarium.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Okey
:: https://www.hakkarim.net/
Call :wgetozel https://www.hakkarim.net/34oyunu.zip Okey.zip 
powershell -command "Expand-Archive -Force '%download%\Okey.zip' 'C:\Users\%username%\Desktop'" > NUL
goto :eof

:FormatSonrasi 
cls
mode con cols=55 lines=20
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
::set /p parola=   %ESC%[92m  Parolay giriniz : %ESC%[0m
::	if %parola%==OgnitorenKs (echo %ESC%[92m Parola do§ru kurulum baŸlyor...%ESC%[0m
::							  timeout /t 3 /nobreak > NUL
::) else ( echo %ESC%[92m Parola yanlŸ%ESC%[0m
::		 timeout /t 5 /nobreak > NUL
::		 goto Format.Sonrasi
::) 

::Call :AIORuntimes
::Call :Discord
::Call :WhatsApp
::Call :Signal
::Call :Telegram
::Call :MicrosoftTeams
::Call :Skype
::Call :EpicGames
::Call :Steam
::Call :GOGGalaxy
::Call :Uplay
::Call :Origin
::Call :CheatEngine
::Call :Wemod
::Call :LOL
::Call :Blitz
::Call :GoogleChrome
::Call :Firefox
::Call :Brave
::Call :Edge
::Call :LibreOffice
::Call :AdobeReader
::Call :Notepad
::Call :Calibre
::Call :7Zip
::Call :Winrar
::Call :Kdenlive
::Call :Krita
::Call :Gimp
::Call :OBS
::Call :LightShoot
::Call :Audacity
::Call :Klite
::Call :VLC
::Call :Aimp
::Call :FormatFactory
::Call :FreeDownloadManager
::Call :EagleGet
::Call :ByClick
::Call :Utorrent
::Call :GlassWire
::Call :TeamViewer
::Call :Stremio
::Call :MsiAfterburner
::Call :HibitUninstaller
::Call :Unlocker
::Call :OpenShell
::Call :SSDFresh
::Call :Everything
::Call :TaskbarX
::Call :Stellarium
::Call :Okey

Call :konum
%konum%\Edit\Programlar\*

echo %ESC%[92m  Nihai Performans ekleniyor...%ESC%[0m 
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"Nihai"') do set nihaiekle=%%f
powercfg -setactive %nihaiekle%
timeout /t 1 /nobreak > NUL 

echo %ESC%[92m  SVCHost Ram optimizasyonu yaplyor...%ESC%[0m 
FOR /F "tokens=4" %%g IN ('systeminfo ^| FIND "Total"') DO set /a ramtotal=%%g
set ramtotal2= %ramtotal:~0,4%
set /a ramtotal3=(%ramtotal2%*1024*1024)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x%ramtotal3% /f
timeout /t 1 /nobreak > NUL 

echo %ESC%[33m   Bcdedit zerinde dzenlemeler yaplyor...%ESC%[0m
:: Hpet kapatlyor. 
:: Ek olarak Bios zerinden "High Precision Event Timer (HPET)" ”zelli§i kapatlrsa daha iyi sonu‡lar alnr.
bcdedit /deletevalue useplatformclock

:: Kurtarma kapatlyor.
bcdedit /set {current} recoveryenabled no

:: Hibernate kapatlyor.
powercfg /h off

::AŸa§daki 2 komutun "Micro Stuttering" sorununu ‡”zd§ne dair kullanclardan geri bildirim var. TEST ETMED˜M. 
:: Platform saatinin sistemin performans sayac olarak kullanlmasn zorlar. 
bcdedit /set useplatformtick yes

:: Dinamik Onaylar, g‡ tasarrufu yapmak i‡in hi‡bir Ÿey olmad§nda pencerelerin sistem zamanlaycsn durdurmasna izin veren bir ”zelliktir.
bcdedit /set disabledynamictick yes
timeout /t 1 /nobreak > NUL 

sc delete DiagTrack
sc delete dmwappushservice

Call :Gorev.Zamanlayici
Call :Hosts

goto menu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ


:PrinterServices
::        Yazc hizmetlerini a‡ / onar
cls
mode con cols=55 lines=15
echo %ESC%[92m Yazc hizmetleri a‡lyor...%ESC%[0m
sc config "Spooler" Start=auto > NUL 2>&1
net start Spooler > NUL 2>&1
DEL /F /Q /A %windir%\System32\spool\PRINTERS\* > NUL 2>&1

echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:LaptopServices
::      Bluetooth -Wifi hizmet ayarlar
cls
mode con cols=80 lines=30

echo %ESC%[92m Bluetooth - Wifi hizmetleri a‡lyor...%ESC%[0m

echo Alljoyn Y”nlendirici Hizmeti
::  Yakndaki cihazlarla internet ile iletiŸim kurmasn sa§lar.
sc config "AJRouter" start= demand > NUL 2>&1
net start AJRouter > NUL 2>&1

echo Bluetooth (AVCTP hizmeti) 
::  Ses, video denetim aktarm protokoldr.
sc config "BthAvctpSvc" start= demand > NUL 2>&1
net start BthAvctpSvc > NUL 2>&1

echo Bluetooth destek hizmeti
::  Bluetooth cihazlarn bulunmas ve iliŸkilendirmesini sa§lar.
sc config "bthserv" start= demand > NUL 2>&1
net start bthserv > NUL 2>&1

echo Bluetooth kullanc deste§i hizmeti
::  Kullanc oturumuyla Bluetooth ”zelliklerinin tam ‡alŸmasn sa§lar.
sc config "BluetoothUserService" start= demand > NUL 2>&1
net start BluetoothUserService > NUL 2>&1

echo Ses a§ ge‡idi hizmeti
::  Eller boŸta profilinin ses a§ ge‡idini destekler.
sc config "BTAGService" start= demand > NUL 2>&1
net start BTAGService > NUL 2>&1

echo Da§tlmŸ Ba§lant ˜zleme ˜stemcisi
::  Bir bilgisayardaki ya da bir a§ zerindeki bilgisayarlar zerinde NTFS dosyalar arasndaki ba§lantlar korur.
sc config "TrkWks" start= auto > NUL 2>&1
net start TrkWks > NUL 2>&1

echo Ip yardmcs 
::  IPv6 ge‡iŸ teknolojileri ve IP-HTTPS kullanarak tnel ba§lants sa§lar.
sc config "iphlpsvc" start= auto > NUL 2>&1
net start iphlpsvc > NUL 2>&1

echo Windows Mobil Etkin Nokta Hizmeti
::  Veri ba§lantsnn baŸka bir cihazla paylaŸlmasn sa§lar
sc config "icssvc" start= demand > NUL 2>&1
net start icssvc > NUL 2>&1

echo Windows žimdi Ba§lan - Yaplandrma Dosyas Kaydedici
::  WPS protokolnn uygulanmasn sa§lar.
sc config "wcncsvc" start= demand > NUL 2>&1
net start wcncsvc > NUL 2>&1

echo WMP a§ paylaŸm hizmeti
sc config "WMPNetworkSvc" start= demand > NUL 2>&1
net start WMPNetworkSvc > NUL 2>&1

:: Internet Ba§lants PaylaŸm (ICS)
sc config "SharedAccess" start= demand > NUL 2>&1
net start SharedAccess > NUL 2>&1

echo Radyo Y”netimi Hizmeti
::  Radyo y”netimi ve u‡ak modu hizmeti
net start "RMSvc" start= demand > NUL 2>&1
net start "RMSvc" > NUL 2>&1

echo Natural kimlik Do§rulamas
::  Zaman, a§, konum ve bluetooth sinyallerini de§erlendirip toplayan hizmet.
net start "NaturalAuthentication" start= demand > NUL 2>&1
net start "NaturalAuthentication" > NUL 2>&1

:: Telefon
net start "TapiSrv" start= demand > NUL 2>&1
net start "TapiSrv" > NUL 2>&1

echo Telefon Hizmeti
net start "PhoneSvc" start= demand > NUL 2>&1
net start "PhoneSvc" > NUL 2>&1

:: Veri kullanm
::  Arkaplan verilierni ve a§ kullanmn snrlar
net start "DusmSvc" start= demand > NUL 2>&1
net start "DusmSvc" > NUL 2>&1

echo PNRP Makine ad yayn hizmeti
net start PNPRAutoReg start= demand > NUL 2>&1
net start PNPRAutoReg > NUL 2>&1

echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:WindowsRepair
cls
mode con cols=80 lines=30

Call :PC.Temizle
echo %ESC%[92m   Sfc /scannow komutu ‡alŸyor...%ESC%[0m
sfc /scannow
echo %ESC%[92m   DISM /Online /Cleanup-Image /RestoreHealth komutu ‡alŸtrlyor...%ESC%[0m
DISM /Online /Cleanup-Image /RestoreHealth
echo %ESC%[92m   Market Regedit kaytlar dzenleniyor...%ESC%[0m
:: Market b”lmnnn sorunsuz ‡alŸmas i‡in reg kaytlarn dzenler
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC" /f /v "start" /t REG_DWORD /d 3 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppXSvc" /f /v "start" /t REG_DWORD /d 3 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\camsvc" /f /v "start" /t REG_DWORD /d 3  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /f /ve /t REG_SZ /d ""
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /f /v "DisableSubscription" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /f /v "InactivityShutdownDelay" /t REG_DWORD /d 0x12c 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /f /v "ProcessBiosKey" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /f /v "RefreshRequired" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /f /v "ServiceDll" /t REG_EXPAND_SZ /d "%SystemRoot%\System32\ClipSVC.dll" 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /f /v "ServiceDllUnloadOnStop" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d 0 
timeout /t 1 /nobreak > NUL
:: Market i‡in gerekli hizmetleri baŸlatr.
echo %ESC%[92m   Market uygulamas i‡in servisler ‡alŸtrlyor...%ESC%[0m
sc config "cryptsvc" start= auto > NUL 2>&1
net start cryptsvc > NUL 2>&1
sc config "wuauserv" start= auto > NUL 2>&1
net start "wuauserv" > NUL 2>&1
sc config "StorSvc" start= auto > NUL 2>&1
net start "StorSvc" > NUL 2>&1
sc config "bits" start= auto > NUL 2>&1
net start "bits" > NUL 2>&1
sc config "trustedinstaller" start= auto > NUL 2>&1
net start "trustedinstaller" > NUL 2>&1
net start "ClipSVC" > NUL 2>&1
echo %ESC%[92m   DLL dosyalar kontrol ediliyor...%ESC%[0m
regsvr32 softpub.dll /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 dssenh.dll /s&regsvr32 rsaenh.dll /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 slbcsp.dll /s&regsvr32 mssip32.dll /s&regsvr32 cryptdlg.dll /s&regsvr32 msxml3.dll /s&regsvr32 comcat.dll /s&Regsvr32 Msxml.dll /s&Regsvr32 Msxml2.dll /s&regsvr32 mshtml.dll /s&regsvr32 shdocvw.dll /s&regsvr32 browseui.dll /s&regsvr32 msjava.dll /s&regsvr32 shdoc401.dll /s&regsvr32 cdm.dll /s&regsvr32 shdoc401.dll /i /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 asctrls.ocx /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 softpub.dll /s&regsvr32 oleaut32.dll /s&regsvr32 shdocvw.dll /I /s&regsvr32 Shell32.dll /s&regsvr32 browseui.dll /s&regsvr32 browseui.dll /I /s&regsvr32 msrating.dll /s&regsvr32 mlang.dll /s&regsvr32 hlink.dll /s&regsvr32 mshtmled.dll /s&regsvr32 urlmon.dll /s&regsvr32 urlmon.dll /i /s&regsvr32 plugin.ocx /s&regsvr32 sendmail.dll /s&regsvr32 scrobj.dll /s&regsvr32 mmefxe.ocx /s&regsvr32 corpol.dll /s&regsvr32 jscript.dll /s&regsvr32 imgutil.dll /s&regsvr32 thumbvw.dll /s&regsvr32 cryptext.dll /s&regsvr32 rsabase.dll /s&regsvr32 inseng.dll /s&regsvr32 iesetup.dll /i /s&regsvr32 actxprxy.dll /s&regsvr32 dispex.dll /s&regsvr32 occache.dll /s&regsvr32 occache.dll /i /s&regsvr32 iepeers.dll /s&regsvr32 cdfview.dll /s&regsvr32 webcheck.dll /s&regsvr32 mobsync.dll /s&regsvr32 pngfilt.dll /s&regsvr32 licmgr10.dll /s
regsvr32 icmfilter.dll /s&regsvr32 hhctrl.ocx /s&regsvr32 inetcfg.dll /s&regsvr32 tdc.ocx /s&regsvr32 MSR2C.DLL /s&regsvr32 msident.dll /s&regsvr32 msieftp.dll /s&regsvr32 xmsconf.ocx /s&regsvr32 ils.dll /s&regsvr32 msoeacct.dll /s&regsvr32 inetcomm.dll /s&regsvr32 msdxm.ocx /s&regsvr32 dxmasf.dll /s&regsvr32 l3codecx.ax /s&regsvr32 acelpdec.ax /s&regsvr32 mpg4ds32.ax /s&regsvr32 voxmsdec.ax /s&regsvr32 danim.dll /s&regsvr32 Daxctle.ocx /s&regsvr32 lmrt.dll /s&regsvr32 datime.dll /s&regsvr32 dxtrans.dll /s&regsvr32 dxtmsft.dll /s&regsvr32 WEBPOST.DLL /s&regsvr32 WPWIZDLL.DLL /s&regsvr32 POSTWPP.DLL /s&regsvr32 CRSWPP.DLL /s&regsvr32 FTPWPP.DLL /s&regsvr32 FPWPP.DLL /s&regsvr32 WUAPI.DLL /s&regsvr32 wups2.dll /S&regsvr32 WUAUENG.DLL /s&regsvr32 ATL.DLL /s&regsvr32 WUCLTUI.DLL /s&regsvr32 WUPS.DLL /s&regsvr32 WUWEB.DLL /s&regsvr32 wshom.ocx /s&regsvr32 wshext.dll /s&regsvr32 vbscript.dll /s&regsvr32 scrrun.dll mstinit.exe /setup /s&regsvr32 msnsspc.dll /SspcCreateSspiReg /s&regsvr32 msapsspc.dll /SspcCreateSspiReg /s
wsreset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof


:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PCTemizle
cls
echo %ESC%[92m   Eski tarihli dosya ge‡miŸi temizleniyor...%ESC%[0m
FhManagew.exe -cleanup 360 -quiet > NUL 2>&1

echo %ESC%[92m   WinSxS temizleniyor...%ESC%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup 

echo %ESC%[92m   Disk temizleme iŸlemi yaplyor... ˜Ÿlem sonunda uyar verecek.%ESC%[0m
cleanmgr /verylowdisk /sagerun:5 

echo %ESC%[92m   ico ve k‡k resim belle§i temizleniyor...%ESC%[0m
taskkill /f /IM explorer.exe > NUL 2>&1
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
Start explorer.exe > NUL 2>&1

echo %ESC%[92m   Temp dosyas temizleniyor...%ESC%[0m
DEL /F /Q /A %temp%\OgnitorenKs.Toolbax\* > NUL 2>&1
RD /S /Q %temp%\* > NUL 2>&1

echo %ESC%[92m   SoftwareDistribution temizleniyor...%ESC%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1

echo %ESC%[92m   Prefetch temizleniyor...%ESC%[0m
DEL /F /Q /A %windir%\prefetch\* > NUL 2>&1

echo %ESC%[92m   Windows tarafndan oluŸturulan ‡”p dosyalar temizleniyor...%ESC%[0m
DEL /F /Q /A %windir%\temp\* > NUL 2>&1

echo %ESC%[92m   Adobe Reader kalntlar temizleniyor...%ESC%[0m
DEL /F /Q /A %localappdata%\Adobe\Acrobat\DC\Cache\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Adobe\Acrobat\DC\*.lst > NUL 2>&1

echo %ESC%[92m   Microsoft Edge ”nbelle§i temizleniyor...%ESC%[0m
DEL /F /Q /A %programfiles(x86)%\Microsoft\Edge\User Data\Default\Cache\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Edge\User Data\Default\Service Worker\CacheStorage\* > NUL 2>&1

echo %ESC%[92m   AMD Driver Kalntlar temizleniyor...%ESC%[0m
RD /S /Q %systemdrive%\AMD > NUL 2>&1

echo %ESC%[92m   Sistem Log Dosyalar siliniyor...%ESC%[0m
DEL /F /Q /A %windir%\System32\LogFiles\* > NUL 2>&1

echo %ESC%[92m   Yaz tipi ”nbelli§i siliniyor...%ESC%[0m
DEL /F /Q /A %windir%\System32\FNTCACHE.DAT > NUL 2>&1

echo %ESC%[92m   Windows Sistem ™nbelli§i temizleniyor...%ESC%[0m
DEL /F /Q /A %windir%\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\* > NUL 2>&1

echo %ESC%[92m   Windows Ykleyici ™nbelli§i temizleniyor...%ESC%[0m
DEL /F /Q /A %windir%\Installer\$PatchCache$\Managed\* > NUL 2>&1

echo %ESC%[92m   Uygulamalar tarafndan oluŸturulan kalntlar temizleniyor...%ESC%[0m
DEL /F /Q /A %localappdata%\Temp\* > NUL 2>&1

echo %ESC%[92m   Hata Raporu Dosyalar temizleniyor...%ESC%[0m
DEL /F /Q /A %programdata%\Microsoft\Windows\WER\ReportQueue\* > NUL 2>&1

echo %ESC%[92m   ˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Fat32toNTFS
::         FAT32 TO NTFS
cls
mode con cols=55 lines=15
title Fat32 to NTFS d”nŸtrme / OgnitorenKs

echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
set /p deger=%ESC%[92m Disk harfi:%ESC%[0m
	if %deger%==0 GOTO menu
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ	
echo      %ESC%[91m Dikkat%ESC%%ESC%[92m %deger% %ESC%%ESC%[91mdiski NTFS'ye d”nŸtrlyor.%ESC%[0m 
echo      %ESC%[92m Devam etmek i‡in herhangi bir tuŸa basnz.
pause > NUL

convert %deger%: /fs:NTFS /v

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ


:Slmgrvbs
cls
mode con cols=55 lines=22
title SLMGR.VBS \ OgnitorenKs
echo   %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                    %ESC%[92m Slmgr.vbs Men%ESC%[0m
echo   %ESC%[35m---------------------------------------------------%ESC%[0m
echo     %ESC%[92m 1.%ESC%%ESC%[36m Lisans Gir%ESC%[0m
echo     %ESC%[92m 2.%ESC%%ESC%[36m Lisans Durumu%ESC%[0m
echo     %ESC%[92m 3.%ESC%%ESC%[36m Lisans Durumu Detayl%ESC%[0m
echo     %ESC%[92m 4.%ESC%%ESC%[36m Lisans Sresini ™§ren%ESC%[0m
echo     %ESC%[92m 5.%ESC%%ESC%[36m Lisans Sil%ESC%[0m
echo     %ESC%[92m 6.%ESC%%ESC%[36m Lisans Sre Sfrla%ESC%[0m
echo     %ESC%[92m 7.%ESC%%ESC%[93m Ana Men%ESC%[0m
echo   %ESC%[35m===================================================%ESC%[0m
set /p deger=%ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %deger%==1 (Call :slmgripk)
	if %deger%==2 (slmgr /dli&goto Slmgrvbs)
	if %deger%==3 (slmgr /dlv&goto Slmgrvbs)
	if %deger%==4 (slmgr /xpr&goto Slmgrvbs)
	if %deger%==5 (slmgr /upk&goto Slmgrvbs)
	if %deger%==6 (slmgr /rearm&goto Slmgrvbs)
	if %deger%==7 GOTO menu
	if %deger%==0 GOTO exit
else
	goto Slmgrvbs

:slmgrlisans
cls

set /p deger= %ESC%[92m Lisans : %ESC%[0m

slmgr /ipk %deger%

echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof


:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:WinSahiplik
cls
mode con cols=55 lines=15
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                    %ESC%[92m Sahiplik Ayar%ESC%[0m
echo  %ESC%[35m-----------------------------------------------------%ESC%[0m
echo         %ESC%[92m 1.%ESC%%ESC%[37m Ekle%ESC%[0m
echo         %ESC%[92m 2.%ESC%%ESC%[37m Kaldr%ESC%[0m
echo         %ESC%[92m 3.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger= %ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %deger%==1 (title Sahiplik al ekleniyor... / OgnitorenKs
				   reg add "HKEY_CLASSES_ROOT\*\shell\runas" /f /ve /t REG_SZ /d "Sahipli§i Al" > NUL 2>&1 
				   reg add "HKEY_CLASSES_ROOT\*\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" > NUL 2>&1 
				   reg add "HKEY_CLASSES_ROOT\*\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" > NUL 2>&1 
				   reg add "HKEY_CLASSES_ROOT\*\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" && ica \"%1\" /grant administrators:F" > NUL 2>&1 
				   reg add "HKEY_CLASSES_ROOT\*\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" && ica \"%1\" /grant administrators:F" > NUL 2>&1 
				   reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /f /ve /t REG_SZ /d "Sahipli§i Al" > NUL 2>&1 
				   reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" > NUL 2>&1 
				   reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" > NUL 2>&1 
				   reg add "HKEY_CLASSES_ROOT\Directory\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" /r /d y && ica \"%1\" /grant administrators:F /t" > NUL 2>&1 
				   reg add "HKEY_CLASSES_ROOT\Directory\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" /r /d y && ica \"%1\" /grant administrators:F /t" > NUL 2>&1 
				   echo %ESC%[96m ˜Ÿlem tamamland.%ESC%[0m
				   timeout /t 2 /nobreak > NUL
				   goto :eof)
	if %deger%==2 (title Sahiplik al kaldrlyor... / OgnitorenKs
				   reg delete "HKEY_CLASSES_ROOT\*\shell\runas" /f
				   reg delete "HKEY_CLASSES_ROOT\Directory\shell\runas" /f
				   echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
				   timeout /t 2 /nobreak > NUL
				   goto :eof)
	if %deger%==3 GOTO kontroll
else
	goto WinSahiplik

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:WinCompactOS
cls
mode con cols=55 lines=17
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo              %ESC%[92mCompact OS / OgnitorenKs%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
echo         %ESC%[92m 1.%ESC%%ESC%[37m Compact OS a‡%ESC%[0m
echo         %ESC%[92m 2.%ESC%%ESC%[37m Compact OS kapat%ESC%[0m
echo         %ESC%[92m 3.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger= %ESC%[92m ˜Ÿlem :%ESC%[0m
	if %deger%==1 (Call :CompactOn)
	if %deger%==2 (Call :CompactOff)
	if %deger%==3 GOTO kontroll
else
	GOTO WinCompactOS

:CompactOn
cls
mode con cols=80 lines=30
echo 
echo %ESC%[92m CompactOS skŸtrma iŸlemi uygulanyor...%ESC%[0m
Compact.exe /CompactOS:always
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:CompactOff
cls
mode con cols=80 lines=30
echo 
echo %ESC%[92m CompactOS skŸtrma iŸlemi devre dŸ braklyor...%ESC%[0m
Compact.exe /CompactOS:never
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
::  W˜NDOWS 11 B™LšMš 

:Win11SettingsMenu
cls
call :konum
call :PowerRun
mode con cols=55 lines=20
title Windows 11 ™zelleŸtir / OgnitorenKs
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo             %ESC%[96mWindows 11 ™zelleŸtirme Mens%ESC%[0m             
echo  %ESC%[35m-----------------------------------------------------%ESC%[0m
echo        %ESC%[92m 1.%ESC%%ESC%[37m Taskbar Boyut%ESC%[0m
echo        %ESC%[92m 2.%ESC%%ESC%[37m Taskbar Konumu%ESC%[0m
echo        %ESC%[92m 3.%ESC%%ESC%[37m Taskbar Simge Konumu%ESC%[0m
echo        %ESC%[92m 4.%ESC%%ESC%[37m Sa§-Tk Men Ayar%ESC%[0m
echo        %ESC%[92m 5.%ESC%%ESC%[37m Sa§-Tk Terminal Ayar%ESC%[0m
echo        %ESC%[92m 6.%ESC%%ESC%[37m Sahiplik Al ayar%ESC%[0m
echo        %ESC%[92m 7.%ESC%%ESC%[37m Masast Simgelerini G”ster%ESC%[0m
echo        %ESC%[92m 8.%ESC%%ESC%[37m Compact OS%ESC%[0m
echo        %ESC%[92m 9.%ESC%%ESC%[33m Ana men%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger=%ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %deger%==1 (Call :Win11MenuChange)
	if %deger%==2 (Call :Win11MenuLocation)
	if %deger%==3 (Call :Win11MenuOld)
	if %deger%==4 (Call :Win11RightClick)
	if %deger%==5 (Call :Win11RightMenu.Terminal)
	if %deger%==6 (Call :WinSahiplik)
	if %deger%==7 (reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 > NUL 2>&1					 
				   reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t REG_DWORD /d 0 > NUL 2>&1 
				   reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /t REG_DWORD /d 0 > NUL 2>&1
				   goto Win11SettingsMenu)
	if %deger%==8 (Call :WinCompactOS)
	if %deger%==9 GOTO menu
else
	goto Win11SettingsMenu

	
:Win11MenuChange
cls
mode con cols=55 lines=17
title G”rev ‡ubu§u boyut ayar / OgnitorenKs
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo               %ESC%[92mG”rev €ubu§u Boyut Ayar%ESC%[0m
echo  %ESC%[35m-----------------------------------------------------%ESC%[0m
echo         %ESC%[92m 0.%ESC%%ESC%[37m K‡k%ESC%[0m
echo         %ESC%[92m 1.%ESC%%ESC%[37m Varsaylan%ESC%[0m
echo         %ESC%[92m 2.%ESC%%ESC%[37m Byk%ESC%[0m
echo         %ESC%[92m 3.%ESC%%ESC%[33m Menye d”n %ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger= %ESC%[92m G”rev ‡ubu§u bykl§ : %ESC%[0m
	if %deger%==3 goto Win11SettingsMenu
	
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarSi" /t REG_DWORD /d %deger%
Call :ExplorerReset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11MenuLocation
cls
mode con cols=55 lines=17
title G”rev ‡ubu§u konum ayar / OgnitorenKs
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                   %ESC%[92mG”rev €ubu§u Konumu%ESC%[0m
echo  %ESC%[35m-----------------------------------------------------%ESC%[0m
echo         %ESC%[92m 1.%ESC%%ESC%[37m šst%ESC%[0m
echo         %ESC%[92m 3.%ESC%%ESC%[37m Alt%ESC%[0m
echo         %ESC%[92m 0.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger= %ESC%[92m G”rev ‡ubu§u konumu : %ESC%[0m
	if %deger%==0 goto win11settingsmenu

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3" /v "Settings" /t REG_BINARY /d "30000000feffffff7af400000%deger%0000003000000030000000000000000804000080070000380400006000000001000000" /f
Call :ExplorerReset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof


:Win11MenuOld
cls
mode con cols=55 lines=17
title G”rev ‡ubu§u simge konumu ayar / OgnitorenKs
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                %ESC%[92mG”rev €ubu§u Simge Konumu%ESC%[0m
echo  -----------------------------------------------------%ESC%[0m
echo         %ESC%[92m 0.%ESC%%ESC%[37m Sol%ESC%[0m
echo         %ESC%[92m 1.%ESC%%ESC%[37m Orta%ESC%[0m
echo         %ESC%[92m 2.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger= %ESC%[92m Tarafnz se‡iniz : %ESC%[0m
	if %deger%==2 goto Win11SettingsMenu
	
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAl" /t REG_DWORD /d %deger%
Call :ExplorerReset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11RightClick
cls
mode con cols=55 lines=17
title Sa§ tk se‡enek ayar / OgnitorenKs
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                  %ESC%[92mSa§-Tk Men Ayar%ESC%[0m
echo  %ESC%[35m-----------------------------------------------------%ESC%[0m
echo         %ESC%[92m 1.%ESC%%ESC%[37m Eski%ESC%[0m
echo         %ESC%[92m 2.%ESC%%ESC%[37m Yeni%ESC%[0m
echo         %ESC%[92m 3.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger= %ESC%[92m Tarafnz se‡iniz : %ESC%[0m
	if %deger%==1 (reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&taskkill /f /im explorer.exe&start explorer.exe&goto :eof)
	if %deger%==2 (reg delete "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&goto :eof)
	if %deger%==3 goto Win11SettingsMenu
else
	goto Win11SettingsMenu	

:Win11RightMenuTerminal
cls
mode con cols=55 lines=17
title Sa§ tk se‡enek ayar / OgnitorenKs
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                 %ESC%[92mSa§-Tk Terminal Ayar%ESC%[0m
echo         %ESC%[92m 1.%ESC%%ESC%[37m Terminal kaldr%ESC%[0m
echo         %ESC%[92m 2.%ESC%%ESC%[37m Terminal geri getir%ESC%[0m
echo         %ESC%[92m 3.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger= %ESC%[92m Tarafnz se‡iniz : %ESC%[0m
	if %deger%==1 (reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /f /v "{9F156763-7844-4DC4-B2B1-901F640F5155}" /t REG_SZ /d ""&start explorer.exe&goto :eof)
	if %deger%==2 (reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /f&goto :eof)
else
	goto Win11SettingsMenu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Win10SettingsMenu
cls
mode con cols=55 lines=20
title Windows 10 ™zelleŸtir / OgnitorenKs
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo             %ESC%[96mWindows 10 ™zelleŸtirme Mens%ESC%[0m             
echo  %ESC%[35m-----------------------------------------------------%ESC%[0m
echo        %ESC%[92m 1.%ESC%%ESC%[37m Saat yan, simge ayar%ESC%[0m
echo        %ESC%[92m 2.%ESC%%ESC%[37m Bildirim Alan ayar%ESC%[0m
echo        %ESC%[92m 3.%ESC%%ESC%[37m Sahiplik Al ayar%ESC%[0m
echo        %ESC%[92m 4.%ESC%%ESC%[37m Market-Sil Ykle%ESC%[0m
echo        %ESC%[92m 5.%ESC%%ESC%[37m Masast Simgelerini AktifleŸtir%ESC%[0m
echo        %ESC%[92m 6.%ESC%%ESC%[37m Compact OS%ESC%[0m
echo        %ESC%[92m 7.%ESC%%ESC%[33m Ana men%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger=%ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %deger%==1 (Call :Win10EkranTepsi)
	if %deger%==2 (Call :Win10Bildirim)
	if %deger%==3 (Call :WinSahiplik)
	if %deger%==4 (Call :Win10StoreDelIns)
	if %deger%==5 (reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 > NUL 2>&1					 
				   reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t REG_DWORD /d 0 > NUL 2>&1 
				   reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /t REG_DWORD /d 0 > NUL 2>&1
				   goto Win10SettingsMenu)
	if %deger%==6 (Call :WinCompactOS)
	if %deger%==7 GOTO menu
else
	goto Win10SettingsMenu
	
:: 
	
:Win10EkranTepsi
cls
mode con cols=55 lines=20
title G”rev ‡ubu§u dzenleniyor... / OgnitorenKs
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                 %ESC%[92mSaat Yan Simge Ayar%ESC%[0m
echo  %ESC%[35m-----------------------------------------------------%ESC%[0m
echo         %ESC%[92m 0.%ESC%%ESC%[37m Hepsini G”ster%ESC%[0m
echo         %ESC%[92m 1.%ESC%%ESC%[37m Hepsini Gizle%ESC%[0m
echo         %ESC%[92m 2.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger= %ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %deger%==2 goto Win10SettingsMenu

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /f /v "EnableAutoTray" /t REG_DWORD /d %deger%
Call :ExplorerReset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: 

:Win10Bildirim
cls
mode con cols=55 lines=20
title Bildirim alan dzenleniyor... / OgnitorenKs
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                  %ESC%[92mBildirim Alan Ayar%ESC%[0m
echo  %ESC%[35m-----------------------------------------------------%ESC%[0m
echo         %ESC%[92m 0.%ESC%%ESC%[37m A‡k%ESC%[0m
echo         %ESC%[92m 1.%ESC%%ESC%[37m Kapal%ESC%[0m
echo         %ESC%[92m 2.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger= %ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %deger%==2 goto Win10SettingsMenu

reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %deger%
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %deger%
Call :ExplorerReset
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: 

:Win10StoreDelIns
cls
mode con cols=55 lines=20
title Market Y”neticisi / OgnitorenKs
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                     %ESC%[92mMarket Y”netici%ESC%[0m
echo  %ESC%[35m-----------------------------------------------------%ESC%[0m
echo        %ESC%[92m 1.%ESC%%ESC%[37m Market Kaldr%ESC%[0m
echo        %ESC%[92m 2.%ESC%%ESC%[37m Market Ykle%ESC%[0m
echo        %ESC%[92m 3.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  %ESC%[35m=====================================================%ESC%[0m
set /p deger=%ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %deger%==1 (Call :Win10StoreDel)
	if %deger%==2 (Call :Win10StoreIns)
	if %deger%==3 GOTO Win10SettingsMenu
else
	goto Win10.Store.Del.Ins

:Win10StoreDel
cls
mode con cols=109 lines=35
title Market kaldrlyor... / OgnitorenKs

echo %ESC%[92m Microsoft Store siliniyor...%ESC%[0m

powershell -command "Get-AppXPackage | Remove-AppxPackage"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC" /v "start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppXSvc" /v "start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\camsvc" /v "start" /t REG_DWORD /d 4 /f
net stop wuauserv > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution"
net start wuauserv > NUL 2>&1
net stop "StorSvc" > NUL 2>&1
sc config "StorSvc" start= disabled > NUL 2>&1
net stop "ClipSVC" > NUL 2>&1

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto :eof

:Win10StoreIns
cls
mode con cols=109 lines=35
title Market ykleniyor... / OgnitorenKs

echo %ESC%[92m Microsoft Store ykleniyor...%ESC%[0m
powershell -command "Add-AppxPackage -DisableDevelopmentMode -Register $Env:%windir%\SystemApps\*\AppxManifest.xml"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC" /v "start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppXSvc" /v "start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\camsvc" /v "start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "" /t REG_SZ /d /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "DisableSubscription" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "InactivityShutdownDelay" /t REG_DWORD /d 0x12c /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ProcessBiosKey" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "RefreshRequired" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ServiceDll" /t REG_EXPAND_SZ /d "%SystemRoot%\System32\ClipSVC.dll" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ServiceDllUnloadOnStop" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d 0 /f

echo %ESC%[92m Hizmetler baŸlatlyor...%ESC%[0m
net start cryptsvc > NUL 2>&1
sc config "cryptsvc" start= auto > NUL 2>&1
net start "wuauserv" > NUL 2>&1
sc config "wuauserv" start= auto > NUL 2>&1
net start "StorSvc" > NUL 2>&1
sc config "StorSvc" start= auto > NUL 2>&1
net start "bits" > NUL 2>&1
sc config "bits" start= auto > NUL 2>&1
net start "trustedinstaller" > NUL 2>&1
sc config "trustedinstaller" start= auto > NUL 2>&1
net start "ClipSVC" > NUL 2>&1
net stop wuauserv > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution"
net start wuauserv > NUL 2>&1

echo %ESC%[92m DLL dosyalar kontrol ediliyor...%ESC%[0m
regsvr32  softpub.dll /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  dssenh.dll /s&regsvr32  rsaenh.dll /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  slbcsp.dll /s&regsvr32  mssip32.dll /s&regsvr32  cryptdlg.dll /s&regsvr32  msxml3.dll /s&regsvr32  comcat.dll /s&Regsvr32  Msxml.dll /s&Regsvr32  Msxml2.dll /s&regsvr32  mshtml.dll /s&regsvr32  shdocvw.dll /s&regsvr32  browseui.dll /s&regsvr32  msjava.dll /s&regsvr32  shdoc401.dll /s&regsvr32  cdm.dll /s&regsvr32  shdoc401.dll /i /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  asctrls.ocx /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  softpub.dll /s&regsvr32  oleaut32.dll /s&regsvr32  shdocvw.dll /I /s&regsvr32  Shell32.dll /s&regsvr32  browseui.dll /s&regsvr32  browseui.dll /I /s&regsvr32  msrating.dll /s&regsvr32  mlang.dll /s&regsvr32  hlink.dll /s&regsvr32  mshtmled.dll /s&regsvr32  urlmon.dll /s&regsvr32  urlmon.dll /i /s&regsvr32  plugin.ocx /s&regsvr32  sendmail.dll /s&regsvr32  scrobj.dll /s&regsvr32  mmefxe.ocx /s&regsvr32  corpol.dll /s&regsvr32  jscript.dll /s&regsvr32  imgutil.dll /s&regsvr32  thumbvw.dll /s&regsvr32  cryptext.dll /s&regsvr32  rsabase.dll /s&regsvr32  inseng.dll /s&regsvr32  iesetup.dll /i /s&regsvr32  actxprxy.dll /s&regsvr32  dispex.dll /s&regsvr32  occache.dll /s&regsvr32  occache.dll /i /s&regsvr32  iepeers.dll /s&regsvr32  cdfview.dll /s&regsvr32  webcheck.dll /s&regsvr32  mobsync.dll /s&regsvr32  pngfilt.dll /s&regsvr32  licmgr10.dll /s
regsvr32  icmfilter.dll /s&regsvr32  hhctrl.ocx /s&regsvr32  inetcfg.dll /s&regsvr32  tdc.ocx /s&regsvr32  MSR2C.DLL /s&regsvr32  msident.dll /s&regsvr32  msieftp.dll /s&regsvr32  xmsconf.ocx /s&regsvr32  ils.dll /s&regsvr32  msoeacct.dll /s&regsvr32  inetcomm.dll /s&regsvr32  msdxm.ocx /s&regsvr32  dxmasf.dll /s&regsvr32  l3codecx.ax /s&regsvr32  acelpdec.ax /s&regsvr32  mpg4ds32.ax /s&regsvr32  voxmsdec.ax /s&regsvr32  danim.dll /s&regsvr32  Daxctle.ocx /s&regsvr32  lmrt.dll /s&regsvr32  datime.dll /s&regsvr32  dxtrans.dll /s&regsvr32  dxtmsft.dll /s&regsvr32  WEBPOST.DLL /s&regsvr32  WPWIZDLL.DLL /s&regsvr32  POSTWPP.DLL /s&regsvr32  CRSWPP.DLL /s&regsvr32  FTPWPP.DLL /s&regsvr32  FPWPP.DLL /s&regsvr32  WUAPI.DLL /s&regsvr32  wups2.dll /S&regsvr32  WUAUENG.DLL /s&regsvr32  ATL.DLL /s&regsvr32  WUCLTUI.DLL /s&regsvr32  WUPS.DLL /s&regsvr32  WUWEB.DLL /s&regsvr32  wshom.ocx /s&regsvr32  wshext.dll /s&regsvr32  vbscript.dll /s&regsvr32  scrrun.dll mstinit.exe /setup /s&regsvr32  msnsspc.dll /SspcCreateSspiReg /s&regsvr32  msapsspc.dll /SspcCreateSspiReg /s
wsreset
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:AdminMenu
cls
mode con cols=55 lines=22
title Kullanc ˜Ÿlemleri \ OgnitorenKs
echo   %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                   %ESC%[92m Administrator Men%ESC%[0m
echo   %ESC%[35m---------------------------------------------------%ESC%[0m
echo     %ESC%[92m1.%ESC%%ESC%[33m Administrator aktif%ESC%[0m
echo     %ESC%[92m2.%ESC%%ESC%[33m Administrator pasif%ESC%[0m
echo     %ESC%[92m3.%ESC%%ESC%[33m Admin grubuna Kullanc ekle%ESC%[0m
echo     %ESC%[92m4.%ESC%%ESC%[33m Kullanc ekle%ESC%[0m
echo     %ESC%[92m5.%ESC%%ESC%[33m Kullanc sil%ESC%[0m
echo     %ESC%[92m6.%ESC%%ESC%[33m žifremi unuttum%ESC%[0m
echo     %ESC%[92m7.%ESC%%ESC%[93m Ana Men%ESC%[0m
echo   %ESC%[35m===================================================%ESC%[0m
set /p deger=%ESC%[92m Yapmak istedi§iniz iŸlem : %ESC%[0m
	if %deger%==1 GOTO Tweak1AdminAktif
	if %deger%==2 GOTO Tweak2AdminPasif
	if %deger%==3 GOTO Tweak3GrupAdmin
	if %deger%==4 GOTO Tweak4NewUsers
	if %deger%==5 GOTO Tweak5DelUsers
	if %deger%==6 GOTO Tweak6UsersKey
	if %deger%==7 GOTO menu
else
	goto AdminMenu

:Tweak1AdminAktif
cls
mode con cols=55 lines=20
title Administrator A‡ \ OgnitorenKs
echo   %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo   %ESC%[92m Administrator aktifleŸtiriliyor...%ESC%[0m
echo   %ESC%[35m---------------------------------------------------%ESC%[0m
net user administrator /active:yes
net user administrator *
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak2AdminPasif
cls
mode con cols=55 lines=20
title Administrator kapat \ OgnitorenKs
echo   %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo   %ESC%[92m Administrator kapatlyor...%ESC%[0m
echo   %ESC%[35m---------------------------------------------------%ESC%[0m
echo 
net user Administrator /active:no
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak3GrupAdmin
cls
mode con cols=55 lines=20
title Admin Grubuna Kullanc ekle \ OgnitorenKs
echo   %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo   %ESC%[92m Admin Grubuna kullanc ekle...%ESC%[0m
echo   %ESC%[35m---------------------------------------------------%ESC%[0m
echo 
set /p deger=%ESC%[92m Kullanc Ad:%ESC%[0m 
net localgroup Administrators %deger% /add 
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak4NewUsers
cls
mode con cols=55 lines=20
title Yeni Kullanc ekle \ OgnitorenKs
echo   %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo   %ESC%[92m Yeni kullanc ekle...%ESC%[0m
echo   %ESC%[35m---------------------------------------------------%ESC%[0m
echo 
set /p deger=%ESC%[92m Kullanc Ad:%ESC%[0m 
net user %deger% * /add

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:Tweak5DelUsers
cls
mode con cols=55 lines=20
title Kullanc Sil \ OgnitorenKs
echo   %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo   %ESC%[92m Kullanc sil...%ESC%[0m
echo   %ESC%[35m---------------------------------------------------%ESC%[0m
echo 
set /p deger=%ESC%[92m Kullanc Ad:%ESC%[0m 
net user %deger% /delete

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu


:Tweak6UsersKey
cls
mode con cols=55 lines=20
title žifremi Unuttum / De§iŸtir \ OgnitorenKs
echo   %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo   %ESC%[92m žifremi Unuttum / De§iŸtir...%ESC%[0m
echo   %ESC%[35m---------------------------------------------------%ESC%[0m
echo 
set /p deger=%ESC%[92m Kullanc ad:%ESC%[0m
net user %deger% *

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto AdminMenu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
::                         WimReader
:Edit.Tweak.1.WimReader
cls
mode con cols=70 lines=20
title WIM - ESD READER / OGN˜TORENKS
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                      %ESC%[96mWIM / ESD Reader \OgnitorenKs%ESC%[0m 
echo  %ESC%[35m====================================================================%ESC%[0m
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m "C:\Win10\sources\install.wim"%ESC%[0m 
set /p MerkezWim=%ESC%[97m  %ESC%%ESC%[92m WIM/ESD dosya yolu : %ESC%[0m
	if %MerkezWim%==0 GOTO menu
mode con cols=90 lines=27

:MerkezWim
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo  ^| %ESC%[92mINDEX%ESC%[0m ^| %ESC%[92mM˜MAR˜%ESC%[0m ^| %ESC%[92mSšRšM%ESC%[0m ^|  %ESC%[92mD˜L%ESC%[0m  ^|    %ESC%[92mED˜T%ESC%[0m    ^|      %ESC%[92m˜S˜M%ESC%[0m
echo  %ESC%[35m%ESC%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%MerkezWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=1" %%e in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Default') do (
					FOR /F "tokens=2 delims=':'" %%f in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Name') do (
						FOR /F "tokens=2 delims='-',':' " %%g in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Modified') do (
							echo. ^|   %ESC%[92m%%a%ESC%[0m      %ESC%[33m%%b%ESC%[0m  ^| %ESC%[36m%%d%ESC%[0m ^| %ESC%[33m%%e%ESC%[0m ^| %ESC%[36m%%g%ESC%[0m ^| %ESC%[37m%%f%ESC%[0m
							echo  
							)
						)
					)
				)
			)
		)
	)
)
echo  %ESC%[35m%ESC%[0m

echo                      %ESC%[92m Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m
pause > NUL 
goto menu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
::                                  AIO ISO MAKER 
:Edit.Tweak.2.AioImport
mode con cols=85 lines=30
title AIO Maker / OgnitorenKs
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m 
echo                                %ESC%[96m AIO MAKER / OgnitorenKs%ESC%[0m 
echo  %ESC%[35m===================================================================================%ESC%[0m

echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m "C:\Windows10Pro\sources\install.wim"%ESC%[0m
set /p MerkezWim=%ESC%[97m  %ESC%%ESC%[92m Merkez Wim dosya yolu : %ESC%[0m
	if %MerkezWim%==0 GOTO menu
:aioimport2
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m "C:\Windows10Home\sources\install.wim"%ESC%[0m
set /p EkleWim=%ESC%[97m  %ESC%%ESC%[92m Eklenecek Wim dosya yolu : %ESC%[0m
	if %EkleWim%==0 GOTO menu 

:aioimport3
cls
mode con cols=90 lines=40
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                                       %ESC%[91m ANA SšRšM%ESC%[0m 
echo  
echo  ^| %ESC%[92mINDEX%ESC%[0m ^| %ESC%[92mM˜MAR˜%ESC%[0m ^| %ESC%[92mSšRšM%ESC%[0m ^|  %ESC%[92mD˜L%ESC%[0m  ^|    %ESC%[92mED˜T%ESC%[0m    ^|      %ESC%[92m˜S˜M%ESC%[0m
echo  %ESC%[35m%ESC%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%MerkezWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=1" %%e in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Default') do (
					FOR /F "tokens=2 delims=':'" %%f in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Name') do (
						FOR /F "tokens=2 delims='-',':' " %%g in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Modified') do (
							echo. ^|   %ESC%[92m%%a%ESC%[0m      %ESC%[33m%%b%ESC%[0m  ^| %ESC%[36m%%d%ESC%[0m ^| %ESC%[33m%%e%ESC%[0m ^| %ESC%[36m%%g%ESC%[0m ^| %ESC%[37m%%f%ESC%[0m
							echo  
							)
						)
					)
				)
			)
		)
	)
)
echo  %ESC%[35m%ESC%[0m
echo                                    %ESC%[91m EKLENECEK SšRšM%ESC%[0m 
echo  
echo  ^| %ESC%[92mINDEX%ESC%[0m ^| %ESC%[92mM˜MAR˜%ESC%[0m ^| %ESC%[92mSšRšM%ESC%[0m ^|  %ESC%[92mD˜L%ESC%[0m  ^|    %ESC%[92mED˜T%ESC%[0m    ^|      %ESC%[92m˜S˜M%ESC%[0m
echo  %ESC%[35m%ESC%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%EkleWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=1" %%e in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Default') do (
					FOR /F "tokens=2 delims=':'" %%f in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Name') do (
						FOR /F "tokens=2 delims='-',':' " %%g in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Modified') do (
							echo. ^|   %ESC%[92m%%a%ESC%[0m      %ESC%[33m%%b%ESC%[0m  ^| %ESC%[36m%%d%ESC%[0m ^| %ESC%[33m%%e%ESC%[0m ^| %ESC%[36m%%g%ESC%[0m ^| %ESC%[37m%%f%ESC%[0m
							echo  
							)
						)
					)
				)
			)
		)
	)
)
echo  %ESC%[35m%ESC%[0m
set /p selectindex= %ESC%[92m Eklenecek srm se‡iniz : %ESC%[0m
	if %selectindex%==0 goto menu

FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%selectindex% ^| FIND "Architecture"') DO set mimari=(%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%selectindex% ^| FIND "Name"') DO set indexname=%%c

cls
echo  %ESC%[35m%ESC%[0m
echo  %ESC%[92m:: BirleŸtirme iŸlemi ger‡ekleŸtiriliyor...%ESC%[0m
echo  %ESC%[35m%ESC%[0m			
call :imagex
%imagex% /export %EkleWim% %selectindex% %MerkezWim% "%indexname% %mimari%"			

cls
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                 %ESC%[92mBirleŸtirme iŸlemi tamamland%ESC%[0m
echo                               
echo                               
echo                               
echo                               
echo  %ESC%[35m===========================================================%ESC%[0m
set /p aioreturn= %ESC%[91m       'A'%ESC%%ESC%[96myn dosyadan / %ESC%[91m'F'%ESC%%ESC%[96markl dosyadan, devam et : %ESC%[0m 
	if %aioreturn%==A goto aioimport3
	if %aioreturn%==a goto aioimport3
	if %aioreturn%==F (cls&goto aioimport2)
	if %aioreturn%==f (cls&goto aioimport2)
else
	goto menu
	
goto menu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Edit.Tweak.3.Regedit.Yukle
mode con cols=85 lines=20
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                           %ESC%[96m REG YšKLE \OgnitorenKs%ESC%[0m 
echo  %ESC%[35m===================================================================================%ESC%[0m
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m "C:\Windows10Pro"%ESC%[0m
set /p MerkezWim=%ESC%[97m  %ESC%%ESC%[92m Imaj klas”r yolu : %ESC%[0m
	if %MerkezWim%==0 GOTO menu

:regyukle
reg load HKLM\OG_COMPONENTS "%MerkezWim%\Windows\System32\config\COMPONENTS" >nul
reg load HKLM\OG_DEFAULT "%MerkezWim%\Windows\System32\config\default" >nul
reg load HKLM\OG_NTUSER "%MerkezWim%\Users\Default\ntuser.dat" >nul
reg load HKLM\OG_SOFTWARE "%MerkezWim%\Windows\System32\config\SOFTWARE" >nul
reg load HKLM\OG_SYSTEM "%MerkezWim%\Windows\System32\config\SYSTEM" >nul

goto :eof


:Edit.Tweak.4.Regedit.Topla
for /f "tokens=* delims=" %%a in ('reg query "HKLM" ^| findstr "{"') do (
	reg unload "%%a" >nul 2>&1
)

reg unload HKLM\OG_COMPONENTS >nul 2>&1
reg unload HKLM\OG_DRIVERS >nul 2>&1
reg unload HKLM\OG_DEFAULT >nul 2>&1
reg unload HKLM\OG_NTUSER >nul 2>&1
reg unload HKLM\OG_SCHEMA >nul 2>&1
reg unload HKLM\OG_SOFTWARE >nul 2>&1
reg unload HKLM\OG_SYSTEM >nul 2>&1

goto :eof


:Edit.Tweak.5.OnlineAppxEkle
cls
title Online Appx Installer /OgnitorenKs
mode con cols=90 lines=40
call :konum
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m 
for /f %%i in ('"dir /b %konum%\Edit\Appx\*"') do PowerShell.exe -Command "Add-AppxPackage -Path %konum%\Edit\Appx\%%i"

echo  %ESC%[92m Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m  
pause > NUL
goto menu

:Edit.Tweak.6.OfflineAppxEkle
cls
title Offline Appx Installer /OgnitorenKs
mode con cols=90 lines=40
call :konum
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMount01%ESC%[0m
set /p MerkezWim=%ESC%[97m  %ESC%%ESC%[92m ˜maj klas”r yolu : %ESC%[0m
	if %MerkezWim%==0 GOTO menu

for /f %%i in ('"dir /b %konum%\Edit\Appx\*"') do DISM /Image:%MerkezWim% /Add-ProvisionedAppxPackage /PackagePath:%konum%\Edit\Appx\%%i /SkipLicense
Dism /Image:%MerkezWim% /Optimize-ProvisionedAppxPackages

echo  %ESC%[92m Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m  
pause > NUL
goto menu

:Edit.Tweak.7.DismUpdateOffline
cls
mode con cols=90 lines=40
title DISM UPDATE OFFL˜NE /OgnitorenKs
call :konum
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMount01%ESC%[0m
set /p MerkezWim=%ESC%[97m  %ESC%%ESC%[92m ˜maj klas”r yolu : %ESC%[0m
	if %MerkezWim%==0 GOTO menu

for /f %%i in ('"dir /b %konum%\Edit\Update\*"') do DISM /Image:%MerkezWim% /add-package /packagepath="%konum%\Edit\Update\%%i"
DISM /Image:%MerkezWim% /Cleanup-Image /StartComponentCleanup /ResetBase
	if %errorlevel%==1 ( echo  %ESC%[91m TEM˜ZLEME ˜žLEM˜ BAžARISIZ! %ESC%[0m 
						 timeout /t 5 /nobreak > NUL
						 goto menu)

echo  %ESC%[92m Ana Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m  
pause > NUL
goto menu

:Edit.Tweak.8.DismUpdateOnline
cls
mode con cols=90 lines=40
title DISM UPDATE ONL˜NE /OgnitorenKs
call :konum2
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
for /f %%i in ('"dir /b %konum%\Edit\Update\*"') do DISM /Online /add-package /packagepath="%konum%\Edit\Update\%%i"
DISM /Online /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 ( echo  %ESC%[91m TEM˜ZLEME ˜žLEM˜ BAžARISIZ! %ESC%[0m 
						 timeout /t 5 /nobreak > NUL
						 goto menu)

echo  %ESC%[92m Ana Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m  
pause > NUL
goto menu

:Edit.Tweak.9.Driver.Yedekle
cls
mode con cols=85 lines=30
title Driver Yedekle / OgnitorenKs
call :konum

echo  %ESC%[35m%ESC%[0m
echo  %ESC%[92m:: Driverlar yedekleniyor...%ESC%[0m
echo  %ESC%[35m%ESC%[0m

Dism /Online /Export-Driver /Destination:%konum%\Edit\Driver\Yedek
	if %errorlevel%==1 ( echo  %ESC%[91mHATA! ˜žLEM GER€EKLEžT˜R˜LEMED˜.%ESC%[0m 
						 echo  %ESC%[92m%konum%\Edit\Driver klas”rn kontrol edin.%ESC%[0m
						 pause > NUL
						 goto menu)

powershell -command "Start-Process '%konum%\Edit\Driver\Yedek'"

echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
echo %ESC%[96m Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m
pause > NUL
goto menu

:Edit.Tweak.10.Driver.Yukle
cls
mode con cols=85 lines=30
title Driver Ykle [OFFLINE] / OgnitorenKs
call :konum
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMount01%ESC%[0m
set /p MerkezWim=%ESC%[97m  %ESC%%ESC%[92m ˜maj klas”r yolu : %ESC%[0m
	if %MerkezWim%==0 GOTO menu

Dism /Image:%MerkezWim% /Add-Driver /Driver:%konum%\Edit\Driver /Recurse
	if %errorlevel%==1 ( echo  %ESC%[91mHATA! ˜žLEM GER€EKLEžT˜R˜LEMED˜.%ESC%[0m 
						 echo  %ESC%[92m%konum%\Edit\Driver klas”rn kontrol edin.%ESC%[0m
						 pause > NUL
						 goto menu)

echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
echo %ESC%[96m Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m
pause > NUL
goto menu

:Edit.Tweak.11.Setup.Edit
cls
mode con cols=55 lines=22
title ˜maj ˜Ÿlemleri \ OgnitorenKs
echo   %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                        %ESC%[92m ˜maj Men%ESC%[0m
echo   %ESC%[35m---------------------------------------------------%ESC%[0m
echo         %ESC%[92m 1.%ESC%%ESC%[37m Newico, Walpaper, Silinecekler%ESC%[0m
echo         %ESC%[92m 2.%ESC%%ESC%[37m Setup Alan Dzenle%ESC%[0m
echo         %ESC%[92m 3.%ESC%%ESC%[33m Ana Men%ESC%[0m
echo   %ESC%[35m===================================================%ESC%[0m
set /p deger=%ESC%[92m Yapmak istedi§iniz iŸlem : %ESC%[0m
	if %deger%==1 GOTO Silinecekler
	if %deger%==2 GOTO SetupSilinecekler
	if %deger%==3 GOTO menu
else 
	goto Edit.Tweak.11.Setup.Edit 

:SetupSilinecekler
mode con cols=85 lines=30
title Setup Dzenle / OgnitorenKs
call :PowerRun
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMount01%ESC%[0m
set /p MerkezWim=%ESC%[97m  %ESC%%ESC%[92m ˜maj klas”r yolu : %ESC%[0m
	if %MerkezWim%==0 GOTO menu


set /p windowssetup=%ESC%[97m  %ESC%%ESC%[92m Windows 11: 1 / Windows 10: 2 ] : %ESC%[0m
	if %windowssetup%==1 (%PowerRun% powershell -command "Expand-Archive -Force '%konum%\Files\Setup11.zip' '%MerkezWim%'") 
	if %windowssetup%==2 (%PowerRun% powershell -command "Expand-Archive -Force '%konum%\Files\Setup10.zip' '%MerkezWim%'")

set /p barkonum=%ESC%[97m  %ESC%%ESC%[92m Alt: 1 / šst: 2 / Sa§: 3 / Sol: 4 ] : %ESC%[0m 
	if %barkonum%==1 (Call :regyukle
					  Call :SetupBar
					  reg add "HKLM\OG_NTUSER\SOFTWARE\Peter Lerup\LaunchBar" /v "Location" /t REG_SZ /d 4 /f
					  timeout /t 1 /nobreak > NUL
					  Call :Edit.Tweak.4.Regedit.Topla
					  goto menu)
	if %barkonum%==2 (Call :regyukle
					  Call :SetupBar
					  reg add "HKLM\OG_NTUSER\SOFTWARE\Peter Lerup\LaunchBar" /v "Location" /t REG_SZ /d 2 /f
					  timeout /t 1 /nobreak > NUL
					  Call :Edit.Tweak.4.Regedit.Topla
					  goto menu)		  
	if %barkonum%==3 (Call :regyukle
					  Call :SetupBar
					  reg add "HKLM\OG_NTUSER\SOFTWARE\Peter Lerup\LaunchBar" /v "Location" /t REG_SZ /d 3 /f
					  timeout /t 1 /nobreak > NUL
					  Call :Edit.Tweak.4.Regedit.Topla
					  goto menu)
	if %barkonum%==4 (Call :regyukle
					  Call :SetupBar
					  reg add "HKLM\OG_NTUSER\SOFTWARE\Peter Lerup\LaunchBar" /v "Location" /t REG_SZ /d 1 /f
					  timeout /t 1 /nobreak > NUL
					  Call :Edit.Tweak.4.Regedit.Topla
					  goto menu)
					  
echo  %ESC%[92m                  ˜Ÿlem tamamland. %ESC%[0m  
timeout /t 2 /nobreak > NUL
goto menu

:SetupBar
reg add "HKLM\OG_NTUSER\SOFTWARE\Peter Lerup\LaunchBar" /v "UseLargeIcons" /t REG_SZ /d 1 /f
reg add "HKLM\OG_NTUSER\SOFTWARE\Peter Lerup\LaunchBar" /v "UseLargeMenus" /t REG_SZ /d 1 /f
reg add "HKLM\OG_NTUSER\SOFTWARE\Peter Lerup\LaunchBar" /v "AlwaysOnTop" /t REG_SZ /d 1 /f
reg add "HKLM\OG_NTUSER\SOFTWARE\Peter Lerup\LaunchBar" /v "AutoHide" /t REG_SZ /d 0 /f
reg add "HKLM\OG_NTUSER\SOFTWARE\Peter Lerup\LaunchBar" /v "Center" /t REG_SZ /d 1 /f
reg add "HKLM\OG_NTUSER\SOFTWARE\Peter Lerup\LaunchBar" /v "Buttons" /t REG_SZ /d "" /f
goto :eof

:Silinecekler
cls
mode con cols=85 lines=30
echo  %ESC%[35mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMount01%ESC%[0m
set /p MerkezWim=%ESC%[97m  %ESC%%ESC%[92m ˜maj klas”r yolu : %ESC%[0m
	if %MerkezWim%==0 GOTO menu
	
Call :PowerRun 

%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\drivers\MsSecFlt.sys" > NUL 2>&1
REM System Guard Runtime Monitor Agent (Sistem korumas)
%PowerRun% DEL "%MerkezWim%\Windows\System32\drivers\SgrmAgent.sys" > NUL 2>&1
REM Windows Defender
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\drivers\WdBoot.sys" > NUL 2>&1
REM Windows Defender
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\drivers\WdFilter.sys" > NUL 2>&1
REM Windows Defender
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\drivers\WdNisDrv.sys" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\smartscreen.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\CompatTelRunner.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\securityhealthhost.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\securityhealthservice.exe" > NUL 2>&1 
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\securityhealthsystray.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\SgrmBroker.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\SysWOW64\OneDriveSetup.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\SysWOW64\OneDriveSettingSyncProvider.dll" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\SysWOW64\OneDrive.ico" > NUL 2>&1
%PowerRun% powershell -command "Expand-Archive -Force '%konum%\Files\Imaj.zip' '%MerkezWim%'" 
 
set /p newico=%ESC%[97m  %ESC%%ESC%[92m Yeni simgeler yklensin mi? [Evet: 1 / Hayr: 2] : %ESC%[0m
	if %newico%==1 (%PowerRun% powershell -command "Expand-Archive -Force '%konum%\Files\Newico.zip' '%MerkezWim%'")

set /p walpaper=%ESC%[97m  %ESC%%ESC%[92m Walpaper de§iŸtirilsin mi? [Evet: 1 / Hayr: 2] : %ESC%[0m
	if %walpaper%==1 (%PowerRun% powershell -command "Expand-Archive -Force '%konum%\Files\Walpaper.zip' '%MerkezWim%'")

set /p toolboxins=%ESC%[97m  %ESC%%ESC%[92m Toolbox yklensin mi? [Evet: 1 / Hayr: 2] : %ESC%[0m 
	if %toolboxins%==1 (%PowerRun% powershell -command "Expand-Archive -Force '%konum%\Files\OgnitorenKs.Toolbox.zip' '%MerkezWim%\OgnitorenKs.Toolbox'")
		
echo %ESC%[92m ˜Ÿlem tamamland.
timeout /t 3 /nobreak > NUL
goto menu

:Edit.Tweak.13.Online.Lite
call :konum
start cmd /c "%konum%\Ekler\Lite.Online.bat"
goto menu

:UpdateAfter
cls
mode con cols=109 lines=30
Call :PowerRun
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\drivers\MsSecFlt.sys" > NUL 2>&1
:: System Guard Runtime Monitor Agent (Sistem korumas)
%PowerRun% DEL "%MerkezWim%\Windows\System32\drivers\SgrmAgent.sys" > NUL 2>&1
:: Windows Defender
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\drivers\WdBoot.sys" > NUL 2>&1
:: Windows Defender
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\drivers\WdFilter.sys" > NUL 2>&1
:: Windows Defender
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\drivers\WdNisDrv.sys" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\smartscreen.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\CompatTelRunner.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\securityhealthhost.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\securityhealthservice.exe" > NUL 2>&1 
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\securityhealthsystray.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\System32\SgrmBroker.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\SysWOW64\OneDriveSetup.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\SysWOW64\OneDriveSettingSyncProvider.dll" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%MerkezWim%\Windows\SysWOW64\OneDrive.ico" > NUL 2>&1
%PowerRun% RD /S /Q "%MerkezWim%\Program Dosyalar (x86)\Windows Defender" > NUL 2>&1
%PowerRun% RD /S /Q "%MerkezWim%\Program Files\Windows Defender" > NUL 2>&1
%PowerRun% RD /S /Q "%MerkezWim%\Program FilesWindows Security" > NUL 2>&1
%PowerRun% RD /S /Q "%MerkezWim%\Program Files\Windows Defender Advanced Threat Protection" > NUL 2>&1
%PowerRun% RD /S /Q "%MerkezWim%\ProgramData\Microsoft\Windows Security Health" > NUL 2>&1
%PowerRun% RD /S /Q "%MerkezWim%\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" > NUL 2>&1 
%PowerRun% RD /S /Q "%MerkezWim%\ProgramData\Microsoft\Windows Defender" > NUL 2>&1
:: Ba§l Kullanc Deneyimleri ve Telemetrisi kapatlyor...
net stop DiagTrack
sc delete DiagTrack 
:: Czdan Hizmeti
net stop WalletService
sc delete WalletService 
:: Da§tlmŸ Ba§lant ˜zleme ˜stemcisi kapatlyor...
net stop TrkWks
sc delete TrkWks
:: Dokunmatik Klavyeyi ve El yazs Paneli Hizmeti kapatlyor...
net stop TabletInputService
sc delete TabletInputService 
:: Ebeveyn Denetimleri kapatlyor...
net stop WpcMonSvc
sc delete WpcMonSvc
:: Gvenlik Merkezi kapatlyor...
net stop wscsvc
sc delete wscsvc 
:: Microsoft Edge GncelleŸtirmeleri kapatlyor...
net stop edgeupdate
net stop edgeupdatem
sc config edgeupdate start= disabled
sc config edgeupdatem start= disabled
:: Windows Defender kapatlyor...
net stop Sense
sc delete Sense 
net stop WdNisSvc
sc delete WdNisSvc 
net stop SecurityHealthService
sc delete SecurityHealthService 
net stop WinDefend
sc delete WinDefend
:: SysMain (Superfetch) kapatlyor...
net stop Sysmain
sc delete Sysmain 
:: Sistem Koruma €alŸma Zaman ˜zleyicisi Aracs kapatlyor... 
net stop SgrmBroker 
sc delete SgrmBroker 
:: Teslim En ˜yileŸtirme kapatlyor...
net stop DoSvc
sc config DoSvc start= disabled
:: Windows Biyometrik Hizmeti kapatlyor...
net stop WbioSrvc
sc config WbioSrvc start= disabled
:: Windows Hata Raporlama Hizmeti kapatlyor...
net stop WerSvc
sc config WerSvc start= disabled
:: Windows Insider Hizmeti kapatlyor...
net stop wisvc
sc config wisvc start= disabled
:: Windows Search kapatlyor...
net stop WSearch
sc config WSearch start= disabled
:: Tanlama merkezi
net stop "diagnosticshub.standardcollector.service"
sc config diagnosticshub.standardcollector.service start= disabled
:: Telemetry sevisi
net stop "dmwappushservice"
sc delete dmwappushservice 
:: SmartScreen Devre DŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "ContentEvaluation" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "SmartScreenEnabled" /t REG_SZ /d "Off" > NUL 2>&1
:: DiagTrack Devre DŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\DiagTrack" /f /v "Start" /t REG_DWORD /d 4 > NUL 2>&1
:: Automatic Diagnostic Logger (Otomatik TeŸhis Kaydedici) devre dŸ 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /f /v "Start" /t REG_DWORD /d 0 > NUL 2>&1
:: Telemetry Devre DŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows Defender Devre DŸ braklyor...
:: ˜nternetten indirilen dosyalar i‡in tarama yapma ”zelli§ini kapatyoruz.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "ScanWithAntiVirus" /t REG_DWORD /d 3 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "SaveZoneInformation" /t REG_DWORD /d 1 > NUL 2>&1
:: Ger‡ek zamanl izlemeyi devre dŸ brak
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /f /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 > NUL 2>&1
:: Casus yazlmdan korunmay devre dŸ brak
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /f /v "DisableAntiSpyware" /t REG_DWORD /d 1 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f /v "Start" /t REG_DWORD /d 4 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinDefend" /f /v "Start" /t REG_DWORD /d 4 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /f /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "PromptOnSecureDesktop" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "EnableLUA" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 0 > NUL 2>&1
:: Microsoft Store i‡in Defender devre dŸ braklyor
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 > NUL 2>&1
:: Gvenlik Merkezi - Kritik olmayan bildirimler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableEnhancedNotifications" /t REG_DWORD /d 1 > NUL 2>&1
:: Gvenlik Merkezi - Tm bildirimler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableNotifications" /t REG_DWORD /d 1 > NUL 2>&1
:: Defender hesap koruma uyars 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows Security Health\State" /f /v "AccountProtection_MicrosoftAccount_Disconnected" /t REG_DWORD /d 0 > NUL 2>&1
:: Sabotaj korumas devre dŸ braklyor
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features" /f /v "TamperProtection" /t REG_DWORD /d 0 > NUL 2>&1
:: Kapatma iŸleminde uygulamalar a‡k ise otomatik kapat ve bekleme sresi azaltlyor
:: Bilgisayar kapatlrken ya da oturumdan ‡klrken Windows'un ‡nc parti hizmetleri otomatik olarak kapatmasn sa§lar. Bu sayede uygulama kapanmaya engel oluyor uyarlarn almayacaksnz.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "AutoEndTasks" /t REG_SZ /d 1 > NUL 2>&1
:: Uygulamalar cevap vermedi§i zaman g”revi sonlandr se‡ene§ine baslmadan ”nceki bekleme sresini ksaltr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "HungAppTimeout" /t REG_SZ /d "1000" > NUL 2>&1
:: Bilgisayar kapatlrken ya da oturumdan ‡klrken kullanc uygulamalarnn kapatlmas i‡in sistem bekleme sresini ksaltr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "WaitToKillAppTime" /t REG_SZ /d "2000" > NUL 2>&1
:: Cevap vermeyen hizmetlerin kapatlmasndan ”nceki sistem bekleme sresini ksaltr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" > NUL 2>&1
:: Bilgisayarn kapatlmas srasnda durdurulacak hizmetler uyars geldi§inde, uygulamalarn kapanmas i‡in beklenen sreyi ksaltr.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /f /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" > NUL 2>&1
:: Bilgi kutucuklar g”sterim sresi ksaltlyor...
:: Men g”sterimi bekleme sresini azaltr. B”ylelikle tkland§ zaman menler daha hzl gelecek.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "MenuShowDelay" /t REG_SZ /d "8" > NUL 2>&1
:: DŸk Depolama alan uyars devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1 > NUL 2>&1
:: Bilgi kutucuklarnn g”rnm hzlandrlyor...
:: Farenizle birlikte bir nesnenin zerine geldi§inizde g”rlen a‡klamann ‡kŸ sresini ksaltr
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /f /v "MouseHoverTime" /t REG_SZ /d 8 > NUL 2>&1
:: Ksayol taramas kapatlyor...
:: Bilgisayarnzda mevcut olmayan programlara ait ksayollarn ba§lantsnn Windows tarafndan boŸa vakit harcanarak aranmasn ”nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1 > NUL 2>&1
:: Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un diski aramasn ”nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveSearch" /t REG_DWORD /d 1 > NUL 2>&1
:: Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un NTFS dosya sisteminin izleme ”zelli§ini kullanmasn engeller
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveTrack" /t REG_DWORD /d 1 > NUL 2>&1
:: Birlikte a‡ se‡ene§inden internette ara se‡ene§i kaldrlyor...
:: Birlikte a‡ se‡ene§ine tklad§nzda uygulamalar internette arama se‡ene§inin ‡kmasn ”nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoInternetOpenWith" /t REG_DWORD /d 1 > NUL 2>&1
:: Kapatma srasnda sayfa dosyalarn temizle
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /f /v "ClearPageFileAtShutdown" /t REG_DWORD /d 1 > NUL 2>&1
:: Prefetch devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnablePrefetcher" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnableSuperFetch" /t REG_DWORD /d 0 > NUL 2>&1
:: Startup Delay (BaŸlang‡ Gecikmesi) devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /f /v "StartupDelayInMSec" /t REG_DWORD /d 0 > NUL 2>&1
:: Qos Limiti Devre DŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /f /v "NonBestEffortLimit" /t REG_DWORD /d 0 > NUL 2>&1
:: Uygulamalar a‡lrken gvenlik uyarlar devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /f /v ModRiskFileTypes /t "REG_SZ /d ".bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd" > NUL 2>&1
:: Ayarlar uygulamasnda Zaman €izelgesi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 > NUL 2>&1
:: AutoLogger devre dŸ braklyor...
:: ˜Ÿletim sistemi ”nykleme iŸleminde meydana gelen olaylar kaydeder.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /f /v "Start" /t REG_DWORD /d 0 > NUL 2>&1
:: Teslimat Optimizasyonu devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /f /v "DODownloadMode" /t REG_DWORD /d 0 > NUL 2>&1
:: Reklam kimli§i etkinli§i kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v DisabledByGroupPolicy /t REG_DWORD /d 1 > NUL 2>&1
:: OneDrive EŸitlemesi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 > NUL 2>&1
:: Windows Hata Raporlama devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /f /v "DontSendAdditionalData" /t REG_DWORD /d 1 > NUL 2>&1
:: Wifi Hotspot Raporlama devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" /f /v "value" /t REG_DWORD /d 0 > NUL 2>&1
:: Gvenli Wifi noktalarna otomatik ba§lan devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" /f /v "value" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "WiFiSenseOpen" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "PaidWifi" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows Reklam Kimli§ini devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v "Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Web sayfalarnn Dil se‡eneklerine eriŸimi engelleniyor...
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 > NUL 2>&1
:: Gvenlik ve Bakm simgesi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "HideSCAHealth" /t REG_DWORD /d 1 > NUL 2>&1
:: MŸteri Deneyim Program devre dŸ brakrlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SQMClient\Windows" /f /v "CEIPEnable" /t REG_DWORD /d 0 > NUL 2>&1
:: GncelleŸtirmeler Manuel yaplyor...
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "NoAutoUpdate" > NUL 2>&1
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallDay" > NUL 2>&1
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallTime" > NUL 2>&1
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "RescheduleWaitTime" > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "AUOptions" /t REG_DWORD /d "2" > NUL 2>&1
:: Deneyim geliŸtirme programna izin ver(NVIDIA Srcs) kapatlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /f /v "OptInOrOutPreference" /t REG_DWORD /d 0 > NUL 2>&1
:: Deneyler kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowExperimentation" /t REG_DWORD /d 0 > NUL 2>&1
:: SecurityHealth Devre dŸ braklyor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v "SecurityHealth" > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /f /v "SecurityHealth" > NUL 2>&1
:: Metadata izleme dosyalar kaldrlyor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /f > NUL 2>&1
:: Son a‡lan belgelerin ge‡miŸi kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoRecentDocsHistory" /t REG_DWORD /d 0 > NUL 2>&1
:: G”rev G”rnm Simgesi Kaldrlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowTaskViewButton" /t REG_DWORD /d 0 > NUL 2>&1
:: Uygulamalarn arka planda ‡alŸmas engelleniyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "Migrated" /t REG_DWORD /d 4 > NUL 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "GlobalUserDisabled" /t REG_DWORD /d 1 > NUL 2>&1
:: Ayarlar uygulamasn ”nerilen i‡eri§i g”stermesi kapatlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: HotSpot 2.0 devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WlanSvc\AnqpCache" /f /v "OsuRegistrationStatus" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows izleme uygulamas devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackProgs" /t REG_DWORD /d 0 > NUL 2>&1
:: BaŸlang‡taki ”neriler kapatlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Edge i‡in SmartScreen devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /f /v "EnabledV9" /t REG_DWORD /d 0 > NUL 2>&1
:: Yaz geliŸtirme i‡in Microsoft'a veri g”nderimi engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Input\TIPC" /f /v "Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: GiriŸ verilerinin Microsoft'a g”nderilmesi engelleniyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Personalization\Settings" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 > NUL 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 > NUL 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts " /t REG_DWORD /d 0 > NUL 2>&1
:: Geri Bildirim frekans kapatlyor.
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /f /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 > NUL 2>&1
:: Hzl EriŸimden Sk Kullanlanlar kaldrlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowFrequent" /t REG_DWORD /d 0 > NUL 2>&1
:: Internet Explorer i‡in SmartScreen devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\PhishingFilter" /f /v "Enabledv9" /t REG_DWORD /d 0 > NUL 2>&1
:: Konum Hizmetlerini kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowLocation" /t REG_DWORD /d 0 > NUL 2>&1
:: Web Sitelerinin kullanc dil listesine eriŸimini engeller...
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 > NUL 2>&1
:: Kullancnn di§er cihazlardaki uygulamalarn uygulamalar a‡mas engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /f /v "UserAuthPolicy" /t REG_DWORD /d 0 > NUL 2>&1
:: K”t ama‡l uygulamalara karŸ SmartScreen kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "SmartScreenEnabled" /t REG_SZ /d "Off" > NUL 2>&1
:: G”z Atma Verilerinin Microsoft'a G”nderilmesi engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" /f /v "FPEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Skype KiŸiler ba§lants devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" /f /v "Skype-UserConsentAccepted" /t REG_DWORD /d 0 > NUL 2>&1
:: Son kullanlan dosyalarn hzl eriŸimde g”rntlenmesi engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowRecent" /t REG_DWORD /d 0 > NUL 2>&1
:: Tketici Deneyimi kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 > NUL 2>&1
:: Tanlama verilerinin Microsoft'a g”nderilmesi engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows'un bilgisayardaki etkinlikleri toplamas engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "PublishUserActivities" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows belge izleme ”zelli§i devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackDocs" /t REG_DWORD /d 0 > NUL 2>&1
:: €evrimi‡i konuŸma hizmetleri devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\InputPersonalization" /f /v "AllowInputPersonalization" /t REG_DWORD /d 0 > NUL 2>&1
:: ™nceden yklenmiŸ OEM uygulamalar devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "PreInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: ˜‡g”rsel yazma engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Input\Settings" /f /v "InsightsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Atlama Listelerinde en son a‡lan ”§eler engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\Start" /f /v "HideRecentJumplists" /t REG_DWORD /d 1 > NUL 2>&1
:: Windows karŸlama deneyimi kapatlyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Windows ”nerileri devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SoftLandingEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: ˜Ÿaret‡i hassasiyeti devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /f /v "MouseSpeed" /t REG_SZ /d 0 > NUL 2>&1
:: Program uyumluluk yardmcs devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /f /v "DisablePCA" /t REG_DWORD /d 1 > NUL 2>&1
:: AyrlmŸ depolama alan devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "ShippedWithReserves" /t REG_DWORD /d 0 > NUL 2>&1
:: Teslimat Optimizasyonu BITS hizmeti olarak ayarlanyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /f /v "DODownloadMode" /t REG_DWORD /d "100" > NUL 2>&1
:: Driverlar kurulu de§il ise kurulmas i‡in ayarlanyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /f /v "SearchOrderConfig" /t REG_DWORD /d 2 > NUL 2>&1
:: Defender gncelleŸtirmeleri devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /f /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 > NUL 2>&1
:: KonuŸma modellerinin gnceleŸtirmeleri devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "ModelDownloadAllowed" /t REG_DWORD /d 0 > NUL 2>&1
:: Gncelleme sonras yeniden baŸlatma bildirimi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "RestartNotificationsAllowed2" /t REG_DWORD /d 0 > NUL 2>&1

echo  %ESC%[92m G”rev Zamanlaycsnda dzenlemeler yaplyor...%ESC%[0m
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /f > NUL 2>&1 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /f > NUL 2>&1 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /f > NUL 2>&1 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /f > NUL 2>&1 
schtasks /delete /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /f > NUL 2>&1
schtasks /delete /TN "\Microsoft\Windows\Maps\MapsToastTask" /f > NUL 2>&1
schtasks /delete /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /f > NUL 2>&1
schtasks /delete /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /f > NUL 2>&1
schtasks /delete /TN "\Microsoft\Windows\HelloFace\FODCleanupTask" /f > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /DISABLE  > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /DISABLE  > NUL 2>&1
schtasks /delete /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /f > NUL 2>&1
schtasks /delete /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /f > NUL 2>&1
schtasks /delete /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /f > NUL 2>&1
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


echo  %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PingMeter
call :konum
powershell -command "Start-Process '%konum%\Ekler\Pingolc.bat'"
goto :eof

:SistemHakkinda
call :konum
powershell -command "Start-Process '%konum%\Ekler\Sistem.Hakkinda.bat'"
goto :eof

:FoldertoISO
call :konum
powershell -command "Start-Process '%konum%\Files\Folder2Iso\Folder2Iso.exe'"
goto :eof

:AppxManager
call :konum
powershell -command "Start-Process '%konum%\Files\WindowsAppBoss.exe'
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PowerRun
Call :konum
set PowerRun=%konum%\Files\PowerRun.exe %SystemRoot%\system32\cmd.exe /c
goto :EOF

:konum
cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum=%%a
goto :EOF
:imagex
call :konum
set imagex=%konum%\Files\imagex.exe
goto :EOF

:ExplorerReset
taskkill /f /im explorer.exe
start explorer.exe
goto :EOF

:kontroll
cls
FOR /F "tokens=3" %%i in ('wmic os get Caption /value') do SET caption=%%i
	if %caption%==11 GOTO win11settingsmenu
	if %caption%==10 GOTO win10settingsmenu
else
	exit
	
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PowershellDownload
powershell -command "& { iwr %1 -OutFile %download%\%2 }"
"%download%\%~2" %~3
goto :eof

:wget
Files\wget --no-check-certificate  %1 -O %download%\%~2 > NUL 2>&1
"%download%\%~2" %~3
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= ˜ndirme ismi  | %~3= Sessiz kurulum parametresi
:: ========================================================================================================

:wgetozel
Files\wget --no-check-certificate  %1 -O %download%\%~2 > NUL 2>&1
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= ˜ndirme ismi 
:: ========================================================================================================

:wgetdesktop
Files\wget --no-check-certificate  %1 -O %~2 > NUL 2>&1
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= Masast konumu ve ismi
:: ========================================================================================================

:ZipExport
powershell -command "Expand-Archive -Force '%download%\%~2' '%download%\%~n2'" 
goto :eof
 

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
	
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0

