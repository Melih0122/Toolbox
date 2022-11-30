echo off
cls

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

RD /S /Q "%temp%\OgnitorenKs.Toolbax"
mkdir "%temp%\OgnitorenKs.Toolbax"

setlocal
call :setESC

:menu
cls
cd /d "%~dp0"
title OgnitorenKs Toolbox
mode con cols=66 lines=46
echo   þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo                         %ESC%[96mOgnitorenKs Toolbox%ESC%[0m         
echo   ==============================================================
echo                      %ESC%[92m 1.%ESC%%ESC%[97m All ˜n One Runtimes%ESC%[0m 
echo   --------------------------------------------------------------
echo      %ESC%[92m 2.%ESC%%ESC%[33m Discord%ESC%[0m                     %ESC%[92m 27.%ESC%%ESC%[36m Libre Office%ESC%[0m
echo      %ESC%[92m 3.%ESC%%ESC%[33m Whatsapp %ESC%[0m                   %ESC%[92m 28.%ESC%%ESC%[36m Adobe Reader%ESC%[0m
echo      %ESC%[92m 4.%ESC%%ESC%[33m Signal%ESC%[0m                      %ESC%[92m 29.%ESC%%ESC%[36m Notepad++%ESC%[0m
echo      %ESC%[92m 5.%ESC%%ESC%[33m Telegram%ESC%[0m                    %ESC%[92m 30.%ESC%%ESC%[36m Calibre%ESC%[0m
echo      %ESC%[92m 6.%ESC%%ESC%[33m Microsoft Teams%ESC%[0m             %ESC%[92m 31.%ESC%%ESC%[33m Kdenlive%ESC%[0m
echo      %ESC%[92m 7.%ESC%%ESC%[33m Skype%ESC%[0m                       %ESC%[92m 32.%ESC%%ESC%[33m Krita%ESC%[0m
echo      %ESC%[92m 8.%ESC%%ESC%[36m EpicGames%ESC%[0m                   %ESC%[92m 33.%ESC%%ESC%[33m Audacity%ESC%[0m
echo      %ESC%[92m 9.%ESC%%ESC%[36m Steam%ESC%[0m                       %ESC%[92m 34.%ESC%%ESC%[33m K-Lite Codec%ESC%[0m
echo     %ESC%[92m 10.%ESC%%ESC%[36m GOG Galaxy%ESC%[0m                  %ESC%[92m 35.%ESC%%ESC%[33m VLC Media Player%ESC%[0m
echo     %ESC%[92m 11.%ESC%%ESC%[36m Uplay%ESC%[0m                       %ESC%[92m 36.%ESC%%ESC%[33m Aimp%ESC%[0m
echo     %ESC%[92m 12.%ESC%%ESC%[36m Origin%ESC%[0m                      %ESC%[92m 37.%ESC%%ESC%[33m Format Factory%ESC%[0m
echo     %ESC%[92m 13.%ESC%%ESC%[97m League Of Legends%ESC%[0m           %ESC%[92m 38.%ESC%%ESC%[36m Free Download Manager%ESC%[0m
echo     %ESC%[92m 14.%ESC%%ESC%[97m Blitz%ESC%[0m                       %ESC%[92m 39.%ESC%%ESC%[36m ByClick Downloader%ESC%[0m
echo     %ESC%[92m 15.%ESC%%ESC%[36m Wemod%ESC%[0m                       %ESC%[92m 40.%ESC%%ESC%[36m EagleGet%ESC%[0m
echo     %ESC%[92m 16.%ESC%%ESC%[36m MSI Afterburner%ESC%[0m             %ESC%[92m 41.%ESC%%ESC%[36m Utorrent%ESC%[0m
echo     %ESC%[92m 17.%ESC%%ESC%[36m Hamachi%ESC%[0m                     %ESC%[92m 42.%ESC%%ESC%[36m TeamViewer%ESC%[0m
echo     %ESC%[92m 18.%ESC%%ESC%[36m Cheat Engine%ESC%[0m                %ESC%[92m 43.%ESC%%ESC%[36m GlassWire%ESC%[0m
echo     %ESC%[92m 19.%ESC%%ESC%[36m OBS Studio%ESC%[0m                  %ESC%[92m 44.%ESC%%ESC%[36m Stremio%ESC%[0m
echo     %ESC%[92m 20.%ESC%%ESC%[33m Google Chrome%ESC%[0m               %ESC%[92m 45.%ESC%%ESC%[33m Hibit Uninstaller%ESC%[0m
echo     %ESC%[92m 21.%ESC%%ESC%[33m Mozilla Firefox%ESC%[0m             %ESC%[92m 46.%ESC%%ESC%[33m OpenShell%ESC%[0m
echo     %ESC%[92m 22.%ESC%%ESC%[33m Brave%ESC%[0m                       %ESC%[92m 47.%ESC%%ESC%[33m Unlocker%ESC%[0m
echo     %ESC%[92m 23.%ESC%%ESC%[33m Microsoft Edge%ESC%[0m              %ESC%[92m 48.%ESC%%ESC%[33m SSD Fresh%ESC%[0m
echo     %ESC%[92m 24.%ESC%%ESC%[36m 7 - Zip%ESC%[0m                     %ESC%[92m 49.%ESC%%ESC%[33m Stellarium%ESC%[0m         
echo     %ESC%[92m 25.%ESC%%ESC%[36m WinRAR%ESC%[0m                      %ESC%[92m 50.%ESC%%ESC%[33m Everything%ESC%[0m
echo     %ESC%[92m 26.%ESC%%ESC%[33m LightShoot%ESC%[0m                  %ESC%[92m 51.%ESC%%ESC%[33m TaskbarX%ESC%[0m
echo   --------------------------------------------------------------
echo     %ESC%[92m 52.%ESC%%ESC%[93m Hesap Y”netimi%ESC%[0m              %ESC%[92m 59.%ESC%%ESC%[36m Win 11 ™zelleŸtir%ESC%[0m 
echo     %ESC%[92m 53.%ESC%%ESC%[93m Lisans Durumu %ESC%[0m              %ESC%[92m 60.%ESC%%ESC%[36m Win 10 ™zelleŸtir%ESC%[0m
echo     %ESC%[92m 54.%ESC%%ESC%[93m Sistem Hakknda%ESC%[0m             %ESC%[92m 61.%ESC%%ESC%[36m Windows Dzenle%ESC%[0m
echo     %ESC%[92m 55.%ESC%%ESC%[93m Sistem-Market Onar%ESC%[0m          %ESC%[92m 62.%ESC%%ESC%[36m Appx Y”netici%ESC%[0m
echo     %ESC%[92m 56.%ESC%%ESC%[93m PC Temizle%ESC%[0m                  %ESC%[92m 63.%ESC%%ESC%[36m Fat32 to NTFS%ESC%[0m
echo     %ESC%[92m 57.%ESC%%ESC%[93m Gncelleme Sonras%ESC%[0m          %ESC%[92m 64.%ESC%%ESC%[36m Yazc aktifleŸtir%ESC%[0m    
echo     %ESC%[92m 58.%ESC%%ESC%[93m Ping ™l‡er%ESC%[0m                  %ESC%[92m 65.%ESC%%ESC%[36m Laptop hizmetlerini a‡%ESC%[0m
echo   --------------------------------------------------------------
echo                      %ESC%[97mognitorenks.blogspot.com%ESC%[0m  
echo   --------------------------------------------------------------
echo                           %ESC%[91m 0. €kŸ%ESC%[0m
echo          %ESC%[91m Kalnt brakmadan ‡kmak i‡in "0" tuŸlaynz%ESC%[0m
echo   ==============================================================
set /p menu= %ESC%[92m  Yapmak istedi§iniz iŸlem : %ESC%[0m
	if %menu%==1 GOTO aio
	if %menu%==2 ( "Files\wget" --no-check-certificate "https://discord.com/api/download?platform=win" -O %temp%\OgnitorenKs.Toolbax\Discord.exe > NUL 2>&1
                   "%temp%\OgnitorenKs.Toolbax\Discord.exe" -s&goto menu)               
	if %menu%==3 ( "Files\wget" --no-check-certificate "https://web.whatsapp.com/desktop/windows/release/x64/WhatsAppSetup.exe" -O %temp%\OgnitorenKs.Toolbax\WhatsApp.exe > NUL 2>&1
                   "%temp%\OgnitorenKs.Toolbax\WhatsApp.exe" --silent&goto menu)    
	if %menu%==4 ( "Files\wget" --no-check-certificate "https://updates.signal.org/desktop/signal-desktop-win-5.18.0.exe" -O %temp%\OgnitorenKs.Toolbax\Signal.exe > NUL 2>&1
                   "%temp%\OgnitorenKs.Toolbax\Signal.exe" /S&goto menu)           
	if %menu%==5 ( "Files\wget" --no-check-certificate "https://telegram.org/dl/desktop/win64" -O %temp%\OgnitorenKs.Toolbax\Telegram.exe > NUL 2>&1
                   "%temp%\OgnitorenKs.Toolbax\Telegram.exe" /VERYSILENT /NORESTART&goto menu)         
	if %menu%==6 ( "Files\wget" --no-check-certificate "https://go.microsoft.com/fwlink/p/?LinkID=869426&clcid=0x41f&culture=tr-tr&country=TR&lm=deeplink&lmsrc=groupChatMarketingPageWeb&cmpid=directDownloadWin64" -O %temp%\OgnitorenKs.Toolbax\Teams.exe > NUL 2>&1
                   "%temp%\OgnitorenKs.Toolbax\Teams.exe" -s&goto menu)   
	if %menu%==7 ( "Files\wget" --no-check-certificate "https://go.skype.com/windows.desktop.download" -O %temp%\OgnitorenKs.Toolbax\Skype.exe
                   "%temp%\OgnitorenKs.Toolbax\Skype.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-&goto menu)
	if %menu%==8 ( "Files\wget" --no-check-certificate "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi"  -O %temp%\OgnitorenKs.Toolbax\EpicGames.msi > NUL 2>&1
                   "%temp%\OgnitorenKs.Toolbax\EpicGames.msi" /qn /norestart&goto menu)
	if %menu%==9 ( "Files\wget" --no-check-certificate "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -O %temp%\OgnitorenKs.Toolbax\Steam.exe > NUL 2>&1
                   "%temp%\OgnitorenKs.Toolbax\Steam.exe" /S&goto menu)
	if %menu%==10 ( "Files\wget" --no-check-certificate "https://cdn.gog.com/open/galaxy/client/2.0.37.384/setup_galaxy_2.0.37.384.exe" -O %temp%\OgnitorenKs.Toolbax\GOG.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\GOG.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-&goto menu)
	if %menu%==11 ( "Files\wget" --no-check-certificate "https://ubi.li/4vxt9" -O %temp%\OgnitorenKs.Toolbax\Uplay.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Uplay.exe" /S&goto menu)
	if %menu%==12 ( "Files\wget" --no-check-certificate "https://www.dm.origin.com/download" -O %temp%\OgnitorenKs.Toolbax\Origin.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Origin.exe" /SILENT&goto menu)
	if %menu%==13 ( "Files\wget" --no-check-certificate "https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.tr.exe" -O C:\users\%username%\Desktop\League.Of.Legends.exe > NUL 2>&1
				    goto menu)
	if %menu%==14 ( "Files\wget" --no-check-certificate "https://blitz.gg/download/win" -O %temp%\OgnitorenKs.Toolbax\Blitz.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Blitz.exe" /S
				    goto menu)
	if %menu%==15 ( "Files\wget" --no-check-certificate "https://api.wemod.com/client/download" -O %temp%\OgnitorenKs.Toolbax\Wemod.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Wemod.exe" --silent&goto menu)
	if %menu%==16 GOTO msiafterburner
	if %menu%==17 ( "Files\wget" --no-check-certificate "https://secure.logmein.com/hamachi.msi" -O %temp%\OgnitorenKs.Toolbax\Hamachi.msi > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Hamachi.msi" /q&goto menu)
	if %menu%==18 ( "Files\wget" --no-check-certificate "https://d3eit947wbxhoj.cloudfront.net/installer/700348/174007358576922" -O %temp%\OgnitorenKs.Toolbax\CheatEngine.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\CheatEngine.exe" /SILENT&goto menu)
	if %menu%==19 ( "Files\wget" --no-check-certificate "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-27.1.1-Full-Installer-x64.exe" -O %temp%\OgnitorenKs.Toolbax\OBS.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\OBS.exe" /S&goto menu)
	if %menu%==20 GOTO chrome
	if %menu%==21 ( "Files\wget" --no-check-certificate "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=tr" -O %temp%\OgnitorenKs.Toolbax\Firefox.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Firefox.exe" /S&goto menu)
	if %menu%==22 GOTO brave
	if %menu%==23 ( "Files\wget" --no-check-certificate "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2fa04572-8170-4fcd-85a7-3530762cc91a/MicrosoftEdgeEnterpriseX64.msi" -O %temp%\OgnitorenKs.Toolbax\edge.msi > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\edge.msi" /qn&goto menu)
	if %menu%==24 ( "Files\wget" --no-check-certificate "https://7-zip.org/a/7z2103-x64.exe" -O %temp%\OgnitorenKs.Toolbax\7-Zip.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\7-Zip.exe" /S&goto menu)
	if %menu%==25 ( "Files\wget" --no-check-certificate "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-602tr.exe" -O %temp%\OgnitorenKs.Toolbax\Winrar.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Winrar.exe" /S&goto menu)
	if %menu%==26 ( "Files\wget" --no-check-certificate "https://app.prntscr.com/build/setup-lightshot.exe" -O %temp%\OgnitorenKs.Toolbax\LightShoot.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\LightShoot.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-&goto menu)
	if %menu%==27 ( "Files\wget" --no-check-certificate "https://download.documentfoundation.org/libreoffice/stable/7.2.1/win/x86_64/LibreOffice_7.2.1_Win_x64.msi" -O %temp%\OgnitorenKs.Toolbax\LibreOffice.msi > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\LibreOffice.msi" /qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL&goto menu)
	if %menu%==28 ( "Files\wget" --no-check-certificate "https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/1900820071/AcroRdrDC1900820071_tr_TR.exe" -O %temp%\OgnitorenKs.Toolbax\AdobeReader.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\AdobeReader.exe" /sPB /rs /msi&goto menu)
	if %menu%==29 ( "Files\wget" --no-check-certificate "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1.5/npp.8.1.5.Installer.x64.exe" -O %temp%\OgnitorenKs.Toolbax\Notepad.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Notepad.exe" /S&goto menu)
	if %menu%==30 ( "Files\wget" --no-check-certificate "https://calibre-ebook.com/dist/win64" -O %temp%\OgnitorenKs.Toolbax\Calibre.msi > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Calibre.msi" /qn&goto menu)
	if %menu%==31 ( "Files\wget" --no-check-certificate "https://download.kde.org/stable/kdenlive/21.08/windows/kdenlive-21.08.1.exe" -O %temp%\OgnitorenKs.Toolbax\Kdenlive.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Kdenlive.exe" /S&goto menu)
	if %menu%==32 ( "Files\wget" --no-check-certificate "https://download.kde.org/stable/krita/4.4.8/krita-x64-4.4.8-setup.exe" -O %temp%\OgnitorenKs.Toolbax\Krita.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Krita.exe" /S&goto menu)
	if %menu%==33 ( "Files\wget" --no-check-certificate "https://github.com/audacity/audacity/releases/download/Audacity-3.0.5/audacity-win-3.0.5-64bit.exe" -O %temp%\OgnitorenKs.Toolbax\Audacity.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Audacity.exe" /VERYSILENT /NORESTART&goto menu)
	if %menu%==34 ( "Files\wget" --no-check-certificate "https://files2.codecguide.com/K-Lite_Codec_Pack_1646_Mega.exe" -O %temp%\OgnitorenKs.Toolbax\Klite.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Klite.exe" /verysilent&goto menu)
	if %menu%==35 ( "Files\wget" --no-check-certificate "https://mirrors.neterra.net/vlc/vlc/3.0.16/win64/vlc-3.0.16-win64.exe" -O %temp%\OgnitorenKs.Toolbax\VLCMediaPlayer.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\VLCMediaPlayer.exe" /L=1055 /S&goto menu)
	if %menu%==36 ( "Files\wget" --no-check-certificate "https://www.aimp.ru/?do=download.file&id=4" -O %temp%\OgnitorenKs.Toolbax\Aimp.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Aimp.exe" /AUTO /SILENT&goto menu)
	if %menu%==37 ( "Files\wget" --no-check-certificate "http://public.pcfreetime.com/FFSetup5.8.1.0.exe" -O %temp%\OgnitorenKs.Toolbax\FormatFactory.exe > NUL 2>&1 
                    "%temp%\OgnitorenKs.Toolbax\FormatFactory.exe" /S&goto menu)
	if %menu%==38 ( "Files\wget" --no-check-certificate "https://dn3.freedownloadmanager.org/6/latest/fdm_x64_setup.exe" -O %temp%\OgnitorenKs.Toolbax\FreeDownloadManager.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\FreeDownloadManager.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-&goto menu)
	if %menu%==39 ( "Files\wget" --no-check-certificate "https://proxy.byclickdownloader.com/ExternalSetup/InstallPage/ByClickDownloader-Setup.exe" -O %temp%\OgnitorenKs.Toolbax\ByClick.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\ByClick.exe" /q&goto menu)
	if %menu%==40 ( "Files\wget" --no-check-certificate "http://dl.eagleget.com/latest/eagleget_setup.exe" -O %temp%\OgnitorenKs.Toolbax\EagleGet.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\EagleGet.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-&goto menu)
	if %menu%==41 ( "Files\wget" --no-check-certificate "https://download-hr.utorrent.com/track/stable/endpoint/utorrent/os/windows" -O %temp%\OgnitorenKs.Toolbax\Utorrent.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Utorrent.exe" /S&goto menu)
	if %menu%==42 ( "Files\wget" --no-check-certificate "https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe" -O %temp%\OgnitorenKs.Toolbax\TeamViewer.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\TeamViewer.exe" /S&goto menu)
	if %menu%==43 ( "Files\wget" --no-check-certificate "https://download.glasswire.com/GlassWireSetup.exe" -O %temp%\OgnitorenKs.Toolbax\GlassWire.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\GlassWire.exe" /S&goto menu)
	if %menu%==44 ( "Files\wget" --no-check-certificate "https://www.strem.io/download?platform=windows&four=true" -O %temp%\OgnitorenKs.Toolbax\Stremio.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Stremio.exe" /S&goto menu)
	if %menu%==45 ( "Files\wget" --no-check-certificate "http://www.hibitsoft.ir/HiBitUninstaller/HiBitUninstaller-setup-2.6.20.exe" -O %temp%\OgnitorenKs.Toolbax\Hibit.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Hibit.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-&goto menu)
	if %menu%==46 ( "Files\wget" --no-check-certificate "https://github.com/Open-Shell/Open-Shell-kontrol/releases/download/v4.4.160/OpenShellSetup_4_4_160.exe" -O %temp%\OgnitorenKs.Toolbax\OpenShell.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\OpenShell.exe" /quiet /norestart ADDLOCAL=StartMenu&goto menu)
	if %menu%==47 ( "Files\wget" --no-check-certificate "https://cdn.iobit.com/dl/unlocker-setup.exe" -O %temp%\OgnitorenKs.Toolbax\Unlocker.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Unlocker.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-&goto menu)
	if %menu%==48 ( "Files\wget" --no-check-certificate "https://www.abelssoft.de/ssdfreshsetup.exe" -O %temp%\OgnitorenKs.Toolbax\SSDFresh.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\SSDFresh.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-&goto menu)
	if %menu%==49 ( "Files\wget" --no-check-certificate "https://github.com/Stellarium/stellarium/releases/download/v0.21.2/stellarium-0.21.2-win64.exe" -O %temp%\OgnitorenKs.Toolbax\Stellarium.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Stellarium.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-&goto menu)
	if %menu%==50 ( "Files\wget" --no-check-certificate "https://www.voidtools.com/Everything-1.4.1.1009.x64-Setup.exe" -O %temp%\OgnitorenKs.Toolbax\Everything.exe > NUL 2>&1
                    "%temp%\OgnitorenKs.Toolbax\Everything.exe" /S&goto menu)
	if %menu%==51 GOTO taskbarx
	if %menu%==52 GOTO adminmenu
	if %menu%==53 GOTO slmgrvbs 
	if %menu%==54 (start cmd /c "Ekler\Sistem.Hakknda.bat"&goto menu)
	if %menu%==55 GOTO winrepair
	if %menu%==56 GOTO arindir
	if %menu%==57 GOTO updateafter
	if %menu%==58 (start cmd /c "Ekler\Pingolc.bat"&goto menu)
	if %menu%==59 GOTO win11settingsmenu
	if %menu%==60 GOTO win10settingsmenu
	if %menu%==61 GOTO windowseditt
	if %menu%==62 GOTO appxmanager
	if %menu%==63 GOTO fat32tontfs
	if %menu%==64 GOTO yazicionar 
	if %menu%==65 GOTO laptopservis
	if %menu%==0 (cls&RD /S /Q "%temp%\OgnitorenKs.Toolbax"&goto exit)
else
	goto menu
	

:brave
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
"Files\wget" --no-check-certificate "https://brave-browser-downloads.s3.brave.com/latest/brave_installer-x64.exe" -O %temp%\OgnitorenKs.Toolbax\Brave.exe > NUL 2>&1
"%temp%\OgnitorenKs.Toolbax\Brave.exe" --install --silent --system-level
REM UBlock Origin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM HTTPS Everywhere
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM Clear URL's
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
goto menu 

:chrome
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
"Files\wget" --no-check-certificate "https://dl.google.com/tag/s/appguid%253D%257B8A69D345-D564-463C-AFF1-A69D9E530F96%257D%2526iid%253D%257BBEF3DB5A-5C0B-4098-B932-87EC614379B7%257D%2526lang%253Den%2526browser%253D4%2526usagestats%253D1%2526appname%253DGoogle%252520Chrome%2526needsadmin%253Dtrue%2526ap%253Dx64-stable-statsdef_1%2526brand%253DGCEB/dl/chrome/install/GoogleChromeEnterpriseBundle64.zip?_ga%3D2.8891187.708273100.1528207374-1188218225.1527264447" -O %temp%\OgnitorenKs.Toolbax\Chrome.zip > NUL 2>&1
powershell -command "Expand-Archive -Force '%temp%\OgnitorenKs.Toolbax\chrome.zip' '%temp%\OgnitorenKs.Toolbax\chrome'" > NUL 2>&1
"%temp%\OgnitorenKs.Toolbax\chrome\Installers\GoogleChromeStandaloneEnterprise64.msi" /qn
REM UBlock Origin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM HTTPS Everywhere
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM Clear URL's
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
goto menu 

:msiafterburner
cls
REM https://www.msi.com/Landing/afterburner/graphics-cards
"Files\wget" --no-check-certificate "https://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip?__token__=exp=1633706109~acl=/*~hmac=ab962c9905c41604b2035482c3c5a8ecb05a940e3714d71d87fbfcfd713994d4" -O %temp%\OgnitorenKs.Toolbax\MSIAfterburner.zip > NUL 2>&1
powershell -command "Expand-Archive -Force '%temp%\OgnitorenKs.Toolbax\MSIAfterburner.zip' '%temp%\OgnitorenKs.Toolbax\msi'"
for /f %%i in ('"dir /b %temp%\OgnitorenKs.Toolbax\msi\*.exe"') do "%temp%\OgnitorenKs.Toolbax\msi\%%i" /S
goto menu

:taskbarx
cls
mode con cols=95 lines=30
"Files\wget" --no-check-certificate "https://github.com/ChrisAnd1998/TaskbarX/releases/download/1.6.9.0/TaskbarX_1.6.9.0_x64.zip" -O %temp%\OgnitorenKs.Toolbax\TaskbarX.zip > NUL 2>&1
powershell -command "Expand-Archive -Force '%temp%\OgnitorenKs.Toolbax\TaskbarX.zip' 'C:\Users\%username%\TaskbarX'" > NUL
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX Configurator.exe'
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX.exe'
goto menu

:aio
cls
mode con cols=109 lines=45
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2005 x86 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/6/B/B/6BB661D6-A8AE-4819-B79F-236472F6070C/vcredist_x86.exe" -O %temp%\OgnitorenKs.Toolbax\05x86ATL.exe > NUL 2>&1
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE" -O %temp%\OgnitorenKs.Toolbax\05x86MFC.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2005 x86 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\05x86ATL.exe" /Q
"%temp%\OgnitorenKs.Toolbax\05x86MFC.exe" /Q
echo   %ESC%[92m Microsoft Visual C++ 2005 x86 kurulum tamamland...%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2005 x64 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/6/B/B/6BB661D6-A8AE-4819-B79F-236472F6070C/vcredist_x64.exe" -O %temp%\OgnitorenKs.Toolbax\05x64ATL.exe > NUL 2>&1
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE" -O %temp%\OgnitorenKs.Toolbax\05x64MFC.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2005 x64 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\05x64ATL.exe" /Q
"%temp%\OgnitorenKs.Toolbax\05x64MFC.exe" /Q
echo   %ESC%[92m Microsoft Visual C++ 2005 x64 kurulum tamamland...%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2008 x86 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/9/7/7/977B481A-7BA6-4E30-AC40-ED51EB2028F2/vcredist_x86.exe" -O %temp%\OgnitorenKs.Toolbax\08x86ATL.exe > NUL 2>&1
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe" -O %temp%\OgnitorenKs.Toolbax\08x86MFC.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2008 x86 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\08x86ATL.exe" /q
"%temp%\OgnitorenKs.Toolbax\08x86MFC.exe" /q
echo   %ESC%[92m Microsoft Visual C++ 2008 x86 kurulum tamamland...%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2008 x64 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/9/7/7/977B481A-7BA6-4E30-AC40-ED51EB2028F2/vcredist_x64.exe" -O %temp%\OgnitorenKs.Toolbax\08x64ATL.exe > NUL 2>&1
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe" -O %temp%\OgnitorenKs.Toolbax\08x64MFC.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2008 x64 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\08x64ATL.exe" /q
"%temp%\OgnitorenKs.Toolbax\08x64MFC.exe" /q
echo   %ESC%[92m Microsoft Visual C++ 2008 x64 kurulum tamamland...%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2010 x86 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe" -O %temp%\OgnitorenKs.Toolbax\10x86.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2010 x86 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\10x86.exe" /q /norestart
echo   %ESC%[92m Microsoft Visual C++ 2010 x86 kurulum tamamland...%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2010 x64 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe" -O %temp%\OgnitorenKs.Toolbax\10x64.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2010 x64 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\10x64.exe" /q /norestart
echo   %ESC%[92m Microsoft Visual C++ 2010 x64 kurulum tamamland...%ESC%[0m
echo    Microsoft Visual C++ 2010 x64 kurulum tamamland...
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2012 x86 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe" -O %temp%\OgnitorenKs.Toolbax\12x86.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2012 x86 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\12x86.exe" /install /quiet /norestart
echo   %ESC%[92m Microsoft Visual C++ 2012 x86 kurulum tamamland...%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2012 x64 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe" -O %temp%\OgnitorenKs.Toolbax\12x64.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2012 x64 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\12x64.exe" /install /quiet /norestart
echo   %ESC%[92m Microsoft Visual C++ 2012 x64 kurulum tamamland...%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2013 x86 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe" -O %temp%\OgnitorenKs.Toolbax\13x86.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2013 x86 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\13x86.exe" /install /quiet /norestart
echo   %ESC%[92m Microsoft Visual C++ 2013 x86 kurulum tamamland...%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2013 x64 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe" -O %temp%\OgnitorenKs.Toolbax\13x64.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2013 x64 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\13x64.exe" /install /quiet /norestart
echo   %ESC%[92m Microsoft Visual C++ 2013 x64 kurulum tamamland...%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2015 / 2017 / 2019 x86 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://aka.ms/vs/16/release/vc_redist.x86.exe" -O %temp%\OgnitorenKs.Toolbax\15x86.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2015-2019 x86 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\15x86.exe" /install /quiet /norestart
echo   %ESC%[92m Microsoft Visual C++ 2015 / 2017 / 2019 x86 kurulum tamamland...%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Visual C++ 2015-2019 x64 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://aka.ms/vs/16/release/vc_redist.x64.exe" -O %temp%\OgnitorenKs.Toolbax\15x64.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Visual C++ 2015-2019 x86 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\15x64.exe" /install /quiet /norestart
echo   %ESC%[92m Microsoft Visual C++ 2015 / 2017 /2019 x64 kurulum tamamland...%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Java x64 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=244584_d7fc238d0cbf4b0dac67be84580cfb4b" -O %temp%\OgnitorenKs.Toolbax\javax64.exe > NUL 2>&1
echo   %ESC%[93m Java x64 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\javax64" INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable
echo   %ESC%[92m Java x64 kurulum tamamland.%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft XNA Framework 4.0 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/A/C/2/AC2C903B-E6E8-42C2-9FD7-BEBAC362A930/xnafx40_redist.msi" -O %temp%\OgnitorenKs.Toolbax\xnafx40.msi > NUL 2>&1
echo   %ESC%[93m Microsoft XNA Framework 4.0 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\xnafx40.msi" /qn
echo   %ESC%[92m Microsoft XNA Framework 4.0 kurulum tamamland.%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m OpenAL indiriliyor...%ESC%[0m 
"Files\wget" --no-check-certificate "https://openal.org/downloads/oalinst.zip" -O %temp%\OgnitorenKs.Toolbax\oal.zip > NUL 2>&1
echo   %ESC%[93m OpenAL kuruluyor...%ESC%[0m
powershell -command "Expand-Archive -Force '%temp%\OgnitorenKs.Toolbax\oal.zip' '%temp%\OgnitorenKs.Toolbax'" > NUL 2>&1
"%temp%\OgnitorenKs.Toolbax\oalinst.exe" /SILENT
echo   %ESC%[92m OpenAL kurulum tamamland.%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Windows Desktop Runtime 5.0 x64 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.visualstudio.microsoft.com/download/pr/78fa839b-2d86-4ece-9d97-5b9fe6fb66fa/10d406c0d247470daa80691d3b3460a6/windowsdesktop-runtime-5.0.10-win-x64.exe" -O %temp%\OgnitorenKs.Toolbax\Desktop5x64.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Windows Desktop Runtime 5.0 x64 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\Desktop5x64.exe" /q /norestart
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x64 kurulum tamamland.%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m Microsoft Windows Desktop Runtime 5.0 x86 indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.visualstudio.microsoft.com/download/pr/7ed142ef-5738-4eea-bdd3-9210c5dd4973/ce3d680c487b178a828c5c3edd9ec685/windowsdesktop-runtime-5.0.10-win-x86.exe" -O %temp%\OgnitorenKs.Toolbax\Desktop5x86.exe > NUL 2>&1
echo   %ESC%[93m Microsoft Windows Desktop Runtime 5.0 x86 kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\Desktop5x86.exe" /q /norestart
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x86 kurulum tamamland.%ESC%[0m
echo                              
timeout /t 1 /nobreak > NUL 2>&1
echo                             
echo   %ESC%[96m DirectX indiriliyor...%ESC%[0m
"Files\wget" --no-check-certificate "https://download.microsoft.com/download/8/4/A/84A35BF1-DAFE-4AE8-82AF-AD2AE20B6B14/directx_Jun2010_redist.exe" -O %temp%\OgnitorenKs.Toolbax\Directx.exe > NUL 2>&1
"%temp%\OgnitorenKs.Toolbax\DirectX.exe" /Q /C /T:"%temp%\OgnitorenKs.Toolbax\DirectX\"
echo   %ESC%[93m DirectX kuruluyor...%ESC%[0m
"%temp%\OgnitorenKs.Toolbax\DirectX\Directx.exe" /silent
echo   %ESC%[92m DirectX kurulum tamamland.%ESC%[0m
echo                              
echo   %ESC%[92m All in One Runtimes kurulumu tamamland. Anamenye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak > NUL
goto menu

:arindir
cls
title PC Cleaner / OgnitorenKs
mode con cols=109 lines=43
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
goto menu 

:yazicionar
cls
mode con cols=80 lines=30
title OgnitorenKs / Yazc Hizmetleri 

echo %ESC%[92m Yazc hizmetleri a‡lyor...%ESC%[0m

sc config "Spooler" Start=auto > NUL 2>&1
net start Spooler > NUL 2>&1
DEL /F /Q /A %windir%\System32\spool\PRINTERS\* > NUL 2>&1

echo %ESC%[92m ˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak > NUL
goto menu

:laptopservis
cls
mode con cols=80 lines=30
title OgnitorenKs / Bluetooth - Wifi Enabled

echo %ESC%[92m Bluetooth - Wifi hizmetleri a‡lyor...%ESC%[0m

echo Alljoyn Y”nlendirici Hizmeti
REM  Yakndaki cihazlarla internet ile iletiŸim kurmasn sa§lar.
sc config "AJRouter" start= demand > NUL 2>&1
net start AJRouter > NUL 2>&1
echo Bluetooth (AVCTP hizmeti) 
REM  Ses, video denetim aktarm protokoldr.
sc config "BthAvctpSvc" start= demand > NUL 2>&1
net start BthAvctpSvc > NUL 2>&1
echo Bluetooth destek hizmeti
REM  Bluetooth cihazlarn bulunmas ve iliŸkilendirmesini sa§lar.
sc config "bthserv" start= demand > NUL 2>&1
net start bthserv > NUL 2>&1
echo Bluetooth kullanc deste§i hizmeti
REM  Kullanc oturumuyla Bluetooth ”zelliklerinin tam ‡alŸmasn sa§lar.
sc config "BluetoothUserService" start= demand > NUL 2>&1
net start BluetoothUserService > NUL 2>&1
echo Ses a§ ge‡idi hizmeti
REM  Eller boŸta profilinin ses a§ ge‡idini destekler.
sc config "BTAGService" start= demand > NUL 2>&1
net start BTAGService > NUL 2>&1
echo Da§tlmŸ Ba§lant ˜zleme ˜stemcisi
REM  Bir bilgisayardaki ya da bir a§ zerindeki bilgisayarlar zerinde NTFS dosyalar arasndaki ba§lantlar korur.
sc config "TrkWks" start= auto > NUL 2>&1
net start TrkWks > NUL 2>&1
echo Ip yardmcs 
REM  IPv6 ge‡iŸ teknolojileri ve IP-HTTPS kullanarak tnel ba§lants sa§lar.
sc config "iphlpsvc" start= auto > NUL 2>&1
net start iphlpsvc > NUL 2>&1
echo Windows Mobil Etkin Nokta Hizmeti
REM  Veri ba§lantsnn baŸka bir cihazla paylaŸlmasn sa§lar
sc config "icssvc" start= demand > NUL 2>&1
net start icssvc > NUL 2>&1
echo Windows žimdi Ba§lan - Yaplandrma Dosyas Kaydedici
REM  WPS protokolnn uygulanmasn sa§lar.
sc config "wcncsvc" start= demand > NUL 2>&1
net start wcncsvc > NUL 2>&1
echo WMP a§ paylaŸm hizmeti
sc config "WMPNetworkSvc" start= demand > NUL 2>&1
net start WMPNetworkSvc > NUL 2>&1
REM Internet Ba§lants PaylaŸm (ICS)
sc config "SharedAccess" start= demand > NUL 2>&1
net start SharedAccess > NUL 2>&1
echo Radyo Y”netimi Hizmeti
REM  Radyo y”netimi ve u‡ak modu hizmeti
net start "RMSvc" start= demand > NUL 2>&1
net start "RMSvc" > NUL 2>&1
echo Natural kimlik Do§rulamas
REM  Zaman, a§, konum ve bluetooth sinyallerini de§erlendirip toplayan hizmet.
net start "NaturalAuthentication" start= demand > NUL 2>&1
net start "NaturalAuthentication" > NUL 2>&1
echo Telefon
net start "TapiSrv" start= demand > NUL 2>&1
net start "TapiSrv" > NUL 2>&1
echo Telefon Hizmeti
net start "PhoneSvc" start= demand > NUL 2>&1
net start "PhoneSvc" > NUL 2>&1
echo Veri kullanm
REM  Arkaplan verilierni ve a§ kullanmn snrlar
net start "DusmSvc" start= demand > NUL 2>&1
net start "DusmSvc" > NUL 2>&1
echo PNRP Makine ad yayn hizmeti
net start PNPRAutoReg start= demand > NUL 2>&1
net start PNPRAutoReg > NUL 2>&1

echo %ESC%[92m ˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak > NUL
goto menu

:winrepair
cls
mode con cols=80 lines=30

echo %ESC%[92m   SoftwareDistribution klas”r siliniyor...%ESC%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution" > NUL 2>&1
net start wuauserv > NUL 2>&1
echo %ESC%[92m   WinSxS temizleniyor...%ESC%[0m
DISM /Online /Cleanup-Image /StartComponentCleanup
echo %ESC%[92m   Sfc /scannow komutu ‡alŸyor...%ESC%[0m
sfc /scannow
echo %ESC%[92m   DISM /Online /Cleanup-Image /RestoreHealth komutu ‡alŸtrlyor...%ESC%[0m
DISM /Online /Cleanup-Image /RestoreHealth
echo %ESC%[92m   Market Regedit kaytlar dzenleniyor...%ESC%[0m
REM Market b”lmnnn sorunsuz ‡alŸmas i‡in reg kaytlarn dzenler
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC" /v "start" /t REG_DWORD /d 3 /f > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppXSvc" /v "start" /t REG_DWORD /d 3 /f > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\camsvc" /v "start" /t REG_DWORD /d 3 /f > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "" /t REG_SZ /d /f > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "DisableSubscription" /t REG_DWORD /d 0 /f > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "InactivityShutdownDelay" /t REG_DWORD /d 0x12c /f > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ProcessBiosKey" /t REG_DWORD /d 1 /f > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "RefreshRequired" /t REG_DWORD /d 1 /f > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ServiceDll" /t REG_EXPAND_SZ /d "%SystemRoot%\System32\ClipSVC.dll" /f > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ServiceDllUnloadOnStop" /t REG_DWORD /d 1 /f > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d 0 /f > NUL 2>&1
timeout /t 1 /nobreak > NUL
REM Market i‡in gerekli hizmetleri baŸlatr.
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
goto menu

:fat32tontfs
cls
mode con cols=55 lines=15
title Fat32 to NTFS d”nŸtrme / OgnitorenKs

echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
set /p diskharfi=%ESC%[92m Disk harfi:%ESC%[0m
	if %diskharfi%==0 GOTO menu
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ	
echo        %ESC%[91m Dikkat%ESC%%ESC%[92m %diskharfi% %ESC%%ESC%[91mdiski NTFS'ye d”nŸtrlyor.%ESC%[0m 
echo      %ESC%[92m Devam etmek i‡in herhangi bir tuŸa basnz.
pause > NUL

convert %diskharfi%: /fs:NTFS /v

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 2 /nobreak > NUL
goto menu

:adminmenu
mode con cols=55 lines=20
cls
mode con cols=55 lines=22
title Kullanc ˜Ÿlemleri \ OgnitorenKs
echo   ===================================================
echo                      %ESC%[96m OgnitorenKs%ESC%[0m
echo   ===================================================
echo                   %ESC%[92m Administrator Men%ESC%[0m
echo   ===================================================
echo     %ESC%[92m1.%ESC%%ESC%[33m Administrator aktif%ESC%[0m
echo     %ESC%[92m2.%ESC%%ESC%[33m Administrator pasif%ESC%[0m
echo     %ESC%[92m3.%ESC%%ESC%[33m Admin grubuna ekle%ESC%[0m
echo     %ESC%[92m4.%ESC%%ESC%[33m Kullanc ekle%ESC%[0m
echo     %ESC%[92m5.%ESC%%ESC%[33m Kullanc sil%ESC%[0m
echo     %ESC%[92m6.%ESC%%ESC%[33m žifremi unuttum%ESC%[0m
echo     %ESC%[92m7.%ESC%%ESC%[93m Ana Men%ESC%[0m
echo     %ESC%[92m0.%ESC%%ESC%[91m €kŸ%ESC%[0m
echo   ===================================================
set /p adminmenu=%ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %adminmenu%==1 GOTO adminaktif
	if %adminmenu%==2 GOTO adminpasif
	if %adminmenu%==3 GOTO grupadmin
	if %adminmenu%==4 GOTO newusers
	if %adminmenu%==5 GOTO delusers
	if %adminmenu%==6 GOTO userskey
	if %adminmenu%==7 GOTO menu
	if %adminmenu%==0 GOTO exit
else
	goto adminmenu
	
:adminaktif
cls
mode con cols=55 lines=20
title Kullanc ˜Ÿlemleri \ OgnitorenKs
net user administrator /active:yes
net user administrator *
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak > NUL
goto adminmenu

:adminpasif
cls
mode con cols=55 lines=20
title Kullanc ˜Ÿlemleri \ OgnitorenKs
net user Administrator /active:no
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak > NUL
goto adminmenu

:grupadmin
cls
mode con cols=55 lines=20
title Kullanc ˜Ÿlemleri \ OgnitorenKs
net localgroup Administrators %username% /add 
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak > NUL
goto adminmenu

:newusers
cls
mode con cols=55 lines=20
title Kullanc ˜Ÿlemleri \ OgnitorenKs
set /p newuserss=%ESC%[92m Kullanc Ad:%ESC%[0m 
net user %newuserss% * /add

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak > NUL
goto adminmenu

:delusers
cls
mode con cols=55 lines=20
title Kullanc ˜Ÿlemleri \ OgnitorenKs
set /p deluserss=%ESC%[92m Kullanc Ad:%ESC%[0m 
net user %deluserss% /delete

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak > NUL
goto adminmenu


:userskey
cls
mode con cols=55 lines=20
title Kullanc ˜Ÿlemleri \ OgnitorenKs
set /p userskey=%ESC%[92m Kullanc ad:%ESC%[0m
net user %userskey% *

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak > NUL
goto adminmenu


:slmgrvbs
cls
mode con cols=55 lines=22
title SLMGR.VBS \ OgnitorenKs
echo   ===================================================
echo                    %ESC%[92m Slmgr.vbs Men%ESC%[0m
echo   ===================================================
echo     %ESC%[92m1.%ESC%%ESC%[36m Lisans Gir%ESC%[0m
echo     %ESC%[92m2.%ESC%%ESC%[36m Lisans Durumu%ESC%[0m
echo     %ESC%[92m3.%ESC%%ESC%[36m Lisans Durumu Detayl%ESC%[0m
echo     %ESC%[92m4.%ESC%%ESC%[36m Lisans Sresini ™§ren%ESC%[0m
echo     %ESC%[92m5.%ESC%%ESC%[36m Lisans Sil%ESC%[0m
echo     %ESC%[92m6.%ESC%%ESC%[36m Lisans Sre Sfrla%ESC%[0m
echo     %ESC%[92m7.%ESC%%ESC%[93m Ana Men%ESC%[0m
echo     %ESC%[92m0.%ESC%%ESC%[91m €kŸ%ESC%[0m
echo   ===================================================
set /p adminmenu=%ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %adminmenu%==1 GOTO slmgripk
	if %adminmenu%==2 (slmgr /dli&goto slmgrvbs)
	if %adminmenu%==3 (slmgr /dlv&goto slmgrvbs)
	if %adminmenu%==4 (slmgr /xpr&goto slmgrvbs)
	if %adminmenu%==5 (slmgr /upk&goto slmgrvbs)
	if %adminmenu%==6 (slmgr /rearm&goto slmgrvbs)
	if %adminmenu%==7 GOTO menu
	if %adminmenu%==0 GOTO exit
else
	goto slmgrvbs
	
:slmgrlisans
cls

set /p slmgrlisans= %ESC%[92m Lisans : %ESC%[0m

slmgr /ipk %slmgrlisans%

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak > NUL
goto slmgrvbs

:sahiplik
cls
mode con cols=55 lines=15
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo %ESC%[33m   1.%ESC%%ESC%[37m Ekle%ESC%[0m
echo %ESC%[33m   2.%ESC%%ESC%[37m Kaldr%ESC%[0m
echo %ESC%[33m   3.%ESC%%ESC%[37m Menye d”n%ESC%[0m
echo  =====================================================
set /p sahiplik= %ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %sahiplik%==1 GOTO sahiplikekle	
	if %sahiplik%==2 GOTO sahiplikkaldir
	if %sahiplik%==2 GOTO kontroll
else
	goto sahiplik

:sahiplikekle
cls
mode con cols=55 lines=20	
title Sahiplik al ekleniyor... / OgnitorenKs
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
goto kontroll

:sahiplikkaldir
cls
mode con cols=55 lines=20
title Sahiplik al kaldrlyor... / OgnitorenKs

reg delete "HKEY_CLASSES_ROOT\*\shell\runas" /f
reg delete "HKEY_CLASSES_ROOT\Directory\shell\runas" /f

echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto kontroll

:desktopsimge
cls
mode con cols=55 lines=20
title Masast simgeleri ekleniyor... / OgnitorenKs
REM Bu Bilgisayar
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 > NUL 2>&1 
REM Denetim Masas
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t REG_DWORD /d 0 > NUL 2>&1 
REM Kullanc Dosyalar
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /t REG_DWORD /d 0 > NUL 2>&1
REM €”p kutusu
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{645FF040-5081-101B-9F08-00AA002F954E}" /t REG_DWORD /d 0 > NUL 2>&1 

echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto kontroll

:appxmanager
cls
for /f %%i in ('"cd"') do set cdappx=%%i
powershell -command "Start-Process '%cdappx%\Files\WindowsAppBoss.exe'
goto menu

:compactos
mode con cols=55 lines=15
title Compact OS / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo %ESC%[33m   1.%ESC%%ESC%[37m Compact OS a‡%ESC%[0m
echo %ESC%[33m   2.%ESC%%ESC%[37m Compact OS kapat%ESC%[0m
echo %ESC%[33m   3.%ESC%%ESC%[37m Menye d”n%ESC%[0m
echo  =====================================================
set /p menuchange= %ESC%[92m G”rev ‡ubu§u bykl§ : %ESC%[0m
	if %menuchange%==1 (cls&compact /compactos:always&goto kontroll)
	if %menuchange%==2 (cls&compact /compactos:never&goto kontroll)
	if %menuchange%==3 goto kontroll

:kontroll
cls
FOR /F "tokens=3" %%i in ('wmic os get Caption /value') do SET caption=%%i
	if %caption%==11 GOTO win11settingsmenu
	if %caption%==10 GOTO win10settingsmenu
else
	exit

REM W˜NDOWS 11 B™LšMš 

:win11settingsmenu
cls
mode con cols=55 lines=20
title Windows 11 ™zelleŸtir / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo             %ESC%[96mWindows 11 ™zelleŸtirme Mens%ESC%[0m             
echo                  %ESC%[96m  OgnitorenKs  %ESC%[0m
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo       %ESC%[92m  1.%ESC%%ESC%[37m Taskbar Boyut%ESC%[0m
echo       %ESC%[92m  2.%ESC%%ESC%[37m Taskbar Konumu%ESC%[0m
echo       %ESC%[92m  3.%ESC%%ESC%[37m Taskbar Simge Konumu%ESC%[0m
echo       %ESC%[92m  4.%ESC%%ESC%[37m Sa§-Tk Men Ayar%ESC%[0m
echo       %ESC%[92m  5.%ESC%%ESC%[37m Sa§-Tk Terminal Ayar%ESC%[0m
echo       %ESC%[92m  6.%ESC%%ESC%[37m Sahiplik Al ayar%ESC%[0m
echo       %ESC%[92m  7.%ESC%%ESC%[37m Masast Simgelerini G”ster%ESC%[0m
echo       %ESC%[92m  8.%ESC%%ESC%[37m Compact OS%ESC%[0m
echo       %ESC%[92m  9.%ESC%%ESC%[37m Windows 11 Lite yap%ESC%[0m
echo       %ESC%[92m 10.%ESC%%ESC%[33m Ana men%ESC%[0m
echo       %ESC%[92m  0.%ESC%%ESC%[91m €kŸ%ESC%[0m
echo  =====================================================
set /p win11settingsmenu=%ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %win11settingsmenu%==1 GOTO menuchange
	if %win11settingsmenu%==2 GOTO menulocation
	if %win11settingsmenu%==3 GOTO menuold
	if %win11settingsmenu%==4 GOTO rightclick
	if %win11settingsmenu%==5 GOTO rightterminal
	if %win11settingsmenu%==6 GOTO sahiplik
	if %win11settingsmenu%==7 GOTO desktopsimge
	if %win11settingsmenu%==8 GOTO compactos
	if %win11settingsmenu%==9 (start cmd /c "Ekler\Windows.Lite.bat")
	if %win11settingsmenu%==10 GOTO menu
	if %win11settingsmenu%==0 GOTO exit
else
	goto win11settingsmenu

:menuchange
cls
mode con cols=55 lines=15
title G”rev ‡ubu§u boyut ayar / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo %ESC%[33m   0.%ESC%%ESC%[37m K‡k%ESC%[0m
echo %ESC%[33m   1.%ESC%%ESC%[37m Varsaylan%ESC%[0m
echo %ESC%[33m   2.%ESC%%ESC%[37m Byk%ESC%[0m
echo %ESC%[33m   3.%ESC%%ESC%[33m Menye d”n %ESC%[0m
echo  =====================================================
set /p menuchange= %ESC%[92m G”rev ‡ubu§u bykl§ : %ESC%[0m
	if %menuchange%==3 goto win11settingsmenu
	
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarSi" /t REG_DWORD /d %menuchange%
taskkill /f /im explorer.exe
start explorer.exe
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto win11settingsmenu

:menulocation
cls
mode con cols=55 lines=15
title G”rev ‡ubu§u konum ayar / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo %ESC%[33m  1.%ESC%%ESC%[37m šst%ESC%[0m
echo %ESC%[33m  3.%ESC%%ESC%[37m Alt%ESC%[0m
echo %ESC%[33m  0.%ESC%%ESC%[37m Menye d”n%ESC%[0m
echo  =====================================================
set /p menulocation= %ESC%[92m G”rev ‡ubu§u konumu : %ESC%[0m
	if %menulocation%==0 goto win11settingsmenu
	
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3" /v "Settings" /t REG_BINARY /d "30000000feffffff7af400000%menulocation%0000003000000030000000000000000804000080070000380400006000000001000000" /f
taskkill /f /im explorer.exe
start explorer.exe
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto win11settingsmenu


:menuold
cls
mode con cols=55 lines=15
title G”rev ‡ubu§u simge konumu ayar / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo %ESC%[92m  0.%ESC%%ESC%[37m Sol%ESC%[0m
echo %ESC%[92m  1.%ESC%%ESC%[37m Orta%ESC%[0m
echo %ESC%[92m  2.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  =====================================================
set /p menuold= %ESC%[92m Tarafnz se‡iniz : %ESC%[0m
	if %menuold%==2 goto win11settingsmenu
	
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAl" /t REG_DWORD /d %menuold%
taskkill /f /im explorer.exe
start explorer.exe
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto win11settingsmenu

:rightclick
cls
mode con cols=55 lines=15
title Sa§ tk se‡enek ayar / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo %ESC%[92m  1.%ESC%%ESC%[37m Eski%ESC%[0m
echo %ESC%[92m  2.%ESC%%ESC%[37m Yeni%ESC%[0m
echo %ESC%[92m  3.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  =====================================================
set /p rightclick= %ESC%[92m Tarafnz se‡iniz : %ESC%[0m
	if %rightclick%==1 (reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&taskkill /f /im explorer.exe&start explorer.exe&goto win11settingsmenu)
	if %rightclick%==2 (reg delete "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&goto win11settingsmenu)
	if %rightclick%==3 goto win11settingsmenu
else
	goto win11settingsmenu	

:rightmenuterminal
cls
mode con cols=55 lines=15
title Sa§ tk se‡enek ayar / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo %ESC%[92m  1.%ESC%%ESC%[37m Terminal kaldr  %ESC%[0m
echo %ESC%[92m  2.%ESC%%ESC%[37m Terminal geri getir%ESC%[0m
echo %ESC%[92m  3.%ESC%%ESC%[33m Menye d”n%ESC%[0m
echo  =====================================================
set /p rightmenuterminal= %ESC%[92m Tarafnz se‡iniz : %ESC%[0m
	if %rightmenuterminal%==1 (reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /f /v "{9F156763-7844-4DC4-B2B1-901F640F5155}" /t REG_SZ /d ""&start explorer.exe&goto win11settingsmenu)
	if %rightmenuterminal%==2 (reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /f&goto win11settingsmenu)
else
	goto win11settingsmenu
	
REM Windows 10 b”lm 

:win10settingsmenu
cls
mode con cols=55 lines=20
title Windows 10 ™zelleŸtir / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo             %ESC%[96mWindows 10 ™zelleŸtirme Mens%ESC%[0m             
echo                  %ESC%[96m  OgnitorenKs  %ESC%[0m
echo  =====================================================
echo       %ESC%[92m  1.%ESC%%ESC%[37m Saat yan, simge ayar%ESC%[0m
echo       %ESC%[92m  2.%ESC%%ESC%[37m Bildirim Alan ayar%ESC%[0m
echo       %ESC%[92m  3.%ESC%%ESC%[37m Sahiplik Al ayar%ESC%[0m
echo       %ESC%[92m  4.%ESC%%ESC%[37m Market-Sil Ykle%ESC%[0m
echo       %ESC%[92m  5.%ESC%%ESC%[37m Masast Simgelerini AktifleŸtir%ESC%[0m
echo       %ESC%[92m  6.%ESC%%ESC%[37m Compact OS%ESC%[0m
echo       %ESC%[92m  7.%ESC%%ESC%[37m Windows 10 Lite yap%ESC%[0m
echo       %ESC%[92m  8.%ESC%%ESC%[33m Ana men%ESC%[0m
echo       %ESC%[92m  0.%ESC%%ESC%[91m €kŸ%ESC%[0m
echo  =====================================================
set /p win10settingsmenu=%ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %win10settingsmenu%==1 GOTO ekrantepsi
	if %win10settingsmenu%==2 GOTO bildirim
	if %win10settingsmenu%==3 GOTO sahiplik
	if %win10settingsmenu%==4 GOTO storeedelins
	if %win10settingsmenu%==5 GOTO desktopsimge
	if %win10settingsmenu%==6 GOTO compactos
	if %win10settingsmenu%==7 (start cmd /c "Ekler\Windows.Lite.bat")
	if %win10settingsmenu%==8 GOTO menu
	if %win10settingsmenu%==0 GOTO exit
else
	goto win10settingsmenu
	
:ekrantepsi
cls
mode con cols=55 lines=20
title G”rev ‡ubu§u dzenleniyor... / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo %ESC%[92m  0.%ESC%%ESC%[37m Hepsini G”ster%ESC%[0m
echo %ESC%[92m  1.%ESC%%ESC%[37m Hepsini Gizle%ESC%[0m
echo %ESC%[92m  2.%ESC%%ESC%[37m Menye d”n%ESC%[0m
echo  =====================================================
set /p ekrantepsi= %ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %ekrantepsi%==2 goto win10settingsmenu

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /f /v "EnableAutoTray" /t REG_DWORD /d %ekrantepsi%
taskkill /f /im explorer.exe
start explorer.exe
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto win10settingsmenu

:bildirim
cls
mode con cols=55 lines=20
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
title Bildirim alan dzenleniyor... / OgnitorenKs
echo %ESC%[92m  0.%ESC%%ESC%[37m A‡k%ESC%[0m
echo %ESC%[92m  1.%ESC%%ESC%[37m Kapal%ESC%[0m
echo %ESC%[92m  2.%ESC%%ESC%[37m Menye d”n%ESC%[0m
echo  =====================================================
set /p bildirimm= %ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %bildirimm%==2 goto win10settingsmenu

reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %bildirimm%
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %bildirimm%
taskkill /f /im explorer.exe
start explorer.exe
echo %ESC%[92m ˜Ÿlem tamamland.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto win10settingsmenu

:storeedelins
cls
mode con cols=55 lines=20
title Market Y”neticisi / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo %ESC%[92m  1.%ESC%%ESC%[37m Market Kaldr%ESC%[0m
echo %ESC%[92m  2.%ESC%%ESC%[37m Market Ykle%ESC%[0m
echo %ESC%[92m  3.%ESC%%ESC%[37m Menye d”n%ESC%[0m
echo  =====================================================
set /p storeedelins=%ESC%[92m  ˜Ÿlem : %ESC%[0m
	if %storeedelins%==1 GOTO storeedel
	if %storeedelins%==2 GOTO storeeins
	if %storeedelins%==3 GOTO win10settingsmenu
else
	goto win10settingsmenu

:storeedel
cls
mode con cols=109 lines=35
title Market kaldrlyor... / OgnitorenKs

echo %ESC%[92m Microsoft Store siliniyor...%ESC%[0m

powershell -command "Get-AppXPackage | Remove-AppxPackage"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC" /v "start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppXSvc" /v "start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\camsvc" /v "start" /t REG_DWORD /d 4 /f
net stop wuauserv
RD /S /Q "%windir%\SoftwareDistribution"
net start wuauserv
net stop "StorSvc"
sc config "StorSvc" start= disabled   
net stop "ClipSVC"

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto win10settingsmenu

:storeeins
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
net start cryptsvc
sc config "cryptsvc" start= auto
net start "wuauserv"
sc config "wuauserv" start= auto
net start "StorSvc"
sc config "StorSvc" start= auto
net start "bits"
sc config "bits" start= auto
net start "trustedinstaller"
sc config "trustedinstaller" start= auto
net start "ClipSVC"
net stop wuauserv
RD /S /Q "%windir%\SoftwareDistribution"
net start wuauserv

echo %ESC%[92m DLL dosyalar kontrol ediliyor...%ESC%[0m
regsvr32  softpub.dll /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  dssenh.dll /s&regsvr32  rsaenh.dll /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  slbcsp.dll /s&regsvr32  mssip32.dll /s&regsvr32  cryptdlg.dll /s&regsvr32  msxml3.dll /s&regsvr32  comcat.dll /s&Regsvr32  Msxml.dll /s&Regsvr32  Msxml2.dll /s&regsvr32  mshtml.dll /s&regsvr32  shdocvw.dll /s&regsvr32  browseui.dll /s&regsvr32  msjava.dll /s&regsvr32  shdoc401.dll /s&regsvr32  cdm.dll /s&regsvr32  shdoc401.dll /i /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  asctrls.ocx /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  softpub.dll /s&regsvr32  oleaut32.dll /s&regsvr32  shdocvw.dll /I /s&regsvr32  Shell32.dll /s&regsvr32  browseui.dll /s&regsvr32  browseui.dll /I /s&regsvr32  msrating.dll /s&regsvr32  mlang.dll /s&regsvr32  hlink.dll /s&regsvr32  mshtmled.dll /s&regsvr32  urlmon.dll /s&regsvr32  urlmon.dll /i /s&regsvr32  plugin.ocx /s&regsvr32  sendmail.dll /s&regsvr32  scrobj.dll /s&regsvr32  mmefxe.ocx /s&regsvr32  corpol.dll /s&regsvr32  jscript.dll /s&regsvr32  imgutil.dll /s&regsvr32  thumbvw.dll /s&regsvr32  cryptext.dll /s&regsvr32  rsabase.dll /s&regsvr32  inseng.dll /s&regsvr32  iesetup.dll /i /s&regsvr32  actxprxy.dll /s&regsvr32  dispex.dll /s&regsvr32  occache.dll /s&regsvr32  occache.dll /i /s&regsvr32  iepeers.dll /s&regsvr32  cdfview.dll /s&regsvr32  webcheck.dll /s&regsvr32  mobsync.dll /s&regsvr32  pngfilt.dll /s&regsvr32  licmgr10.dll /s
regsvr32  icmfilter.dll /s&regsvr32  hhctrl.ocx /s&regsvr32  inetcfg.dll /s&regsvr32  tdc.ocx /s&regsvr32  MSR2C.DLL /s&regsvr32  msident.dll /s&regsvr32  msieftp.dll /s&regsvr32  xmsconf.ocx /s&regsvr32  ils.dll /s&regsvr32  msoeacct.dll /s&regsvr32  inetcomm.dll /s&regsvr32  msdxm.ocx /s&regsvr32  dxmasf.dll /s&regsvr32  l3codecx.ax /s&regsvr32  acelpdec.ax /s&regsvr32  mpg4ds32.ax /s&regsvr32  voxmsdec.ax /s&regsvr32  danim.dll /s&regsvr32  Daxctle.ocx /s&regsvr32  lmrt.dll /s&regsvr32  datime.dll /s&regsvr32  dxtrans.dll /s&regsvr32  dxtmsft.dll /s&regsvr32  WEBPOST.DLL /s&regsvr32  WPWIZDLL.DLL /s&regsvr32  POSTWPP.DLL /s&regsvr32  CRSWPP.DLL /s&regsvr32  FTPWPP.DLL /s&regsvr32  FPWPP.DLL /s&regsvr32  WUAPI.DLL /s&regsvr32  wups2.dll /S&regsvr32  WUAUENG.DLL /s&regsvr32  ATL.DLL /s&regsvr32  WUCLTUI.DLL /s&regsvr32  WUPS.DLL /s&regsvr32  WUWEB.DLL /s&regsvr32  wshom.ocx /s&regsvr32  wshext.dll /s&regsvr32  vbscript.dll /s&regsvr32  scrrun.dll mstinit.exe /setup /s&regsvr32  msnsspc.dll /SspcCreateSspiReg /s&regsvr32  msapsspc.dll /SspcCreateSspiReg /s
wsreset
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto win10settingsmenu


REM OGN˜TORENKS W˜NDOWS DšZENLEME B™LšMš                                                                                          

:windowseditt
cls
mode con cols=53 lines=19
echo  ===================================================
echo               %ESC%[7mOgnitorenKs Windows Edition%ESC%[0m  
echo  ===================================================
echo      %ESC%[92m 1.%ESC%%ESC%[33m WIM / ESD okuyucu%ESC%[0m
echo      %ESC%[92m 2.%ESC%%ESC%[33m AIO Windows yap%ESC%[0m
echo      %ESC%[92m 3.%ESC%%ESC%[33m ISO yap%ESC%[0m
echo      %ESC%[92m 4.%ESC%%ESC%[33m Silinecekler (˜maj)%ESC%[0m
echo      %ESC%[92m 5.%ESC%%ESC%[33m Silinecekler (Setup)%ESC%[0m
echo      %ESC%[92m 6.%ESC%%ESC%[33m Yeni Simgeleri ykle(Imaj)%ESC%[0m
echo      %ESC%[92m 7.%ESC%%ESC%[33m Offline Appx Installer%ESC%[0m 
echo      %ESC%[92m 8.%ESC%%ESC%[33m Dism Update Offline%ESC%[0m
echo      %ESC%[92m 9.%ESC%%ESC%[33m Dism Update Online%ESC%[0m
echo     %ESC%[92m 10.%ESC%%ESC%[33m Ana Men%ESC%[0m
echo      %ESC%[92m 0.%ESC%%ESC%[91m €kŸ%ESC%[0m
echo  ---------------------------------------------------

set /p windowseditt= %ESC%[92m  Yapmak istedi§iniz iŸlem : %ESC%[0m
	if %windowseditt%==1 GOTO wimreader
	if %windowseditt%==2 GOTO aiomaker
	if %windowseditt%==3 GOTO isomaker
	if %windowseditt%==4 GOTO delimaj
	if %windowseditt%==5 GOTO delsetup
	if %windowseditt%==6 GOTO newicoo
	if %windowseditt%==7 GOTO offlineappxekle
	if %windowseditt%==8 GOTO dismupdateoffline
	if %windowseditt%==9 GOTO dismupdateonline
	if %windowseditt%==10 GOTO menu
	if %windowseditt%==0 GOTO exit
else
	goto windowseditt


:wimreader
cls
mode con cols=70 lines=20
title WIM - ESD READER / OGN˜TORENKS
echo  ====================================================================
echo                      %ESC%[7mWIM / ESD Reader \OgnitorenKs%ESC%[0m 
echo  ====================================================================
echo  %ESC%[96m                                             %ESC%[0m
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m "C:\Win10\sources\install.wim"%ESC%[0m 
set /p ogren=%ESC%[97m  %ESC%%ESC%[92m WIM/ESD dosya yolu : %ESC%[0m
	if %ogren%==0 GOTO windowseditt
dism /Get-WimInfo /WimFile:%ogren% > %cd2%\WimReaderOgnitorenKs.txt 
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%ogren% ^| FIND "Index"') DO dism /Get-WimInfo /WimFile:%ogren% /index:%%a >> "C:\Users\%username%\Desktop\WimReaderOgnitorenKs.txt"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\WimReaderOgnitorenKs.txt'
goto windowseditt

:aiomaker
cls
mode con cols=85 lines=45
title AIO yap / OgnitorenKs
echo  ===================================================================================
echo                                %ESC%[7m AIO MAKER / OgnitorenKs%ESC%[0m 
echo  ===================================================================================

echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m "C:\Windows10Pro\sources\install.wim"%ESC%[0m
set /p anawin=%ESC%[97m  %ESC%%ESC%[92m Merkez Wim dosya yolu : %ESC%[0m
	if %anawin%==0 GOTO windowseditt
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m "C:\Windows10Home\sources\install.wim"%ESC%[0m
set /p eklewin=%ESC%[97m  %ESC%%ESC%[92m Eklenecek Wim dosya yolu : %ESC%[0m 
	if %eklewin%==0 GOTO windowseditt
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m Windows 10 Home (x64)%ESC%[0m 
set /p surumwin=%ESC%[97m  %ESC%%ESC%[92m Srm ˜smi : %ESC%[0m 
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m 1%ESC%[0m 
set /p surumsira=%ESC%[97m  %ESC%%ESC%[92m Sra Numaras : %ESC%[0m 
	if %surumsira%==0 GOTO windowseditt
	
Files\Imagex.exe /export %eklewin% %surumsira% %anawin% "%surumwin%"

echo  %ESC%[92m                  ˜Ÿlem tamamland. %ESC%[0m  
timeout /t 2 /nobreak > NUL
goto windowseditt

:isomaker
cls
title ISO Maker / OgnitorenKs
mode con cols=85 lines=45
echo  ===================================================================================
echo                         %ESC%[7m ISO Maker / OgnitorenKs%ESC%[0m 
echo  ===================================================================================
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m C:\Windows10Pro%ESC%[0m
set /p merkezwin=%ESC%[97m  %ESC%%ESC%[92m Merkez dosya yolu : %ESC%[0m
	if %merkezwin%==0 GOTO windowseditt
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m C:\Windows10.iso%ESC%[0m 
set /p kayitt=%ESC%[97m  %ESC%%ESC%[92m ISO dosyas kayt yolu : %ESC%[0m 
	if %kayitt%==0 GOTO windowseditt

Files\oscdimg.exe -b%merkezwin%\boot\etfsboot.com -h -u2 -m -lWIN_EN_DVD %merkezwin%\ %kayitt%

echo  %ESC%[92m                  ˜Ÿlem tamamland. %ESC%[0m  
timeout /t 2 /nobreak > NUL
goto windowseditt

:newicoo
cls
mode con cols=90 lines=40
title Yeni simgeler ykleniyor / OgnitorenKs

for /f %%i in ('"cd"') do set cdnewico=%%i
set cdnewico2=%cdnewico:~0,-6%
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMnt01%ESC%[0m
set /p newicoo=%ESC%[97m  %ESC%%ESC%[92m ˜maj Klas”r yolu : %ESC%[0m


start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%newicoo%\Windows\System32\imageres.dll"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%newicoo%\Windows\System32\imagesp1.dll"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%newicoo%\Windows\System32\shell32.dll"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%newicoo%\Windows\System32\zipfldr.dll"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%newicoo%\Windows\SystemResources\imageres.dll.mun"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%newicoo%\Windows\SystemResources\imagesp1.dll.mun"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%newicoo%\Windows\SystemResources\shell32.dll.mun"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%newicoo%\Windows\SystemResources\zipfldr.dll.mun"	

powershell -command "Expand-Archive -Force '%cdnewico2%\Files\newico.zip' '%newicoo%\Windows'"

echo  %ESC%[92m                  ˜Ÿlem tamamland. %ESC%[0m  
timeout /t 2 /nobreak > NUL
goto windowseditt


:delsetup
cls
mode con cols=90 lines=40
title Silinecekler (Setup) / OgnitorenKs

echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMnt01%ESC%[0m
set /p delsetup=%ESC%[97m  %ESC%%ESC%[92m Setup ˜maj Klas”r yolu : %ESC%[0m

start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delsetup%\setup.exe" 
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delsetup%\sources\background.bmp" 
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delsetup%\sources\spwizimg.dll" 
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delsetup%\Windows\System32\setup.bmp"

echo  %ESC%[92m                  ˜Ÿlem tamamland. %ESC%[0m  
timeout /t 2 /nobreak > NUL
goto windowseditt

:delimaj
cls
mode con cols=90 lines=40
title Silinecekler (˜maj) / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMnt01%ESC%[0m
set /p delimaj=%ESC%[97m  %ESC%%ESC%[92m ˜maj Klas”r yolu : %ESC%[0m

start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delimaj%\Windows\System32\smartscreen.exe"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delimaj%\Windows\System32\CompatTelRunner.exe"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delimaj%\Windows\System32\securityhealthhost.exe"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delimaj%\Windows\System32\securityhealthservice.exe"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delimaj%\Windows\System32\securityhealthsystray.exe"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delimaj%\Windows\System32\SgrmBroker.exe"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delimaj%\Windows\SysWOW64\OneDriveSetup.exe"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delimaj%\Windows\SysWOW64\OneDriveSettingSyncProvider.dll"
start "Files\PowerRun.exe" cmd /c DEL /F /Q /A "%delimaj%\Windows\SysWOW64\OneDrive.ico"

echo  %ESC%[92m                  ˜Ÿlem tamamland. %ESC%[0m  
timeout /t 2 /nobreak > NUL
goto windowseditt

:offlineappxekle
cls
title Offline Appx Installer /OgnitorenKs
mode con cols=90 lines=40
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m C:\Users\OgnitorenKs\Desktop\Appx%ESC%[0m
set /p appxeklee=%ESC%[97m  %ESC%%ESC%[92m Appx klas”r yolu : %ESC%[0m
	if %appxeklee%==0 GOTO windowseditt
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMount01%ESC%[0m
set /p ntyol=%ESC%[97m  %ESC%%ESC%[92m ˜maj dosya yolu : %ESC%[0m
	if %ntyol%==0 GOTO windowseditt

for /f %%i in ('"dir /b %appxeklee%\*"') do DISM /Image:%ntyol% /Add-ProvisionedAppxPackage /PackagePath:%appxeklee%\%%i /SkipLicense

echo  %ESC%[92m                  ˜Ÿlem tamamland. %ESC%[0m  
timeout /t 2 /nobreak > NUL
goto windowseditt

:dismupdateoffline
cls
mode con cols=90 lines=40
title DISM UPDATE /OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m C:\Users\OgnitorenKs\Desktop\Update%ESC%[0m
set /p guncellemeekle=%ESC%[97m  %ESC%%ESC%[92m Gncelleme klas”r yolu : %ESC%[0m
	if %guncellemeekle%==0 GOTO windowseditt
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMount01%ESC%[0m
set /p ntyol2=%ESC%[97m  %ESC%%ESC%[92m ˜maj dosya yolu : %ESC%[0m
	if %ntyol2%==0 GOTO windowseditt

for /f %%i in ('"dir /b %guncellemeekle%\*"') do DISM /Image:%ntyol2% /add-package /packagepath="%guncellemeekle%\%%i"
DISM /Image:%ntyol2% /Cleanup-Image /StartComponentCleanup

echo  %ESC%[92m                  ˜Ÿlem tamamland. %ESC%[0m  
echo  %ESC%[33m Ana Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m  
pause > NUL
goto windowseditt

:dismupdateonline
cls
mode con cols=90 lines=40
title DISM UPDATE /OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m C:\Users\OgnitorenKs\Desktop\Update%ESC%[0m
set /p guncellemeekle2=%ESC%[97m  %ESC%%ESC%[92m Gncelleme klas”r yolu : %ESC%[0m
	if %guncellemeekle2%==0 GOTO windowseditt

for /f %%i in ('"dir /b %guncellemeekle2%\*"') do DISM /Online /Norestart /add-package /packagepath="%guncellemeekle2%\%%i"
DISM /Online /Cleanup-Image /StartComponentCleanup

echo  %ESC%[92m                  ˜Ÿlem tamamland. %ESC%[0m  
echo  %ESC%[33m Ana Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m  
pause > NUL
goto windowseditt


:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0

:select
cls


echo     þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

echo       #######   ######   ##    ## #### ########  #######  ########  ######## ##    ## ##    ##  ######
echo      ##     ## ##    ##  ###   ##  ##     ##    ##     ## ##     ## ##       ###   ## ##   ##  ##    #
echo      ##     ## ##        ####  ##  ##     ##    ##     ## ##     ## ##       ####  ## ##  ##   ##
echo      ##     ## ##   #### ## ## ##  ##     ##    ##     ## ########  ######   ## ## ## #####      ###### 
echo      ##     ## ##    ##  ##  ####  ##     ##    ##     ## ##   ##   ##       ##  #### ##  ##         ##
echo      ##     ## ##    ##  ##   ###  ##     ##    ##     ## ##    ##  ##       ##   ### ##   ##  ##    ##
echo       #######   ######   ##    ## ####    ##     #######  ##     ## ######## ##    ## ##    ##  ###### 
echo     þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

echo       #######   ######   ##    ## #### ########  #######  ########  ######## ##    ## ##    ##  ######
echo      ##     ## ##    ##  ###   ##  ##     ##    ##     ## ##     ## ##       ###   ## ##   ##  ##    #
echo      ##     ## ##        ####  ##  ##     ##    ##     ## ##     ## ##       ####  ## ##  ##   ##
echo      ##     ## ##   #### ## ## ##  ##     ##    ##     ## ########  ######   ## ## ## #####      ###### 
echo      ##     ## ##    ##  ##  ####  ##     ##    ##     ## ##   ##   ##       ##  #### ##  ##         ##
echo      ##     ## ##    ##  ##   ###  ##     ##    ##     ## ##    ##  ##       ##   ### ##   ##  ##    ##
echo       #######   ######   ##    ## ####    ##     #######  ##     ## ######## ##    ## ##    ##  ###### 
echo     þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ


  

