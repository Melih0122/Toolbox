echo off
cls
title OgnitorenKs Online Katçlmsçz 
mode con cols=66 lines=47

net session >NUL 2>&1|| powershell Start-Process '%0' -Verb RunAs&& exit /b|| exit /b

setlocal
call :setESC

:kontrol
cls

pushd "%~dp0"

cd %programfiles(x86)% > NUL 2>&1
	if %errorlevel%==0 goto menu
else
    echo Sistem mimarisi x64 deßil, áçkçü yapçlçyor...
	timeout /t 5 /nobreak
	exit

:menu
cls
cd /d "%~dp0"
title OgnitorenKs Toolbax / OgnitorenKs
mode con cols=66 lines=44
echo   ==============================================================
echo                         %ESC%[96mOgnitorenKs Toolbax%ESC%[0m         
echo   ==============================================================
echo                      %ESC%[92m 1.%ESC%%ESC%[97m All òn One Runtimes%ESC%[0m 
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
echo     %ESC%[92m 13.%ESC%%ESC%[97m League Of Legends%ESC%[0m           %ESC%[92m 38.%ESC%%ESC%[36m Hibit Uninstaller%ESC%[0m
echo     %ESC%[92m 14.%ESC%%ESC%[97m Blitz%ESC%[0m                       %ESC%[92m 39.%ESC%%ESC%[36m OpenShell%ESC%[0m
echo     %ESC%[92m 15.%ESC%%ESC%[36m Wemod%ESC%[0m                       %ESC%[92m 40.%ESC%%ESC%[36m Unlocker%ESC%[0m
echo     %ESC%[92m 16.%ESC%%ESC%[36m MSI Afterburner%ESC%[0m             %ESC%[92m 41.%ESC%%ESC%[36m SSD Fresh%ESC%[0m
echo     %ESC%[92m 17.%ESC%%ESC%[36m Hamachi%ESC%[0m                     %ESC%[92m 42.%ESC%%ESC%[36m 7 - Zip%ESC%[0m
echo     %ESC%[92m 18.%ESC%%ESC%[36m Cheat Engine%ESC%[0m                %ESC%[92m 43.%ESC%%ESC%[33m %ESC%[0m
echo     %ESC%[92m 19.%ESC%%ESC%[36m OBS Studio%ESC%[0m                  %ESC%[92m 44.%ESC%%ESC%[33m %ESC%[0m
echo     %ESC%[92m 20.%ESC%%ESC%[36m Google Chrome%ESC%[0m               %ESC%[92m 45.%ESC%%ESC%[33m GlassWire%ESC%[0m
echo     %ESC%[92m 21.%ESC%%ESC%[33m Mozilla Firefox%ESC%[0m             %ESC%[92m 46.%ESC%%ESC%[33m Stremio%ESC%[0m
echo     %ESC%[92m 22.%ESC%%ESC%[33m Brave%ESC%[0m                       %ESC%[92m 47.%ESC%%ESC%[33m Stellarium%ESC%[0m
echo     %ESC%[92m 23.%ESC%%ESC%[33m Microsoft Edge%ESC%[0m              %ESC%[92m 48.%ESC%%ESC%[33m TeamViewer%ESC%[0m
echo     %ESC%[92m 24.%ESC%%ESC%[36m Free Download Manager%ESC%[0m       %ESC%[92m 49.%ESC%%ESC%[33m LightShoot%ESC%[0m
echo     %ESC%[92m 25.%ESC%%ESC%[36m ByClick Downloader%ESC%[0m          %ESC%[92m 50.%ESC%%ESC%[33m Everything%ESC%[0m
echo     %ESC%[92m 26.%ESC%%ESC%[36m EagleGet%ESC%[0m                    %ESC%[92m 51.%ESC%%ESC%[33m TaskbarX%ESC%[0m
echo   --------------------------------------------------------------
echo     %ESC%[92m 52.%ESC%%ESC%[93m Regedit Ayarlarç%ESC%[0m            %ESC%[92m 59.%ESC%%ESC%[36m Windows Edit%ESC%[0m 
echo     %ESC%[92m 53.%ESC%%ESC%[93m Yazçcç aktifleütir%ESC%[0m          %ESC%[92m 60.%ESC%%ESC%[36m Appx Yînetici%ESC%[0m
echo     %ESC%[92m 54.%ESC%%ESC%[93m Bluetooth / Wifi aá%ESC%[0m         %ESC%[92m 61.%ESC%%ESC%[36m %ESC%[0m
echo     %ESC%[92m 55.%ESC%%ESC%[93m Sistemi Onar%ESC%[0m                %ESC%[92m 62.%ESC%%ESC%[36m Administrator[M]%ESC%[0m
echo     %ESC%[92m 56.%ESC%%ESC%[93m PC Temizle%ESC%[0m                  %ESC%[92m 63.%ESC%%ESC%[36m Lisans Durumu (Slmgr)%ESC%[0m
echo     %ESC%[92m 57.%ESC%%ESC%[93m GÅncelleme Sonrasç%ESC%[0m          %ESC%[92m 64.%ESC%%ESC%[36m Sistem Hakkçnda%ESC%[0m    
echo     %ESC%[92m 58.%ESC%%ESC%[93m Ping ôláer[M]%ESC%[0m               %ESC%[92m 65.%ESC%%ESC%[36m Fat32 to NTFS%ESC%[0m
echo   --------------------------------------------------------------
echo                           %ESC%[91m 0. Äçkçü%ESC%[0m
echo   ==============================================================
set /p menu= %ESC%[92m Yapmak istedißiniz iülem : %ESC%[0m
	if %menu%==1 GOTO aio
	if %menu%==2 ( cls&wget --no-check-certificate "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86" -O %temp%\Discord.exe 
				   "%temp%\Discord.exe" -s
                   DEL /F /Q /A "%temp%\Discord.exe"&goto menu)
	if %menu%==3 ( cls&wget --no-check-certificate "https://web.whatsapp.com/desktop/windows/release/x64/WhatsAppSetup.exe" -O %temp%\WhatsApp.exe 
				   "%temp%\WhatsApp.exe" --silent
                   DEL /F /Q /A "%temp%\WhatsApp.exe"&goto menu)
	if %menu%==4 ( cls&wget --no-check-certificate "https://updates.signal.org/desktop/signal-desktop-win-5.8.0.exe" -O %temp%\Signal.exe
                   "%temp%\Signal.exe" /S
                   DEL /F /Q /A "%temp%\Signal.exe"&goto menu)
	if %menu%==5 ( cls&wget --no-check-certificate "https://telegram.org/dl/desktop/win64" -O %temp%\Telegram.exe
                   "%temp%\Telegram.exe" /VERYSILENT /NORESTART
                   DEL /F /Q /A "%temp%\Telegram.exe"&goto menu)
	if %menu%==6 ( cls&wget --no-check-certificate "https://go.microsoft.com/fwlink/p/?LinkID=869426&clcid=0x41f&culture=tr-tr&country=TR&lm=deeplink&lmsrc=groupChatMarketingPageWeb&cmpid=directDownloadWin64" -O %temp%\Teams.exe 
                   "%temp%\Teams.exe" -s
                   DEL /F /Q /A "%temp%\Teams.exe"&goto menu)
	if %menu%==7 ( cls&wget --no-check-certificate "https://go.skype.com/skype.download" -O %temp%\Skype.exe
                   "%temp%\Skype.exe" /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /DL=1
                   DEL /F /Q /A "%temp%\Skype.exe"&goto menu)
	if %menu%==8 ( cls&wget --no-check-certificate "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi"  -O %temp%\EpicGames.msi
                   "%temp%\EpicGames.msi" /qn /norestart
                   DEL /F /Q /A "%temp%\EpicGames.msi"&goto menu)
	if %menu%==9 ( cls&wget --no-check-certificate "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe" -O %temp%\Steam.exe
                   "%temp%\Steam.exe" /S
                   DEL /F /Q /A "%temp%\Steam.exe"&goto menu)
	if %menu%==10 ( cls&wget --no-check-certificate "https://webinstallers.gog-statics.com/download/GOG_Galaxy_2.0.exe?payload=vBHxnukauGRfLyqON91ouUWmmJ2uINAzGQMvB0OIIjUzcCDHmQOjhoEpEJ3ye8c3vY4sODIdCPEWQPM7enms9H7qtvxGImIMyMSUvPqLzO4mOPUkTKqgHm4Jcryp9lkmjZ4KibSS05WQDzXodBUPxSUY7QkNezVZsljxqDjcrwWHR-OC3eowvpAM055o5mI3B-v5W37HB-hSSfEWq9JbABwi3nvQUlwGUIdPBLAnwYCZ_-4o2F7Kxf2t9bpyd7v3Ty51w30HALRQttx8-uX4sY8IOxq5KSroVG-w9Ho3AOfDmC5CNCruP3gXEihqxq7zbnqJ1Ksrt6vx7JsTseMICNsahbb5PFDGqQLdcfqH5ozpPgmvSdpQBmU26RRk68O9eAuHxGrkLoJDKwyd5kEmMENrnwlvgHV-XvXpLdv531bcKiamiIa1Oyc9n_Dekuz9TF1H-CYfUb5fMNxDRXprr-AWPKFahe6Q0KPc4Gy2GIeT4smJK06mbDUysvMyuh2y-6s_5-uHqxLPqDxVzr6QGWN14dJ0mjNp7Preyp4xyZlTiq5AaWfhvlqrbi_xSLygff-ALvhVLdRHDwz9GAic7blp-pEQSK4mozU6iXLmmQCbsuNCcPcvwVMUdsiu8J1BqL93c6cvnspgxIfiGWfYIRc25AupfznCm6Lxwn6-PxGKgCvSl-HSvJgsrTnSJMADZtvGPsNu8imIOMeciLICRmvkdEFKRdyGKveF--9PUnjOVCsy6sxSmW5UnkITzpBjUisJjyUccnt-zJiweAfX" -O %temp%\GOG.exe 
                    "%temp%\GOG.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
                    DEL /F /Q /A "%temp%\GOG.exe"&goto menu)
	if %menu%==11 ( cls&wget --no-check-certificate "https://ubi.li/4vxt9" -O %temp%\Uplay.exe
                    "%temp%\Uplay.exe" /S
                    DEL /F /Q /A "%temp%\Uplay.exe")
	if %menu%==12 ( cls&wget --no-check-certificate "https://download.dm.origin.com/origin/live/OriginSetup.exe" -O %temp%\Origin.exe
                    "%temp%\Origin.exe" /SILENT
                    DEL /F /Q /A "%temp%\Origin.exe"&goto menu)
	if %menu%==13 ( cls&wget --no-check-certificate "https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.tr.exe" -O %systemdrive%\users\%username%\Desktop\League.Of.Legends.exe&goto menu)
	if %menu%==14 ( cls&wget --no-check-certificate "https://blitz.gg/download/win" -O %temp%\Blitz.exe
                    "%temp%\Blitz.exe" /S
                    DEL /F /Q /A "%temp%\Blitz.exe"&goto menu)
	if %menu%==15 ( cls&wget --no-check-certificate "https://api.wemod.com/client/download" -O %temp%\Wemod.exe
                    "%temp%\Wemod.exe" --silent
                    DEL /F /Q /A "%temp%\Wemod.exe"&goto menu)
	if %menu%==16 ( REM https://www.msi.com/Landing/afterburner/graphics-cards
                    wget --no-check-certificate "https://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip?__token__=exp=1626139284~acl=/*~hmac=f22735537f22936b9674517a927e01e3db143685c026b2c3bd566bd5bf050745" -O %temp%\MSIAfterburner.zip
                    powershell -command "Expand-Archive -Force '%temp%\MSIAfterburner.zip' '%temp%\msi'"&"%temp%\msi\*" /S
                    RD /S /Q "msi"&DEL /F /Q /A "MSIAfterburner.zip"&goto menu)
	if %menu%==17 ( cls&wget --no-check-certificate "https://secure.logmein.com/hamachi.msi" -O %temp%\Hamachi.msi
                    "%temp%\Hamachi.msi" /q
                    DEL /F /Q /A "%temp%\Hamachi.msi"&goto menu)
	if %menu%==18 ( cls&wget --no-check-certificate "https://d7qe0znl1rfet.cloudfront.net/installer/56777815/563516629851190531" -O %temp%\CheatEngine.exe
                    "%temp%\CheatEngine.exe" /SILENT
                    DEL /F /Q /A "%temp%\CheatEngine.exe"&goto menu)
	if %menu%==19 ( REM https://obsproject.com/tr/download
                    cls&wget --no-check-certificate "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-27.0.1-Full-Installer-x64.exe" -O %temp%\OBS.exe
                    "%temp%\OBS.exe" /S
                    DEL /F /Q /A "%temp%\OBS.exe"&goto menu)
	if %menu%==20 GOTO chrome
	if %menu%==21 ( cls&wget --no-check-certificate "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=tr" -O %temp%\Firefox.exe
                    "%temp%\Firefox.exe" /S
                    DEL /F /Q /A "%temp%\Firefox.exe"&goto menu)
	if %menu%==22 GOTO brave
	if %menu%==23 GOTO edge
	if %menu%==24 ( cls&wget --no-check-certificate "https://dn3.freedownloadmanager.org/6/latest/fdm_x64_setup.exe" -O %temp%\FreeDownloadManager.exe
                    "%temp%\FreeDownloadManager.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
                    DEL /F /Q /A "%temp%\FreeDownloadManager.exe"&goto menu)
	if %menu%==25 ( cls&wget --no-check-certificate "https://proxy.byclickdownloader.com/ExternalSetup/InstallPage/ByClickDownloader-Setup.exe" -O %temp%\ByClick.exe
                    "%temp%\ByClick.exe" /q
                    DEL /F /Q /A "%temp%\ByClick.exe"&goto menu)
	if %menu%==26 ( REM http://www.hibitsoft.ir/Uninstaller.html
					cls&wget --no-check-certificate "http://www.hibitsoft.ir/HiBitUninstaller/HiBitUninstaller-setup-2.6.10.exe" -O %temp%\Hibit.exe
					"%temp%\Hibit.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
					DEL /F /Q /A "%temp%\Hibit.exe"&goto menu)
	if %menu%==27 ( Rem https://tr.libreoffice.org/indir/libreoffice-taze-surum/
					cls&wget --no-check-certificate "https://ftp.linux.org.tr/tdf/libreoffice/stable/7.2.1/win/x86_64/LibreOffice_7.2.1_Win_x64.msi" -O %temp%\LibreOffice.msi 
					"%temp%\LibreOffice.msi" /qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL
					DEL /F /Q /A "%temp%\LibreOffice.msi"&goto menu)
	if %menu%==28 ( cls&wget --no-check-certificate "https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/1900820071/AcroRdrDC1900820071_tr_TR.exe" -O %temp%\AdobeReader.exe
					"%temp%\AdobeReader.exe" /sPB /rs /msi 
					DEL /F /Q /A "%temp%\AdobeReader.exe"&goto menu)
	if %menu%==29 ( Rem https://notepad-plus-plus.org/downloads/
					cls&wget --no-check-certificate "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1.1/npp.8.1.1.Installer.x64.exe" -O %temp%\Notepad.exe
					"%temp%\Notepad.exe" /S
					DEL /F /Q /A "%temp%\Notepad.exe"&goto menu)
	if %menu%==30 ( cls&wget --no-check-certificate "https://calibre-ebook.com/dist/win64" -O %temp%\Calibre.msi
					"%temp%\Calibre.msi" /qn
					DEL /F /Q /A "%temp%\Calibre.msi"&goto menu)
	if %menu%==31 ( REM https://kdenlive.org/en/download/
					cls&wget --no-check-certificate "https://download.kde.org/stable/kdenlive/21.04/windows/kdenlive-21.04.2.exe" -O %temp%\Kdenlive.exe
					"%temp%\Kdenlive.exe" /S
					DEL /F /Q /A "%temp%\Kdenlive.exe"&goto menu)
	if %menu%==32 ( REM https://krita.org/en/download/krita-desktop/
					cls&wget --no-check-certificate "https://download.kde.org/stable/krita/4.4.5/krita-x64-4.4.5-setup.exe" -O %temp%\Krita.exe
					"%temp%\Krita.exe" /S
					DEL /F /Q /A "%temp%\Krita.exe"&goto menu)
	if %menu%==33 ( REM https://www.audacityteam.org/download/
					cls&wget --no-check-certificate "https://github.com/audacity/audacity/releases/download/Audacity-3.0.2/audacity-win-3.0.2.exe" -O %temp%\Audacity.exe
					"%temp%\Audacity.exe" /VERYSILENT /NORESTART
					DEL /F /Q /A "%temp%\Audacity.exe"&goto menu)
	if %menu%==34 ( REM https://codecguide.com/download_k-lite_codec_pack_mega.htm
					cls&wget --no-check-certificate "https://files2.codecguide.com/K-Lite_Codec_Pack_1630_Mega.exe" -O %temp%\Klite.exe 
					"%temp%\Klite.exe" /verysilent
					DEL /F /Q /A "%temp%\Klite.exe"&goto menu)
	if %menu%==35 ( REM https://www.videolan.org/vlc/download-windows.tr.html
					cls&wget --no-check-certificate "https://mirrors.netix.net/vlc/vlc/3.0.16/win32/vlc-3.0.16-win32.exe" -O %temp%\VLCMediaPlayer.exe
					"%temp%\VLCMediaPlayer.exe" /L=1055 /S 
					DEL /F /Q /A "%temp%\VLCMediaPlayer.exe"&goto menu)
	if %menu%==36 ( cls&wget --no-check-certificate "https://www.aimp.ru/?do=download.file&id=4" -O %temp%\Aimp.exe
					"%temp%\Aimp.exe" /AUTO /SILENT
					DEL /F /Q /A "%temp%\Aimp.exe"&goto menu)
	if %menu%==37 ( REM http://www.pcfreetime.com/formatfactory/index.php?language=tr
					cls&wget --no-check-certificate "http://public.pcfreetime.com/FFSetup5.7.5.0.exe" -O %temp%\FormatFactory.exe 
					"%temp%\FormatFactory.exe" /S
					DEL /F /Q /A "%temp%\FormatFactory.exe"&goto menu)
	if %menu%==38 ( Rem http://www.hibitsoft.ir/Uninstaller.html
					cls&wget --no-check-certificate "http://www.hibitsoft.ir/HiBitUninstaller/HiBitUninstaller-setup-2.6.15.exe" -O %temp%\Hibit.exe
					"%temp%\Hibit.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
					DEL /F /Q /A "%temp%\Hibit.exe"&goto menu)
	if %menu%==39 ( cls&wget --no-check-certificate "https://github.com/Open-Shell/Open-Shell-Menu/releases/download/v4.4.160/OpenShellSetup_4_4_160.exe" -O %temp%\OpenShell.exe
					"%temp%\OpenShell.exe" /quiet /norestart ADDLOCAL=StartMenu
					DEL /F /Q /A "%temp%\OpenShell.exe"&goto menu)
	if %menu%==40 ( cls&wget --no-check-certificate "https://cdn.iobit.com/dl/unlocker-setup.exe" -O %temp%\Unlocker.exe
					"%temp%\Unlocker.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
					DEL /F /Q /A "%temp%\Unlocker.exe"&goto menu)
	if %menu%==41 ( cls&wget --no-check-certificate "https://www.abelssoft.de/ssdfreshsetup.exe" -O %temp%\SSDFresh.exe
					"%temp%\SSDFresh.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
					DEL /F /Q /A "%temp%\SSDFresh.exe"&goto menu)
	if %menu%==42 ( REM https://www.7-zip.org/
					cls&wget --no-check-certificate "https://www.7-zip.org/a/7z2102-x64.exe" -O %temp%\7-Zip.exe
					"%temp%\7-Zip.exe" /S
					DEL /F /Q /A "%temp%\7-Zip.exe"&goto menu)
	if %menu%==43 GOTO calculator
	if %menu%==44 GOTO paint
	if %menu%==45 ( cls&wget --no-check-certificate "https://download.glasswire.com/GlassWireSetup.exe" -O %temp%\GlassWire.exe
					"GlassWire.exe" /S
					DEL /F /Q /A "%temp%\GlassWire.exe"&goto menu)
	if %menu%==46 ( cls&wget --no-check-certificate "https://www.strem.io/download?platform=windows&four=true" -O %temp%\Stremio.exe
					"%temp%\Stremio.exe" /S
					DEL /F /Q /A "%temp%\Stremio.exe"&goto menu)
	if %menu%==47 ( cls&wget --no-check-certificate "https://github.com/Stellarium/stellarium/releases/download/v0.21.1/stellarium-0.21.1-win64.exe" -O %temp%\Stellarium.exe
					"%temp%\Stellarium.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
					DEL /F /Q /A "%temp%\Stellarium.exe"&goto menu)
	if %menu%==48 ( cls&wget --no-check-certificate "https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe" -O %temp%\TeamViewer.exe
					"%temp%\TeamViewer.exe" /S
					DEL /F /Q /A "%temp%\TeamViewer.exe"&goto menu)
	if %menu%==49 ( cls&wget --no-check-certificate "https://app.prntscr.com/build/setup-lightshot.exe" -O %temp%\LightShoot.exe
					"%temp%\LightShoot.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
					DEL /F /Q /A "%temp%\LightShoot.exe"&goto menu)
	if %menu%==50 ( REM https://www.voidtools.com/tr-tr/
					wget --no-check-certificate "https://www.voidtools.com/Everything-1.4.1.1009.x64-Setup.exe" -O %temp%\Everything.exe
					"%temp%\Everything.exe" /S
					DEL /F /Q /A "%temp%\%temp%\Everything.exe"&goto menu)
	if %menu%==51 ( cls&wget --no-check-certificate "https://github.com/ChrisAnd1998/TaskbarX/releases/download/1.6.9.0/TaskbarX_1.6.9.0_x64.zip" -O %temp%\TaskbarX.zip
					powershell -command "Expand-Archive -Force '%temp%\TaskbarX.zip' '%programfiles%\TaskbarX'" 
					DEL /F /Q /A "%temp%\TaskbarX.zip"
					powershell -command "Start-Process '%systemdrive%\Program Files\TaskbarX\TaskbarX Configurator.exe'&powershell -command "Start-Process '%systemdrive%\Program Files\TaskbarX\TaskbarX.exe'&goto menu)
	if %menu%==52 (PowerRun.exe "Ekler\Registry.Settings.bat"&goto menu)
	if %menu%==53 GOTO yazicionar
	if %menu%==54 GOTO laptopservis
	if %menu%==55 GOTO winrepair
	if %menu%==56 GOTO arindir
	if %menu%==57 (PowerRun.exe "Ekler\UpdateAfter.bat"&goto menu)
	if %menu%==58 (start cmd /c "Ekler\PingMeter.bat"&goto menu)
	if %menu%==59 (PowerRun.exe "Ekler\Windows.Edition.bat"&goto menu)
	if %menu%==60 GOTO appxmanagement
	if %menu%==61 GOTO ognidownload
	if %menu%==62 GOTO adminmenu
	if %menu%==63 GOTO slmgrvbs
	if %menu%==64 (start cmd /c "Ekler\Sistem.Hakkçnda.bat"&goto menu)
	if %menu%==65 GOTO fat32tontfs
	if %menu%==0 GOTO exit
else
	goto menu
	
:edge
cls
mode con cols=109 lines=30
echo   %ESC%[92m LÅtfen bekleyin... Kurulum tamamlandçktan sonra menÅye aktarçlacaksçnçz. %ESC%[0m
wget --no-check-certificate "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2fa04572-8170-4fcd-85a7-3530762cc91a/MicrosoftEdgeEnterpriseX64.msi" -O %temp%\edge.msi
"%temp%\edge.msi" /qn
DEL /F /Q /A "%temp%\edge.msi"
goto menu

:brave
cls
mode con cols=109 lines=30
echo   %ESC%[92m LÅtfen bekleyin... Kurulum tamamlandçktan sonra menÅye aktarçlacaksçnçz. %ESC%[0m
wget --no-check-certificate "https://brave-browser-downloads.s3.brave.com/latest/brave_installer-x64.exe" -O %temp%\Brave.exe
"%temp%\Brave.exe" --install --silent --system-level
DEL /F /Q /A "%temp%\Brave.exe"
REM UBlock Origin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f
REM HTTPS Everywhere
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f
REM Clear URL's
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f
goto menu 

:chrome
cls
mode con cols=109 lines=30
echo   %ESC%[92m LÅtfen bekleyin... Kurulum tamamlandçktan sonra menÅye aktarçlacaksçnçz. %ESC%[0m
wget --no-check-certificate "https://dl.google.com/tag/s/appguid%253D%257B8A69D345-D564-463C-AFF1-A69D9E530F96%257D%2526iid%253D%257BBEF3DB5A-5C0B-4098-B932-87EC614379B7%257D%2526lang%253Den%2526browser%253D4%2526usagestats%253D1%2526appname%253DGoogle%252520Chrome%2526needsadmin%253Dtrue%2526ap%253Dx64-stable-statsdef_1%2526brand%253DGCEB/dl/chrome/install/GoogleChromeEnterpriseBundle64.zip?_ga%3D2.8891187.708273100.1528207374-1188218225.1527264447" -O %temp%\Chrome.zip
powershell -command "Expand-Archive -Force '%temp%\chrome.zip' '%temp%\chrome'" 
"%temp%\chrome\Installers\GoogleChromeStandaloneEnterprise64.msi" /qn
DEL /F /Q /A "%temp%\chrome.zip"
RD /S /Q "%temp%\chrome"
echo   %ESC%[92m Eklentiler ekleniyor...%ESC%[0m
REM UBlock Origin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f
REM HTTPS Everywhere
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f
REM Clear URL's
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f
REM GÅncellemeler devre dçüç bçrakçlçyor
REG ADD "HKLM\SOFTWARE\Policies\Google\Update" /v UpdateDefault /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Google\Update" /v DisableAutoUpdateChecksCheckboxValue /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Google\Update" /v AutoUpdateCheckPeriodMinutes /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Google\Update" /v UpdateDefault /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Google\Update" /v DisableAutoUpdateChecksCheckboxValue /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Google\Update" /v AutoUpdateCheckPeriodMinutes /t REG_DWORD /d 0 /f
goto menu 

:aio
cls
mode con cols=109 lines=45
echo   =====================================================
echo   %ESC%[92m DirectPlay aktifleütiriliyor...%ESC%[0m
DISM /online /quiet /norestart /enable-feature /featurename:"DirectPlay" /All
echo   =====================================================
echo   %ESC%[92m .Net Frework 4.5 aktifleütiriliyor...%ESC%[0m
DISM /online /quiet /norestart /Enable-Feature /FeatureName:"netfx4extended-aspnet45" /All
echo   =====================================================
echo   %ESC%[92m Net Frework 3.5 aktif ediliyor...%ESC%[0m
DISM /online /quiet /norestart /Enable-Feature /FeatureName:"NetFX3" /All
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2005 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/6/B/B/6BB661D6-A8AE-4819-B79F-236472F6070C/vcredist_x86.exe" -O %temp%\05x86ATL.exe
wget --no-check-certificate "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE" -O %temp%\05x86MFC.exe
echo   %ESC%[92m Microsoft Visual C++ 2005 x86 kuruluyor...%ESC%[0m
"%temp%\05x86ATL.exe" /Q
"%temp%\05x86MFC.exe" /Q
DEL /F /Q /A "%temp%\05x86ATL.exe"
DEL /F /Q /A "%temp%\05x86MFC.exe"
echo   %ESC%[92m Microsoft Visual C++ 2005 x86 kurulum tamamlandç...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2005 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/6/B/B/6BB661D6-A8AE-4819-B79F-236472F6070C/vcredist_x64.exe" -O %temp%\05x64ATL.exe
wget --no-check-certificate "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE" -O %temp%\05x64MFC.exe
echo   %ESC%[92m Microsoft Visual C++ 2005 x64 kuruluyor...%ESC%[0m
"%temp%\05x64ATL.exe" /Q
"%temp%\05x64MFC.exe" /Q
DEL /F /Q /A "%temp%\05x64ATL.exe"
DEL /F /Q /A "%temp%\05x64MFC.exe"
echo   %ESC%[92m Microsoft Visual C++ 2005 x64 kurulum tamamlandç...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2008 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/9/7/7/977B481A-7BA6-4E30-AC40-ED51EB2028F2/vcredist_x86.exe" -O %temp%\08x86ATL.exe
wget --no-check-certificate "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe" -O %temp%\08x86MFC.exe
echo   %ESC%[92m Microsoft Visual C++ 2008 x86 kuruluyor...%ESC%[0m
"%temp%\08x86ATL.exe" /q
"%temp%\08x86MFC.exe" /q
DEL /F /Q /A "%temp%\08x86ATL.exe"
DEL /F /Q /A "%temp%\08x86MFC.exe"
echo   %ESC%[92m Microsoft Visual C++ 2008 x86 kurulum tamamlandç...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2008 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/9/7/7/977B481A-7BA6-4E30-AC40-ED51EB2028F2/vcredist_x64.exe" -O %temp%\08x64ATL.exe
wget --no-check-certificate "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe" -O %temp%\08x64MFC.exe
echo   %ESC%[92m Microsoft Visual C++ 2008 x64 kuruluyor...%ESC%[0m
"%temp%\08x64ATL.exe" /q
"%temp%\08x64MFC.exe" /q
DEL /F /Q /A "%temp%\08x64ATL.exe"
DEL /F /Q /A "%temp%\08x64MFC.exe"
echo   %ESC%[92m Microsoft Visual C++ 2008 x64 kurulum tamamlandç...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2010 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe" -O %temp%\10x86.exe
echo   %ESC%[92m Microsoft Visual C++ 2010 x86 kuruluyor...%ESC%[0m
"%temp%\10x86.exe" /q /norestart
DEL /F /Q /A "%temp%\10x86.exe"
echo   %ESC%[92m Microsoft Visual C++ 2010 x86 kurulum tamamlandç...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2010 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe" -O %temp%\10x64.exe
echo   %ESC%[92m Microsoft Visual C++ 2010 x64 kuruluyor...%ESC%[0m
"%temp%\10x64.exe" /q /norestart
DEL /F /Q /A "%temp%\10x64.exe"
echo   %ESC%[92m Microsoft Visual C++ 2010 x64 kurulum tamamlandç...%ESC%[0m
echo    Microsoft Visual C++ 2010 x64 kurulum tamamlandç...
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2012 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe" -O %temp%\12x86.exe
echo   %ESC%[92m Microsoft Visual C++ 2012 x86 kuruluyor...%ESC%[0m
"%temp%\12x86.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\12x86.exe"
echo   %ESC%[92m Microsoft Visual C++ 2012 x86 kurulum tamamlandç...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2012 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe" -O %temp%\12x64.exe
echo   %ESC%[92m Microsoft Visual C++ 2012 x64 kuruluyor...%ESC%[0m
"%temp%\12x64.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\12x64.exe"
echo   %ESC%[92m Microsoft Visual C++ 2012 x64 kurulum tamamlandç...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2013 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe" -O %temp%\13x86.exe
echo   %ESC%[92m Microsoft Visual C++ 2013 x86 kuruluyor...%ESC%[0m
"%temp%\13x86.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\13x86.exe"
echo   %ESC%[92m Microsoft Visual C++ 2013 x86 kurulum tamamlandç...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2013 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe" -O %temp%\13x64.exe
echo   %ESC%[92m Microsoft Visual C++ 2013 x64 kuruluyor...%ESC%[0m
"%temp%\13x64.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\13x64.exe"
echo   %ESC%[92m Microsoft Visual C++ 2013 x64 kurulum tamamlandç...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2015 / 2017 / 2019 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://aka.ms/vs/16/release/vc_redist.x86.exe" -O %temp%\15x86.exe
echo   %ESC%[92m Microsoft Visual C++ 2015-2019 x86 kuruluyor...%ESC%[0m
"%temp%\15x86.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\15x86.exe"
echo   %ESC%[92m Microsoft Visual C++ 2015 / 2017 / 2019 x86 kurulum tamamlandç...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2015-2019 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://aka.ms/vs/16/release/vc_redist.x64.exe" -O %temp%\15x64.exe
echo   %ESC%[92m Microsoft Visual C++ 2015-2019 x86 kuruluyor...%ESC%[0m
"%temp%\15x64.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\15x64.exe"
echo   %ESC%[92m Microsoft Visual C++ 2015 / 2017 /2019 x64 kurulum tamamlandç...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Java x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=244584_d7fc238d0cbf4b0dac67be84580cfb4b" -O %temp%\javax64.exe
echo   %ESC%[92m Java x64 kuruluyor...%ESC%[0m
"%temp%\javax64" INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable
DEL /F /Q /A "%temp%\javax64"
echo   %ESC%[92m Java x64 kurulum tamamlandç.%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft XNA Framework 4.0 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/A/C/2/AC2C903B-E6E8-42C2-9FD7-BEBAC362A930/xnafx40_redist.msi" -O %temp%\xnafx40.msi
echo   %ESC%[92m Microsoft XNA Framework 4.0 kuruluyor...%ESC%[0m
"%temp%\xnafx40.msi" /qn
DEL /F /Q /A "%temp%\xnafx40.msi"
echo   %ESC%[92m Microsoft XNA Framework 4.0 kurulum tamamlandç.%ESC%[0m
echo   =====================================================
echo   %ESC%[92m OpenAL indiriliyor...%ESC%[0m 
wget --no-check-certificate "https://openal.org/downloads/oalinst.zip" -O %temp%\oal.zip 
echo   %ESC%[92m OpenAL kuruluyor...%ESC%[0m
powershell -command "Expand-Archive -Force '%temp%\oal.zip' '%temp%'" 
"%temp%\oalinst.exe" /SILENT
DEL /F /Q /A "%temp%\oal.zip"
DEL /F /Q/ A "%temp%\oalinst.exe"
echo   %ESC%[92m OpenAL kurulum tamamlandç.%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.visualstudio.microsoft.com/download/pr/2b83d30e-5c86-4d37-a1a6-582e22ac07b2/c7b1b7e21761bbfb7b9951f5b258806e/windowsdesktop-runtime-5.0.7-win-x64.exe" -O %temp%\Desktop5x64.exe
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x64 kuruluyor...%ESC%[0m
"%temp%\Desktop5x64.exe" /q /norestart
DEL /F /Q /A "%temp%\Desktop5x64.exe"
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x64 kurulum tamamlandç.%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.visualstudio.microsoft.com/download/pr/c8af603e-ef3d-4bf3-89b9-f11dce1c2fc9/d416996ef55aa134b8aba565685d1ed2/windowsdesktop-runtime-5.0.7-win-x86.exe" -O %temp%\Desktop5x86.exe
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x86 kuruluyor...%ESC%[0m
"%temp%\Desktop5x86.exe" /q /norestart
DEL /F /Q /A "%temp%\Desktop5x86.exe"
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x86 kurulum tamamlandç.%ESC%[0m
echo   =====================================================
echo   %ESC%[92m DirectX indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/1/7/1/1718CCC4-6315-4D8E-9543-8E28A4E18C4C/dxwebsetup.exe" -O %temp%\Directx.exe
echo   %ESC%[92m DirectX kuruluyor...%ESC%[0m
"%temp%\Directx.exe" /Q
DEL /F /Q /A "%temp%\Directx.exe"
echo   %ESC%[92m DirectX kurulum tamamlandç.%ESC%[0m
echo   %ESC%[92m All in One Runtimes kurulumu tamamlandç. AnamenÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 5 /nobreak
goto menu

:winrepair
cls
mode con cols=80 lines=30
title OgnitorenKs / Windows Repair 

echo %ESC%[92m Windows Onarçlçyor...%ESC%[0m

sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth

echo %ESC%[92m òülem tamamlandç. Ana menÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto menu

:arindir
cls
title PC Cleaner / OgnitorenKs
mode con cols=109 lines=43
echo %ESC%[92m Olay gÅnlÅßÅ temizleniyor%ESC%[0m
powershell -command "wevtutil el | Foreach-Object {wevtutil cl "$_"}"

echo %ESC%[92m Eski tarihli dosya geámiüi temizleniyor...%ESC%[0m
FhManagew.exe -cleanup 360 -quiet

echo %ESC%[92m WinSxS temizleniyor...%ESC%[0m
dism.exe /Online /Cleanup-Image /StartComponentCleanup

echo %ESC%[92m Disk temizleme iülemi yapçlçyor... òülem sonunda uyarç verecek.%ESC%[0m
cleanmgr.exe /VERYLOWDISK/dc

echo %ESC%[92m ico ve kÅáÅk resim belleßi temizleniyor...%ESC%[0m
taskkill /f /IM explorer.exe
CD /d %userprofile%\AppData\Local\Microsoft\Windows
del /f /s /q Explorer\*.*
Start explorer.exe

echo %ESC%[92m Temp dosyasç temizleniyor...%ESC%[0m
del /q/f/s %TEMP%\*

echo %ESC%[92m SoftwareDistribution temizleniyor...%ESC%[0m
net stop wuauserv
RD /S /Q  %windir%\SoftwareDistribution
net start wuauserv

echo %ESC%[92m Prefetch temizleniyor...%ESC%[0m
del /q/f/s %windir%\prefetch\*

echo %ESC%[92m Windows tarafçndan oluüturulan áîp dosyalar temizleniyor...%ESC%[0m
del /q/f/s %windir%\temp\*

echo %ESC%[92m Adobe Reader kalçntçlarç temizleniyor...%ESC%[0m
del /q/f/s %localappdata%\Adobe\Acrobat\DC\Cache\*
del /q/f/s %localappdata%\Adobe\Acrobat\DC\*.lst

echo %ESC%[92m Steam înbellißi temizleniyor...%ESC%[0m
del /q/f/s %localappdata%\Steam\Logs\*

echo %ESC%[92m Microsoft Edge înbelleßi temizleniyor...%ESC%[0m
del /q/f/s %programfiles(x86)%\Microsoft\Edge\User Data\Default\Cache\*
del /q/f/s %localappdata%\Microsoft\Edge\User Data\Default\Service Worker\CacheStorage\*

echo %ESC%[92m AMD Driver Kalçntçlarç temizleniyor...%ESC%[0m
RD /S /Q %systemdrive%\AMD

echo %ESC%[92m Sistem Log Dosyalarç siliniyor...%ESC%[0m
del /q/f/s %windir%\System32\LogFiles\*

echo %ESC%[92m Yazç tipi înbellißi siliniyor...%ESC%[0m
del /q/f/s %windir%\System32\FNTCACHE.DAT

echo %ESC%[92m Windows Sistem ônbellißi temizleniyor...%ESC%[0m
del /q/f/s %windir%\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*

echo %ESC%[92m Windows YÅkleyici ônbellißi temizleniyor...%ESC%[0m
del /q/f/s %windir%\Installer\$PatchCache$\Managed\*

echo %ESC%[92m Uygulamalar tarafçndan oluüturulan kalçntçlar temizleniyor...%ESC%[0m
del /q/f/s %localappdata%\Temp\*

echo %ESC%[92m Hata Raporu Dosyalarç temizleniyor...%ESC%[0m
del /q/f/s %programdata%\Microsoft\Windows\WER\ReportQueue\*

echo %ESC%[92m Mozilla Firefox kalçntçlarç temizleniyor...%ESC%[0m
del /q/f/s %localappdata%\Mozilla\Firefox\Profiles\bmuoeymu.default-release\cache2\*
del /q/f/s %localappdata%\Mozilla\Firefox\Profiles\bmuoeymu.default-release\Mozilla\Firefox\Profiles\bmuoeymu.default-release\startupCache\*
del /q/f/s %homepath%\AppData\Roaming\Mozilla\Firefox\Profiles\bmuoeymu.default-release\shader-cache\*

echo %ESC%[92m òülem tamamlandç. Ana menÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto menu 

:yazicionar
cls
mode con cols=80 lines=30
title OgnitorenKs / Yazçcç Hizmetleri 

echo %ESC%[92m Yazçcç hizmetleri aáçlçyor...%ESC%[0m

net start Spooler
sc config "Spooler" Start=auto
net stop PrintNotify
sc config "PrintNotify" start=auto
DEL /F /Q /A "%windir%\System32\spool\PRINTERS\*"

echo %ESC%[92m òülem tamamlandç. Ana menÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto menu

:laptopservis
cls
mode con cols=80 lines=30
title OgnitorenKs / Bluetooth - Wifi Enabled

echo %ESC%[92m Bluetooth - Wifi hizmetleri aáçlçyor...%ESC%[0m

sc config "AJRouter" start= demand
net start AJRouter
sc config "BthAvctpSvc" start= demand
net start BthAvctpSvc
sc config "bthserv" start= demand
net start bthserv
sc config "BluetoothUserService" start= demand
net start BluetoothUserService
sc config "BTAGService" start= demand
net start BTAGService
sc config "TrkWks" start= demand
net start TrkWks
sc config "iphlpsvc" start= demand
net start iphlpsvc
sc config "IpxlatCfgSvc" start= demand
net start IpxlatCfgSvc
sc config "WebClient" start= demand
net start WebClient
sc config "icssvc" start= demand
net start icssvc
sc config "wcncsvc" start= demand
net start wcncsvc
sc config "WMPNetworkSvc" start= demand
net start WMPNetworkSvc
sc config "SharedAccess" start= demand
net start SharedAccess
sc config "PeerDistSvc" start= demand
net start PeerDistSvc

echo %ESC%[92m òülem tamamlandç. Ana menÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto menu

:appxmanagement
cls
title OgnitorenKs Appx Managament / OgnitorenKs
mode con cols=61 lines=18
echo   ==========================================================
echo                     %ESC%[96mOgnitorenKs Appx Yînetici%ESC%[0m         
echo   ==========================================================
echo      %ESC%[92m 1.%ESC%%ESC%[33m YÅklÅ uygulamalar%ESC%[0m      
echo      %ESC%[92m 2.%ESC%%ESC%[33m Uygulamalarçn hepsini kaldçr%ESC%[0m       
echo      %ESC%[92m 3.%ESC%%ESC%[33m Uygulamalarç yeniden yÅkle%ESC%[0m      
echo      %ESC%[92m 4.%ESC%%ESC%[33m Uygulama kaldçr%ESC%[0m      
echo      %ESC%[92m 5.%ESC%%ESC%[33m Uygulama Reset%ESC%[0m      
echo      %ESC%[92m 6.%ESC%%ESC%[33m Kilitli uygulamalarç aá%ESC%[0m       
echo      %ESC%[92m 9.%ESC%%ESC%[33m Market onar%ESC%[0m    
echo     %ESC%[92m 10.%ESC%%ESC%[33m Appx indirme(Web.Sayfasç)%ESC%[0m    
echo     %ESC%[92m 11.%ESC%%ESC%[36m Ana MenÅ%ESC%[0m    
echo      %ESC%[92m 0.%ESC%%ESC%[91m Äçkçü%ESC%[0m    
echo   ==========================================================
set /p menu= %ESC%[92m Yapmak istedißiniz iülem : %ESC%[0m
mode con cols=90 lines=40
	if %menu%==1 ( REM YÅklÅ uygulamalar
				   cls
	               powershell -command "Get-AppxPackage -AllUsers | Select Name , PackageFullName" > %systemdrive%\Appx.txt
				   echo                 %ESC%[92m MasaÅstÅ Appx.txt bakçnçz%ESC%[0m
				   pause
				   timeout /t 5 /nobreak
				   goto menu)
	if %menu%==2 ( REM Uygulamalarçn hepsini kaldçr
				   cls
				   powershell -command "Get-AppXPackage -AllUsers | Remove-AppxPackage"
				   echo  %ESC%[92m òülem tamamlandç.%ESC%[0m
				   timeout /t 3 /nobreak
				   goto menu)
	if %menu%==3 ( REM Uygulamalarç yeniden yÅkle
				   cls
				   powershell -command "Add-AppxPackage -DisableDevelopmentMode -Register $Env:%windir%\SystemApps\*\AppxManifest.xml"
				   echo  %ESC%[92m òülem tamamlandç.%ESC%[0m
				   timeout /t 3 /nobreak
				   goto menu)
	if %menu%==4 ( REM Uygulama kaldçr
				   cls
				   echo %ESC%[92m  ôrnek : %ESC%%ESC%[97m xbox / windowsstore / zune / wallet / solitaire / maps / skype / onenote 
				   echo %ESC%[92m  ôrnek : %ESC%%ESC%[97m phone / photos / sticky / soundrecorder / bingweather / holographic / alarms
				   echo %ESC%[92m  ôrnek : %ESC%%ESC%[97m cortana / parental / narrator / webview / edge / bio / SecHealthUI
				   set /p appxunins= %ESC%[92m  Appx ismi : %ESC%[0m
				   PowerShell.exe -Command "Get-AppxPackage -AllUsers *%appxunins%* | Remove-AppxPackage"
				   echo  %ESC%[92m òülem tamamlandç.%ESC%[0m
				   timeout /t 3 /nobreak
				   goto menu)
	if %menu%==5 ( REM Uygulama Reset
				   cls
				   echo %ESC%[92m  ôrnek : %ESC%%ESC%[97m xbox / windowsstore / zune / wallet / solitaire / maps / skype / onenote 
				   echo %ESC%[92m  ôrnek : %ESC%%ESC%[97m phone / photos / sticky / soundrecorder / bingweather / holographic / alarms
				   echo %ESC%[92m  ôrnek : %ESC%%ESC%[97m cortana / parental / narrator / webview / edge / bio / SecHealthUI
				   set /p appxreset= %ESC%[92m Appx ismi : %ESC%[0m
				   PowerShell.exe -Command "Get-AppxPackage -AllUsers *%appxreset%* | Reset-AppxPackage"
				   echo  %ESC%[92m òülem tamamlandç.%ESC%[0m
				   timeout /t 3 /nobreak
				   goto menu)
    if %menu%==6 ( PowerRun.exe "Ekler\NonRemovable.bat"&goto menu)
	if %menu%==7 goto onlineappxxx
	if %menu%==8 goto offlineappxxx
	if %menu%==9 GOTO markettonar
	if %menu%==10 (start https://store.rg-adguard.net/&goto menu)
	if %menu%==11 GOTO menu
	if %menu%==0 GOTO exit
else
	goto appxmanagement

:markettonar
cls
net stop wuauserv
RD /S /Q "%windir%\SoftwareDistribution"
net start wuauserv
DISM /Online /Cleanup-Image /StartComponentCleanup
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
PowerShell.exe -Command "Get-AppxPackage -AllUsers *windowsstore* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "& {$manifest = (Get-AppxPackage Microsoft.WindowsStore).InstallLocation + '\AppxManifest.xml' ; Add-AppxPackage -DisableDevelopmentMode -Register $manifest}"
wsreset
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
sc config "cryptsvc" start= auto
net start cryptsvc
sc config "wuauserv" start= auto
net start "wuauserv"
sc config "StorSvc" start= auto
net start "StorSvc"
sc config "bits" start= auto
net start "bits"
sc config "trustedinstaller" start= auto
net start "trustedinstaller"
net start "ClipSVC
regsvr32 softpub.dll /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 dssenh.dll /s&regsvr32 rsaenh.dll /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 slbcsp.dll /s&regsvr32 mssip32.dll /s&regsvr32 cryptdlg.dll /s&regsvr32 msxml3.dll /s&regsvr32 comcat.dll /s&Regsvr32 Msxml.dll /s&Regsvr32 Msxml2.dll /s&regsvr32 mshtml.dll /s&regsvr32 shdocvw.dll /s&regsvr32 browseui.dll /s&regsvr32 msjava.dll /s&regsvr32 shdoc401.dll /s&regsvr32 cdm.dll /s&regsvr32 shdoc401.dll /i /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 asctrls.ocx /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 softpub.dll /s&regsvr32 oleaut32.dll /s&regsvr32 shdocvw.dll /I /s&regsvr32 Shell32.dll /s&regsvr32 browseui.dll /s&regsvr32 browseui.dll /I /s&regsvr32 msrating.dll /s&regsvr32 mlang.dll /s&regsvr32 hlink.dll /s&regsvr32 mshtmled.dll /s&regsvr32 urlmon.dll /s&regsvr32 urlmon.dll /i /s&regsvr32 plugin.ocx /s&regsvr32 sendmail.dll /s&regsvr32 scrobj.dll /s&regsvr32 mmefxe.ocx /s&regsvr32 corpol.dll /s&regsvr32 jscript.dll /s&regsvr32 imgutil.dll /s&regsvr32 thumbvw.dll /s&regsvr32 cryptext.dll /s&regsvr32 rsabase.dll /s&regsvr32 inseng.dll /s&regsvr32 iesetup.dll /i /s&regsvr32 actxprxy.dll /s&regsvr32 dispex.dll /s&regsvr32 occache.dll /s&regsvr32 occache.dll /i /s&regsvr32 iepeers.dll /s&regsvr32 cdfview.dll /s&regsvr32 webcheck.dll /s&regsvr32 mobsync.dll /s&regsvr32 pngfilt.dll /s&regsvr32 licmgr10.dll /s
regsvr32 icmfilter.dll /s&regsvr32 hhctrl.ocx /s&regsvr32 inetcfg.dll /s&regsvr32 tdc.ocx /s&regsvr32 MSR2C.DLL /s&regsvr32 msident.dll /s&regsvr32 msieftp.dll /s&regsvr32 xmsconf.ocx /s&regsvr32 ils.dll /s&regsvr32 msoeacct.dll /s&regsvr32 inetcomm.dll /s&regsvr32 msdxm.ocx /s&regsvr32 dxmasf.dll /s&regsvr32 l3codecx.ax /s&regsvr32 acelpdec.ax /s&regsvr32 mpg4ds32.ax /s&regsvr32 voxmsdec.ax /s&regsvr32 danim.dll /s&regsvr32 Daxctle.ocx /s&regsvr32 lmrt.dll /s&regsvr32 datime.dll /s&regsvr32 dxtrans.dll /s&regsvr32 dxtmsft.dll /s&regsvr32 WEBPOST.DLL /s&regsvr32 WPWIZDLL.DLL /s&regsvr32 POSTWPP.DLL /s&regsvr32 CRSWPP.DLL /s&regsvr32 FTPWPP.DLL /s&regsvr32 FPWPP.DLL /s&regsvr32 WUAPI.DLL /s&regsvr32 wups2.dll /S&regsvr32 WUAUENG.DLL /s&regsvr32 ATL.DLL /s&regsvr32 WUCLTUI.DLL /s&regsvr32 WUPS.DLL /s&regsvr32 WUWEB.DLL /s&regsvr32 wshom.ocx /s&regsvr32 wshext.dll /s&regsvr32 vbscript.dll /s&regsvr32 scrrun.dll mstinit.exe /setup /s&regsvr32 msnsspc.dll /SspcCreateSspiReg /s&regsvr32 msapsspc.dll /SspcCreateSspiReg /s
echo %ESC%[92m òülem tamamlandç.%ESC%[0m
timeout /t 3 /nobreak
goto menu

:adminmenu
mode con cols=55 lines=20
cls
mode con cols=55 lines=22
title Kullançcç òülemleri \ OgnitorenKs
echo   ===================================================
echo                      %ESC%[96m OgnitorenKs%ESC%[0m
echo   ===================================================
echo                   %ESC%[92m Administrator MenÅ%ESC%[0m
echo   ===================================================
echo     %ESC%[92m1.%ESC%%ESC%[33m Administrator aktif%ESC%[0m
echo     %ESC%[92m2.%ESC%%ESC%[33m Administrator pasif%ESC%[0m
echo     %ESC%[92m3.%ESC%%ESC%[33m Admin grubuna Kullançcç ekle%ESC%[0m
echo     %ESC%[92m4.%ESC%%ESC%[33m Kullançcç ekle%ESC%[0m
echo     %ESC%[92m5.%ESC%%ESC%[33m Kullançcç sil%ESC%[0m
echo     %ESC%[92m6.%ESC%%ESC%[33m ûifremi unuttum%ESC%[0m
echo     %ESC%[92m7.%ESC%%ESC%[93m CMD%ESC%[0m
echo     %ESC%[92m8.%ESC%%ESC%[93m Ana MenÅ%ESC%[0m
echo     %ESC%[92m0.%ESC%%ESC%[91m Äçkçü%ESC%[0m
echo   ===================================================

set /p adminmenu=%ESC%[92m Yapmak istedißiniz iülem : %ESC%[0m
	if %adminmenu%==1 GOTO adminaktif
	if %adminmenu%==2 GOTO adminpasif
	if %adminmenu%==3 GOTO grupadmin
	if %adminmenu%==4 GOTO newusers
	if %adminmenu%==5 GOTO delusers
	if %adminmenu%==6 GOTO userskey
	if %adminmenu%==7 (powershell -command "Start-Process 'cmd' -Verb RunAs"&goto adminmenu)
	if %adminmenu%==8 GOTO menu
	if %adminmenu%==0 GOTO exit
else
	goto adminmenu
	
:adminaktif
cls
mode con cols=55 lines=20
title Kullançcç òülemleri \ OgnitorenKs
net user administrator /active:yes
net user administrator *
echo %ESC%[92m òülem tamamlandç. MenÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:adminpasif
cls
mode con cols=55 lines=20
title Kullançcç òülemleri \ OgnitorenKs
net user Administrator /active:no
echo %ESC%[92m òülem tamamlandç. MenÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:grupadmin
cls
mode con cols=55 lines=20
title Kullançcç òülemleri \ OgnitorenKs
net localgroup Administrators %username% /add 
echo %ESC%[92m òülem tamamlandç. MenÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:newusers
cls
mode con cols=55 lines=20
title Kullançcç òülemleri \ OgnitorenKs
set /p newuserss=%ESC%[92m LÅtfen Kullancç Adçnçzç Giriniz:%ESC%[0m 

net user %newuserss% * /add

echo %ESC%[92m òülem tamamlandç. MenÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:delusers
cls
mode con cols=55 lines=20
title Kullançcç òülemleri \ OgnitorenKs
set /p deluserss=%ESC%[92m LÅtfen Kullancç Adçnçzç Giriniz:%ESC%[0m 

net user %deluserss% /delete

echo %ESC%[92m òülem tamamlandç. MenÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu


:userskey
cls
mode con cols=55 lines=20
title Kullançcç òülemleri \ OgnitorenKs
set /p userskey=%ESC%[92mLÅtfen kullançcç adçnçzç yazçnçz:%ESC%[0m

net user %userskey% *

echo %ESC%[92m òülem tamamlandç. MenÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:fat32tontfs
cls

set /p diskharfi=%ESC%[92m Disk harfini yazçnçz:%ESC%[0m
	if %diskharfi%==0 GOTO menu
	
echo Dikkat %diskharfi% diski NTFS dînÅütÅrÅlÅyor. 
echo Devam etmek iáin herhangi bir tuüa basçnçz.
pause

convert %diskharfi%: /fs:NTFS /v

echo %ESC%[92m òülem tamamlandç. MenÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto menu


:slmgrvbs
mode con cols=55 lines=20
cls
mode con cols=55 lines=22
title SLMGR.VBS \ OgnitorenKs
echo   ===================================================
echo                    %ESC%[92m Slmgr.vbs MenÅ%ESC%[0m
echo   ===================================================
echo     %ESC%[92m1.%ESC%%ESC%[36m Lisans Gir%ESC%[0m
echo     %ESC%[92m2.%ESC%%ESC%[36m Lisans Durumu%ESC%[0m
echo     %ESC%[92m3.%ESC%%ESC%[36m Lisans Durumu Detaylç%ESC%[0m
echo     %ESC%[92m4.%ESC%%ESC%[36m Lisans SÅresini ôßren%ESC%[0m
echo     %ESC%[92m5.%ESC%%ESC%[36m Lisans Sil%ESC%[0m
echo     %ESC%[92m6.%ESC%%ESC%[36m Lisans SÅre Sçfçrla%ESC%[0m
echo     %ESC%[92m7.%ESC%%ESC%[93m Ana MenÅ%ESC%[0m
echo     %ESC%[92m0.%ESC%%ESC%[91m Äçkçü%ESC%[0m
echo   ===================================================

set /p adminmenu=%ESC%[92m Yapmak istedißiniz iülem : %ESC%[0m
	if %adminmenu%==1 GOTO slmgripk
	if %adminmenu%==2 (slmgr /dli)
	if %adminmenu%==3 (slmgr /dlv)
	if %adminmenu%==4 (slmgr /xpr)
	if %adminmenu%==5 (slmgr /upk)
	if %adminmenu%==6 (slmgr /rearm)
	if %adminmenu%==7 GOTO menu
	if %adminmenu%==0 GOTO exit
else
	goto slmgrvbs
	
:slmgrlisans
cls

set /p slmgrlisans= %ESC%[92m Lisansç yazçnçz:%ESC%[0m

slmgr /ipk %slmgrlisans%

echo %ESC%[92m òülem tamamlandç. MenÅye aktarçlçyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto slmgrvbs

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0