echo off
cls
title OgnitorenKs Online Katlmsz 
mode con cols=66 lines=47

:: net session >NUL 2>&1|| powershell Start-Process '%0' -Verb RunAs&& exit /b|| exit /b

setlocal
call :setESC

:kontrol
cls

pushd "%~dp0"

cd %programfiles(x86)% > NUL 2>&1
	if %errorlevel%==0 goto menu
else
    echo Sistem mimarisi x64 de§il, ‡kŸ yaplyor...
	timeout /t 5 /nobreak
	exit

:menu
cls
cd /d "%~dp0"
title OgnitorenKs Online Katlmsz / OgnitorenKs
mode con cols=66 lines=44
echo   ==============================================================
echo                    %ESC%[96mOGNITORENKS ONLINE KATILMSIZ%ESC%[0m         
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
echo     %ESC%[92m 13.%ESC%%ESC%[97m Pubg Mobile (Gameloop)%ESC%[0m      %ESC%[92m 38.%ESC%%ESC%[36m Hibit Uninstaller%ESC%[0m
echo     %ESC%[92m 14.%ESC%%ESC%[97m League of Legends%ESC%[0m           %ESC%[92m 39.%ESC%%ESC%[36m OpenShell%ESC%[0m
echo     %ESC%[92m 15.%ESC%%ESC%[97m Blitz%ESC%[0m                       %ESC%[92m 40.%ESC%%ESC%[36m Unlocker%ESC%[0m
echo     %ESC%[92m 16.%ESC%%ESC%[36m Wemod%ESC%[0m                       %ESC%[92m 41.%ESC%%ESC%[36m SSD Fresh%ESC%[0m
echo     %ESC%[92m 17.%ESC%%ESC%[36m MSI Afterburner%ESC%[0m             %ESC%[92m 42.%ESC%%ESC%[36m 7 - Zip%ESC%[0m
echo     %ESC%[92m 18.%ESC%%ESC%[36m Hamachi%ESC%[0m                     %ESC%[92m 43.%ESC%%ESC%[33m Hesap Makinesi%ESC%[0m
echo     %ESC%[92m 19.%ESC%%ESC%[36m Cheat Engine%ESC%[0m                %ESC%[92m 44.%ESC%%ESC%[33m Paint%ESC%[0m
echo     %ESC%[92m 20.%ESC%%ESC%[36m OBS Studio%ESC%[0m                  %ESC%[92m 45.%ESC%%ESC%[33m GlassWire%ESC%[0m
echo     %ESC%[92m 21.%ESC%%ESC%[33m Google Chrome%ESC%[0m               %ESC%[92m 46.%ESC%%ESC%[33m Stremio%ESC%[0m
echo     %ESC%[92m 22.%ESC%%ESC%[33m Mozilla Firefox%ESC%[0m             %ESC%[92m 47.%ESC%%ESC%[33m Stellarium%ESC%[0m
echo     %ESC%[92m 23.%ESC%%ESC%[33m Brave%ESC%[0m                       %ESC%[92m 48.%ESC%%ESC%[33m TeamViewer%ESC%[0m
echo     %ESC%[92m 24.%ESC%%ESC%[33m Microsoft Edge%ESC%[0m              %ESC%[92m 49.%ESC%%ESC%[33m LightShoot%ESC%[0m
echo     %ESC%[92m 25.%ESC%%ESC%[36m Free Download Manager%ESC%[0m       %ESC%[92m 50.%ESC%%ESC%[33m Everything%ESC%[0m
echo     %ESC%[92m 26.%ESC%%ESC%[36m ByClick Downloader%ESC%[0m          %ESC%[92m 51.%ESC%%ESC%[33m TaskbarX%ESC%[0m
echo   --------------------------------------------------------------
echo     %ESC%[92m 52.%ESC%%ESC%[93m Microsoft Market[M]%ESC%[0m         %ESC%[92m 59.%ESC%%ESC%[36m OgnitorenKs Edit%ESC%[0m 
echo     %ESC%[92m 53.%ESC%%ESC%[93m Yazc aktifleŸtir%ESC%[0m          %ESC%[92m 60.%ESC%%ESC%[36m %ESC%[0m
echo     %ESC%[92m 54.%ESC%%ESC%[93m Bluetooth / Wifi kapat%ESC%[0m      %ESC%[92m 61.%ESC%%ESC%[36m OgnitorenKs Download%ESC%[0m
echo     %ESC%[92m 55.%ESC%%ESC%[93m Sistemi Onar%ESC%[0m                %ESC%[92m 62.%ESC%%ESC%[36m Administrator[M]%ESC%[0m
echo     %ESC%[92m 56.%ESC%%ESC%[93m PC Temizle%ESC%[0m                  %ESC%[92m 63.%ESC%%ESC%[36m Lisans Durumu (Slmgr)%ESC%[0m
echo     %ESC%[92m 57.%ESC%%ESC%[93m Gncelleme Sonras%ESC%[0m          %ESC%[92m 64.%ESC%%ESC%[36m Sistem Hakknda%ESC%[0m    
echo     %ESC%[92m 58.%ESC%%ESC%[93m Ping ™l‡er[M]%ESC%[0m               %ESC%[92m 65.%ESC%%ESC%[36m Fat32 to NTFS%ESC%[0m
echo   --------------------------------------------------------------
echo                           %ESC%[91m 0. €kŸ%ESC%[0m
echo   ==============================================================
set /p menu= %ESC%[92m Yapmak istedi§iniz iŸlemi tuŸlaynz:%ESC%[0m
	if %menu%==1 GOTO aio
	if %menu%==2 GOTO discord
	if %menu%==3 GOTO whatsapp
	if %menu%==4 GOTO signal
	if %menu%==5 GOTO telegram
	if %menu%==6 GOTO teams
	if %menu%==7 GOTO skype
	if %menu%==8 GOTO epicgames
	if %menu%==9 GOTO steam
	if %menu%==10 GOTO gog
	if %menu%==11 GOTO uplay
	if %menu%==12 GOTO origin
	if %menu%==13 GOTO gameloop
	if %menu%==14 GOTO leagueoflegends
	if %menu%==15 GOTO blitz
	if %menu%==16 GOTO wemod
	if %menu%==17 GOTO msiafterburner
	if %menu%==18 GOTO hamachi
	if %menu%==19 GOTO cheatengine
	if %menu%==20 GOTO obs
	if %menu%==21 GOTO chrome
	if %menu%==22 GOTO mozilla
	if %menu%==23 GOTO brave
	if %menu%==24 GOTO edge
	if %menu%==25 GOTO freedownloadmanager
	if %menu%==26 GOTO byclick
	if %menu%==27 GOTO libreoffice
	if %menu%==28 GOTO reader
	if %menu%==29 GOTO notepad
	if %menu%==30 GOTO calibre
	if %menu%==31 GOTO kdenlive
	if %menu%==32 GOTO krita
	if %menu%==33 GOTO audacity
	if %menu%==34 GOTO klite
	if %menu%==35 GOTO vlcmediaplayer
	if %menu%==36 GOTO aimp
	if %menu%==37 GOTO formatfactory
	if %menu%==38 GOTO hibit
	if %menu%==39 GOTO openshell
	if %menu%==40 GOTO unlocker
	if %menu%==41 GOTO ssdfresh
	if %menu%==42 GOTO 7zip
	if %menu%==43 GOTO calculator
	if %menu%==44 GOTO paint
	if %menu%==45 GOTO glasswire
	if %menu%==46 GOTO stremio
	if %menu%==47 GOTO stellarium
	if %menu%==48 GOTO teamviewer
	if %menu%==49 GOTO lightshot
	if %menu%==50 GOTO everything
	if %menu%==51 GOTO taskbarx
	if %menu%==52 GOTO microsoftstoremenu
	if %menu%==53 GOTO yazicionar
	if %menu%==54 GOTO laptopservis
	if %menu%==55 GOTO winrepair
	if %menu%==56 GOTO arindir
	if %menu%==57 GOTO updateafter
	if %menu%==58 GOTO pingolc
	if %menu%==59 GOTO anamenu
	if %menu%==60 GOTO 
	if %menu%==61 GOTO ognidownload
	if %menu%==62 GOTO adminmenu
	if %menu%==63 GOTO slmgrvbs
	if %menu%==64 GOTO systeminfo
	if %menu%==65 GOTO fat32tontfs
	if %menu%==0 GOTO exit
else
	goto menu
	
:everything
cls
REM https://www.voidtools.com/tr-tr/
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://www.voidtools.com/Everything-1.4.1.1009.x64-Setup.exe" -O %temp%\Everything.exe
"%temp%\Everything.exe" /S
DEL /F /Q /A "%temp%\%temp%\Everything.exe"
goto menu

:audacity
cls
REM https://www.audacityteam.org/download/
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://github.com/audacity/audacity/releases/download/Audacity-3.0.2/audacity-win-3.0.2.exe" -O %temp%\Audacity.exe
"%temp%\Audacity.exe" /VERYSILENT /NORESTART
DEL /F /Q /A "%temp%\Audacity.exe" 
goto menu

:signal
cls
REM https://signal.org/download/
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://updates.signal.org/desktop/signal-desktop-win-5.8.0.exe" -O %temp%\Signal.exe
"%temp%\Signal.exe" /S
DEL /F /Q /A "%temp%\Signal.exe"
goto menu 

:kdenlive
cls
REM https://kdenlive.org/en/download/
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://download.kde.org/stable/kdenlive/21.04/windows/kdenlive-21.04.2.exe" -O %temp%\Kdenlive.exe
"%temp%\Kdenlive.exe" /S
DEL /F /Q /A "%temp%\Kdenlive.exe"
goto menu 

:Krita
cls
REM https://krita.org/en/download/krita-desktop/
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://download.kde.org/stable/krita/4.4.5/krita-x64-4.4.5-setup.exe" -O %temp%\Krita.exe
"%temp%\Krita.exe" /S
DEL /F /Q /A "%temp%\Krita.exe" 
goto menu

:formatfactory
cls
Rem http://www.pcfreetime.com/formatfactory/index.php?language=tr
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "http://public.pcfreetime.com/FFSetup5.7.5.0.exe" -O %temp%\FormatFactory.exe 
"%temp%\FormatFactory.exe" /S
DEL /F /Q /A "%temp%\FormatFactory.exe"
goto menu 

:notepad
cls
Rem https://notepad-plus-plus.org/downloads/
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1.1/npp.8.1.1.Installer.x64.exe" -O %temp%\Notepad.exe
"%temp%\Notepad.exe" /S
DEL /F /Q /A "%temp%\Notepad.exe"
goto menu 

:hibit
cls
Rem http://www.hibitsoft.ir/Uninstaller.html
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "http://www.hibitsoft.ir/HiBitUninstaller/HiBitUninstaller-setup-2.6.15.exe" -O %temp%\Hibit.exe
"%temp%\Hibit.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\Hibit.exe"
goto menu

:stellarium
cls
Rem https://stellarium.org/
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://github.com/Stellarium/stellarium/releases/download/v0.21.1/stellarium-0.21.1-win64.exe" -O %temp%\Stellarium.exe
"%temp%\Stellarium.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\Stellarium.exe"
goto menu 

:obs
cls
Rem https://obsproject.com/tr/download
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-27.0.1-Full-Installer-x64.exe" -O %temp%\OBS.exe
"%temp%\OBS.exe" /S
DEL /F /Q /A "%temp%\OBS.exe"
goto menu 

:msiafterburner
cls
REM https://www.msi.com/Landing/afterburner/graphics-cards
mode con cols=109 lines=30
echo Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. 
wget --no-check-certificate "https://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip?__token__=exp=1626139284~acl=/*~hmac=f22735537f22936b9674517a927e01e3db143685c026b2c3bd566bd5bf050745" -O %temp%\MSIAfterburner.zip
powershell -command "Expand-Archive -Force '%temp%\MSIAfterburner.zip' '%temp%\msi'" 
for /f %%i in ('"dir /b %temp%\msi\*"') do "%temp%\msi\%%i" /S
RD /S /Q "msi"
DEL /F /Q /A "MSIAfterburner.zip"
goto menu 

:klite
cls
Rem https://codecguide.com/download_k-lite_codec_pack_mega.htm
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://files2.codecguide.com/K-Lite_Codec_Pack_1630_Mega.exe" -O %temp%\Klite.exe 
"%temp%\Klite.exe" /verysilent
DEL /F /Q /A "%temp%\Klite.exe"
goto menu 

:vlcmediaplayer
cls
Rem https://www.videolan.org/vlc/download-windows.tr.html
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://mirrors.netix.net/vlc/vlc/3.0.16/win32/vlc-3.0.16-win32.exe" -O %temp%\VLCMediaPlayer.exe
"%temp%\VLCMediaPlayer.exe" /L=1055 /S 
DEL /F /Q /A "%temp%\VLCMediaPlayer.exe"
goto menu 

:libreoffice
cls
Rem https://tr.libreoffice.org/indir/libreoffice-taze-surum/
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://ftp.linux.org.tr/tdf/libreoffice/stable/7.2.1/win/x86_64/LibreOffice_7.2.1_Win_x64.msi" -O %temp%\LibreOffice.msi 
"%temp%\LibreOffice.msi" /qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL
DEL /F /Q /A "%temp%\LibreOffice.msi"
goto menu 

:7zip
cls
REM https://www.7-zip.org/
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://www.7-zip.org/a/7z2102-x64.exe" -O %temp%\7-Zip.exe
"%temp%\7-Zip.exe" /S
DEL /F /Q /A "%temp%\7-Zip.exe"
goto menu 

:gameloop
cls
REM https://gameloop.mobi/
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://s.gameloop.fun/k_pack_up/16900/b6796309/GLP_installer_1000218944_market.exe" -O %systemdrive%\users\%username%\Desktop\Gameloop.7.1.exe
goto menu 

:edge
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2fa04572-8170-4fcd-85a7-3530762cc91a/MicrosoftEdgeEnterpriseX64.msi" -O %temp%\edge.msi
"%temp%\edge.msi" /qn
DEL /F /Q /A "%temp%\edge.msi"
goto menu

:teamviewer
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe" -O %temp%\TeamViewer.exe
"%temp%\TeamViewer.exe" /S
DEL /F /Q /A "%temp%\TeamViewer.exe"
goto menu

:calibre
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://calibre-ebook.com/dist/win64" -O %temp%\Calibre.msi
"%temp%\Calibre.msi" /qn
DEL /F /Q /A "%temp%\Calibre.msi"
goto menu

:taskbarx
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
mode con cols=109 lines=30
wget --no-check-certificate "https://github.com/ChrisAnd1998/TaskbarX/releases/download/1.6.9.0/TaskbarX_1.6.9.0_x64.zip" -O %temp%\TaskbarX.zip
powershell -command "Expand-Archive -Force '%temp%\TaskbarX.zip' '%programfiles%\TaskbarX'" 
DEL /F /Q /A "%temp%\TaskbarX.zip"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "TaskbarX" /t REG_SZ /d "C:\Program Files\TaskbarX\TaskbarX.exe" /f 
start cmd /c "%systemdrive%\Program Files\TaskbarX\TaskbarX Configurator.exe"& start cmd /c "%systemdrive%\Program Files\TaskbarX\TaskbarX.exe"
cmd /c start %systemdrive%\Program Files\TaskbarX\TaskbarX.exe
goto tasklnk

:tasklnk
cls
SETLOCAL ENABLEDELAYEDEXPANSION
SET LinkName=TaskbarX
SET Esc_LinkDest=%%HOMEDRIVE%%\Users\%username%\AppData\Roaming\OpenShell\Pinned\!LinkName!.lnk 
SET Esc_LinkTarget=%%HOMEDRIVE%%\Program Files\TaskbarX\TaskbarX Configurator.exe
SET cSctVBS=CreateShortcut.vbs
(
  echo Set oWS = WScript.CreateObject^("WScript.Shell"^) 
  echo sLinkFile = oWS.ExpandEnvironmentStrings^("!Esc_LinkDest!"^)
  echo Set oLink = oWS.CreateShortcut^(sLinkFile^) 
  echo oLink.TargetPath = oWS.ExpandEnvironmentStrings^("!Esc_LinkTarget!"^)
  echo oLink.Save
)1>!cSctVBS!
cscript //nologo .\!cSctVBS!
DEL !cSctVBS! /f /q 

goto menu

:discord
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86" -O %temp%\Discord.exe 
"%temp%\Discord.exe" -s
DEL /F /Q /A "%temp%\Discord.exe"
goto menu 

:whatsapp
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://web.whatsapp.com/desktop/windows/release/x64/WhatsAppSetup.exe" -O %temp%\WhatsApp.exe 
"%temp%\WhatsApp.exe" --silent
DEL /F /Q /A "%temp%\WhatsApp.exe"
goto menu 

:epicgames
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi"  -O %temp%\EpicGames.msi
"%temp%\EpicGames.msi" /qn /norestart
DEL /F /Q /A "%temp%\EpicGames.msi"
goto menu 

:steam
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe" -O %temp%\Steam.exe
"%temp%\Steam.exe" /S
DEL /F /Q /A "%temp%\Steam.exe"
goto menu 

:ligthshoot
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://app.prntscr.com/build/setup-lightshot.exe" -O %temp%\LightShoot.exe
"%temp%\LightShoot.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\LightShoot.exe"
goto menu 

:glasswire
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://download.glasswire.com/GlassWireSetup.exe" -O %temp%\GlassWire.exe
"GlassWire.exe" /S
DEL /F /Q /A "%temp%\GlassWire.exe"
goto menu 
 
:freedownloadmanager
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://dn3.freedownloadmanager.org/6/latest/fdm_x64_setup.exe" -O %temp%\FreeDownloadManager.exe
"%temp%\FreeDownloadManager.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\FreeDownloadManager.exe" 
goto menu 

:uplay
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://ubi.li/4vxt9" -O %temp%\Uplay.exe
"%temp%\Uplay.exe" /S
DEL /F /Q /A "%temp%\Uplay.exe"
goto menu 

:byclick
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://proxy.byclickdownloader.com/ExternalSetup/InstallPage/ByClickDownloader-Setup.exe" -O %temp%\ByClick.exe
"%temp%\ByClick.exe" /q
DEL /F /Q /A "%temp%\ByClick.exe"
goto menu 

:stremio
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://www.strem.io/download?platform=windows&four=true" -O %temp%\Stremio.exe
"%temp%\Stremio.exe" /S
DEL /F /Q /A "%temp%\Stremio.exe"
goto menu 

:cheatengine
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://d7qe0znl1rfet.cloudfront.net/installer/56777815/563516629851190531" -O %temp%\CheatEngine.exe
"%temp%\CheatEngine.exe" /SILENT
DEL /F /Q /A "%temp%\CheatEngine.exe"
goto menu

:hamachi
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://secure.logmein.com/hamachi.msi" -O %temp%\Hamachi.msi
"%temp%\Hamachi.msi" /q
DEL /F /Q /A "%temp%\Hamachi.msi"
goto menu 

:skype
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://go.skype.com/skype.download" -O %temp%\Skype.exe
"%temp%\Skype.exe" /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /DL=1
DEL /F /Q /A "%temp%\Skype.exe"
goto menu 

:telegram
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://telegram.org/dl/desktop/win64" -O %temp%\Telegram.exe
"%temp%\Telegram.exe" /VERYSILENT /NORESTART
DEL /F /Q /A "%temp%\Telegram.exe"
goto menu 

:teams
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://go.microsoft.com/fwlink/p/?LinkID=869426&clcid=0x41f&culture=tr-tr&country=TR&lm=deeplink&lmsrc=groupChatMarketingPageWeb&cmpid=directDownloadWin64" -O %temp%\Teams.exe 
"%temp%\Teams.exe" -s
DEL /F /Q /A "%temp%\Teams.exe"
goto menu 

:gog
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://webinstallers.gog-statics.com/download/GOG_Galaxy_2.0.exe?payload=vBHxnukauGRfLyqON91ouUWmmJ2uINAzGQMvB0OIIjUzcCDHmQOjhoEpEJ3ye8c3vY4sODIdCPEWQPM7enms9H7qtvxGImIMyMSUvPqLzO4mOPUkTKqgHm4Jcryp9lkmjZ4KibSS05WQDzXodBUPxSUY7QkNezVZsljxqDjcrwWHR-OC3eowvpAM055o5mI3B-v5W37HB-hSSfEWq9JbABwi3nvQUlwGUIdPBLAnwYCZ_-4o2F7Kxf2t9bpyd7v3Ty51w30HALRQttx8-uX4sY8IOxq5KSroVG-w9Ho3AOfDmC5CNCruP3gXEihqxq7zbnqJ1Ksrt6vx7JsTseMICNsahbb5PFDGqQLdcfqH5ozpPgmvSdpQBmU26RRk68O9eAuHxGrkLoJDKwyd5kEmMENrnwlvgHV-XvXpLdv531bcKiamiIa1Oyc9n_Dekuz9TF1H-CYfUb5fMNxDRXprr-AWPKFahe6Q0KPc4Gy2GIeT4smJK06mbDUysvMyuh2y-6s_5-uHqxLPqDxVzr6QGWN14dJ0mjNp7Preyp4xyZlTiq5AaWfhvlqrbi_xSLygff-ALvhVLdRHDwz9GAic7blp-pEQSK4mozU6iXLmmQCbsuNCcPcvwVMUdsiu8J1BqL93c6cvnspgxIfiGWfYIRc25AupfznCm6Lxwn6-PxGKgCvSl-HSvJgsrTnSJMADZtvGPsNu8imIOMeciLICRmvkdEFKRdyGKveF--9PUnjOVCsy6sxSmW5UnkITzpBjUisJjyUccnt-zJiweAfX" -O %temp%\GOG.exe 
"%temp%\GOG.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\GOG.exe"
goto menu 

:origin
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://download.dm.origin.com/origin/live/OriginSetup.exe" -O %temp%\Origin.exe
"%temp%\Origin.exe" /SILENT
DEL /F /Q /A "%temp%\Origin.exe"
goto menu 

:wemod
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://api.wemod.com/client/download" -O %temp%\Wemod.exe
"%temp%\Wemod.exe" --silent
DEL /F /Q /A "%temp%\Wemod.exe"
goto menu 

:aimp
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://www.aimp.ru/?do=download.file&id=4" -O %temp%\Aimp.exe
"%temp%\Aimp.exe" /AUTO /SILENT
DEL /F /Q /A "%temp%\Aimp.exe"
goto menu 

:openshell
cls
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://github.com/Open-Shell/Open-Shell-Menu/releases/download/v4.4.160/OpenShellSetup_4_4_160.exe" -O %temp%\OpenShell.exe
"%temp%\OpenShell.exe" /quiet /norestart ADDLOCAL=StartMenu
DEL /F /Q /A "%temp%\OpenShell.exe"
goto openshellayar

:openshellayar
cls
mode con cols=109 lines=30
for /f "tokens=* USEBACKQ" %%i in (`wmic useraccount where "name="%username%"" get sid ^| findstr "S-"`) do set currentusername=%%i
set currentusername=%currentusername:~0,-3%
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell" /t REG_SZ /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\OpenShell" /t REG_SZ /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\OpenShell\Settings" /t REG_SZ /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu" /t REG_SZ /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /t REG_SZ /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\ClassicExplorer" /t REG_SZ /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\ClassicExplorer\Settings" /t REG_SZ /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\ClassicExplorer" /v "ShowedToolbar" /t REG_DWORD /d 1 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\ClassicExplorer" /v "NewLine" /t REG_DWORD /d 0 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\ClassicExplorer\Settings" /v "ShowStatusBar" /t REG_DWORD /d 0 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu" /v "ShowedStyle2" /t REG_DWORD /d 1 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu" /v "CSettingsDlg" /t REG_BINARY /d c80100001a0100000000000000000000360d00000100000000000000 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu" /v "OldItems" /t REG_BINARY /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu" /v "ItemRanks" /t REG_BINARY /d 0 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\MRU" /v "0" /t REG_SZ /d "C:\Windows\regedit.exe" /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "Version" /t REG_DWORD /d 04040098 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "AllProgramsMetro" /t REG_DWORD /d 1 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "RecentMetroApps" /t REG_DWORD /d 1 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "StartScreenShortcut" /t REG_DWORD /d 0 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "SearchInternet" /t REG_DWORD /d 0 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "GlassOverride" /t REG_DWORD /d 1 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "GlassColor" /t REG_DWORD /d 0 /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkinW7" /t REG_SZ /d "Midnight" /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkinVariationW7 /t REG_SZ /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkinOptionsW7" /t REG_MULTI_SZ /d "USER_IMAGE=1"\0"SMALL_ICONS=0"\0"LARGE_FONT=0"\0"DISABLE_MASK=0"\0"OPAQUE=0"\0"TRANSPARENT_LESS=0"\0"TRANSPARENT_MORE=1"\0"WHITE_SUBMENUS2=0" /f > NUL 2>&1
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "SkipMetro" /t REG_DWORD /d 1 /f > NUL 2>&1
goto menu

:reader
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/1900820071/AcroRdrDC1900820071_tr_TR.exe" -O %temp%\AdobeReader.exe
"%temp%\AdobeReader.exe" /sPB /rs /msi 
DEL /F /Q /A "%temp%\AdobeReader.exe"
goto menu 

:freedownloadmanager
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://dn3.freedownloadmanager.org/6/latest/fdm_x64_setup.exe" -O %temp%\FreeDownloadManager.exe
"%temp%\FreeDownloadManager.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- 
DEL /F /Q /A "%temp%\FreeDownloadManager.exe"
goto menu 

:unlocker
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://cdn.iobit.com/dl/unlocker-setup.exe" -O %temp%\Unlocker.exe
"%temp%\Unlocker.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\Unlocker.exe"
goto menu 

:stremio
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://www.strem.io/download?four=4" -O %temp%\Stremio.exe
"%temp%\Stremio.exe" /S
DEL /F /Q /A "%temp%\Stremio.exe"
goto menu 

:ssdfresh
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://www.abelssoft.de/ssdfreshsetup.exe" -O %temp%\SSDFresh.exe
"%temp%\SSDFresh.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\SSDFresh.exe"
goto menu 

:brave
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://brave-browser-downloads.s3.brave.com/latest/brave_installer-x64.exe" -O %temp%\Brave.exe
"%temp%\Brave.exe" --install --silent --system-level
DEL /F /Q /A "%temp%\Brave.exe"
goto menu 

:mozilla
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=tr" -O %temp%\Firefox.exe
"%temp%\Firefox.exe" /S
DEL /F /Q /A "%temp%\Firefox.exe"
goto menu 

:chrome
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://dl.google.com/tag/s/appguid%253D%257B8A69D345-D564-463C-AFF1-A69D9E530F96%257D%2526iid%253D%257BBEF3DB5A-5C0B-4098-B932-87EC614379B7%257D%2526lang%253Den%2526browser%253D4%2526usagestats%253D1%2526appname%253DGoogle%252520Chrome%2526needsadmin%253Dtrue%2526ap%253Dx64-stable-statsdef_1%2526brand%253DGCEB/dl/chrome/install/GoogleChromeEnterpriseBundle64.zip?_ga%3D2.8891187.708273100.1528207374-1188218225.1527264447" -O %temp%\Chrome.zip
powershell -command "Expand-Archive -Force '%temp%\chrome.zip' '%temp%\chrome'" 
"%temp%\chrome\Installers\GoogleChromeStandaloneEnterprise64.msi" /qn
DEL /F /Q /A "%temp%\chrome.zip"
RD /S /Q "%temp%\chrome"
goto menu 

:blitz
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://blitz.gg/download/win" -O %temp%\Blitz.exe
"%temp%\Blitz.exe" /S
DEL /F /Q /A "%temp%\Blitz.exe"
goto menu 

:paint
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://win7games.com/download/ClassicPaintforWindows10.zip" -O %temp%\Paint.zip
powershell -command "Expand-Archive -Force '%temp%\Paint.zip' '%temp%'" 
"%temp%\ClassicPaint-1.0-setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\Paint.zip" "%temp%\ClassicPaint-1.0-setup.exe"
goto menu 

:leagueoflegends
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.tr.exe" -O %systemdrive%\users\%username%\Desktop\League.Of.Legends.exe
goto menu 

:calculator
cls
mode con cols=109 lines=30
echo   %ESC%[92m Ltfen bekleyin... Kurulum tamamlandktan sonra menye aktarlacaksnz. %ESC%[0m
wget --no-check-certificate "https://win7games.com/download/oldcalcwin10.zip" -O %temp%\Hesap.Makinesi.zip
powershell -command "Expand-Archive -Force '%temp%\Hesap.Makinesi.zip' '%temp%'" 
"%temp%\Old Calculator for Windows 10.exe" /S
DEL /F /Q /A "%temp%\Old Calculator for Windows 10.exe" "%temp%\Hesap.Makinesi.zip"
goto calculatorlnk

:calculatorlnk
cls
mode con cols=109 lines=30
SETLOCAL ENABLEDELAYEDEXPANSION
SET LinkName=HesapMakinesi
SET Esc_LinkDest=%%HOMEDRIVE%%%%HOMEPATH%%\Desktop\!LinkName!.lnk
SET Esc_LinkTarget=%%SYSTEMROOT%%\System32\calc1.exe
SET cSctVBS=CreateShortcut.vbs
SET LOG=".\%~N0_runtime.log"
((
  echo Set oWS = WScript.CreateObject^("WScript.Shell"^) 
  echo sLinkFile = oWS.ExpandEnvironmentStrings^("!Esc_LinkDest!"^)
  echo Set oLink = oWS.CreateShortcut^(sLinkFile^) 
  echo oLink.TargetPath = oWS.ExpandEnvironmentStrings^("!Esc_LinkTarget!"^)
  echo oLink.Save
)1>!cSctVBS!
cscript //nologo .\!cSctVBS!
DEL !cSctVBS! /f /q
)1>>!LOG! 2>>&1
goto menu 

:aio
cls
mode con cols=109 lines=45
echo   %ESC%[92m Microsoft Visual C++ 2005 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/6/B/B/6BB661D6-A8AE-4819-B79F-236472F6070C/vcredist_x86.exe" -O %temp%\05x86ATL.exe
wget --no-check-certificate "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE" -O %temp%\05x86MFC.exe
echo   %ESC%[92m Microsoft Visual C++ 2005 x86 kuruluyor...%ESC%[0m
"%temp%\05x86ATL.exe" /Q
"%temp%\05x86MFC.exe" /Q
DEL /F /Q /A "%temp%\05x86ATL.exe"
DEL /F /Q /A "%temp%\05x86MFC.exe"
echo   %ESC%[92m Microsoft Visual C++ 2005 x86 kurulum tamamland...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2005 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/6/B/B/6BB661D6-A8AE-4819-B79F-236472F6070C/vcredist_x64.exe" -O %temp%\05x64ATL.exe
wget --no-check-certificate "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE" -O %temp%\05x64MFC.exe
echo   %ESC%[92m Microsoft Visual C++ 2005 x64 kuruluyor...%ESC%[0m
"%temp%\05x64ATL.exe" /Q
"%temp%\05x64MFC.exe" /Q
DEL /F /Q /A "%temp%\05x64ATL.exe"
DEL /F /Q /A "%temp%\05x64MFC.exe"
echo   %ESC%[92m Microsoft Visual C++ 2005 x64 kurulum tamamland...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2008 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/9/7/7/977B481A-7BA6-4E30-AC40-ED51EB2028F2/vcredist_x86.exe" -O %temp%\08x86ATL.exe
wget --no-check-certificate "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe" -O %temp%\08x86MFC.exe
echo   %ESC%[92m Microsoft Visual C++ 2008 x86 kuruluyor...%ESC%[0m
"%temp%\08x86ATL.exe" /q
"%temp%\08x86MFC.exe" /q
DEL /F /Q /A "%temp%\08x86ATL.exe"
DEL /F /Q /A "%temp%\08x86MFC.exe"
echo   %ESC%[92m Microsoft Visual C++ 2008 x86 kurulum tamamland...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2008 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/9/7/7/977B481A-7BA6-4E30-AC40-ED51EB2028F2/vcredist_x64.exe" -O %temp%\08x64ATL.exe
wget --no-check-certificate "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe" -O %temp%\08x64MFC.exe
echo   %ESC%[92m Microsoft Visual C++ 2008 x64 kuruluyor...%ESC%[0m
"%temp%\08x64ATL.exe" /q
"%temp%\08x64MFC.exe" /q
DEL /F /Q /A "%temp%\08x64ATL.exe"
DEL /F /Q /A "%temp%\08x64MFC.exe"
echo   %ESC%[92m Microsoft Visual C++ 2008 x64 kurulum tamamland...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2010 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe" -O %temp%\10x86.exe
echo   %ESC%[92m Microsoft Visual C++ 2010 x86 kuruluyor...%ESC%[0m
"%temp%\10x86.exe" /q /norestart
DEL /F /Q /A "%temp%\10x86.exe"
echo   %ESC%[92m Microsoft Visual C++ 2010 x86 kurulum tamamland...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2010 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe" -O %temp%\10x64.exe
echo   %ESC%[92m Microsoft Visual C++ 2010 x64 kuruluyor...%ESC%[0m
"%temp%\10x64.exe" /q /norestart
DEL /F /Q /A "%temp%\10x64.exe"
echo   %ESC%[92m Microsoft Visual C++ 2010 x64 kurulum tamamland...%ESC%[0m
echo    Microsoft Visual C++ 2010 x64 kurulum tamamland...
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2012 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe" -O %temp%\12x86.exe
echo   %ESC%[92m Microsoft Visual C++ 2012 x86 kuruluyor...%ESC%[0m
"%temp%\12x86.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\12x86.exe"
echo   %ESC%[92m Microsoft Visual C++ 2012 x86 kurulum tamamland...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2012 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe" -O %temp%\12x64.exe
echo   %ESC%[92m Microsoft Visual C++ 2012 x64 kuruluyor...%ESC%[0m
"%temp%\12x64.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\12x64.exe"
echo   %ESC%[92m Microsoft Visual C++ 2012 x64 kurulum tamamland...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2013 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe" -O %temp%\13x86.exe
echo   %ESC%[92m Microsoft Visual C++ 2013 x86 kuruluyor...%ESC%[0m
"%temp%\13x86.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\13x86.exe"
echo   %ESC%[92m Microsoft Visual C++ 2013 x86 kurulum tamamland...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2013 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe" -O %temp%\13x64.exe
echo   %ESC%[92m Microsoft Visual C++ 2013 x64 kuruluyor...%ESC%[0m
"%temp%\13x64.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\13x64.exe"
echo   %ESC%[92m Microsoft Visual C++ 2013 x64 kurulum tamamland...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2015 / 2017 / 2019 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://aka.ms/vs/16/release/vc_redist.x86.exe" -O %temp%\15x86.exe
echo   %ESC%[92m Microsoft Visual C++ 2015-2019 x86 kuruluyor...%ESC%[0m
"%temp%\15x86.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\15x86.exe"
echo   %ESC%[92m Microsoft Visual C++ 2015 / 2017 / 2019 x86 kurulum tamamland...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Visual C++ 2015-2019 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://aka.ms/vs/16/release/vc_redist.x64.exe" -O %temp%\15x64.exe
echo   %ESC%[92m Microsoft Visual C++ 2015-2019 x86 kuruluyor...%ESC%[0m
"%temp%\15x64.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\15x64.exe"
echo   %ESC%[92m Microsoft Visual C++ 2015 / 2017 /2019 x64 kurulum tamamland...%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Silverlight indiriliyor...%ESC%[0m
wget --no-check-certificate "http://go.microsoft.com/fwlink/?LinkID=229321" -O %temp%\silverlight.exe
echo   %ESC%[92m Microsoft Silverlight kuruluyor...%ESC%[0m
"%temp%\silverlight.exe" /q /noupdate /ignorewarnings /doNotRequireDRMPrompt
DEL /F /Q /A "%temp%\silverlight.exe"
REG ADD "HKLM\SOFTWARE\Microsoft\Silverlight" /v UpdateConsentMode /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Silverlight" /v UpdateMode /t REG_DWORD /d 2 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Microsoft\Silverlight" /v UpdateConsentMode /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Microsoft\Silverlight" /v UpdateMode /t REG_DWORD /d 2 /f
REG ADD "HKCU\Software\Microsoft\Silverlight" /v UpdateMode /t REG_DWORD /d 2 /f
echo   %ESC%[92m Microsoft Silverlight kurulum tamamland.%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Java x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=244584_d7fc238d0cbf4b0dac67be84580cfb4b" -O %temp%\javax64.exe
echo   %ESC%[92m Java x64 kuruluyor...%ESC%[0m
"%temp%\javax64" INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable
DEL /F /Q /A "%temp%\javax64"
echo   %ESC%[92m Java x64 kurulum tamamland.%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft XNA Framework 4.0 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/A/C/2/AC2C903B-E6E8-42C2-9FD7-BEBAC362A930/xnafx40_redist.msi" -O %temp%\xnafx40.msi
echo   %ESC%[92m Microsoft XNA Framework 4.0 kuruluyor...%ESC%[0m
"%temp%\xnafx40.msi" /qn
DEL /F /Q /A "%temp%\xnafx40.msi"
echo   %ESC%[92m Microsoft XNA Framework 4.0 kurulum tamamland.%ESC%[0m
echo   =====================================================
echo   %ESC%[92m OpenAL indiriliyor...%ESC%[0m 
wget --no-check-certificate "https://openal.org/downloads/oalinst.zip" -O %temp%\oal.zip 
echo   %ESC%[92m OpenAL kuruluyor...%ESC%[0m
powershell -command "Expand-Archive -Force '%temp%\oal.zip' '%temp%'" 
"%temp%\oalinst.exe" /SILENT
DEL /F /Q /A "%temp%\oal.zip"
DEL /F /Q/ A "%temp%\oalinst.exe"
echo   %ESC%[92m OpenAL kurulum tamamland.%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x64 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.visualstudio.microsoft.com/download/pr/2b83d30e-5c86-4d37-a1a6-582e22ac07b2/c7b1b7e21761bbfb7b9951f5b258806e/windowsdesktop-runtime-5.0.7-win-x64.exe" -O %temp%\Desktop5x64.exe
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x64 kuruluyor...%ESC%[0m
"%temp%\Desktop5x64.exe" /q /norestart
DEL /F /Q /A "%temp%\Desktop5x64.exe"
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x64 kurulum tamamland.%ESC%[0m
echo   =====================================================
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x86 indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.visualstudio.microsoft.com/download/pr/c8af603e-ef3d-4bf3-89b9-f11dce1c2fc9/d416996ef55aa134b8aba565685d1ed2/windowsdesktop-runtime-5.0.7-win-x86.exe" -O %temp%\Desktop5x86.exe
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x86 kuruluyor...%ESC%[0m
"%temp%\Desktop5x86.exe" /q /norestart
DEL /F /Q /A "%temp%\Desktop5x86.exe"
echo   %ESC%[92m Microsoft Windows Desktop Runtime 5.0 x86 kurulum tamamland.%ESC%[0m
echo   =====================================================
echo   %ESC%[92m DirectX indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.microsoft.com/download/1/7/1/1718CCC4-6315-4D8E-9543-8E28A4E18C4C/dxwebsetup.exe" -O %temp%\Directx.exe
echo   %ESC%[92m DirectX kuruluyor...%ESC%[0m
"%temp%\Directx.exe" /Q
DEL /F /Q /A "%temp%\Directx.exe"
echo   %ESC%[92m DirectX kurulum tamamland.%ESC%[0m
echo   %ESC%[92m All in One Runtimes kurulumu tamamland. Anamenye aktarlyorsunuz...%ESC%[0m
timeout /t 5 /nobreak
goto menu

:winrepair
cls
mode con cols=80 lines=30
title OgnitorenKs / Windows Repair 

echo %ESC%[92m Windows Onarlyor...%ESC%[0m

sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth

echo %ESC%[92m ˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto menu

:winrepair
cls
mode con cols=80 lines=30
title OgnitorenKs / Windows Repair 

echo %ESC%[92m Windows Onarlyor...%ESC%[0m

sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth

echo %ESC%[92m ˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto menu

:arindir
cls
title PC Cleaner / OgnitorenKs
mode con cols=109 lines=43
echo %ESC%[92m Olay gnl§ temizleniyor%ESC%[0m
powershell -command "wevtutil el | Foreach-Object {wevtutil cl "$_"}"

echo %ESC%[92m Eski tarihli dosya ge‡miŸi temizleniyor...%ESC%[0m
FhManagew.exe -cleanup 360 -quiet

echo %ESC%[92m WinSxS temizleniyor...%ESC%[0m
dism.exe /Online /Cleanup-Image /StartComponentCleanup

echo %ESC%[92m Disk temizleme iŸlemi yaplyor... ˜Ÿlem sonunda uyar verecek.%ESC%[0m
cleanmgr.exe /VERYLOWDISK/dc

echo %ESC%[92m ico ve k‡k resim belle§i temizleniyor...%ESC%[0m
taskkill /f /IM explorer.exe
CD /d %userprofile%\AppData\Local\Microsoft\Windows
del /f /s /q Explorer\*.*
Start explorer.exe

echo %ESC%[92m Temp dosyas temizleniyor...%ESC%[0m
del /q/f/s %TEMP%\*

echo %ESC%[92m SoftwareDistribution temizleniyor...%ESC%[0m
net stop wuauserv
del /q/f/s %windir%\SoftwareDistribution\*
net start wuauserv

echo %ESC%[92m Prefetch temizleniyor...%ESC%[0m
del /q/f/s %windir%\prefetch\*

echo %ESC%[92m Windows tarafndan oluŸturulan ‡”p dosyalar temizleniyor...%ESC%[0m
del /q/f/s %windir%\temp\*

echo %ESC%[92m Adobe Reader kalntlar temizleniyor...%ESC%[0m
del /q/f/s %localappdata%\Adobe\Acrobat\DC\Cache\*
del /q/f/s %localappdata%\Adobe\Acrobat\DC\*.lst

echo %ESC%[92m Steam ”nbelli§i temizleniyor...%ESC%[0m
del /q/f/s %localappdata%\Steam\Logs\*

echo %ESC%[92m Microsoft Edge ”nbelle§i temizleniyor...%ESC%[0m
del /q/f/s %programfiles(x86)%\Microsoft\Edge\User Data\Default\Cache\*
del /q/f/s %localappdata%\Microsoft\Edge\User Data\Default\Service Worker\CacheStorage\*

echo %ESC%[92m AMD Driver Kalntlar temizleniyor...%ESC%[0m
RD /S /Q %systemdrive%\AMD

echo %ESC%[92m Sistem Log Dosyalar siliniyor...%ESC%[0m
del /q/f/s %windir%\System32\LogFiles\*

echo %ESC%[92m Yaz tipi ”nbelli§i siliniyor...%ESC%[0m
del /q/f/s %windir%\System32\FNTCACHE.DAT

echo %ESC%[92m Windows Sistem ™nbelli§i temizleniyor...%ESC%[0m
del /q/f/s %windir%\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*

echo %ESC%[92m Windows Ykleyici ™nbelli§i temizleniyor...%ESC%[0m
del /q/f/s %windir%\Installer\$PatchCache$\Managed\*

echo %ESC%[92m Uygulamalar tarafndan oluŸturulan kalntlar temizleniyor...%ESC%[0m
del /q/f/s %localappdata%\Temp\*

echo %ESC%[92m Hata Raporu Dosyalar temizleniyor...%ESC%[0m
del /q/f/s %programdata%\Microsoft\Windows\WER\ReportQueue\*

echo %ESC%[92m Mozilla Firefox kalntlar temizleniyor...%ESC%[0m
del /q/f/s %localappdata%\Mozilla\Firefox\Profiles\bmuoeymu.default-release\cache2\*
del /q/f/s %localappdata%\Mozilla\Firefox\Profiles\bmuoeymu.default-release\Mozilla\Firefox\Profiles\bmuoeymu.default-release\startupCache\*
del /q/f/s %homepath%\AppData\Roaming\Mozilla\Firefox\Profiles\bmuoeymu.default-release\shader-cache\*

echo %ESC%[92m ˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto menu 

:yazicionar
cls
mode con cols=80 lines=30
title OgnitorenKs / Yazc Hizmetleri 

echo %ESC%[92m Yazc hizmetleri a‡lyor...%ESC%[0m

net start Spooler
sc config "Spooler" Start=auto
net stop PrintNotify
sc config "PrintNotify" start=auto
DEL /F /Q /A "%windir%\System32\spool\PRINTERS\*"

echo %ESC%[92m ˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto menu

:laptopservis
cls
mode con cols=80 lines=30
title OgnitorenKs / Bluetooth - Wifi Enabled

echo %ESC%[92m Bluetooth - Wifi hizmetleri kapatlyor...%ESC%[0m

net start AJRouter
sc config "AJRouter" start=manuel
net start BthAvctpSvc
sc config "BthAvctpSvc" start=manuel
net start bthserv
sc config "bthserv" start=manuel
net start BluetoothUserService
sc config "BluetoothUserService" start=manuel
net start BTAGService
sc config "BTAGService" start=manuel
net start TrkWks
sc config "TrkWks" start=manuel
net start iphlpsvc
sc config "iphlpsvc" start=manuel
net start IpxlatCfgSvc
sc config "IpxlatCfgSvc" start=manuel
net start WebClient
sc config "WebClient" start=manuel
net start icssvc
sc config "icssvc" start=manuel
net start wcncsvc
sc config "wcncsvc" start=manuel
net start WMPNetworkSvc
sc config "WMPNetworkSvc" start=manuel
net start SharedAccess
sc config "SharedAccess" start=manuel
net start PeerDistSvc
sc config "PeerDistSvc" start=manuel

echo %ESC%[92m ˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto menu

:microsoftstoremenu
cls 
title  OgnitorenKs / Microsoft Store
mode con cols=54 lines=20
echo   ==================================================
echo             %ESC%[7mOgnitorenKs / Microsoft Store%ESC%[0m 
echo   ================================================== 
echo       %ESC%[92m 1.%ESC%%ESC%[33m Market Ekle (Basit)%ESC%[0m
echo       %ESC%[92m 2.%ESC%%ESC%[33m Market Ekle (Zor)%ESC%[0m
echo       %ESC%[92m 3.%ESC%%ESC%[33m Market Kaldr%ESC%[0m
echo       %ESC%[92m 4.%ESC%%ESC%[33m Ana Men%ESC%[0m
echo       %ESC%[92m 0.%ESC%%ESC%[91m €kŸ%ESC%[0m
echo   ==================================================    
set /p microsoftstoremenu=%ESC%[92m  Yapmak istedi§iniz iŸlem : %ESC%[0m
	if %microsoftstoremenu%==1 GOTO storeinstaller
	if %microsoftstoremenu%==2 GOTO deletee
	if %microsoftstoremenu%==3 GOTO storeuninstall
	if %microsoftstoremenu%==4 GOTO menu
	if %microsoftstoremenu%==0 GOTO exit
else
	goto microsoftstoremenu

:storeuninstall
cls
title Microsoft Store Uninstall / OgnitorenKs
mode con cols=109 lines=35
echo  %ESC%[91mUYARI:%ESC%%ESC%[37m Market uygulamasna ba§l uygulamalar da kaldrlacak.%ESC%[0m                    
echo                                                                                     
echo                                                                                     
echo                                                                                     
set /p storeuninstall=%ESC%[91m Microsoft Store uygulamas kaldrlyor, iŸleme devam etmek istiyormusunuz?%ESC%%ESC%[92m[E/H] : %ESC%[0m
	if %storeuninstall%==H goto microsoftstoremenu
	if %storeuninstall%==h goto microsoftstoremenu
	
echo %ESC%[92m Microsoft Store siliniyor...%ESC%[0m

powershell -command "Get-AppXPackage | Remove-AppxPackage"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC" /v "start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppXSvc" /v "start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\camsvc" /v "start" /t REG_DWORD /d 4 /f

net stop "StorSvc"
sc config "StorSvc" start= disabled   
net stop "ClipSVC"

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto microsoftstoremenu

:storeinstaller
cls
title Microsoft Store Install / OgnitorenKs
mode con cols=109 lines=35

echo %ESC%[92m Microsoft Store ykleniyor...%ESC%[0m

powershell -command "Add-AppxPackage -DisableDevelopmentMode -Register $Env:%windir%\SystemApps\*\AppxManifest.xml"

goto regreg

:deletee
cls
title Microsoft Store Uninstall / OgnitorenKs
mode con cols=109 lines=35
echo %ESC%[92m Microsoft Store Kaldrlyor...%ESC%[0m

PowerShell.exe -Command "Get-AppxPackage *windowsstore* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *VCLibs.140.00* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *.NET.Native.Framework.1.3* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *.NET.Native.Framework.1.6* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *.NET.Native.Framework.1.6* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *.NET.Native.Framework.1.7* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *.NET.Native.Framework.2.2* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *.NET.Native.Runtime.1.3* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *.NET.Native.Runtime.1.6* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *.NET.Native.Runtime.1.7* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *.NET.Native.Runtime.2.2* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *UI.Xaml.2.0* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *UI.Xaml.2.2* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *UI.Xaml.2.3* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *UI.Xaml.2.4* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *UI.Xaml.2.5* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *Microsoft.Advertising.Xaml* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *DesktopAppInstaller* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *Services.Store.Engagement* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *JavaScript* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage *LanguageExperiencePacktr-tr* | Remove-AppxPackage"

goto kontrol2

:kontrol2
cls

pushd "%~dp0"

cd %programfiles(x86)% > NUL 2>&1
	if %errorlevel%==0 GOTO x64
	if %errorlevel%==1 GOTO x32

:x32
cls
title Microsoft Store x86 Install / OgnitorenKs
mode con cols=109 lines=35
echo %ESC%[92m Microsoft Store ykleniyor...%ESC%[0m
for /f %%i in ('"cd"') do set cd=%%i 
for /f %%i in ('"dir /b x32\*"') do DISM /Online /Add-ProvisionedAppxPackage /PackagePath:%cd%\x32\%%i /SkipLicense
for /f %%i in ('"dir /b Ortak\*"') do DISM /Online /Add-ProvisionedAppxPackage /PackagePath:%cd%\Ortak\%%i /SkipLicense
goto regreg

:x64
cls
title Microsoft Store x64 Install / OgnitorenKs
mode con cols=109 lines=35
echo %ESC%[92m Microsoft Store ykleniyor...%ESC%[0m
for /f %%i in ('"cd"') do set cd=%%i
for /f %%i in ('"dir /b x32\*"') do DISM /Online /Add-ProvisionedAppxPackage /PackagePath:%cd%\x32\%%i /SkipLicense 
for /f %%i in ('"dir /b x64\*"') do DISM /Online /Add-ProvisionedAppxPackage /PackagePath:%cd%\x64\%%i /SkipLicense
for /f %%i in ('"dir /b Ortak\*"') do DISM /Online /Add-ProvisionedAppxPackage /PackagePath:%cd%\Ortak\%%i /SkipLicense
goto regreg

:regreg
cls
mode con cols=109 lines=35
echo %ESC%[92m Regedit dzenlemesi yaplyor...%ESC%[0m
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

echo %ESC%[92m Masastne Market ksayolu ekleniyor...%ESC%[0m
for /f %%i in ('"cd"') do set cd2=%%i
copy "%cd2%\Microsoft.Store.lnk" "%systemdrive%\Users\%username%\Desktop"

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

echo %ESC%[92m DLL dosyalar kontrol ediliyor...%ESC%[0m
regsvr32  softpub.dll /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  dssenh.dll /s&regsvr32  rsaenh.dll /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  slbcsp.dll /s&regsvr32  mssip32.dll /s&regsvr32  cryptdlg.dll /s&regsvr32  msxml3.dll /s&regsvr32  comcat.dll /s&Regsvr32  Msxml.dll /s&Regsvr32  Msxml2.dll /s&regsvr32  mshtml.dll /s&regsvr32  shdocvw.dll /s&regsvr32  browseui.dll /s&regsvr32  msjava.dll /s&regsvr32  shdoc401.dll /s&regsvr32  cdm.dll /s&regsvr32  shdoc401.dll /i /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  asctrls.ocx /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  softpub.dll /s&regsvr32  oleaut32.dll /s&regsvr32  shdocvw.dll /I /s&regsvr32  Shell32.dll /s&regsvr32  browseui.dll /s&regsvr32  browseui.dll /I /s&regsvr32  msrating.dll /s&regsvr32  mlang.dll /s&regsvr32  hlink.dll /s&regsvr32  mshtmled.dll /s&regsvr32  urlmon.dll /s&regsvr32  urlmon.dll /i /s&regsvr32  plugin.ocx /s&regsvr32  sendmail.dll /s&regsvr32  scrobj.dll /s&regsvr32  mmefxe.ocx /s&regsvr32  corpol.dll /s&regsvr32  jscript.dll /s&regsvr32  imgutil.dll /s&regsvr32  thumbvw.dll /s&regsvr32  cryptext.dll /s&regsvr32  rsabase.dll /s&regsvr32  inseng.dll /s&regsvr32  iesetup.dll /i /s&regsvr32  actxprxy.dll /s&regsvr32  dispex.dll /s&regsvr32  occache.dll /s&regsvr32  occache.dll /i /s&regsvr32  iepeers.dll /s&regsvr32  cdfview.dll /s&regsvr32  webcheck.dll /s&regsvr32  mobsync.dll /s&regsvr32  pngfilt.dll /s&regsvr32  licmgr10.dll /s
regsvr32  icmfilter.dll /s&regsvr32  hhctrl.ocx /s&regsvr32  inetcfg.dll /s&regsvr32  tdc.ocx /s&regsvr32  MSR2C.DLL /s&regsvr32  msident.dll /s&regsvr32  msieftp.dll /s&regsvr32  xmsconf.ocx /s&regsvr32  ils.dll /s&regsvr32  msoeacct.dll /s&regsvr32  inetcomm.dll /s&regsvr32  msdxm.ocx /s&regsvr32  dxmasf.dll /s&regsvr32  l3codecx.ax /s&regsvr32  acelpdec.ax /s&regsvr32  mpg4ds32.ax /s&regsvr32  voxmsdec.ax /s&regsvr32  danim.dll /s&regsvr32  Daxctle.ocx /s&regsvr32  lmrt.dll /s&regsvr32  datime.dll /s&regsvr32  dxtrans.dll /s&regsvr32  dxtmsft.dll /s&regsvr32  WEBPOST.DLL /s&regsvr32  WPWIZDLL.DLL /s&regsvr32  POSTWPP.DLL /s&regsvr32  CRSWPP.DLL /s&regsvr32  FTPWPP.DLL /s&regsvr32  FPWPP.DLL /s&regsvr32  WUAPI.DLL /s&regsvr32  wups2.dll /S&regsvr32  WUAUENG.DLL /s&regsvr32  ATL.DLL /s&regsvr32  WUCLTUI.DLL /s&regsvr32  WUPS.DLL /s&regsvr32  WUWEB.DLL /s&regsvr32  wshom.ocx /s&regsvr32  wshext.dll /s&regsvr32  vbscript.dll /s&regsvr32  scrrun.dll mstinit.exe /setup /s&regsvr32  msnsspc.dll /SspcCreateSspiReg /s&regsvr32  msapsspc.dll /SspcCreateSspiReg /s

powershell -command "Get-Appxpackage -Allusers" > %homepath%\Desktop\Yuklu.appxler.OgnitorenKs.txt

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto microsoftstoremenu

:updateafter
cls

echo  %ESC%[92m Windows/System32 i‡inde SmartScreen ve Defender kalntlar etkisiz hale getiriliyor...%ESC%[0m 

for /f %%a in ('"dir /b Tool\*"') do "%windir%\Python\python.exe" "%windir%\Python\Tools\updateafter\%%a"

PowerShell.exe -Command "Get-AppxPackage -allusers *BioEnrollment* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *Win32WebViewHost* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *ParentalControls* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *NarratorQuickStart* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *PeopleExperienceHost* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *SecHealthUI* | Remove-AppxPackage"
PowerShell.exe -Command "Get-AppxPackage -allusers *SecureAssessmentBrowser* | Remove-AppxPackage"
cls

DEL /F /Q /A "%windir%\System32\CompatTelRunner.exe"
DEL /F /Q /A "%windir%\System32\securityhealthhost.exe"
DEL /F /Q /A "%windir%\System32\securityhealthservice.exe"
DEL /F /Q /A "%windir%\System32\securityhealthsystray.exe"
DEL /F /Q /A "%windir%\System32\SgrmBroker.exe"
DEL /F /Q /A "%windir%\System32\smartscreen.exe"
RD /S /Q "%programfiles(x86)%\Windows Defender"
RD /S /Q "%programfiles%\Windows Defender"
RD /S /Q "%programfiles%\Windows Security"
RD /S /Q "%programfiles%\Windows Defender Advanced Threat Protection"
cls

echo   ==============================================================
echo               H˜ZMETLER B™LšMšNDE DšZENLE YAPILIYOR...
echo   ==============================================================
REM Ba§l Kullanc Deneyimleri ve Telemetrisi kapatlyor...
net stop DiagTrack
sc delete DiagTrack 
REM Czdan Hizmeti
net stop WalletService
sc delete WalletService 
REM Da§tlmŸ Ba§lant ˜zleme ˜stemcisi kapatlyor...
net stop TrkWks
sc delete TrkWks
REM Dokunmatik Klavyeyi ve El yazs Paneli Hizmeti kapatlyor...
net stop TabletInputService
sc delete TabletInputService 
REM Ebeveyn Denetimleri kapatlyor...
net stop WpcMonSvc
sc delete WpcMonSvc
REM Gvenlik Merkezi kapatlyor...
net stop wscsvc
sc delete wscsvc 
REM Microsoft Edge GncelleŸtirmeleri kapatlyor...
net stop edgeupdate
net stop edgeupdatem
sc config edgeupdate start= disabled
sc config edgeupdatem start= disabled
REM Windows Defender kapatlyor...
net stop Sense
sc delete Sense 
net stop WdNisSvc
sc delete WdNisSvc 
net stop SecurityHealthService
sc delete SecurityHealthService 
net stop WinDefend
sc delete WinDefend
REM SysMain (Superfetch) kapatlyor...
net stop Sysmain
sc delete Sysmain 
REM Sistem Koruma €alŸma Zaman ˜zleyicisi Aracs kapatlyor... 
net stop SgrmBroker
sc delete SgrmBroker 
REM Teslim En ˜yileŸtirme kapatlyor...
net stop DoSvc
sc config DoSvc start= disabled
REM Windows Biyometrik Hizmeti kapatlyor...
net stop WbioSrvc
sc config WbioSrvc start= disabled
REM Windows Hata Raporlama Hizmeti kapatlyor...
net stop WerSvc
sc config WerSvc start= disabled
REM Windows Insider Hizmeti kapatlyor...
net stop wisvc
sc config wisvc start= disabled
REM Windows Search kapatlyor...
net stop WSearch
sc config WSearch start= disabled
REM BrancCache
net stop "PeerDistSvc"
sc config"PeerDistSvc" start= disabled
REM Tanlama merkezi
net stop "diagnosticshub.standardcollector.service"
sc config diagnosticshub.standardcollector.service start= disabled
REM Telemetry sevisi
net stop "dmwappushservice"
sc delete dmwappushservice 
cls

echo   ==============================================================
echo              REGED˜T šZER˜NDE DšZENLEMELER YAPILIYOR...
echo   ==============================================================

echo SmartScreen Devre DŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "ContentEvaluation" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "SmartScreenEnabled" /t REG_SZ /d "Off" 

echo DiagTrack Devre DŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\DiagTrack" /f /v "Start" /t REG_DWORD /d 4 
REM Automatic Diagnostic Logger (Otomatik TeŸhis Kaydedici) devre dŸ 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /f /v "Start" /t REG_DWORD /d 0 

echo Telemetry Devre DŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0 

echo Windows Defender Devre DŸ braklyor...
REM ˜nternetten indirilen dosyalar i‡in tarama yapma ”zelli§ini kapatyoruz.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "ScanWithAntiVirus" /t REG_DWORD /d 3 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "SaveZoneInformation" /t REG_DWORD /d 1 
REM Ger‡ek zamanl izlemeyi devre dŸ brak
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /f /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 
REM Casus yazlmdan korunmay devre dŸ brak
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /f /v "DisableAntiSpyware" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f /v "Start" /t REG_DWORD /d 4 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinDefend" /f /v "Start" /t REG_DWORD /d 4 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /f /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "PromptOnSecureDesktop" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "EnableLUA" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 0 
REM Microsoft Store i‡in Defender devre dŸ braklyor
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 
REM Gvenlik Merkezi - Kritik olmayan bildirimler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableEnhancedNotifications" /t REG_DWORD /d 1 
REM Gvenlik Merkezi - Tm bildirimler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableNotifications" /t REG_DWORD /d 1 
REM Defender hesap koruma uyars 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows Security Health\State" /f /v "AccountProtection_MicrosoftAccount_Disconnected" /t REG_DWORD /d 0 
REM Sabotaj korumas devre dŸ braklyor
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features" /f /v "TamperProtection" /t REG_DWORD /d 0 

echo Kapatma iŸleminde uygulamalar a‡k ise otomatik kapat ve bekleme sresi azaltlyor
REM Bilgisayar kapatlrken ya da oturumdan ‡klrken Windows'un ‡nc parti hizmetleri otomatik olarak kapatmasn sa§lar. Bu sayede uygulama kapanmaya engel oluyor uyarlarn almayacaksnz.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "AutoEndTasks" /t REG_SZ /d 1 
REM Uygulamalar cevap vermedi§i zaman g”revi sonlandr se‡ene§ine baslmadan ”nceki bekleme sresini ksaltr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "HungAppTimeout" /t REG_SZ /d "1000" 
REM Bilgisayar kapatlrken ya da oturumdan ‡klrken kullanc uygulamalarnn kapatlmas i‡in sistem bekleme sresini ksaltr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "WaitToKillAppTime" /t REG_SZ /d "2000" 
REM Cevap vermeyen hizmetlerin kapatlmasndan ”nceki sistem bekleme sresini ksaltr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" 
REM Bilgisayarn kapatlmas srasnda durdurulacak hizmetler uyars geldi§inde, uygulamalarn kapanmas i‡in beklenen sreyi ksaltr.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /f /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" 

echo Bilgi kutucuklar g”sterim sresi ksaltlyor...
REM Men g”sterimi bekleme sresini azaltr. B”ylelikle tkland§ zaman menler daha hzl gelecek.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "MenuShowDelay" /t REG_SZ /d "8" 

echo DŸk Depolama alan uyars devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1 

echo Bilgi kutucuklarnn g”rnm hzlandrlyor...
REM Farenizle birlikte bir nesnenin zerine geldi§inizde g”rlen a‡klamann ‡kŸ sresini ksaltr
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /f /v "MouseHoverTime" /t REG_SZ /d 8 

echo Ksayol taramas kapatlyor...
REM Bilgisayarnzda mevcut olmayan programlara ait ksayollarn ba§lantsnn Windows tarafndan boŸa vakit harcanarak aranmasn ”nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1 
REM Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un diski aramasn ”nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveSearch" /t REG_DWORD /d 1 
REM Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un NTFS dosya sisteminin izleme ”zelli§ini kullanmasn engeller
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveTrack" /t REG_DWORD /d 1 

echo Birlikte a‡ se‡ene§inden internette ara se‡ene§i kaldrlyor...
REM Birlikte a‡ se‡ene§ine tklad§nzda uygulamalar internette arama se‡ene§inin ‡kmasn ”nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoInternetOpenWith" /t REG_DWORD /d 1 

echo Kapatma srasnda sayfa dosyalarn temizle
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /f /v "ClearPageFileAtShutdown" /t REG_DWORD /d 1 

echo Prefetch devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnablePrefetcher" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnableSuperFetch" /t REG_DWORD /d 0 

echo Startup Delay (BaŸlang‡ Gecikmesi) devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /f /v "StartupDelayInMSec" /t REG_DWORD /d 0 

echo Qos Limiti Devre DŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /f /v "NonBestEffortLimit" /t REG_DWORD /d 0 

echo Uygulamalar a‡lrken gvenlik uyarlar devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /f /v ModRiskFileTypes /t "REG_SZ /d ".bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd" 

echo Ayarlar uygulamasnda Zaman €izelgesi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 

echo AutoLogger devre dŸ braklyor...
REM ˜Ÿletim sistemi ”nykleme iŸleminde meydana gelen olaylar kaydeder.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /f /v "Start" /t REG_DWORD /d 0 

echo Teslimat Optimizasyonu devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /f /v "DODownloadMode" /t REG_DWORD /d 0 

echo Reklam kimli§i etkinli§i kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v DisabledByGroupPolicy /t REG_DWORD /d 1 

echo OneDrive EŸitlemesi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 

echo Windows Hata Raporlama devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /f /v "DontSendAdditionalData" /t REG_DWORD /d 1 

echo Wifi Hotspot Raporlama devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" /f /v "value" /t REG_DWORD /d 0 

echo Gvenli Wifi noktalarna otomatik ba§lan devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" /f /v "value" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "WiFiSenseOpen" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "PaidWifi" /t REG_DWORD /d 0 

echo Windows Reklam Kimli§ini devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v "Enabled" /t REG_DWORD /d 0 

echo Web sayfalarnn Dil se‡eneklerine eriŸimi engelleniyor...
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 

echo Windows 10 Bildirimleri devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /f /v "UseActionCenterExperience" /t REG_DWORD /d 0 

echo Gvenlik ve Bakm simgesi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "HideSCAHealth" /t REG_DWORD /d 1 

echo MŸteri Deneyim Program devre dŸ brakrlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SQMClient\Windows" /f /v "CEIPEnable" /t REG_DWORD /d 0 

echo GncelleŸtirmeler Manuel yaplyor...
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "NoAutoUpdate" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallDay" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallTime" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "RescheduleWaitTime" 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "AUOptions" /t REG_DWORD /d "2" 

echo Deneyim geliŸtirme programna izin ver(NVIDIA Srcs) kapatlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /f /v "OptInOrOutPreference" /t REG_DWORD /d 0 

echo Deneyler kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowExperimentation" /t REG_DWORD /d 0 

echo SecurityHealth Devre dŸ braklyor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v "SecurityHealth" 
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /f /v "SecurityHealth" 

echo Metadata izleme dosyalar kaldrlyor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /f

echo Son a‡lan belgelerin ge‡miŸi kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoRecentDocsHistory" /t REG_DWORD /d 0 

echo G”rev G”rnm Simgesi Kaldrlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowTaskViewButton" /t REG_DWORD /d 0 

echo Dosya kopyalama iletiŸim kutusuda daha fazla detay g”ster
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /f /v "EnthusiastMode" /t REG_DWORD /d 1 

echo Uygulamalarn arka planda ‡alŸmas engelleniyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "Migrated" /t REG_DWORD /d 4 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "GlobalUserDisabled" /t REG_DWORD /d 1 

echo Ayarlar uygulamasn ”nerilen i‡eri§i g”stermesi kapatlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 

echo HotSpot 2.0 devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WlanSvc\AnqpCache" /f /v "OsuRegistrationStatus" /t REG_DWORD /d 0 

echo Windows izleme uygulamas devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackProgs" /t REG_DWORD /d 0 

echo BaŸlang‡taki ”neriler kapatlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 

echo Edge i‡in SmartScreen devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /f /v "EnabledV9" /t REG_DWORD /d 0 

echo Yaz geliŸtirme i‡in Microsoft'a veri g”nderimi engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Input\TIPC" /f /v "Enabled" /t REG_DWORD /d 0 

echo GiriŸ verilerinin Microsoft'a g”nderilmesi engelleniyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Personalization\Settings" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts " /t REG_DWORD /d 0 

echo Geri Bildirim frekans kapatlyor.
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /f /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 

echo Hzl EriŸimden Sk Kullanlanlar kaldrlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowFrequent" /t REG_DWORD /d 0 

echo Internet Explorer i‡in SmartScreen devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\PhishingFilter" /f /v "Enabledv9" /t REG_DWORD /d 0 

echo Konum Hizmetlerini kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowLocation" /t REG_DWORD /d 0 

echo Web Sitelerinin kullanc dil listesine eriŸimini engeller...
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 

echo Kullancnn di§er cihazlardaki uygulamalarn uygulamalar a‡mas engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /f /v "UserAuthPolicy" /t REG_DWORD /d 0 

echo K”t ama‡l uygulamalara karŸ SmartScreen kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "SmartScreenEnabled" /t REG_SZ /d "Off" 

echo G”z Atma Verilerinin Microsoft'a G”nderilmesi engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" /f /v "FPEnabled" /t REG_DWORD /d 0 

echo Skype KiŸiler ba§lants devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" /f /v "Skype-UserConsentAccepted" /t REG_DWORD /d 0 

echo Son kullanlan dosyalarn hzl eriŸimde g”rntlenmesi engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowRecent" /t REG_DWORD /d 0 

echo Tketici Deneyimi kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 

echo Tanlama verilerinin Microsoft'a g”nderilmesi engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 

echo Windows Kilit Ekran Spot IŸ§ kapatlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "RotatingLockScreenEnabled" /t REG_DWORD /d 0 

echo Windows'un bilgisayardaki etkinlikleri toplamas engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "PublishUserActivities" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 

echo Windows belge izleme ”zelli§i devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackDocs" /t REG_DWORD /d 0 

echo €evrimi‡i konuŸma hizmetleri devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\InputPersonalization" /f /v "AllowInputPersonalization" /t REG_DWORD /d 0 

echo ™nceden yklenmiŸ OEM uygulamalar devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "PreInstalledAppsEnabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 

echo ˜‡g”rsel yazma engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Input\Settings" /f /v "InsightsEnabled" /t REG_DWORD /d 0 

echo Atlama Listelerinde en son a‡lan ”§eler engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\Start" /f /v "HideRecentJumplists" /t REG_DWORD /d 1 

echo Bildirim Merkezi devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d 1 

echo Etkin olmayan baŸlklarn vurgu rengi ayarlanyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\DWM" /f /v "AccentColorInactive" /t REG_DWORD /d "5854282" 

echo Windows karŸlama deneyimi kapatlyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0 

echo Windows ”nerileri devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SoftLandingEnabled" /t REG_DWORD /d 0 

echo ˜Ÿaret‡i hassasiyeti devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /f /v "MouseSpeed" /t REG_SZ /d 0 

echo Tam ekran optimizasyonlar devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 

echo Program uyumluluk yardmcs devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /f /v "DisablePCA" /t REG_DWORD /d 1 

echo AyrlmŸ depolama alan devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "ShippedWithReserves" /t REG_DWORD /d 0 

echo Teslimat Optimizasyonu BITS hizmeti olarak ayarlanyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /f /v "DODownloadMode" /t REG_DWORD /d "100" 

echo Driverlar kurulu de§il ise kurulmas i‡in ayarlanyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /f /v "SearchOrderConfig" /t REG_DWORD /d 2 

echo Defender gncelleŸtirmeleri devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /f /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 

echo KonuŸma modellerinin gnceleŸtirmeleri devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "ModelDownloadAllowed" /t REG_DWORD /d 0 

echo Gncelleme sonras yeniden baŸlatma bildirimi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "RestartNotificationsAllowed2" /t REG_DWORD /d 0 
cls

echo  %ESC%[92m G”rev Zamanlaycsnda dzenlemeler yaplyor...%ESC%[0m
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /f 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /f 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /f 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /f 
schtasks /delete /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /f
schtasks /delete /TN "\Microsoft\Windows\Maps\MapsToastTask" /f
schtasks /delete /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /f
schtasks /delete /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /f
schtasks /delete /TN "\Microsoft\Windows\HelloFace\FODCleanupTask" /f
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /DISABLE
goto menu

:pingolc
cls
title Ping Menu / OgnitorenKs
mode con cols=49 lines=45

ECHO.
ECHO    %ESC%[36m.........OgnitorenKs / P˜NG ™L€ER.........%ESC%[0m
ECHO.
ECHO    =========================================== && ECHO.   %ESC%[92mValve%ESC%[0m
CALL:Valve vie.valve.net
ECHO      %ESC%[36m Viyana:%ESC%[0m                          %ESC%[33m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[92mRiot Games%ESC%[0m
CALL:Riot 162.249.79.1
ECHO      %ESC%[36m Trkiye:%ESC%[0m                         %ESC%[33m%ms%%ESC%[0m 
CALL:Riot   104.160.143.124
ECHO      %ESC%[36m Avrupa:%ESC%[0m                          %ESC%[33m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[92mCS:GO%ESC%[0m
CALL:CSGO dm.wasp.gen.tr
ECHO      %ESC%[36m Wasp.gen.tr:%ESC%[0m                     %ESC%[33m%ms%%ESC%[0m  
CALL:CSGO   counter-strike.net
ECHO      %ESC%[36m CounterStrike.net:%ESC%[0m               %ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[92mFortnite%ESC%[0m
Call:Fortnite qosping-aws-eu-west-3.ol.epicgames.com
ECHO      %ESC%[36m Avrupa:%ESC%[0m                          %ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[92mPUBG%ESC%[0m
Call:PUBG 35.156.63.252
ECHO      %ESC%[36m Frankfurt:%ESC%[0m                       %ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[92mAmazon%ESC%[0m
CALL:Amazon 52.94.17.134
ECHO      %ESC%[36m AWS Frankfurt:%ESC%[0m                   %ESC%[33m%ms%%ESC%[0m 
CALL:Amazon 52.94.15.16
ECHO      %ESC%[36m AWS Londra:%ESC%[0m                      %ESC%[33m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[92mCloudFlare%ESC%[0m
Call:CloudFlare 1.1.1.1
ECHO      %ESC%[36m DNS:%ESC%[0m                             %ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[92mTwitch%ESC%[0m
Call:Twitch 199.232.138.167
ECHO      %ESC%[36m Twitch Avrupa:%ESC%[0m    		%ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[92mMinecraft%ESC%[0m
Call:Minecraft 172.65.230.98
ECHO      %ESC%[36m Hypixel:%ESC%[0m                         %ESC%[33m%ms%%ESC%[0m 
Call:Minecraft 51.91.200.191
ECHO      %ESC%[36m CubeCraft:%ESC%[0m                       %ESC%[33m%ms%%ESC%[0m
Call:Minecraft 107.6.153.141
ECHO      %ESC%[36m Mineplex(PE):%ESC%[0m                    %ESC%[33m%ms%%ESC%[0m
Call:Minecraft 172.67.198.40
ECHO      %ESC%[36m Herobrine.org:%ESC%[0m                   %ESC%[33m%ms%%ESC%[0m
ECHO    ===========================================
echo       %ESC%[92m 1.%ESC%%ESC%[36m Ping ”l‡er%ESC%[0m 
echo       %ESC%[92m 2.%ESC%%ESC%[33m Ana Men%ESC%[0m 
echo       %ESC%[92m 0.%ESC%%ESC%[91m €kŸ%ESC%[0m
ECHO    ===========================================
set /p pingolc=%ESC%[92m Yapmak istedi§iniz iŸlem : %ESC%[0m
	if %pingolc%==1 GOTO pingmeter
	if %pingolc%==2 GOTO menu
	if %pingolc%==0 GOTO exit
else
	goto pingolc
	
cls
goto Start

:Valve
:Riot Games
:CSGO
:Fortnite
:PUBG
:Amazon
:CloudFlare
:Twitch
:Minecraft

SET ms=Hata
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms=%%i
GOTO:EOF



:pingmeter	
cls
title Ping Meter / OgnitorenKs
mode con cols=60 lines=23
set /p pingmeter=%ESC%[92m ˜p adresi ve site ad : %ESC%[0m 
for /f "tokens=9" %%A in ('ping %pingmeter%') do SET pingadres=%%A
echo         ============================================
echo          %ESC%[93m%pingmeter%%ESC%[0m             %ESC%[92mPing:%ESC% %ESC%[37m %pingadres% %ESC%[0m  
echo         ============================================

pause
goto pingolc


:anamenu
cls
mode con cols=53 lines=19
echo  ===================================================
echo               %ESC%[7mOgnitorenKs Windows Edition%ESC%[0m  
echo  ===================================================
echo      %ESC%[92m1.%ESC%%ESC%[33m WIM / ESD Reader%ESC%[0m
echo      %ESC%[92m2.%ESC%%ESC%[33m AIO Maker%ESC%[0m
echo      %ESC%[92m3.%ESC%%ESC%[33m ISO Maker%ESC%[0m
echo      %ESC%[92m4.%ESC%%ESC%[33m Silinmesi Gerekenler(˜maj)%ESC%[0m
echo      %ESC%[92m5.%ESC%%ESC%[33m Silinmesi Gerekenler(Setup)%ESC%[0m
echo      %ESC%[92m6.%ESC%%ESC%[33m Offline Appx Installer%ESC%[0m 
echo      %ESC%[92m7.%ESC%%ESC%[33m Online Appx Installer%ESC%[0m
echo      %ESC%[92m8.%ESC%%ESC%[33m Dism Update Offline%ESC%[0m
echo      %ESC%[92m9.%ESC%%ESC%[33m Dism Update Online%ESC%[0m
echo     %ESC%[92m10.%ESC%%ESC%[33m Kapatlacak Servisler%ESC%[0m
echo     %ESC%[92m11.%ESC%%ESC%[33m NTLite Regedit Ayarlar%ESC%[0m
echo     %ESC%[92m12.%ESC%%ESC%[33m Ana Men%ESC%[0m
echo      %ESC%[92m0.%ESC%%ESC%[91m €kŸ%ESC%[0m
echo  ---------------------------------------------------

set /p anamenu= %ESC%[92m Yapmak istedi§iniz iŸlem : %ESC%[0m
	if %anamenu%==1 GOTO wimreader
	if %anamenu%==2 GOTO ekleme
	if %anamenu%==3 GOTO bitirme
	if %anamenu%==4 GOTO delhard
	if %anamenu%==5 GOTO delhard2
	if %anamenu%==6 GOTO offlineappxekle
	if %anamenu%==7 GOTO onlineappxekle
	if %anamenu%==8 GOTO dismupdateoffline
	if %anamenu%==9 GOTO dismupdateonline
	if %anamenu%==10 GOTO ntliteservices
	if %anamenu%==11 GOTO ntliteregedit
	if %anamenu%==12 GOTO menu
	if %anamenu%==0 GOTO exit
else
	goto anamenu
	
:wimreader
cls
mode con cols=70 lines=20
title WIM - ESD READER / OGN˜TORENKS
echo  ====================================================================
echo                      %ESC%[7mWIM / ESD Reader \OgnitorenKs%ESC%[0m 
echo  ====================================================================
echo  %ESC%[96m                                             %ESC%[0m
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m "C:\Win10\sources\install.wim"%ESC%[0m 
set /p ogren=%ESC%[97m  %ESC%%ESC%[92m Wim dosya yolu : %ESC%[0m
	if %ogren%==0 GOTO anamenu
mode con cols=85 lines=40
dism /Get-WimInfo /WimFile:%ogren%
dism /Get-WimInfo /WimFile:%ogren% > %systemdrive%\Users\%username%\desktop\WimReaderOgnitorenKs.txt
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%ogren% ^| FIND "Index"') DO dism /Get-WimInfo /WimFile:%ogren% /index:%%a >> %systemdrive%\Users\%username%\desktop\WimReaderOgnitorenKs.txt

echo                       %ESC%[92mMasast\WimReaderOgnitorenKs.txt baknz%ESC%[0m 
pause
goto anamenu

:ekleme
cls
mode con cols=85 lines=20
echo  ===================================================================================
echo                                %ESC%[7m AIO MAKER 1 \OgnitorenKs%ESC%[0m 
echo  ===================================================================================
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m "C:\Windows10Pro\sources\install.wim"%ESC%[0m
set /p anawin=%ESC%[97m  %ESC%%ESC%[92m Merkez Wim dosya yolu : %ESC%[0m
	if %anawin%==0 GOTO anamenu
:ekleme12
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m "C:\Windows10Home\sources\install.wim"%ESC%[0m
set /p eklewin=%ESC%[97m  %ESC%%ESC%[92m Eklenecek Wim dosya yolu : %ESC%[0m 
	if %eklewin%==0 GOTO anamenu
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m Windows 10 Home (x64)%ESC%[0m 
set /p surumwin=%ESC%[97m  %ESC%%ESC%[92m Srm ˜smi : %ESC%[0m 
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m 1%ESC%[0m 
set /p surumsira=%ESC%[97m  %ESC%%ESC%[92m Sra Numaras : %ESC%[0m 
	if %surumsira%==0 GOTO anamenu
	
mode con cols=85 lines=45
Imagex /export %eklewin% 1 %anawin% "%surumwin%"

set /p soru=  %ESC%[92m  Srm eklemeye devam edecek misiniz? [E/H] : %ESC%[0m 
	if %soru%==E GOTO ekleme12
	if %soru%==e GOTO ekleme12

set /p isomakerr=  %ESC%[92m  ISO yapmak istiyor musunuz? [E/H] : %ESC%[0m
	if %isomakerr%==E GOTO bitirme
	if %isomakerr%==e GOTO bitirme
else
	goto anamenu

:bitirme
cls
mode con cols=85 lines=20
echo  ===================================================================================
echo                         %ESC%[7m AIO ISO MAKER 2 \OgnitorenKs%ESC%[0m 
echo  ===================================================================================
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m C:\Windows10Pro%ESC%[0m
set /p merkezwin=%ESC%[97m  %ESC%%ESC%[92m Merkez dosya yolu : %ESC%[0m
	if %merkezwin%==0 GOTO anamenu
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m C:\Windows10.iso%ESC%[0m 
set /p kayit=%ESC%[97m  %ESC%%ESC%[92m ISO dosyas kayt yolu : %ESC%[0m 
	if %kayit%==0 GOTO anamenu
mode con cols=85 lines=45
oscdimg -b%merkezwin%\boot\etfsboot.com -h -u2 -m -lWIN_EN_DVD %merkezwin%\ %kayit%

pause
goto anamenu

:delhard2
cls
mode con cols=90 lines=40
title Setup Silinmesi Gerekenler / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMnt01%ESC%[0m
set /p deldel2=%ESC%[97m  %ESC%%ESC%[92m Setup ˜maj Klas”r yolu : %ESC%[0m
	if %deldel2%==0 GOTO anamenu
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMnt01%ESC%[0m
set /p setupek1=%ESC%[97m  %ESC%%ESC%[92m Eklenti klas”r yolu : %ESC%[0m

DEL /F /Q /A "%deldel2%\setup.exe" 
DEL /F /Q /A "%deldel2%\sources\background.bmp" 
DEL /F /Q /A "%deldel2%\sources\spwizimg.dll" 
DEL /F /Q /A "%deldel2%\Windows\System32\setup.bmp"
copy /Y "%setupek1%\setup.exe" "%deldel2%" 
copy /Y "%setupek1%\Windows" "%deldel2%"
copy /Y "%setupek1%\sources" "%deldel2%"
copy /Y "%setupek1%\Program Files" "%deldel2%"

goto anamenu

:delhard
cls
mode con cols=90 lines=40
title ˜maj Silinmesi Gerekenler / OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMnt01%ESC%[0m
set /p deldel=%ESC%[97m  %ESC%%ESC%[92m ˜maj yolu : %ESC%[0m
	if %deldel%==0 GOTO anamenu
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\Huseyin\Uygulamalar\Windows10\Windows.Eklenti%ESC%[0m
set /p eklenecekler=%ESC%[92m Eklenti Klas”r Yolu : %ESC%[0m

DEL /F /Q /A "%deldel%\Windows\System32\smartscreen.exe" 
DEL /F /Q /A "%deldel%\Windows\System32\CompatTelRunner.exe"
DEL /F /Q /A "%deldel%\Windows\System32\securityhealthhost.exe"
DEL /F /Q /A "%deldel%\Windows\System32\securityhealthservice.exe"
DEL /F /Q /A "%deldel%\Windows\System32\securityhealthsystray.exe"
DEL /F /Q /A "%deldel%\Windows\System32\SgrmBroker.exe"
DEL /F /Q /A "%deldel%\Windows\SysWOW64\OneDriveSetup.exe"
DEL /F /Q /A "%deldel%\Windows\SysWOW64\OneDriveSettingSyncProvider.dll"
DEL /F /Q /A "%deldel%\Windows\SysWOW64\OneDrive.ico"
DEL /F /Q /A "%deldel%\Windows\System32\drivers\etc\hosts"
powershell -command "Expand-Archive -Force '%eklenecekler%\Imaj.zip' '%deldel%'" 


set /p newss=%ESC%[92m Duvar Ka§tlarn de§iŸtirecek misiniz? [ E / H ] : %ESC%[0m
	if %newss%==H GOTO newicoo
	if %newss%==h GOTO newicoo

DEL /F /Q /A "%deldel%\Windows\Web\4K\Wallpaper\Windows\img0_1024x768.jpg"
DEL /F /Q /A "%deldel%\Windows\Web\4K\Wallpaper\Windows\img0_1366x768.jpg"
DEL /F /Q /A "%deldel%\Windows\Web\4K\Wallpaper\Windows\img0_2560x1600.jpg"
DEL /F /Q /A "%deldel%\Windows\Web\4K\Wallpaper\Windows\img0_3840x2160.jpg"
DEL /F /Q /A "%deldel%\Windows\Web\Screen\img105.jpg"
DEL /F /Q /A "%deldel%\Windows\Web\Wallpaper\Windows\img0.jpg"
powershell -command "Expand-Archive -Force '%eklenecekler%\Web.zip' '%deldel%\Windows'" 


:newicoo
set /p newicoo=%ESC%[92m Yeni ˜con'lar ykleyecek misiniz? [ E / H ] : %ESC%[0m
	if %newicoo%==H GOTO anamenu
	if %newicoo%==h GOTO anamenu

DEL /F /Q /A "%deldel%\Windows\System32\imageres.dll"
DEL /F /Q /A "%deldel%\Windows\System32\imagesp1.dll"
DEL /F /Q /A "%deldel%\Windows\System32\shell32.dll"
DEL /F /Q /A "%deldel%\Windows\System32\zipfldr.dll"
DEL /F /Q /A "%deldel%\Windows\SystemResources\imageres.dll.mun"
DEL /F /Q /A "%deldel%\Windows\SystemResources\imagesp1.dll.mun"
DEL /F /Q /A "%deldel%\Windows\SystemResources\shell32.dll.mun"
DEL /F /Q /A "%deldel%\Windows\SystemResources\zipfldr.dll.mun"	

powershell -command "Expand-Archive -Force '%eklenecekler%\newico.zip' '%deldel%\Windows'" 


goto anamenu

:onlineappxekle
cls
title Online Appx Installer /OgnitorenKs
mode con cols=90 lines=40
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m C:\Users\OgnitorenKs\Desktop\Appx%ESC%[0m
set /p appxeklee=%ESC%[97m  %ESC%%ESC%[92m Appx klas”r yolu : %ESC%[0m
	if %appxeklee%==0 GOTO anamenu
for /f %%i in ('"dir /b %appxeklee%\*"') do DISM /Online /Add-ProvisionedAppxPackage /PackagePath:%appxeklee%\%%i /SkipLicense
echo  %ESC%[92m Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m  
pause
goto anamenu

:offlineappxekle
cls
title Offline Appx Installer /OgnitorenKs
mode con cols=90 lines=40
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m C:\Users\OgnitorenKs\Desktop\Appx%ESC%[0m
set /p appxeklee=%ESC%[97m  %ESC%%ESC%[92m Appx klas”r yolu : %ESC%[0m
	if %appxeklee%==0 GOTO anamenu
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMount01%ESC%[0m
set /p ntyol=%ESC%[97m  %ESC%%ESC%[92m ˜maj dosya yolu : %ESC%[0m
	if %ntyol%==0 GOTO anamneu

for /f %%i in ('"dir /b %appxeklee%\*"') do DISM /Image:%ntyol% /Add-ProvisionedAppxPackage /PackagePath:%appxeklee%\%%i /SkipLicense
echo  %ESC%[92m Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m  
pause
goto anamenu

:dismupdateoffline
cls
mode con cols=90 lines=40
title DISM UPDATE /OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m C:\Users\OgnitorenKs\Desktop\Update%ESC%[0m
set /p guncellemeekle=%ESC%[97m  %ESC%%ESC%[92m Gncelleme klas”r yolu : %ESC%[0m
	if %guncellemeekle%==0 GOTO anamenu
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m D:\FFOutput\NTLite\1\NLTmpMount01%ESC%[0m
set /p ntyol2=%ESC%[97m  %ESC%%ESC%[92m ˜maj dosya yolu : %ESC%[0m
	if %ntyol2%==0 GOTO anamenu

for /f %%i in ('"dir /b %guncellemeekle%\*"') do DISM /Image:%ntyol2% /add-package /packagepath="%guncellemeekle%\%%i"
DISM /Image:%ntyol2% /Cleanup-Image /StartComponentCleanup
echo  %ESC%[92m Ana Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m  
pause
goto anamenu

:dismupdateonline
cls
mode con cols=90 lines=40
title DISM UPDATE /OgnitorenKs
echo  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ 
echo  %ESC%[96m ™rnek:%ESC%%ESC%[33m C:\Users\OgnitorenKs\Desktop\Update%ESC%[0m
set /p guncellemeekle2=%ESC%[97m  %ESC%%ESC%[92m Gncelleme klas”r yolu : %ESC%[0m
	if %guncellemeekle2%==0 GOTO anamenu

for /f %%i in ('"dir /b %guncellemeekle2%\*"') do DISM /Online /add-package /packagepath="%guncellemeekle2%\%%i"
DISM /Online /Cleanup-Image /StartComponentCleanup

echo  %ESC%[92m Ana Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m  
pause
goto anamenu

:ntliteregedit
cls
title NTLite Settings /OgnitorenKs
mode con cols=90 lines=40
title OgnitorenKs Performance Edition

echo Floopy Disk Devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\flpydisk" /f /f /v "Start" /t REG_DWORD /d 4 

echo SmartScreen Devre DŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "ContentEvaluation" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "SmartScreenEnabled" /t REG_SZ /d "Off" 

echo DiagTrack Devre DŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\DiagTrack" /f /v "Start" /t REG_DWORD /d 4 
REM Automatic Diagnostic Logger (Otomatik TeŸhis Kaydedici) devre dŸ 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /f /v "Start" /t REG_DWORD /d 0 

echo Telemetry Devre DŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0 

echo Windows Defender Devre DŸ braklyor...
REM ˜nternetten indirilen dosyalar i‡in tarama yapma ”zelli§ini kapatyoruz.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "ScanWithAntiVirus" /t REG_DWORD /d 3 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /f /v "SaveZoneInformation" /t REG_DWORD /d 1 
REM Ger‡ek zamanl izlemeyi devre dŸ brak
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /f /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 
REM Casus yazlmdan korunmay devre dŸ brak
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /f /v "DisableAntiSpyware" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f /v "Start" /t REG_DWORD /d 4 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinDefend" /f /v "Start" /t REG_DWORD /d 4 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /f /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "PromptOnSecureDesktop" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "EnableLUA" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 0 
REM Microsoft Store i‡in Defender devre dŸ braklyor
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 
REM Gvenlik Merkezi - Kritik olmayan bildirimler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableEnhancedNotifications" /t REG_DWORD /d 1 
REM Gvenlik Merkezi - Tm bildirimler
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v "DisableNotifications" /t REG_DWORD /d 1 
REM Defender hesap koruma uyars 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows Security Health\State" /f /v "AccountProtection_MicrosoftAccount_Disconnected" /t REG_DWORD /d 0 
REM Sabotaj korumas devre dŸ braklyor
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features" /f /v "TamperProtection" /t REG_DWORD /d 0 

echo Kapatma iŸleminde uygulamalar a‡k ise otomatik kapat ve bekleme sresi azaltlyor
REM Bilgisayar kapatlrken ya da oturumdan ‡klrken Windows'un ‡nc parti hizmetleri otomatik olarak kapatmasn sa§lar. Bu sayede uygulama kapanmaya engel oluyor uyarlarn almayacaksnz.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "AutoEndTasks" /t REG_SZ /d 1 
REM Uygulamalar cevap vermedi§i zaman g”revi sonlandr se‡ene§ine baslmadan ”nceki bekleme sresini ksaltr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "HungAppTimeout" /t REG_SZ /d "1000" 
REM Bilgisayar kapatlrken ya da oturumdan ‡klrken kullanc uygulamalarnn kapatlmas i‡in sistem bekleme sresini ksaltr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "WaitToKillAppTime" /t REG_SZ /d "2000" 
REM Cevap vermeyen hizmetlerin kapatlmasndan ”nceki sistem bekleme sresini ksaltr.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" 
REM Bilgisayarn kapatlmas srasnda durdurulacak hizmetler uyars geldi§inde, uygulamalarn kapanmas i‡in beklenen sreyi ksaltr.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /f /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" 

echo Bilgi kutucuklar g”sterim sresi ksaltlyor...
REM Men g”sterimi bekleme sresini azaltr. B”ylelikle tkland§ zaman menler daha hzl gelecek.
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /f /v "MenuShowDelay" /t REG_SZ /d "8" 

echo DŸk Depolama alan uyars devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1 

echo Bilgi kutucuklarnn g”rnm hzlandrlyor...
REM Farenizle birlikte bir nesnenin zerine geldi§inizde g”rlen a‡klamann ‡kŸ sresini ksaltr
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /f /v "MouseHoverTime" /t REG_SZ /d 8 

echo Ksayol taramas kapatlyor...
REM Bilgisayarnzda mevcut olmayan programlara ait ksayollarn ba§lantsnn Windows tarafndan boŸa vakit harcanarak aranmasn ”nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1 
REM Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un diski aramasn ”nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveSearch" /t REG_DWORD /d 1 
REM Ksayol ba§lant sorununu ‡”zmek i‡in Windows'un NTFS dosya sisteminin izleme ”zelli§ini kullanmasn engeller
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveTrack" /t REG_DWORD /d 1 

echo Birlikte a‡ se‡ene§inden internette ara se‡ene§i kaldrlyor...
REM Birlikte a‡ se‡ene§ine tklad§nzda uygulamalar internette arama se‡ene§inin ‡kmasn ”nler
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoInternetOpenWith" /t REG_DWORD /d 1 

echo Kapatma srasnda sayfa dosyalarn temizle
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /f /v "ClearPageFileAtShutdown" /t REG_DWORD /d 1 

echo Prefetch devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnablePrefetcher" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnableSuperFetch" /t REG_DWORD /d 0 

echo Startup Delay (BaŸlang‡ Gecikmesi) devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /f /v "StartupDelayInMSec" /t REG_DWORD /d 0 


echo Qos Limiti Devre DŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /f /v "NonBestEffortLimit" /t REG_DWORD /d 0 

echo SMB 1-2 Devre DŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f /v "SMB1" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f /v "SMB2" /t REG_DWORD /d 0 
PowerShell -Command "Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force"
sc config lanmanworkstation depend= bowser/mrxsmb20/nsi
sc config mrxsmb10 start= disabled

echo Windows 255 Karakter Snr devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /f /v "LongPathsEnabled" /t REG_DWORD /d 1 

echo Uygulamalar a‡lrken gvenlik uyarlar devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /f /v ModRiskFileTypes /t "REG_SZ /d ".bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd" 

echo Ayarlar uygulamasnda Zaman €izelgesi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 

echo AutoLogger devre dŸ braklyor...
REM ˜Ÿletim sistemi ”nykleme iŸleminde meydana gelen olaylar kaydeder.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /f /v "Start" /t REG_DWORD /d 0 

echo Teslimat Optimizasyonu devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /f /v "DODownloadMode" /t REG_DWORD /d 0 

echo Microsoft hesabyla eŸitleme iŸlemi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /f /v "DisableSettingSync" /t REG_DWORD /d 2 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /f /v "DisableSettingSyncUserOverride" /t REG_DWORD /d 0 

echo Reklam kimli§i etkinli§i kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v DisabledByGroupPolicy /t REG_DWORD /d 1 

echo OneDrive EŸitlemesi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 

echo Windows Hata Raporlama devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /f /v "DontSendAdditionalData" /t REG_DWORD /d 1 

echo Wifi Hotspot Raporlama devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" /f /v "value" /t REG_DWORD /d 0 

echo Gvenli Wifi noktalarna otomatik ba§lan devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" /f /v "value" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "WiFiSenseOpen" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "PaidWifi" /t REG_DWORD /d 0 

echo Windows Reklam Kimli§ini devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v "Enabled" /t REG_DWORD /d 0 

echo Web sayfalarnn Dil se‡eneklerine eriŸimi engelleniyor...
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 

echo Windows 10 Bildirimleri devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /f /v "UseActionCenterExperience" /t REG_DWORD /d 0 

echo Gvenlik ve Bakm simgesi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "HideSCAHealth" /t REG_DWORD /d 1 

echo Sa§ tk mensne "Dosya Listesini Kopyala" se‡ene§i ekleniyor...
reg add "HKEY_CLASSES_ROOT\Directory\shell\Dosya Listesini Kopyala\command" /f /v "(Varsaylan)" /t REG_SZ /d "cmd /c dir \"%1\" /b /a:-d /o:n | clip" 

echo Hiberboot Devre DŸ braklyor
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /f /v "HiberbootEnabled" /t REG_DWORD /d 0 

echo Hazrda bekletme ”zelli§i devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /f /v "HibernateEnabled" /t REG_DWORD /d 0 

echo Blue Screen Sonras Restart devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl" /f /v "AutoReboot" /t REG_DWORD /d 0 

echo MŸteri Deneyim Program devre dŸ brakrlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SQMClient\Windows" /f /v "CEIPEnable" /t REG_DWORD /d 0 

echo Explorer "Bu Bilgisayar" olarak ayarlanyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "LaunchTo" /t REG_DWORD /d 1 

echo Ksayol simgelerinden ok iŸaretini kaldrr
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /f /v "29" /t REG_EXPAND_SZ /d "%windir%\\System32\\shell32.dll,-50" 

echo Ksayol oluŸturulurken Ksayol yazs kaldrlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "Link" /t REG_BINARY /d "00000000" 

echo Sistem geri ykleme kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /f /v "DisableSR" /t REG_DWORD /d 1 

echo Sa§ tk Yeni b”lmne Bat dosyas ekleniyor..
reg add "HKEY_CLASSES_ROOT\.bat\ShellNew" /f /v "NullFile" /t REG_SZ /d "" 

echo Sa§ tk yeni b”lm kiŸi oluŸtur kaldrlyor...
reg delete "HKEY_CLASSES_ROOT\.contact\ShellNew" 

echo Sa§ tk yeni b”lm ksayol se‡ene§ini kaldrlyor...
reg delete "HKEY_CLASSES_ROOT\.lnk\ShellNew" 

echo Sa§ tk yeni b”lm bit resim oluŸtur se‡eni§ini kaldrlyor...
reg delete "HKEY_CLASSES_ROOT\.bmp\ShellNew" 

echo Sahiplik Al ekleniyor...
reg add "HKEY_CLASSES_ROOT\*\shell\runas" /f /ve /t REG_SZ /d "Sahipli§i Al" 
reg add "HKEY_CLASSES_ROOT\*\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" 
reg add "HKEY_CLASSES_ROOT\*\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" 
reg add "HKEY_CLASSES_ROOT\*\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" && ica \"%1\" /grant administrators:F" 
reg add "HKEY_CLASSES_ROOT\*\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" && ica \"%1\" /grant administrators:F" 
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /f /ve /t REG_SZ /d "Sahipli§i Al" 
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" 
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" 
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" /r /d y && ica \"%1\" /grant administrators:F /t" 
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" /r /d y && ica \"%1\" /grant administrators:F /t" 

echo Gncellemeler 2025 ylna erteleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "PauseFeatureUpdatesStartTime" /t REG_SZ /d "2021-07-31T11:05:27Z" 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "PauseQualityUpdatesStartTime" /t REG_SZ /d "2021-07-31T11:05:27Z" 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "PauseUpdatesExpiryTime" /t REG_SZ /d "2025-09-04T11:05:30Z" 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "PauseFeatureUpdatesEndTime" /t REG_SZ /d "2025-09-04T11:05:30Z" 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "PauseQualityUpdatesEndTime" /t REG_SZ /d "2025-09-04T11:05:30Z" 
echo GncelleŸtirmeler Manuel yaplyor...
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "NoAutoUpdate" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallDay" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "ScheduledInstallTime" 
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "RescheduleWaitTime" 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "AUOptions" /t REG_DWORD /d "2" 

echo Deneyim geliŸtirme programna izin ver(NVIDIA Srcs) kapatlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /f /v "OptInOrOutPreference" /t REG_DWORD /d 0 

echo Deneyler kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowExperimentation" /t REG_DWORD /d 0 

echo SecurityHealth Devre dŸ braklyor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v "SecurityHealth" 
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /f /v "SecurityHealth" 

echo Metadata izleme dosyalar kaldrlyor...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" 

echo Dosya uzantlar aktifleŸtiriliyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "HideFileExt" /t REG_DWORD /d 0 

echo Otomatik oynatma kaldrlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /f /v "DisableAutoplay" /t REG_DWORD /d 1 

echo Son a‡lan belgelerin ge‡miŸi kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoRecentDocsHistory" /t REG_DWORD /d 0 

echo Windows'u kapatrken yeni a‡lan belgelerin ge‡miŸini temizle aktif ediliyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\" /f /v "ClearRecentDocsOnExit" /t REG_DWORD /d 1 

echo G”rev G”rnm Simgesi Kaldrlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowTaskViewButton" /t REG_DWORD /d 0 

echo Dosya kopyalama iletiŸim kutusuda daha fazla detay g”ster
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /f /v "EnthusiastMode" /t REG_DWORD /d 1 

echo Uygulamalarn arka planda ‡alŸmas engelleniyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "Migrated" /t REG_DWORD /d 4 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "GlobalUserDisabled" /t REG_DWORD /d 1 

echo Ayarlar uygulamasn ”nerilen i‡eri§i g”stermesi kapatlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 

echo HotSpot 2.0 devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WlanSvc\AnqpCache" /f /v "OsuRegistrationStatus" /t REG_DWORD /d 0 

echo Windows izleme uygulamas devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackProgs" /t REG_DWORD /d 0 

echo BaŸlang‡taki ”neriler kapatlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 

echo Cortana Kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" /f /v "AllowCortana" /t REG_DWORD /d 0 

echo Cortana Butonu kaldrlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowCortanaButton" /t REG_DWORD /d 0 

echo Edge i‡in SmartScreen devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /f /v "EnabledV9" /t REG_DWORD /d 0 

echo Yaz geliŸtirme i‡in Microsoft'a veri g”nderimi engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Input\TIPC" /f /v "Enabled" /t REG_DWORD /d 0 

echo GiriŸ verilerinin Microsoft'a g”nderilmesi engelleniyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Personalization\Settings" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 
reg add "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts " /t REG_DWORD /d 0 

echo Geri Bildirim frekans kapatlyor.
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /f /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 

echo Hzl EriŸimden Sk Kullanlanlar kaldrlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowFrequent" /t REG_DWORD /d 0 

echo Internet Explorer i‡in SmartScreen devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\PhishingFilter" /f /v "Enabledv9" /t REG_DWORD /d 0 

echo Konum Hizmetlerini kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowLocation" /t REG_DWORD /d 0 

echo Web Sitelerinin kullanc dil listesine eriŸimini engeller...
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 

echo Kullancnn di§er cihazlardaki uygulamalarn uygulamalar a‡mas engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /f /v "UserAuthPolicy" /t REG_DWORD /d 0 

echo K”t ama‡l uygulamalara karŸ SmartScreen kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "SmartScreenEnabled" /t REG_SZ /d "Off" 

echo G”z Atma Verilerinin Microsoft'a G”nderilmesi engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" /f /v "FPEnabled" /t REG_DWORD /d 0 

echo Skype KiŸiler ba§lants devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" /f /v "Skype-UserConsentAccepted" /t REG_DWORD /d 0 

echo Son kullanlan dosyalarn hzl eriŸimde g”rntlenmesi engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowRecent" /t REG_DWORD /d 0 

echo Tketici Deneyimi kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 

echo Tanlama verilerinin Microsoft'a g”nderilmesi engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 

echo Windows Kilit Ekran Spot IŸ§ kapatlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "RotatingLockScreenEnabled" /t REG_DWORD /d 0 

echo Windows'un bilgisayardaki etkinlikleri toplamas engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "PublishUserActivities" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 

echo Windows belge izleme ”zelli§i devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackDocs" /t REG_DWORD /d 0 

echo €evrimi‡i konuŸma hizmetleri devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\InputPersonalization" /f /v "AllowInputPersonalization" /t REG_DWORD /d 0 

echo ™nceden yklenmiŸ OEM uygulamalar devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "PreInstalledAppsEnabled" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 

echo ˜‡g”rsel yazma engelleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Input\Settings" /f /v "InsightsEnabled" /t REG_DWORD /d 0 

echo UAC devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d  0

echo Gvenli Masast devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "PromptOnSecureDesktop" /t REG_DWORD /d 0 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "PromptOnSecureDesktop" /t REG_DWORD /d 0 
 
echo Aktif baŸlk ‡ubuklarnda vurgu rengi aktif ediliyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\DWM" /f /v "ColorPrevalence" /t REG_DWORD /d 0 

echo Arama simge haline getiriliyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v "SearchboxTaskbarMode" /t REG_DWORD /d 1 

echo Atlama Listelerinde en son a‡lan ”§eler engelleniyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\Start" /f /v "HideRecentJumplists" /t REG_DWORD /d 1 

echo Bildirim Merkezi devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d 1 

echo Etkin olmayan baŸlklarn vurgu rengi ayarlanyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\DWM" /f /v "AccentColorInactive" /t REG_DWORD /d "5854282" 

echo Vurgu rengi ayarlanyor
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent" /f /v "AccentColorMenu" /t REG_DWORD /d "5854282" 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent" /f /v "StartColorMenu" /t REG_DWORD /d "5854282" 

echo Windows karŸlama deneyimi kapatlyor...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0 

echo KiŸiler G”rev €ubu§undan Kaldrlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /f /v "PeopleBand" /t REG_DWORD /d 0 

echo Masast simgeleri aktif hale getiriliyor...
REM Bu Bilgisayar
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 
REM Denetim Masas
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t REG_DWORD /d 0 
REM Kullanc Dosyalar
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /t REG_DWORD /d 0 
REM €”p kutusu
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{645FF040-5081-101B-9F08-00AA002F954E}" /t REG_DWORD /d 0 

echo G”rev ‡ubu§u Meet Now kaldrlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "HideSCAMeetNow" /t REG_DWORD /d 1 

echo Haberler ve ilgi alanlar kaldrlyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" /f /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d 2 

echo Odak Yardm aktifleŸtiriliyor
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours" /f /v "Enable" /t REG_DWORD /d 1 

echo Microsoft Store G”rev ‡ubu§una sabitleniyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "NoPinningStoreToTaskbar" /t REG_DWORD /d 0 

echo G”rev ‡ubu§u transparan ”zelli§i devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /f /v "EnableTransparency" /t REG_DWORD /d 0 

echo Windows ”nerileri devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SoftLandingEnabled" /t REG_DWORD /d 0 

echo ˜Ÿaret‡i hassasiyeti devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /f /v "MouseSpeed" /t REG_SZ /d 0 

echo Donanm hzlandrmal GPU Planlamas aktifleŸtiriliyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /f /v "HwSchMode" /t REG_DWORD /d 2 

echo Tam ekran optimizasyonlar devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 

echo Program uyumluluk yardmcs devre dŸ braklyor...
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /f /v "DisablePCA" /t REG_DWORD /d 1 

echo AyrlmŸ depolama alan devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "ShippedWithReserves" /t REG_DWORD /d 0 

echo Teslimat Optimizasyonu BITS hizmeti olarak ayarlanyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /f /v "DODownloadMode" /t REG_DWORD /d "100" 

echo Driverlar kurulu de§il ise kurulmas i‡in ayarlanyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /f /v "SearchOrderConfig" /t REG_DWORD /d 2 

echo Defender gncelleŸtirmeleri devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /f /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 

echo KonuŸma modellerinin gnceleŸtirmeleri devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "ModelDownloadAllowed" /t REG_DWORD /d 0 

echo Gncelleme sonras yeniden baŸlatma bildirimi devre dŸ braklyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "RestartNotificationsAllowed2" /t REG_DWORD /d 0 

echo Biyometrik Hizmetlerle oturum a‡ma kapatlyor...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Biometrics\Credential Provider" /f /v "Enabled" /t REG_DWORD /d 0 

echo Arama b”lm ayarlar dzenleniyor...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v "SearchboxTaskbarMode" /t REG_DWORD /d 0 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "DisableWebSearch" /t REG_DWORD /d 1 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowIndexingEncryptedStoresOrItems" /t REG_DWORD /d 0 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AlwaysUseAutoLangDetection" /t REG_DWORD /d 0 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "BingSearchEnabled" /t REG_DWORD /d 0 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaConsent" /t REG_DWORD /d 0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v "DeviceHistoryEnabled" /t REG_DWORD /d 0 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaInAmbientMode" /t REG_DWORD /d 0 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "HistoryViewEnabled" /t REG_DWORD 0 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "HasAboveLockTips" /t REG_DWORD /d 0 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /f /v "SafeSearchMode" /t REG_DWORD /d 0 
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /f /v "DisableSearchBoxSuggestions" /t REG_DWORD /d 1 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowCortana" /t REG_DWORD /d 0 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "DisableWebSearch" /t REG_DWORD /d 1 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowCloudSearch" /t REG_DWORD /d 0 
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts" /t REG_DWORD /d 0 
reg add "HKCU\Software\Microsoft\Personalization\Settings" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "VoiceActivationDefaultOn" /t REG_DWORD /d 0 
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "VoiceActivationEnableAboveLockscreen" /t REG_DWORD /d 0 
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "ModelDownloadAllowed" /t REG_DWORD /d 0 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" /f /v "DisableVoice" /t REG_DWORD /d 1 

echo  %ESC%[92m Ana Menye d”nmek i‡in herhangi bir tuŸa basnz.%ESC%[0m  
pause
goto anamenu

:ntliteservices
cls

mode con cols=90 lines=40
title OgnitorenKs Performance Edition

echo Akll Kart Hizmeti kapatlyor...
net stop SCardSvr
sc config SCardSvr start= disabled
echo Akll kart Cihaz Numaralandrma Hizmeti kapatlyor...
net stop ScDeviceEnum
sc config ScDeviceEnum start= disabled
echo Akll Kart Kaldrma ˜lkesi kapatlyor...
net stop SCPolicySvc
sc config SCPolicySvc start= disabled
echo AllJoyn Y”nlendirici Hizmeti kapatlyor...
net stop AJRouter
sc config AJRouter start= disabled
echo Ba§l Kullanc Deneyimleri ve Telemetrisi kapatlyor...
net stop DiagTrack
sc config DiagTrack start= disabled
echo Blok Dzeyinde Yedekleme Altyap Hizmeti kapatlyor...
net stop wbengine
sc config wbengine start= disabled
echo Co§rafi Konum Hizmeti kapatlyor...
net stop lfsvc
sc config lfsvc start= disabled
echo Czdan Hizmeti kapatlyor...
net stop WalletService
sc config WalletService start= disabled
echo Da§tlmŸ Ba§lant ˜zleme ˜stemcisi kapatlyor...
net stop TrkWks
sc config TrkWks start= disabled
echo TeŸhis ve Sorun giderme kapatlyor...
net stop diagsvc
sc config diagsvc start= disabled
echo Dokunmatik Klavyeyi ve El yazs Paneli Hizmeti kapatlyor...
net stop TabletInputService
sc config TabletInputService start= disabled
echo Ebeveyn Denetimleri kapatlyor...
net stop WpcMonSvc
sc config WpcMonSvc start= disabled
echo Fax kapatlyor...
net stop Fax
sc config Fax start= disabled
echo Grafik Performans ˜zleme Hizmeti kapatlyor...
net stop GraphicsPerfSvc
sc config GraphicsPerfSvc start= disabled
echo Gvenlik Merkezi kapatlyor...
net stop wscsvc
sc config wscsvc start= disabled
echo ˜letiŸim verileri (KiŸi Verileri) kapatlyor...
net stop PimIndexMaintenanceSvc
sc config PimIndexMaintenanceSvc start= disabled
echo Kurumsal Uygulama Y”netimi Hizmeti
net stop EntAppSvc
sc config EntAppSvc start= disabled
echo Microsoft Diagnostics Hub' Standart Toplayc Hizmeti
net stop diagnosticshub.standardcollector.service
sc config diagnosticshub.standardcollector.service start= disabled
echo Microsoft Edge GncelleŸtirmeleri kapatlyor...
net stop edgeupdate
net stop edgeupdatem
sc config edgeupdate start= disabled
sc config edgeupdatem start= disabled
echo Microsoft Windows SMS Y”nlendirme Hizmeti kapatlyor...
net stop SmsRouter
sc config SmsRouter start= disabled
echo Net TCP Ba§lant Noktas PaylaŸtrma Hizmeti kapatlyor...
net stop NetTcpPortSharing
sc config NetTcpPortSharing start= disabled
echo Otomatik Saat Dilimi GncelleŸtirici kapatlyor...
net stop tzautoupdate
sc config tzautoupdate start= disabled
echo Perakende G”steri Hizmeti kapatlyor...
net stop RetailDemo
sc config RetailDemo start= disabled
echo Yazc Hizmetleri kapatlyor...
net stop PrintWorkflowUserSvc
sc config PrintWorkflowUserSvc start= disabled
net stop Spooler 
sc config Spooler start= disabled
echo Program Uyumluluk Yardmcs Hizmeti kapatlyor...
net stop PcaSvc
sc config PcaSvc start= disabled
echo Radyo Y”netimi Hizmeti kapatlyor...
net stop RmSvc
sc config RmSvc start= disabled
echo Resim alma olaylar(WIA) kapatlyor...
net stop WiaRpc
sc config WiaRpc start= disabled
net stop stisvc
sc config stisvc start= disabled
echo Windows Defender kapatlyor...
net stop Sense
sc delete Sense start= disabled
net stop WdNisSvc
sc config WdNisSvc start= disabled
net stop SecurityHealthService
sc config SecurityHealthService start= disabled
echo SysMain (Superfetch) kapatlyor...
net stop Sysmain
sc config Sysmain start= disabled
echo Sistem Koruma €alŸma Zaman ˜zleyicisi Aracs kapatlyor... 
net stop SgrmBroker
sc config SgrmBroker start= disabled
echo Telefon Hizmeti kapatlyor...
net stop TapiSrv
sc config TapiSrv start= disabled
net stop PhoneSvc
sc config PhoneSvc start= disabled
echo Teslim En ˜yileŸtirme kapatlyor...
net stop DoSvc
sc config DoSvc start= disabled
echo Uzak Kayt Defteri kapatlyor...
net stop RemoteRegistry
sc config RemoteRegistry start= disabled
echo Uzak Masast Hizmetleri kapatlyor...
net stop TermService
sc config TermService start= disabled
net stop UmRdpService
sc config UmRdpService start= disabled
net stop SessionEnv
sc config SessionEnv start= disabled
echo Windows Karma Ger‡eklik kapatlyor...
net stop SharedRealitySvc
sc config SharedRealitySvc start= disabled
net stop VacSvc
sc config VacSvc start= disabled
net stop perceptionsimulation
sc config perceptionsimulation start= disabled
net stop spectrum
sc config spectrum start= disabled
net stop MixedRealityOpenXRSvc
sc config MixedRealityOpenXRSvc start= disabled
echo Veri Kullanm kapatlyor...
net stop DusmSvc
sc config DusmSvc start= disabled
echo Windows Biyometrik Hizmeti kapatlyor...
net stop WbioSrvc
sc config WbioSrvc start= disabled
echo Windows Hata Raporlama Hizmeti kapatlyor...
net stop WerSvc
sc config WerSvc start= disabled
echo Windows Insider Hizmeti kapatlyor...
net stop wisvc
sc config wisvc start= disabled
echo Windows Kamera €er‡eve Sunucusu kapatlyor...
net stop FrameServer
sc config FrameServer start= disabled
echo Windows Search kapatlyor...
net stop WSearch
sc config WSearch start= disabled
echo Windows Yedekleme kapatlyor...
net stop SDRSVC
sc config SDRSVC start= disabled
echo €evrimdŸ Dosyalar kapatlyor...
net stop CscService 
sc config CscService start= disabled
echo ™deme ve NFC/SE Y”neticisi kapatlyor...
net stop SEMgrSvc
sc config SEMgrSvc start= disabled
echo ™nerilen Sorun Giderme Hizmeti kapatlyor...
net stop TroubleshootingSvc
sc config TroubleshootingSvc start= disabled
echo ˜ndirilen Haritalar Y”neticisi kapatlyor...
net stop MapsBroker
sc config MapsBroker start= disabled
echo TCP Port kapatlyor...
net stop NetTcpPortSharing
sc config NetTcpPortSharing start= disabled

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
echo     %ESC%[92m3.%ESC%%ESC%[33m Admin grubuna Kullanc ekle%ESC%[0m
echo     %ESC%[92m4.%ESC%%ESC%[33m Kullanc ekle%ESC%[0m
echo     %ESC%[92m5.%ESC%%ESC%[33m Kullanc sil%ESC%[0m
echo     %ESC%[92m6.%ESC%%ESC%[33m žifremi unuttum%ESC%[0m
echo     %ESC%[92m7.%ESC%%ESC%[93m CMD%ESC%[0m
echo     %ESC%[92m8.%ESC%%ESC%[93m Ana Men%ESC%[0m
echo     %ESC%[92m0.%ESC%%ESC%[91m €kŸ%ESC%[0m
echo   ===================================================

set /p adminmenu=%ESC%[92m Yapmak istedi§iniz iŸlem : %ESC%[0m
	if %adminmenu%==1 GOTO adminaktif
	if %adminmenu%==2 GOTO adminpasif
	if %adminmenu%==3 GOTO grupadmin
	if %adminmenu%==4 GOTO newusers
	if %adminmenu%==5 GOTO delusers
	if %adminmenu%==6 GOTO userskey
	if %adminmenu%==7 (powershell -command "Start-Process 'cmd' -Verb RunAs")
	if %adminmenu%==8 GOTO menu
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
timeout /t 3 /nobreak 
goto adminmenu

:adminpasif
cls
mode con cols=55 lines=20
title Kullanc ˜Ÿlemleri \ OgnitorenKs
net user Administrator /active:no
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:grupadmin
cls
mode con cols=55 lines=20
title Kullanc ˜Ÿlemleri \ OgnitorenKs
net localgroup Administrators %username% /add 
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:newusers
cls
mode con cols=55 lines=20
title Kullanc ˜Ÿlemleri \ OgnitorenKs
set /p newuserss=%ESC%[92m Ltfen Kullanc Adnz Giriniz:%ESC%[0m 

net user %newuserss% * /add

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:delusers
cls
mode con cols=55 lines=20
title Kullanc ˜Ÿlemleri \ OgnitorenKs
set /p deluserss=%ESC%[92m Ltfen Kullanc Adnz Giriniz:%ESC%[0m 

net user %deluserss% /delete

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu


:userskey
cls
mode con cols=55 lines=20
title Kullanc ˜Ÿlemleri \ OgnitorenKs
set /p userskey=%ESC%[92mLtfen kullanc adnz yaznz:%ESC%[0m

net user %userskey% *

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:fat32tontfs
cls

set /p diskharfi=%ESC%[92m Disk harfini yaznz:%ESC%[0m
	if %diskharfi%==0 GOTO menu
	
echo Dikkat %diskharfi% diski NTFS d”nŸtrlyor. 
echo Devam etmek i‡in herhangi bir tuŸa basnz.
pause

convert %diskharfi%: /fs:NTFS /v

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto menu


:slmgrvbs
mode con cols=55 lines=20
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

set /p adminmenu=%ESC%[92m Yapmak istedi§iniz iŸlem : %ESC%[0m
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

set /p slmgrlisans= %ESC%[92m Lisans yaznz:%ESC%[0m

slmgr /ipk %slmgrlisans%

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak 
goto slmgrvbs


:systeminfo
cls
mode con cols=80 lines=90

echo  ==============================================================================
echo                                 %ESC%[92m S˜STEM HAKKINDA%ESC%[0m
echo  ==============================================================================
echo    %ESC%[7m ISLETIM SISTEMI %ESC%[0m
echo .
FOR /F "tokens=2 delims='='" %%A in ('wmic os get Caption /value') do SET caption=%%A
echo  %ESC%[92m Sistem:%ESC%%ESC%[37m %caption%%ESC%[0m
FOR /F "tokens=2 delims='='" %%A in ('wmic os get OSArchitecture /value') do SET osarchitecture=%%A
echo  %ESC%[92m Mimari:%ESC%%ESC%[37m %osarchitecture%%ESC%[0m
FOR /F "tokens=2 delims='='" %%A in ('wmic os get BuildNumber /value') do SET buildnumber=%%A
echo  %ESC%[92m Srm:%ESC%%ESC%[37m %buildnumber% %ESC%[0m
FOR /F "tokens=*" %%f in ('bcdedit ^| findstr /C:"winload.efi"') do SET gereksiz=%%f
	if %errorlevel%==0 set uefi=UEFI (GPT)
	if %errorlevel%==1 set bioss=BIOS (MBR)
echo  %ESC%[92m Ykleme:%ESC%%ESC%[37m %uefi%%bioss%%ESC%[0m
echo .
echo    %ESC%[7m ANAKART %ESC%[0m
echo .
FOR /F "tokens=2 delims='='" %%A in ('wmic baseboard get Manufacturer /value') do SET boardmarka=%%A
echo  %ESC%[92m Marka:%ESC%%ESC%[37m %boardmarka%%ESC%[0m  
FOR /F "tokens=2 delims='='" %%A in ('wmic ComputerSystem Get Model /value') do SET board=%%A 
echo  %ESC%[92m Model:%ESC%%ESC%[37m %board%%ESC%[0m
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu get SocketDesignation /value') do SET boardsoket=%%A
echo  %ESC%[92m Soket:%ESC%%ESC%[37m %boardsoket%%ESC%[0m
FOR /F "tokens=2 delims='='" %%A in ('wmic bios Get name /value') do SET bios=%%A
echo  %ESC%[92m Bios:%ESC%%ESC%[37m %bios%%ESC%[0m
echo .
echo    %ESC%[7m ISLEMCI(CPU) %ESC%[0m 
echo .
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get name /value') do SET cpu=%%A
echo  %ESC%[92m ˜Ÿlemci:%ESC%%ESC%[37m %cpu% %ESC%[0m 
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get NumberOfCores /value') do SET cpucekirdek=%%A
echo  %ESC%[92m €ekirdek:%ESC%%ESC%[37m %cpucekirdek% %ESC%[0m   
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get NumberOfLogicalProcessors /value') do SET cpusanalcekirdek=%%A
echo  %ESC%[92m Sanal €ekirdek:%ESC%%ESC%[37m %cpusanalcekirdek%%ESC%[0m
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get L2CacheSize /value') do SET cpul2=%%A
set /a cpul22=(%cpul2%/1024)
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get L3CacheSize /value') do SET cpul3=%%A
set /a cpul33=(%cpul3%/1024)
echo  %ESC%[92m L2Cache:%ESC%%ESC%[37m %cpul22% MB%ESC%%ESC%[92m L3Cache:%ESC%%ESC%[37m %cpul33% MB%ESC%[0m
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get ThreadCount /value') do SET cpunano=%%A
echo  %ESC%[92m ™l‡:%ESC%%ESC%[37m %cpunano% NM%ESC%[0m
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get DataWidth /value') do SET cpubit=%%A
echo  %ESC%[92m B˜T:%ESC%%ESC%[37m %cpubit%%ESC%[0m
echo .
echo    %ESC%[7m EKRAN KARTI(GPU) %ESC%[0m 
echo .
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_videocontroller get name /value') do SET gpu=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_videocontroller get AdapterRAM /value') do SET gpuram=%%A
set gpuram=%gpuram:~0,-4%
set /a gpuram2=(%gpuram%/1024/1024)
echo  %ESC%[92m Model:%ESC%%ESC%[37m %gpu%%ESC% %ESC%[92m VRAM:%ESC%%ESC%[37m %gpuram2% GB%ESC%[0m 
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_videocontroller get DriverVersion /value') do SET gpudriver=%%A
echo  %ESC%[92m Driver:%ESC%%ESC%[37m %gpudriver%%ESC%[0m
echo .
echo    %ESC%[7m MONITOR %ESC%[0m 
echo .
FOR /F "tokens=2 delims='='" %%A in ('wmic desktopmonitor get Caption /value') do SET monitor=%%A
echo  %ESC%[92m Model:%ESC% %ESC%[37m %monitor%%ESC%[0m 
FOR /F "tokens=2 delims='='" %%A in ('wmic path Win32_VideoController get CurrentHorizontalResolution /value') do SET horizontalx=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path Win32_VideoController get CurrentVerticalResolution /value') do SET verticalx=%%A
echo  %ESC%[92m €”znrlk:%ESC%%ESC%[37m %horizontalx% x %verticalx%%ESC%[0m
FOR /F "tokens=2 delims='='" %%A in ('wmic path Win32_VideoController get CurrentRefreshRate /value') do SET hertz=%%A
echo  %ESC%[92m Hertz:%ESC%%ESC%[37m %hertz%%ESC%[0m
echo  ..............................................................................
echo  %ESC%[91m Monit”r driver ykl de§ilse model g”rnmez%ESC%[0m 
echo  %ESC%[91m GPU driver' ykl de§ilse veya hatalysa Hertz de§eri 1 olarak g”rnecektir%ESC%[0m
echo  .............................................................................. 
echo .
echo    %ESC%[7m RAM %ESC%[0m 
echo .
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip get Manufacturer /value') do SET rammarka=%%A
echo  %ESC%[92m Marka:%ESC%%ESC%[37m %rammarka%%ESC%[0m   
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip get PartNumber /value') do SET ramnumber=%%A
echo  %ESC%[92m Model:%ESC%%ESC%[37m %ramnumber%%ESC%[0m
FOR /F "tokens=2 delims='='" %%A in ('WMIC ComputerSystem get TotalPhysicalMemory /value') do SET ramtotal=%%A
set ramtotal=%ramtotal:~0,-4%
set /a ramtotal2=(%ramtotal%/1024/1024)
echo  %ESC%[92m Ram:%ESC%%ESC%[37m %ramtotal2% GB%ESC%[0m
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip get Speed /value') do SET ramspeed=%%A
echo  %ESC%[92m MHZ:%ESC%%ESC%[37m %ramspeed%%ESC%[0m
echo .
echo    %ESC%[7m KULLANICI BILGILERI %ESC%[0m 
echo .
FOR /F "tokens=2 delims='='" %%A in ('wmic os get RegisteredUser /value') do SET registereduser=%%A
echo  %ESC%[92m Kullanc:%ESC%%ESC%[37m %registereduser%%ESC%[0m   
FOR /F "tokens=2 delims='='" %%A in ('wmic os get CSName /value') do SET pcname=%%A
echo  %ESC%[92m Bilgisayar Ad:%ESC%%ESC%[37m %pcname%%ESC%[0m  
echo .
echo    %ESC%[7m INTERNET DURUMU %ESC%[0m 
echo .
ping -n 1 youtube.com -w 20000 >nul
	if %errorlevel%==0 set neton= Online
	if %errorlevel%==1 set netof= Offline
echo  %ESC%[92m Internet:%ESC%%ESC%[37m %neton%%netof% %ESC%[0m 
echo  ==========================================
pause
goto menu

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0