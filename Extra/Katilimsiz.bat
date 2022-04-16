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
  
setlocal
Call :ColorEnd
Call :ColorEnd2

:: ==============================================================================================================================
::  RENK HAR˜TASI
::  -------------
:: %R%[32m > Men i‡i yeŸil numara rengi
:: %R%[33m > Men i‡i sar renk
:: %R%[36m > Men i‡i mavi renk
:: %R%[37m > Men i‡i beyaz renk
:: %R%[90m > €er‡eve gri rengi
:: %R%[93m > Men i‡i yedek al ksm. Parlak sar
:: %ESC%[96m > Multiple choice text color 
:: %ESC%[1;97m > Color of text inside header padding
:: %ESC%[100m > Title fill color 
:: ==============================================================================================================================

Call :Location
Call :PowerRun

:menu
cls
mode con cols=96 lines=35
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %R%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%R%[0m
echo   %R%[90mº%R%[1;97m%R%[100m                              KATILIMSIZ KURULUM HAZIRLAMA ARACI                          %R%[0m%R%[90mº%R%[0m
echo   %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo   %R%[90mº%R%[32m  1.%C%[37m All In One Runtimes  %R%[90mº%R%[32m  27.%C%[36m OpenShot               %R%[90mº%R%[32m 53.%C%[36m TaskbarX                    %R%[90mº%R%[0m  
echo   %R%[90mº%R%[32m  2.%C%[33m Discord              %R%[90mº%R%[32m  28.%C%[36m Shotcut                %R%[90mº%R%[32m 54.%C%[36m Stellarium                  %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  3.%C%[33m Whatsapp             %R%[90mº%R%[32m  29.%C%[36m Krita                  %R%[90mº%R%[32m 55.%C%[36m Recuva                      %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  4.%C%[33m Signal               %R%[90mº%R%[32m  30.%C%[36m Gimp                   %R%[90mº%R%[32m 56.%C%[36m AOMEI Partiton Assistans    %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  5.%C%[33m Telegram             %R%[90mº%R%[32m  31.%C%[36m OBS Studio             %R%[90mº%R%[32m 57.%C%[33m Python                      %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  6.%C%[33m Zoom                 %R%[90mº%R%[32m  32.%C%[36m ShareX                 %R%[90mº%R%[32m 58.%C%[33m Phycharm                    %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  7.%C%[36m EpicGames            %R%[90mº%R%[32m  33.%C%[36m Audacity               %R%[90mº%R%[32m 59.%C%[33m Notepad++                   %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  8.%C%[36m Steam                %R%[90mº%R%[32m  34.%C%[36m K-Lite Codec           %R%[90mº%R%[32m 60.%C%[33m Visual Studio Code          %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m  9.%C%[36m GOG Galaxy           %R%[90mº%R%[32m  35.%C%[36m VLC Media Player       %R%[90mº%R%[32m 61.%C%[33m Github                      %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 10.%C%[36m Uplay                %R%[90mº%R%[32m  36.%C%[36m Aimp                   %R%[90mº%R%[32m 62.%C%[33m Git                         %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 11.%C%[36m Origin               %R%[90mº%R%[32m  37.%C%[36m Any Video Converter    %R%[90mº%R%[32m 63.%C%[33m Blender                     %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 12.%C%[36m Cheat Engine         %R%[90mº%R%[32m  38.%C%[33m Free Download Manager  %R%[90mº%R%[32m 64.%C%[36m Process Hacker 2            %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 13.%C%[36m Wemod                %R%[90mº%R%[32m  39.%C%[33m ˜nt Download Manager   %R%[90mº%R%[32m 65.%C%[37m OSU!                        %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 14.%C%[33m Google Chrome        %R%[90mº%R%[32m  40.%C%[33m ByClick Downloader     %R%[90mº%R%[32m 66.%C%[37m World Of Tanks              %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 15.%C%[33m Mozilla Firefox      %R%[90mº%R%[32m  41.%C%[33m Qbittorrent            %R%[90mº%R%[32m 67.%C%[37m Genshin Impact              %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 16.%C%[33m Brave                %R%[90mº%R%[32m  42.%C%[33m GlassWire              %R%[90mº%R%[32m 68.%C%[37m League Of Legends%C%[90m[TR]       º%R%[0m
echo   %R%[90mº%R%[32m 17.%C%[33m Microsoft Edge       %R%[90mº%R%[32m  43.%C%[33m TeamViewer             %R%[90mº%R%[32m 69.%C%[37m League Of Legends%C%[90m[EUW]      º%R%[0m
echo   %R%[90mº%R%[32m 18.%C%[37m ISLC                 %R%[90mº%R%[32m  44.%C%[33m Hamachi                %R%[90mº%R%[32m 70.%C%[37m Valorant                    %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 19.%C%[37m MemReduct            %R%[90mº%R%[32m  45.%C%[33m Stremio                %R%[90mº%R%[32m 71.%C%[96m OgnitorenKs Toolbox ekle    %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 20.%C%[36m Libre Office         %R%[90mº%R%[32m  46.%C%[36m MSI Afterburner        %R%[90mº%R%[32m 72.%C%[96m Masastne Dosya ekle       %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 21.%C%[36m Adobe Reader         %R%[90mº%R%[32m  47.%C%[36m Hibit Uninstaller      %R%[90mº%R%[32m 73.%C%[96m Performans Ayarlar ekle    %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 22.%C%[36m PDF-XChange Edit”r   %R%[90mº%R%[32m  48.%C%[36m Wise Care 365          %R%[90mº%R%[90m---------------------------------%R%[90mº%R%[0m  
echo   %R%[90mº%R%[32m 23.%C%[36m Calibre              %R%[90mº%R%[32m  49.%C%[36m Unlocker               %R%[90mº%R%[32m 74.%C%[93m Katlmsz dosyas oluŸtur  %R%[90mº%R%[0m 
echo   %R%[90mº%R%[32m 24.%C%[33m 7 - Zip              %R%[90mº%R%[32m  50.%C%[36m SSD Booster            %R%[90mº%R%[32m 75.%C%[93m Katlmsz dosyasn tamamla%R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 25.%C%[33m WinRAR               %R%[90mº%R%[32m  51.%C%[36m OpenShell              %R%[90mº%R%[32m 76.%C%[93m Katlmsz Yedekle          %R%[90mº%R%[0m
echo   %R%[90mº%R%[32m 26.%C%[36m Kdenlive             %R%[90mº%R%[32m  52.%C%[36m Everything             %R%[90mº%R%[32m 77.%C%[93m Yedekten ekle               %R%[90mº%R%[0m
echo   %R%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%R%[0m
echo   %R%[90mº%R%[0m                             [%R%[1;97m%R%[100mognitorenks.blogspot.com%R%[0m]                                   %R%[90mº%R%[0m
echo   %R%[90mÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼%R%[0m
set /p menu= %R%[92m  ˜Ÿlem : %R%[0m
	if %menu%==1 (Call :Downloadaio)
	if %menu%==2 (Call :Download Discord.exe -s)                
	if %menu%==3 (Call :Download Whatsapp.exe --silent)    
	if %menu%==4 (Call :Download Signal.exe /S)          
	if %menu%==5 (Call :Download Telegram.exe "/VERYSILENT /NORESTART")       
	if %menu%==6 (Call :Download Zoom.msi /qn) 
	if %menu%==7 (Call :Download EpicGames.msi "/qn /norestart") 
	if %menu%==8 (Call :Download Steam.exe /S)
	if %menu%==9 (Call :Download GOG.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %menu%==10 (Call :Download Uplay.exe /S)
	if %menu%==11 (Call :Download Origin.exe /SILENT)
	if %menu%==12 (Call :Download CheatEngine.exe /SILENT)
	if %menu%==13 (Call :Download Wemod.exe --silent)
	if %menu%==14 (Call :Download Chrome.msi /qn)
	if %menu%==15 (Call :Download Firefox.exe /S)
	if %menu%==16 (Call :Download Brave.exe "--install --silent --system-level")
	if %menu%==17 (Call :Download Edge.msi /qn)
	if %menu%==18 (Call :Download3)
	if %menu%==19 (Call :Download MemReduct.exe /S)
	if %menu%==20 (Call :Download LibreOffice.msi "/qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL")
	if %menu%==21 (Call :Download AdobeReader.exe "/sPB /rs /msi")
	if %menu%==22 (Call :Download PdfXchange.msi "/quiet /norestart")
	if %menu%==23 (Call :Download Calibre.msi /qn)
	if %menu%==24 (Call :Download 7-Zip.msi /qn)
	if %menu%==25 (Call :Download Winrar.exe /S)
	if %menu%==26 (Call :Download Kdenlive.exe /S)
	if %menu%==27 (Call :Download Openshot.exe "/VERYSILENT /NORESTART")
	if %menu%==28 (Call :Download Shotcut.exe /S)
	if %menu%==29 (Call :Download Krita.exe /S)
	if %menu%==30 (Call :Download Gimp.exe "/VERYSILENT /NORESTART /MERGETASKS=desktopicon /ALLUSERS")
	if %menu%==31 (Call :Download OBS.exe /S)
	if %menu%==32 (Call :Download ShareX.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %menu%==33 (Call :Download Audacity.exe "/VERYSILENT /NORESTART")
	if %menu%==34 (Call :Download Klite.exe /verysilent)
	if %menu%==35 (Call :Download VLCMediaPlayer.exe "/L=1055 /S")
	if %menu%==36 (Call :Download Aimp.exe "/AUTO /SILENT")
	if %menu%==37 (Call :Download4)
	if %menu%==38 (Call :Download FreeDownloadManager.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %menu%==39 (Call :Download InternetDownloadManager.exe /skipdlgs)
	if %menu%==40 (Call :Download ByClick.exe /q)
	if %menu%==41 (Call :Download Qbittorrent.exe /S)
	if %menu%==42 (Call :Download GlassWire.exe /S)
	if %menu%==43 (Call :Download TeamViewer.exe /S)
	if %menu%==44 (Call :Download Hamachi.msi /q)
	if %menu%==45 (Call :Download Stremio.exe /S)
	if %menu%==46 (Call :Download MSIAfterburner.exe /S)
	if %menu%==47 (Call :Download HibitUninstaller.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %menu%==48 (Call :Download5)
	if %menu%==49 (Call :Download Unlocker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")    
	if %menu%==50 (Call :Download2 SSDBooster.exe)    
	if %menu%==51 (Call :Download OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu")
	if %menu%==52 (Call :Download Everything.exe /S)
	if %menu%==53 (Call :Download6)
	if %menu%==54 (Call :Download Stellarium.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %menu%==55 (Call :Download Recuva.exe /S)
	if %menu%==56 (Call :Download AOMEI.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %menu%==57 (Call :Download Python.exe "/quiet InstallAllUsers=1 PrependPath=1")
	if %menu%==58 (Call :Download PyCharm.exe /S)
	if %menu%==59 (Call :Download Notepad.exe /S)
	if %menu%==60 (Call :Download VisualStudioCode.exe "/VERYSILENT /NORESTART /MERGETASKS=!runcode")
	if %menu%==61 (Call :Download Github.exe -s)
	if %menu%==62 (Call :Download Git.exe "/VERYSILENT /NORESTART")
	if %menu%==63 (Call :Download Blender.msi "ALLUSERS=1 /qn")
	if %menu%==64 (Call :Download Processhacker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-")
	if %menu%==65 (Call :Download2 osu.exe)
	if %menu%==66 (Call :Download2 WorldOfTanks.exe)
	if %menu%==67 (Call :Download2 GenshinImpact.exe)
	if %menu%==68 (Call :Download2 LeagueOfLegendsTR.exe)
	if %menu%==69 (Call :Download2 LeagueOfLegendsEUW.exe)
	if %menu%==70 (Call :Download2 Valorant.exe)
	if %menu%==71 (Call :OgnitorenKsToolbox)
	if %menu%==72 (Call :DesktopFiles)
	if %menu%==73 (Call :PerformansAyar)
	if %menu%==74 (Call :OpenBAT)
	if %menu%==75 (Call :CloseBAT)
	if %menu%==76 (Call :KatilimsizYedekle)
	if %menu%==77 (Call :KatilimsizYukle)
) else
	goto menu
goto menu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ	

:OpenBAT
RD /S /Q "%Mount%\OgnitorenKs.Toolbox" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Katilimsiz" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Extra" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Download" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
copy /y "%Location%\Files\wget.exe" "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
(
echo :: ==============================================================================================================================
echo ::                                     Ognitorenks Toolbox ile hazirlanmistir.
echo ::
echo ::       #######   ######   ##    ## #### ########  #######  ########  ######## ##    ## ##    ##  ######
echo ::      ##     ## ##    ##  ###   ##  ##     ##    ##     ## ##     ## ##       ###   ## ##   ##  ##    #
echo ::      ##     ## ##        ####  ##  ##     ##    ##     ## ##     ## ##       ####  ## ##  ##   ##
echo ::      ##     ## ##   #### ## ## ##  ##     ##    ##     ## ########  ######   ## ## ## #####      ###### 
echo ::      ##     ## ##    ##  ##  ####  ##     ##    ##     ## ##   ##   ##       ##  #### ##  ##         ##
echo ::      ##     ## ##    ##  ##   ###  ##     ##    ##     ## ##    ##  ##       ##   ### ##   ##  ##    ##
echo ::       #######   ######   ##    ## ####    ##     #######  ##     ## ######## ##    ## ##    ##  ###### 
echo ::
echo :: ==============================================================================================================================
echo echo off
echo cls
echo title ognitorenks.blogspot.com
echo :: -----------------------------------------------------------------------------------
echo net session ^>NUL 2^>^&1^|^| powershell Start-Process '%%^0' -Verb RunAs^&^& exit /b^|^| exit /b
echo :: -----------------------------------------------------------------------------------
echo cd /d "%%~dp0"
echo for /f %%%%a in ^('"cd"'^) do set Location=%%%%a
echo set Location=%%Location:~0,-11%%
echo :: -----------------------------------------------------------------------------------
echo :netkontrol
echo ping -n 1 www.bing.com -w 20000 ^> NUL
echo 	if %%errorlevel%%==1 ^(echo INTERNET BAGLANTINIZ YOK BAGLANTIYI SAGLAYIP HERHANGI BIR TUSA BASINIZ.^&pause ^> NUL^&goto netkontrol^)
echo :: -----------------------------------------------------------------------------------
echo echo Guncel linkler indiriliyor...
echo Call :wget2 "https://docs.google.com/uc?export=download&id=1BNmQ1JSes4hiFu3mPR4mJP10FNX68NxV" Links.zip
echo powershell -command "Expand-Archive -Force '%%Location%%\Download\Links.zip' '%%Location%%\Extra'" 
echo cls
echo :: ===================================================================================
echo :: ===================================================================================
echo.
) > %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat

(
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] ^| Katlmsz ^| OpenBat - Katlmsz dosyas giriŸ b”lm hazrland.
) >> %Location%\Logs
echo   %R%[96m Katlmsz dosyas oluŸturuldu / Unattended file created%R%[0m
timeout /t 2 /nobreak > NUL 
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:CloseBAT
Find "Islemler tamamlandi" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
(
echo [%date% - %time%] ^| Katlmsz ^| OpenBat - Katlmsz dosyas son b”lm uyguland. 
echo ---------------------------------------------------------------------------------------------------------------------------
) >> %Location%\Logs
Call :RegTopla
(
echo.
echo :: ===================================================================================
echo :: ===================================================================================
echo reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Katilimsiz" /f ^> NUL 2^>^&1
echo timeout /t 3 /nobreak ^> NUL 
echo DEL /F /Q /A %%Location%%\Download\* ^> NUL 2^>^&1
echo RD /S /Q %%Location%%\Download\* ^> NUL 2^>^&1
echo echo  Islemler tamamlandi.
echo timeout /t 1 /nobreak ^> NUL
echo RD /S /Q "C:\OgnitorenKs.Toolbox\Katilimsiz" ^> NUL 2^>^&1
echo exit
echo.
echo :: ===================================================================================
echo.
echo :wget
echo %%Location%%\Files\wget.exe -c -q --no-check-certificate --show-progress "%%~n1" -O %%Location%%\Download\%%~1
echo "%%Location%%\Download\%~1" %%~2
echo goto :eof
echo.
echo :: ===================================================================================
echo.
echo :wget2
echo %%Location%%\Files\wget.exe -c -q --no-check-certificate --show-progress "%%~n1" -O %%Location%%\Download\%%~1
echo goto :eof
echo.
echo :: ===================================================================================
echo.
echo :wget3
echo %%Location%%\Files\wget.exe -c -q --no-check-certificate --show-progress "%%~n1" -O C:\Users\%%username%%\Desktop\%%~1
echo goto :eof
echo.
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
Call :RegYukle
reg add "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Katilimsiz" /t REG_SZ /d "C:\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat" /f
Call :RegTopla
echo   %R%[96m Katlmsz dosyas sisteme entegre edildi / Unattended file is integrated into the system%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Download
Find "%~n1" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (echo   %R%[91m HATA! %~n1 katlmsz dosyasna eklenmiŸ / Already attached%R%[0m
						timeout /t 2 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| Katlmsz ^| "%~n1" eklendi / added. >> %Location%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  %~n1 kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "%~n1" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" "%~1" "%~2"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
echo   %R%[96m %~n1 eklendi / added%R%[0m
timeout /t 1 /nobreak > NUL                            
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Download2
Find "%~n1" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (echo   %R%[91m HATA! %~n1 katlmsz dosyasna eklenmiŸ / Already attached%R%[0m
						timeout /t 2 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| Katlmsz ^| "%~n1" eklendi / added. >> %Location%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  "%~n1" kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "%~n1" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget3 "%%link%%" "C:\Users\%%username%%\Desktop\%~1"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
echo   %R%[96m %~n1 eklendi / added%R%[0m
timeout /t 1 /nobreak > NUL   
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Downloadaio
Find "05x86" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (echo   %R%[91m HATA! All in One Runtimes katlmsz dosyasna eklenmiŸ / Already attached%R%[0m
						timeout /t 2 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| Katlmsz ^| All IN ONE RUNTIMES eklendi / added. >> %Location%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2005 kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "05x86.exe" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 05x86.exe /Q
echo.
echo FOR /F "tokens=1" %%%%i in ^('FIND "05x64.exe" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 05x64.exe /Q
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2008 kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "08x86.exe" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 08x86.exe /q
echo.
echo FOR /F "tokens=1" %%%%i in ^('FIND "08x64.exe" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 08x64.exe /q
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2010 kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "10x86.exe" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 10x86.exe "/q /norestart"
echo.
echo FOR /F "tokens=1" %%%%i in ^('FIND "10x64.exe" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 10x64.exe "/q /norestart"
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2012 kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "12x86.exe" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 12x86.exe "/install /quiet /norestart"
echo.
echo FOR /F "tokens=1" %%%%i in ^('FIND "12x64.exe" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 12x64.exe "/install /quiet /norestart"
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2013 kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "13x86.exe" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 13x86.exe "/install /quiet /norestart"
echo.
echo FOR /F "tokens=1" %%%%i in ^('FIND "13x64.exe" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 13x64.exe "/install /quiet /norestart"
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2015-2022 kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "15x86.exe" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 15x86.exe "/install /quiet /norestart"
echo.
echo FOR /F "tokens=1" %%%%i in ^('FIND "15x64" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" 15x64.exe "/install /quiet /norestart"
echo.
echo :: -----------------------------------------------------------------------------------
echo echo Java kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "javax64" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" javax64.exe "INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable"
echo.
echo :: -----------------------------------------------------------------------------------
echo echo XNA Framework 4.0 kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "xnafx40" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" xnafx40.msi /qn
echo.
echo :: -----------------------------------------------------------------------------------
echo echo OpenAL kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "oal.zip" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget2 "%%link%%" oal.zip
echo powershell -command "Expand-Archive -Force '%%Location%%\Download\oal.zip' '%%Location%%\Download\oal'" 
echo "%%Location%%\Download\oal\oalinst.exe" /SILENT
echo.
echo :: -----------------------------------------------------------------------------------
echo echo Desktop Runtime 5 kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "Desktop5x64" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" Desktop5x64.exe "/q /norestart"
echo.
echo FOR /F "tokens=1" %%%%i in ^('FIND "Desktop5x86" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" Desktop5x86.exe "/q /norestart"
echo.
echo :: -----------------------------------------------------------------------------------
echo echo DirectX kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "DirectX" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget2 "%%link%%" DirectX.exe
echo %%Location%%\Download\DirectX.exe /Q /C /T:"%%Location%%\Download\DirectX\"
echo "%%Location%%\Download\DirectX\DXSETUP.exe" /silent
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
echo   %R%[96m All in One Runtimes eklendi / added%R%[0m
timeout /t 1 /nobreak > NUL   
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Download3
Find "ISLC" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (echo   %R%[91m HATA! ISLC katlmsz dosyasna eklenmiŸ / Already attached%R%[0m
						timeout /t 2 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| Katlmsz ^| ISLC eklendi / added. >> %Location%\Logs
Copy /y "%Location%\Files\ISLC.zip" "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo ISLC kuruluyor/installing...
echo Powershell -command "Expand-Archive -Force '%%Location%%\Files\ISLC.zip' 'C:\'" 
echo Powershell -command "New-Item -ItemType SymbolicLink -Path 'C:\Users\%%username%%\Desktop' -Name 'ISLC' -Value 'C:\ISLC\Intelligent standby list cleaner ISLC.exe'"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
echo   %R%[96m ISLC eklendi / added%R%[0m
timeout /t 1 /nobreak > NUL   
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Download4
Find "AnyVideoConverter" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (echo   %R%[91m HATA! Any Video Converter katlmsz dosyasna eklenmiŸ / Already attached%R%[0m
						timeout /t 2 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| Katlmsz ^| AnyVideoConverter eklendi / added. >> %Location%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo AnyVideoConverter kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "AnyVideoConverter" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget "%%link%%" AnyVideoConverter.exe /S
echo Powershell -command "New-Item -ItemType SymbolicLink -Path 'C:\Users\OgnitorenKs\Desktop' -Name 'Any Video Converter' -Value 'C:\Program Files ^(x86^)\Anvsoft\Any Video Converter\AVCFree.exe'"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
echo   %R%[96m Any Video Converter eklendi / added%R%[0m
timeout /t 1 /nobreak > NUL   
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Download5
Find "WiseCare365" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (echo   %R%[91m HATA! Wise Care 365 katlmsz dosyasna eklenmiŸ / Already attached%R%[0m
						timeout /t 2 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| Katlmsz ^| WiseCare365 eklendi / added. >> %Location%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo WiseCare365 kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "WiseCare365.zip" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget2 "%%link%%" WiseCare365.zip
echo powershell -command "Expand-Archive -Force '%%Location%%\Download\WiseCare365.zip' '%%Location%%\Download'"
echo "%%Location%%\Download\WiseCare365.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
echo   %R%[96m Wise Care 365 eklendi / added%R%[0m
timeout /t 1 /nobreak > NUL   
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Download6
Find "TaskbarX" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (echo   %R%[91m HATA! TaskbarX katlmsz dosyasna eklenmiŸ / Already attached%R%[0m
						timeout /t 2 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| Katlmsz ^| TaskbarX eklendi / added. >> %Location%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  TaskbarX kuruluyor/installing...
echo FOR /F "tokens=1" %%%%i in ^('FIND "TaskbarX" %%Location%%\Extra\Links.bat'^) do set link=%%%%i
echo Call :wget2 "%%link%%" TaskbarX.zip 
echo powershell -command "Expand-Archive -Force '%%Location%%\Download\TaskbarX.zip' 'C:\Users\%%username%%\Desktop\TaskbarX'" 
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
echo   %R%[96m TaskbarX eklendi / added%R%[0m
timeout /t 1 /nobreak > NUL   
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:OgnitorenKsToolbox
Find "OgnitorenKs Toolbox kuruluyor / installing..." %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (echo   %R%[91m HATA! OgnitorenKs.Toolbox katlmsz dosyasna eklenmiŸ / Already attached%R%[0m
						timeout /t 2 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| Katlmsz ^| OgnitorenKs Toolbox eklendi / added. >> %Location%\Logs
Powershell -command "Expand-Archive -Force '%Location%\Files\Toolbox.zip' '%Mount%\OgnitorenKs.Toolbox'" 
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  OgnitorenKs Toolbox kuruluyor / installing...
echo Powershell -command "Expand-Archive -Force '%%Location%%\OgnitorenKs.Toolbox.Setup.zip' 'C:\users\%%username%%\Desktop'"
echo DEL /F /Q /A "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.Setup.zip" ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
echo   %R%[96m OgnitorenKs Toolbox eklendi / added%R%[0m
timeout /t 1 /nobreak > NUL   
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:DesktopFiles
Find "Masaustu dosyalari yukleniyor" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (echo   %R%[91m HATA! Masaustu dosyalar katlmsz dosyasna eklenmiŸ / Already attached%R%[0m
						timeout /t 2 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| Katlmsz ^| Masastne dosyalar eklendi / added. >> %Location%\Logs
Powershell -command "Start-Process '%Location%\Edit\Desktop'"
cls
echo 
echo 
echo %R%[92m A‡lan pencere i‡ine boŸ klas”r atarsanz eklemeyecektir.%R%[0m 
echo 
echo %R%[92m Dosyalarnz attktan sonra iŸleme devam etmek i‡in herhangi bir tuŸa basn%R%[0m 
pause > NUL

Powershell -command "Compress-Archive -Path '%Location%\Edit\Desktop\*' -DestinationPath '%Mount%\OgnitorenKs.Toolbox\Katilimsiz\Desktop.zip'"
DEL /F /Q /A %Location%\Edit\Desktop\* > NUL 2>&1
RD /S /Q %Location%\Edit\Desktop\* > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Masaustu dosyalari yukleniyor... / Desktop Files installing...
echo Powershell -command "Expand-Archive -Force '%%Location%%\Katilimsiz\Desktop.zip' 'C:\Users\%%username%%\Desktop'"
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
echo   %R%[96m Masaustune dosyalar eklendi / added%R%[0m
timeout /t 1 /nobreak > NUL   
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PerformansAyar
Find "Gorev Zamanlayici" %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat > NUL 2>&1
	if %errorlevel%==0 (echo   %R%[91m HATA! Performans ayarlar katlmsz dosyasna eklenmiŸ / Already attached%R%[0m
						timeout /t 2 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| Katlmsz ^| G”rev Zamanlayc ayarlar eklendi / added. >> %Location%\Logs
Copy /y "%Location%\Files\DevManView.exe" "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Performans ayarlamalar yaplyor...
echo ::  Nihai Performans ekleniyor ve varsayilan hale getiriliyor...
echo powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo echo. 
echo powercfg -list ^| findstr /C:"G‡"
echo 	if %%errorlevel%%==1 ^(powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a^)
echo echo.
echo for /f "tokens=4" %%%%f in ^('powercfg -list ^^^| findstr /C:"Nihai"'^) do ^(powercfg -setactive %%%%f^)
echo echo.
echo :: -----------------------------------------------------------------------------------
echo schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Maps\MapsToastTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /DISABLE  ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /DISABLE  ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\DiskCleanup\SilentCleanup" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Time Zone\SynchronizeTimeZone" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\WaaSMedic\PerformRemediation" /DISABLE ^> NUL 2^>^&1
echo.
echo :: -----------------------------------------------------------------------------------
echo :: SVCHost Ram optimizasyonu yapiliyor...
echo FOR /F "tokens=4" %%%%g IN ^('systeminfo ^^^| FIND "Total"'^) DO set ramtotal=%%%%g
echo set ramtotal=%%ramtotal:~0,-4%%
echo set /a ramtotal=^(%%ramtotal%%*1024*1024+1024000^)
echo reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x%%ramtotal%% /f ^> NUL 2^>^&1
echo.
echo :: -----------------------------------------------------------------------------------
echo ::  Stuttering sorunu icin duzenleme yapiliyor... ^(Bcdedit^)
echo bcdedit /deletevalue useplatformclock ^> NUL 2^>^&1
echo bcdedit /set {current} recoveryenabled no ^> NUL 2^>^&1
echo powercfg /h off ^> NUL 2^>^&1
echo bcdedit /set useplatformtick yes ^> NUL 2^>^&1
echo bcdedit /set disabledynamictick yes ^> NUL 2^>^&1
echo %%Location%%\Files\DevManView.exe /disable "High Precision Event Timer"
echo sc delete DiagTrack ^> NUL 2^>^&1
echo sc delete dmwappushservice ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat
echo   %R%[96m Performans ayarlar eklendi / added%R%[0m
timeout /t 1 /nobreak > NUL   
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:KatilimsizYedekle
DEL /F /Q /A "C:\Users\%username%\Desktop\Yedek.Katlmsz.zip" > NUL 2>&1
Powershell -command "Compress-Archive -LiteralPath %Mount%\OgnitorenKs.Toolbox -DestinationPath C:\Users\%username%\Desktop\Yedek.Katlmsz.zip -Force"
echo   %R%[96m Katlmsz kurulum masastne yedeklendi / Unattended installation backed up to desktop%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:KatilimsizYukle
set /p Yedek=%R%[97m  %R%[92m Yedek Zip Yolu : %R%[0m
echo [%date% - %time%] ^| Katlmsz ^| "%Yedek%" yolundan katlmsz yedek imaja yklendi. Mount="%Mount%" >> %Location%\Logs
powershell -command "Expand-Archive -Force '%Yedek%' '%Mount%'" 
Call :RegYukle
reg add "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Katilimsiz" /t REG_SZ /d "C:\OgnitorenKs.Toolbox\Katilimsiz\OgnitorenKs.Katilimsiz.bat" /f
Call :RegTopla
echo   %R%[96m Yedekten katlmsz kurulum eklendi / Added unattended installation from backup%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Location
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Location=%Location:~0,-6%
goto :EOF

:PowerRun
set PowerRun=%Location%\Files\PowerRun.exe %SystemRoot%\system32\cmd.exe /c
goto :EOF

:RegYukle
reg load HKLM\OG_COMPONENTS "%Mount%\Windows\System32\config\COMPONENTS" >nul
reg load HKLM\OG_DEFAULT "%Mount%\Windows\System32\config\default" >nul
reg load HKLM\OG_NTUSER "%Mount%\Users\Default\ntuser.dat" >nul
reg load HKLM\OG_SOFTWARE "%Mount%\Windows\System32\config\SOFTWARE" >nul
reg load HKLM\OG_SYSTEM "%Mount%\Windows\System32\config\SYSTEM" >nul
goto :eof

:RegTopla
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

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

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