echo off
cls
mode con cols=109 lines=38
title OgnitorenKs TOOLBOX 

setlocal
call :setESC

:yonetici
cls

net session >NUL 2>&1|| powershell Start-Process '%0' -Verb RunAs&& exit /b|| exit /b

goto kontrol

:kontrol
cls
pushd "%~dp0"

cd %programfiles(x86)% > NUL 2>&1
	if %errorlevel%==0 goto anamenux
else
    echo Sistem mimarisi x64 de§il, ‡kŸ yaplyor...
	timeout /t 5 /nobreak
	exit

:anamenux
cls

mode con cols=109 lines=43

echo   ========================================================================================================
echo   %ESC%[7m......................................... OgnitorenKs TOOLBOX ..........................................%ESC%[0m
echo   %ESC%[7m........................................... Ayar / Download ............................................%ESC%[0m
echo   ========================================================================================================
echo              %ESC%[91m01.%ESC%%ESC%[92m [WGET YšKLE]%ESC%%ESC%[91m Krmz numaral iŸlemler i‡in wget.exe kurulmas gerekmektedir.%ESC%[0m 
echo   ========================================================================================================
echo                                  %ESC%[91m1.%ESC%%ESC%[96m All in One Runtimes(C++, Java, Directx)%ESC%[0m 
echo   --------------------------------------------------------------------------------------------------------
echo                     %ESC%[92mHATA /AYAR%ESC%[0m                        -              %ESC%[92mKATILIMSIZ (ONLINE)%ESC%[0m
echo   --------------------------------------------------------------------------------------------------------
echo    %ESC%[92m 2.%ESC% %ESC%[33m Windows Store 0x800706D9 onar%ESC%[0m                  -  %ESC%[91m 23.%ESC% %ESC%[36m Google Chrome%ESC%[0m 
echo    %ESC%[92m 3.%ESC% %ESC%[33m WinSxS Temizle%ESC%[0m                                 -  %ESC%[91m 24.%ESC% %ESC%[36m Mozilla Firefox%ESC%[0m 
echo    %ESC%[92m 4.%ESC% %ESC%[33m Sistemi Onar%ESC%[0m                                   -  %ESC%[91m 25.%ESC% %ESC%[36m Brave%ESC%[0m 
echo    %ESC%[92m 5.%ESC% %ESC%[33m OneDrive Kaldr%ESC%[0m                                -  %ESC%[92m 26.%ESC% %ESC%[36m K-Lite Codec Pack%ESC%[0m 
echo    %ESC%[92m 6.%ESC% %ESC%[33m Defender, SmartScreen Kapat%ESC%[0m                    -  %ESC%[92m 27.%ESC% %ESC%[36m OpenShell%ESC%[0m
echo    %ESC%[92m 7.%ESC% %ESC%[33m SMB1 kapat (WannaCry a‡§)%ESC%[0m                    -  %ESC%[92m 28.%ESC% %ESC%[36m 7 - Zip%ESC%[0m 
echo    %ESC%[92m 8.%ESC% %ESC%[33m HPET, HyperV, Dynamictick Kapat (Performans)%ESC%[0m   -  %ESC%[92m 29.%ESC% %ESC%[36m Hibit Uninstaller%ESC%[0m      
echo    %ESC%[92m 9.%ESC% %ESC%[33m Ksayol yazsn kaldr%ESC%[0m                        -  %ESC%[92m 30.%ESC% %ESC%[36m SSD Fresh%ESC%[0m 
echo   %ESC%[92m 10.%ESC% %ESC%[33m Prefetch kapat%ESC%[0m                                 -  %ESC%[92m 31.%ESC% %ESC%[36m Notepad%ESC%[0m 
echo   %ESC%[92m 11.%ESC% %ESC%[33m 255 karakter snrn kaldr%ESC%[0m                   -  %ESC%[91m 32.%ESC% %ESC%[36m Adobe Reader%ESC%[0m
echo   %ESC%[92m 12.%ESC% %ESC%[33m Qos limit kaldr%ESC%[0m                               -  %ESC%[91m 33.%ESC% %ESC%[36m Libre Office%ESC%[0m 
echo   %ESC%[92m 13.%ESC% %ESC%[33m Hiberboot kapat%ESC%[0m                                -  %ESC%[91m 34.%ESC% %ESC%[36m Office 2019%ESC%[0m 
echo   %ESC%[92m 14.%ESC% %ESC%[33m UAC Kapat%ESC%[0m                                      -  %ESC%[92m 35.%ESC% %ESC%[36m Free Download Manager%ESC%[0m 
echo   %ESC%[92m 15.%ESC% %ESC%[33m Gncellemeler i‡in "AyrlmŸ B”lm" kapat%ESC%[0m     -  %ESC%[91m 36.%ESC% %ESC%[36m Steam%ESC%[0m 
echo   %ESC%[92m 16.%ESC% %ESC%[33m "Windows Foto§raf G”rntleyicisini" aktif et%ESC%[0m  -  %ESC%[92m 37.%ESC% %ESC%[36m Epic Games%ESC%[0m 
echo   %ESC%[92m 17.%ESC% %ESC%[33m Nihai Performans ekle ve kullan%ESC%[0m                -  %ESC%[92m 38.%ESC% %ESC%[36m Stellarium%ESC%[0m 
echo   %ESC%[92m 18.%ESC% %ESC%[33m Home / S.Language "Gpedit.msc" ekle%ESC%[0m            -  %ESC%[92m 39.%ESC% %ESC%[36m Unlocker%ESC%[0m 
echo   %ESC%[92m 19.%ESC% %ESC%[33m PC ‡”plerden arndr%ESC%[0m                           -
echo   %ESC%[92m 20.%ESC% %ESC%[33m Sahipli§i al "ekle / kaldr"%ESC%%ESC%[92m [MENš]%ESC%[0m            -  
echo   %ESC%[92m 21.%ESC% %ESC%[33m Svchost.exe btnleŸtir %ESC%%ESC%[92m [MENš]%ESC%[0m   
echo   %ESC%[92m 22.%ESC% %ESC%[33m Administrator Aktif / Pasif yap %ESC%%ESC%[92m [MENš]%ESC%[0m   
echo   --------------------------------------------------------------------------------------------------------
echo                               %ESC%[92m 99.%ESC%%ESC%[96m Sistem Hakknda%ESC%[0m    -  %ESC%[92m 77.%ESC% %ESC%[36m Ping ”l‡er %ESC%[0m 
echo   --------------------------------------------------------------------------------------------------------
echo                                                  %ESC%[91m0. €kŸ yap%ESC%[0m
echo   --------------------------------------------------------------------------------------------------------  
 
set /p anamenux=%ESC%[92mLtfen yapmak istedi§iniz iŸlemi tuŸlaynz:%ESC%[0m
	if %anamenux%==01 GOTO wgetinstall
	if %anamenux%==1 GOTO winaio
	if %anamenux%==2 GOTO 800706D9
	if %anamenux%==3 GOTO winsxs
	if %anamenux%==4 GOTO winrepair
	if %anamenux%==5 GOTO onedrive	
	if %anamenux%==6 GOTO security
	if %anamenux%==7 GOTO smb1
	if %anamenux%==8 GOTO hpet
	if %anamenux%==9 GOTO kisayol
	if %anamenux%==10 GOTO prefetch	
	if %anamenux%==11 GOTO 255	
	if %anamenux%==12 GOTO qos
	if %anamenux%==13 GOTO hiberboot
	if %anamenux%==14 GOTO uac
	if %anamenux%==15 GOTO ayrilmisbolum
	if %anamenux%==16 GOTO eskifoto
	if %anamenux%==17 GOTO nihai	
	if %anamenux%==18 GOTO gpedit
	if %anamenux%==19 GOTO arindir
	if %anamenux%==20 GOTO sahiplik
	if %anamenux%==21 GOTO svchostmenu
	if %anamenux%==22 GOTO adminmenu
	if %anamenux%==23 GOTO chrome
	if %anamenux%==24 GOTO firefox
	if %anamenux%==25 GOTO brave
	if %anamenux%==26 GOTO klite
	if %anamenux%==27 GOTO openshell
	if %anamenux%==28 GOTO 7zip
	if %anamenux%==29 GOTO hibit
	if %anamenux%==30 GOTO ssdfresh
	if %anamenux%==31 GOTO notepad
	if %anamenux%==32 GOTO reader
	if %anamenux%==33 GOTO libreoffice
	if %anamenux%==34 GOTO officefull
	if %anamenux%==35 GOTO freedm
	if %anamenux%==36 GOTO steam
	if %anamenux%==37 GOTO epicgames
	if %anamenux%==38 GOTO stellarium
	if %anamenux%==39 GOTO unlocker
	if %anamenux%==77 GOTO pingolc
	if %anamenux%==99 GOTO systeminfo
	if %anamenux%==0 GOTO exit
	if %anamenux%==exit GOTO exit
else 
    goto select

:pingolc
cls
mode con cols=60 lines=23

echo                  %ESC%[92m......OgnitorenKs......%ESC%[0m 
echo               %ESC%[92m.........P˜NG ™L€ER.........%ESC%[0m 
echo                  %ESC%[91mBitmedi bu ping ‡ilesi%ESC%[0m 




for /f "tokens=9" %%A in ('ping 52.28.63.252') do SET pubgeu=%%A
echo  ============================================
echo  %ESC%[93mPUBG Mobile Avrupa%ESC%[0m             %ESC%[92mPing:%ESC% %ESC%[37m %pubgeu% %ESC%[0m  
echo  ============================================
for /f "tokens=9" %%A in ('ping 162.249.79.1') do SET loltr=%%A
echo  %ESC%[93mLeague of Legends%ESC%[0m              %ESC%[92mPing:%ESC% %ESC%[37m %loltr% %ESC%[0m  
echo  ============================================
for /f "tokens=9" %%A in ('ping 52.58.81.34') do SET apex=%%A
echo  %ESC%[93mAPEX%ESC%[0m                           %ESC%[92mPing:%ESC% %ESC%[37m %apex% %ESC%[0m 
echo  ============================================
echo  %ESC%[91m 0. Ana menye d”n.%ESC%[0m  
echo  ============================================
	
set /p pingadress=%ESC%[92m ˜p adresi ve site adn yaznz:%ESC%[0m  
	if %pingadress%==0 goto anamenux
for /f "tokens=9" %%A in ('ping %pingadress%') do SET pingadres=%%A

echo  ============================================
echo  %ESC%[93m%pingadress%%ESC%[0m                     %ESC%[92mPing:%ESC% %ESC%[37m %pingadress% %ESC%[0m  
echo  ============================================

pause
goto anamenux

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
FOR /F "tokens=2 delims='='" %%A in ('WMIC ComputerSystem get TotalPhysicalMemory /value') do (SET ramtotal=%%A&%ramtotal:~0,-4%
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
goto anamenux

:adminmenu
mode con cols=55 lines=20
cls
echo                   %ESC%[92m Administrator Men%ESC%[0m
echo   ===================================================
echo     %ESC%[92m1.%ESC%%ESC%[33m Administrator aktif yap%ESC%[0m
echo     %ESC%[92m2.%ESC%%ESC%[33m Administrator pasif yap%ESC%[0m
echo     %ESC%[92m3.%ESC%%ESC%[33m Mevcut kullancy Admin grubuna ekle%ESC%[0m
echo     %ESC%[92m4.%ESC%%ESC%[33m Yeni bir kullanc ekle%ESC%[0m
echo     %ESC%[92m5.%ESC%%ESC%[33m Yazlan Kullancy sil%ESC%[0m
echo     %ESC%[92m6.%ESC%%ESC%[33m žifremi unuttum [Katlmsz]%ESC%[0m
echo     %ESC%[92m7.%ESC%%ESC%[33m žifremi unuttum [Manuel]%ESC%[0m
echo     %ESC%[92m8.%ESC%%ESC%[33m Ana menuye d”n%ESC%[0m
echo     %ESC%[92m9.%ESC%%ESC%[91m €kŸ yap%ESC%[0m
echo   ===================================================

set /p adminmenu=%ESC%[92mLtfen yapmak istedi§iniz iŸlemi se‡iniz:%ESC%[0m
	if %adminmenu%==1 GOTO adminaktif
	if %adminmenu%==2 GOTO adminpasif
	if %adminmenu%==3 GOTO grupadmin
	if %adminmenu%==4 GOTO newusers
	if %adminmenu%==5 GOTO delusers
	if %adminmenu%==6 GOTO userskey1
	if %adminmenu%==7 GOTO userskey2
	if %adminmenu%==8 GOTO anamenux
	if %adminmenu%==9 GOTO exit
else
	goto adminmenu
	
:adminaktif
cls

net user administrator /active:yes
net user administrator *
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz..%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:adminpasif
cls

net user Administrator /active:no
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz..%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:grupadmin
cls

net localgroup Administrators %username% /add 
echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz..%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:newusers
cls

set /p newuserss=%ESC%[92m Ltfen Kullanc Adnz Giriniz:%ESC%[0m 

net user %newuserss% * /add

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz..%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:delusers
cls

set /p deluserss=%ESC%[92m Ltfen Kullanc Adnz Giriniz:%ESC%[0m 

net user %deluserss% /delete

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz..%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:userskey1
cls

echo  %ESC%[92m Ltfen yeni Ÿifrenizi giriniz.%ESC%[0m

net user %username% *

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz..%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:userskey2
cls

set /p userskey2=%ESC%[92mLtfen kullanc adnz yaznz:%ESC%[0m

net user %userskey2% *

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz..%ESC%[0m
timeout /t 3 /nobreak 
goto adminmenu

:svchostmenu
cls
mode con cols=55 lines=20

echo     ============================================
echo                      %ESC%[96mOgnitorenKs%ESC%[0m
echo     ============================================
echo               %ESC%[92mSvchost.exe BtnleŸtirme %ESC%[0m
echo     ============================================
echo      %ESC%[92m1.%ESC%%ESC%[37m Svchost.exe RAM optimizasyon [Katlmsz]%ESC%[0m
echo      %ESC%[92m2.%ESC%%ESC%[37m Svchost.exe RAM optimizasyon [Manuel]%ESC%[0m
echo      %ESC%[92m3.%ESC%%ESC%[37m Varsaylan ayarlar geri ykle%ESC%[0m
echo      %ESC%[92m4.%ESC%%ESC%[37m Ana Menye geri d”n%ESC%[0m
echo      %ESC%[92m5.%ESC%%ESC%[91m €kŸ yap%ESC%[0m
echo     ============================================

set /p svchostmenu=   %ESC%[92m Ltfen yapmak istedi§iniz iŸlemi tuŸlaynz:%ESC%[0m
	if %svchostmenu%==1 GOTO svchostinsk
	if %svchostmenu%==2 GOTO svchostinsm
	if %svchostmenu%==3 GOTO svchostilk
	if %svchostmenu%==4 GOTO anamenux
	if %svchostmenu%==5 GOTO exit
else
	goto svchostmenu
	
:svchostinsk
cls

FOR /F "tokens=2 delims='='" %%A in ('WMIC ComputerSystem get TotalPhysicalMemory /value') do SET ramtotal=%%A
set ramtotal2=%ramtotal:~0,-4%
set /a ramtotal3=(%ramtotal2%/1049)
set /a ramtotalson=(%ramtotal3%*1024)

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x%ramtotalson% /f

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak

goto svchostmenu

:svchostinsm
cls
echo     ============================================
set /P svchostinsm= %ESC%[92mLtfen RAM miktarn rakam ile yaznz:%ESC%[0m

set /a manuelram=(%svchostinsm%*1024*1024)

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x%manuelram% /f

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak

goto svchostmenu

:svchostilk
cls

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x380000 /f

echo %ESC%[92m ˜Ÿlem tamamland. Menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak

goto svchostmenu

powershell -command "Get-Appxpackage -Allusers" > %homepath%\desktop\storeuygulama.txt

:800706D9
cls       
echo   %ESC%[92m0x800706D9 hatas gideriliyor%ESC%[0m

sc start "StorSvc"
sc config "StorSvc" start= auto

echo  %ESC%[92m˜Ÿlem tamamland. Anamenye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux

:winsxs
cls

echo             %ESC%[92m.............OgnitorenKs.............%ESC%[0m
echo %ESC%[92m......................WinSxS temizleniyor......................%ESC%[0m

DISM /Online /Cleanup-Image /StartComponentCleanup

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux

:winrepair
cls

echo        %ESC%[92m............................OgnitorenKs............................%ESC%[0m
echo   %ESC%[92m............................Windows 10 onarlyor............................%ESC%[0m
echo        %ESC%[92m..........................Ltfen Bekleyiniz........................%ESC%[0m

sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:onedrive
cls

echo        %ESC%[92m............................OgnitorenKs............................%ESC%[0m
echo     %ESC%[92m..........................OneDrive kaldrlyor ..........................%ESC%[0m
echo        %ESC%[92m.........................Ltfen Bekleyiniz........................%ESC%[0m

set x86="%SYSTEMROOT%\System32\OneDriveSetup.exe"
set x64="%SYSTEMROOT%\SysWOW64\OneDriveSetup.exe"
echo  %ESC%[92mClosing OneDrive process%ESC%[0m
taskkill /f /im OneDrive.exe > NUL 2>&1
ping 127.0.0.1 -n 5 > NUL 2>&1
echo  %ESC%[92mUninstalling OneDrive%ESC%[0m
if exist %x64% (
%x64% /uninstall
) else (
%x86% /uninstall
)
ping 127.0.0.1 -n 5 > NUL 2>&1
echo  %ESC%[92mRemoving OneDrive leftovers%ESC%[0m
rd "%USERPROFILE%\OneDrive" /Q /S > NUL 2>&1
rd "C:\OneDriveTemp" /Q /S > NUL 2>&1
rd "%LOCALAPPDATA%\Microsoft\OneDrive" /Q /S > NUL 2>&1
rd "%PROGRAMDATA%\Microsoft OneDrive" /Q /S > NUL 2>&1 
echo  %ESC%[92mRemoving OneDrive from the Explorer Side Panel%ESC%[0m
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f > NUL 2>&1
REG DELETE "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f > NUL 2>&1

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:nihai
cls

echo        %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m..................Nihai performans g‡ se‡ene§i ekleniyor..................%ESC%[0m

powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"Nihai"') do set nihaiekle=%%f
powercfg -setactive %nihaiekle%
powercfg -setacvalueindex scheme_current sub_processor 0cc5b647-c1df-4637-891a-dec35c318583 100

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:gpedit
cls

echo        %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo  %ESC%[92m........................gpedit.msc ekleniyor........................%ESC%[0m

pushd "%~dp0" 

dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt 
dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt 

for /f %%i in ('findstr /i . List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i" 
pause

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:hpet
cls

echo         %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m..................HPET, HyperV, Dynamictick kapatlyor..................%ESC%[0m

bcdedit /set useplatformclock no
bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick yes
bcdedit /set hypervisorlaunchtype off

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:255
cls

echo          %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m......................255 karakter snr kaldrlyor......................%ESC%[0m


reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d 1 /f 

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:ayrilmisbolum
cls

echo        %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo     %ESC%[92m........Gncellemeler i‡in "ayrlmŸ b”lm" kaldrlyor........%ESC%[0m

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "ShippedWithReserves" /t REG_DWORD /d 0 /f 

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:prefetch
cls

echo        %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m.........................Prefetch kapatlyor.........................%ESC%[0m

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperFetch" /t REG_DWORD /d 0 /f 

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:qos
cls

echo        %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m...................Qos paket zamanlaycs kapatlyor...................%ESC%[0m

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d 0 /f 

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:security
cls

echo        %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m..............SmartScreen, Security, Defender Kapatlyor..............%ESC%[0m

echo  %ESC%[92mDefender korumas devre dŸ braklyor...%ESC%[0m
powershell -command "Set-MpPreference -DisableRealtimeMonitoring $True"

echo  %ESC%[92mDefender kaldrlyor...%ESC%[0m
Dism /Online /Disable-Feature /FeatureName:Windows-Defender /Remove /NoRestart /quiet

echo  %ESC%[92mRegedit zerinden Defender, SmartScreen, Security kapatlyor...%ESC%[0m
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "ContentEvaluation" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
REG ADD "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\DiagTrack" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\DiagTrack" /v "Start" /t REG_DWORD /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "ScanWithAntiVirus" /t REG_DWORD /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /v "Start" /t REG_DWORD /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinDefend" /v "Start" /t REG_DWORD /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v DontSendAdditionalData /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices" /v TCGSecurityActivationDisabled /t REG_DWORD /d 0 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f

echo  %ESC%[92mG”rev zamanlaycsnda Defender kapatlyor...%ESC%[0m
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /f 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /f 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /f 
schtasks /delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /f 

echo  %ESC%[92mHizmetler b”lmnde engellemeler yaplyor...%ESC%[0m
net stop "wscsvc"
sc config "wscsvc" start=disabled

net stop "SecurityHealthService"
sc config SecurityHealthService start= disabled

net stop "diagnosticshub.standardcollector.service"
sc config diagnosticshub.standardcollector.service start= disabled

net stop "dmwappushservice"
sc config dmwappushservice start= disabled

net stop "WinDefend"
sc config "WinDefend" start= disabled

echo  %ESC%[92mwindir'deki smartscreen dosyalar siliniyor...%ESC%[0m
taskkill /f /im smartscreen.exe
takeown /f "%windir%\System32\smartscreen.exe"
cacls "%windir%\System32\smartscreen.exe" /G %username%:F > echo Y
ren "%windir%\System32\smartscreen.exe" "smartscreen.old.exe"

taskkill /f /im CompatTelRunner.exe
takeown /f "%windir%\System32\CompatTelRunner.exe"
cacls "%windir%\System32\CompatTelRunner.exe" /G %username%:F > echo Y
ren "%windir%\System32\CompatTelRunner.exe" "CompactTelRunner.old.exe"

taskkill /f /im SgrmBroker.exe
takeown /f "%windir%\System32\SgrmBroker.exe"
cacls "%windir%\System32\SgrmBroker.exe" /G %username%:F > echo Y
ren "%windir%\System32\SgrmBroker.exe" "SgrmBroker.old.exe"

goto securityhost

:securityhost
cls

echo            %ESC%[92m................OgnitorenKs................%ESC%[0m
echo  %ESC%[92mTelemetry ba§lantsn kesmek i‡in host dosyasna eklemeler yaplyor...%ESC%[0m

SET NEWLINE=^& echo.

FIND /C /I "telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 telemetry.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "vortex.data.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 vortex.data.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "vortex-win.data.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 vortex-win.data.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "telecommand.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 telecommand.telemetry.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "telecommand.telemetry.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 telecommand.telemetry.microsoft.com.nsatc.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "oca.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 oca.telemetry.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "oca.telemetry.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 oca.telemetry.microsoft.com.nsatc.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "sqm.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 sqm.telemetry.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "sqm.telemetry.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 sqm.telemetry.microsoft.com.nsatc.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "watson.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 watson.telemetry.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "watson.telemetry.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 watson.telemetry.microsoft.com.nsatc.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "redir.metaservices.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 redir.metaservices.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "choice.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 choice.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "choice.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 choice.microsoft.com.nsatc.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "df.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 df.telemetry.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "wes.df.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 wes.df.telemetry.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "reports.wes.df.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 reports.wes.df.telemetry.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "services.wes.df.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 services.wes.df.telemetry.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "sqm.df.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 sqm.df.telemetry.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "watson.ppe.telemetry.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 watson.ppe.telemetry.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "telemetry.appex.bing.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 telemetry.appex.bing.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "telemetry.urs.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 telemetry.urs.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "telemetry.appex.bing.net:443" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 telemetry.appex.bing.net:443>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "settings-sandbox.data.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 settings-sandbox.data.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "vortex-sandbox.data.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 vortex-sandbox.data.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "watson.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 watson.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "survey.watson.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 survey.watson.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "watson.live.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 watson.live.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "statsfe2.ws.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 statsfe2.ws.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "corpext.msitadfs.glbdns2.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 corpext.msitadfs.glbdns2.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "compatexchange.cloudapp.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 compatexchange.cloudapp.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "cs1.wpc.v0cdn.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 cs1.wpc.v0cdn.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "a-0001.a-msedge.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 a-0001.a-msedge.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "fe2.update.microsoft.com.akadns.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 fe2.update.microsoft.com.akadns.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "statsfe2.update.microsoft.com.akadns.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 statsfe2.update.microsoft.com.akadns.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "sls.update.microsoft.com.akadns.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 sls.update.microsoft.com.akadns.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "diagnostics.support.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 diagnostics.support.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "corp.sts.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 corp.sts.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "statsfe1.ws.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 statsfe1.ws.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "pre.footprintpredict.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 pre.footprintpredict.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "i1.services.social.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 i1.services.social.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "i1.services.social.microsoft.com.nsatc.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 i1.services.social.microsoft.com.nsatc.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "feedback.windows.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 feedback.windows.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "feedback.microsoft-hohm.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 feedback.microsoft-hohm.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "feedback.search.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 feedback.search.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "cdn.content.prod.cms.msn.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 cdn.content.prod.cms.msn.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "cdn.content.prod.cms.msn.com.edgekey.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 cdn.content.prod.cms.msn.com.edgekey.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "e10663.g.akamaiedge.net" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 e10663.g.akamaiedge.net>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "dmd.metaservices.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 dmd.metaservices.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "schemas.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 schemas.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "go.microsoft.com" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 go.microsoft.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.76.0.0/14" %WINDIR%\system32\drivers\etc\hosts >
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 40.76.0.0/14>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.96.0.0/12" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 40.96.0.0/12>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.124.0.0/16" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 40.124.0.0/16>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.112.0.0/13" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 40.112.0.0/13>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.125.0.0/17" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 40.125.0.0/17>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.74.0.0/15" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 40.74.0.0/15>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.80.0.0/12" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 40.80.0.0/12>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "40.120.0.0/14" %WINDIR%\system32\drivers\etc\hosts >
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 40.120.0.0/14>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "137.116.0.0/16" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 137.116.0.0/16>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "23.192.0.0/11" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 23.192.0.0/11>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "23.32.0.0/11" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 23.32.0.0/11>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "23.64.0.0/14" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 23.64.0.0/14>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "23.55.130.182" %WINDIR%\system32\drivers\etc\hosts 
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^0.0.0.0 23.55.130.182>>%WINDIR%\System32\drivers\etc\hosts

goto anamenux


:sahiplik
cls

echo        %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m...........................Sahiplik al Men...........................%ESC%[0m


echo     %ESC%[92m1.%ESC% %ESC%[97m Sa§ tuŸa sahiplik al ekle%ESC%[0m
echo     %ESC%[92m2.%ESC% %ESC%[97m Sa§ tuŸ sahiplik al kaldr%ESC%[0m
echo     %ESC%[92m3.%ESC% %ESC%[97m Ana menye d”n%ESC%[0m
echo     %ESC%[91m4. €kŸ yap%ESC%[0m
echo ...............................................................................

set /P sahiplik=  %ESC%[92mLtfen yapmak istedi§iniz iŸlemi tuŸlaynz:%ESC%[0m
	if %sahiplik%==1 GOTO sekle
	if %sahiplik%==2 GOTO skaldir
	if %sahiplik%==3 GOTO anamenux
	if %sahiplik%==4 GOTO exit
else
	goto sahiplik

:sekle
cls

reg add "HKEY_CLASSES_ROOT\*\shell\runas" /v ""  /t REG_SZ /d "Sahipli§i Al" /f
reg add "HKEY_CLASSES_ROOT\*\shell\runas" /v "Icon" /t REG_SZ /d "imageres.dll,73" /f
reg add "HKEY_CLASSES_ROOT\*\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
reg add "HKEY_CLASSES_ROOT\*\shell\runas\command" /v "" /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" && icacls \"%1\" /grant administrators:F" /f
reg add "HKEY_CLASSES_ROOT\*\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" && icacls \"%1\" /grant administrators:F" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /v "" /t REG_SZ /d "Sahipli§i Al" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /v "Icon" /t REG_SZ /d "imageres.dll,73" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas\command" /v "" /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" /r /d y && icacls \"%1\" /grant administrators:F /t" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%1\" /r /d y && icacls \"%1\" /grant administrators:F /t" /f

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:skaldir
cls

reg delete "HKEY_CLASSES_ROOT\*\shell\runas" /f
reg delete "HKEY_CLASSES_ROOT\Directory\shell\runas" /f

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:smb1
cls

echo        %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m...........................SMB1 kapatlyor...........................%ESC%[0m

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SMB1" /t REG_DWORD /d 0 /f 
PowerShell -Command "Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force"
sc config lanmanworkstation depend= bowser/mrxsmb20/nsi
sc config mrxsmb10 start= disabled

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:eskifoto
cls

echo         %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m.............Eski Windows Foto§raf G”rtnleyicisi aktif ediliyor.............%ESC%[0m
 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".tif" /t REG_DWORD /d "PhotoViewer.FileAssoc.Tiff" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".tiff" /t REG_DWORD /d "PhotoViewer.FileAssoc.Tiff" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".png" /t REG_DWORD /d "PhotoViewer.FileAssoc.Tiff" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".bmp" /t REG_DWORD /d "PhotoViewer.FileAssoc.Tiff" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".jpeg" /t REG_DWORD /d "PhotoViewer.FileAssoc.Tiff" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".jpg" /t REG_DWORD /d "PhotoViewer.FileAssoc.Tiff" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".ico" /t REG_DWORD /d "PhotoViewer.FileAssoc.Tiff" /f 

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:uac
cls

echo        %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m...........................UAC kapatlyor...........................%ESC%[0m

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f 

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:hiberboot
cls

echo        %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m.........................Hiberboot kapatlyor.........................%ESC%[0m

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_BINARY /d "00 00 00 00" /f 
powercfg.exe /hibernate off

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:kisayol
cls

echo        %ESC%[92m......................OgnitorenKs......................%ESC%[0m
echo %ESC%[92m................Ksayollardan, ksayol yazs kaldrlyor................%ESC%[0m

reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /t REG_BINARY /d "00000000" /f

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:arindir
cls

echo %ESC%[92mOlay gnl§ temizleniyor%ESC%[0m
powershell -command "wevtutil el | Foreach-Object {wevtutil cl "$_"}"

echo %ESC%[92mEski tarihli dosya ge‡miŸi temizleniyor...%ESC%[0m
FhManagew.exe -cleanup 360 -quiet

echo %ESC%[92mWinSxS temizleniyor...%ESC%[0m
dism.exe /Online /Cleanup-Image /StartComponentCleanup

echo %ESC%[92mDisk temizleme iŸlemi yaplyor... ˜Ÿlem sonunda uyar verecek.%ESC%[0m
cleanmgr.exe /VERYLOWDISK/dc

echo %ESC%[92mico ve k‡k resim belle§i temizleniyor...%ESC%[0m
taskkill /f /IM explorer.exe
CD /d %userprofile%\AppData\Local\Microsoft\Windows
del /f /s /q Explorer\*.*
Start explorer.exe

echo %ESC%[92mTemp dosyas temizleniyor...%ESC%[0m
del /q/f/s %TEMP%\*

echo %ESC%[92mSoftwareDistribution temizleniyor...%ESC%[0m
net stop wuauserv
del /q/f/s %windir%\SoftwareDistribution\*
net start wuauserv

echo %ESC%[92mPrefetch temizleniyor...%ESC%[0m
del /q/f/s %windir%\prefetch\*

echo %ESC%[92m˜Ÿlem tamamland. Ana menye aktarlyorsunuz...%ESC%[0m
timeout /t 3 /nobreak
goto anamenux


:python
cls
echo %ESC%[92mPython indiriliyor...%ESC%[0m
powershell -command "& { iwr https://www.python.org/ftp/python/3.9.4/python-3.9.4-amd64.exe -OutFile %temp%\python.exe }"
echo  %ESC%[92mPython ykleniyor...%ESC%[0m
"%temp%\python.exe" /quiet InstallAllUsers=1 PrependPath=1
DEL /F /Q /A "%temp%\python.exe"
echo  %ESC%[92m"pip instal gdown" kuruluyor...%ESC%[0m
goto anamenux

:notepad
cls
#~Notepad kurulum ”ncesi gncellenmesi gerekebilir---------------------------------------------------------------------- https://notepad-plus-plus.org/downloads/
echo  %ESC%[92mNotepad++ indiriliyor...%ESC%[0m
powershell -command "& { iwr https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.9.5/npp.7.9.5.Installer.x64.exe -OutFile %temp%\notepad.exe }"
echo  %ESC%[92mNotepad++ kuruluyor...%ESC%[0m
"%temp%\notepad.exe" /S
DEL /F /Q /A "%temp%\notepad.exe"
goto anamenux

:hibit
cls
echo %ESC%[92mHibit Uninstaller indiriliyor...%ESC%[0m
powershell -command "& { iwr http://www.hibitsoft.ir/HiBitUninstaller/HiBitUninstaller-setup-2.5.95.exe -OutFile %temp%\hibit.exe }"
echo %ESC%[92mHibit Uninstaller kuruluyor...%ESC%[0m
"%temp%\hibit.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\hibit.exe"
taskkill /f /im "HiBitUninstaller.exe"
goto anamenux

:openshell
cls
echo %ESC%[92mOpenShell indiriliyor...%ESC%[0m
powershell -command "& { iwr https://github.com/Open-Shell/Open-Shell-Menu/releases/download/v4.4.160/OpenShellSetup_4_4_160.exe -OutFile %temp%\openshell.exe }"
echo %ESC%[92mOpenShell kuruluyor...%ESC%[0m
"%temp%\openshell.exe" /quiet /norestart ADDLOCAL=StartMenu
DEL /F /Q /A "%temp%\openshell.exe"
goto openshellayar

:openshellayar
cls

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
reg add "HKEY_USERS\%currentusername%\SOFTWARE\OpenShell\StartMenu\Settings" /v "MenuItems7" /t REG_MULTI_SZ /d "Item1.Command=user_files"\0"Item1.Settings=NOEXPAND"\0"Item2.Command=user_documents"\0"Item2.Settings=NOEXPAND"\0"Item3.Command=user_pictures"\0"Item3.Settings=NOEXPAND"\0"Item4.Command=user_music"\0"Item4.Settings=NOEXPAND"\0"Item5.Command=user_videos"\0"Item5.Settings=NOEXPAND"\0"Item6.Command=downloads"\0"Item6.Settings=NOEXPAND"\0"Item7.Command=homegroup"\0"Item7.Settings=ITEM_DISABLED"\0"Item8.Command=separator"\0"Item9.Command=games"\0"Item9.Settings=TRACK_RECENT|NOEXPAND|ITEM_DISABLED"\0"Item10.Command=favorites"\0"Item10.Settings=ITEM_DISABLED"\0"Item11.Command=recent_documents"\0"Item12.Command=computer"\0"Item12.Settings=NOEXPAND"\0"Item13.Command=network"\0"Item13.Settings=ITEM_DISABLED"\0"Item14.Command=network_connections"\0"Item14.Settings=ITEM_DISABLED"\0"Item15.Command=separator"\0"Item16.Command=control_panel"\0"Item16.Settings=TRACK_RECENT"\0"Item17.Command=pc_settings"\0"Item17.Settings=TRACK_RECENT"\0"Item18.Command=admin"\0"Item18.Settings=TRACK_RECENT|ITEM_DISABLED"\0"Item19.Command=devices"\0"Item19.Settings=ITEM_DISABLED"\0"Item20.Command=defaults"\0"Item20.Settings=ITEM_DISABLED"\0"Item21.Command=help"\0"Item21.Settings=ITEM_DISABLED"\0"Item22.Command=run"\0"Item23.Command=apps"\0"Item23.Settings=ITEM_DISABLED"\0"Item24.Command=windows_security"\0"Item24.Settings=ITEM_DISABLED"\0" /f > NUL 2>&1

goto anamenux

:7zip
cls
echo %ESC%[92m7 - Zip indiriliyor...%ESC%[0m
powershell -command "& { iwr https://www.7-zip.org/a/7z2101-x64.exe -OutFile %temp%\7z.exe }"
echo %ESC%[92m7 - Zip kuruluyor...%ESC%[0m
"%temp%\7z.exe" /S
DEL /F /Q /A "%temp%\7z.exe"
goto anamenux

:reader
cls
echo %ESC%[92mAdobe Reader indiriliyor...%ESC%[0m     
wget --no-check-certificate "https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/1900820071/AcroRdrDC1900820071_tr_TR.exe" -O %temp%\reader.exe
echo %ESC%[92mAdobe Reader kuruluyor...%ESC%[0m
"%temp%\reader.exe" /sPB /rs /msi
DEL /F /Q /A "%temp%\reader.exe"
goto anamenux

:vlc
cls
#~Kurulum ”ncesi gncellenmesi gerekebilir------------------------------------------------------------------------------- https://www.videolan.org/vlc/download-windows.tr.html
echo %ESC%[92mVLC Media Player indiriliyor...%ESC%[0m
powershell -command "& { iwr https://mirrors.netix.net/vlc/vlc/3.0.12/win32/vlc-3.0.12-win32.exe -OutFile %temp%\vlc.exe }"
echo %ESC%[92mVLC Media Player kuruluyor...%ESC%[0m
"%temp%\vlc.exe" /L=1055 /S
DEL /F /Q /A "%temp%\vlc.exe"
goto anamenux

:klite
cls
#~Kurulum ”ncesi gncellenmesi gerekebilir------------------------------------------------------------------------------- https://codecguide.com/download_kl.htm
echo %ESC%[92mK-Lite Codec Pack Mega indiriliyor...%ESC%[0m   
wget --no-check-certificate "https://files2.codecguide.com/K-Lite_Codec_Pack_1612_Mega.exe" -O %temp%\klite.exe 
echo %ESC%[92mK-Lite Codec Pack Mega kuruluyor...%ESC%[0m
"%temp%\klite.exe" /verysilent
DEL /F /Q /A "%temp%\klite.exe"
goto anamenux

:chrome
cls
echo %ESC%[92mGoogle Chrome indiriliyor...%ESC%[0m
wget --no-check-certificate "https://dl.google.com/tag/s/appguid%253D%257B8A69D345-D564-463C-AFF1-A69D9E530F96%257D%2526iid%253D%257BBEF3DB5A-5C0B-4098-B932-87EC614379B7%257D%2526lang%253Den%2526browser%253D4%2526usagestats%253D1%2526appname%253DGoogle%252520Chrome%2526needsadmin%253Dtrue%2526ap%253Dx64-stable-statsdef_1%2526brand%253DGCEB/dl/chrome/install/GoogleChromeEnterpriseBundle64.zip?_ga%3D2.8891187.708273100.1528207374-1188218225.1527264447" -O %temp%\chrome.zip
echo %ESC%[92mGoogle Chrome kuruluyor...%ESC%[0m
powershell -command "Expand-Archive -Force '%temp%\chrome.zip' '%temp%\chrome'" 
"%temp%\chrome\Installers\GoogleChromeStandaloneEnterprise64.msi" /qn
DEL /F /Q /A "%temp%\chrome.zip"
RD /S /Q "%temp%\chrome"
goto anamenux

:firefox
cls
echo %ESC%[92mFirefox indiriliyor...%ESC%[0m
wget --no-check-certificate "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=tr" -O %temp%\firefox.exe
echo %ESC%[92mFirefox kuruluyor...%ESC%[0m
"%temp%\firefox.exe" /S
DEL /F /Q /A "%temp%\firefox.exe"
goto anamenux

:brave
cls
echo %ESC%[92mBrave Browser indiriliyor...%ESC%[0m
wget --no-check-certificate "https://brave-browser-downloads.s3.brave.com/latest/brave_installer-x64.exe" -O %temp%\brave.exe }"
echo %ESC%[92mBrave Browser kuruluyor...%ESC%[0m
"%temp%\brave.exe" --install --silent --system-level
DEL /F /Q /A "%temp%\brave.exe"
goto anamenux

:ssdfresh
cls
echo %ESC%[92mSSD Fresh indiriliyor...%ESC%[0m
powershell -command "& { iwr https://www.abelssoft.de/ssdfreshsetup.exe -OutFile %temp%\ssdfresh.exe }"
echo %ESC%[92mSSD Fresh kuruluyor...%ESC%[0m
"%temp%\ssdfresh.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\ssdfresh.exe"
goto anamenux

:steam
cls
echo %ESC%[92mSteam indiriliyor...%ESC%[0m
powershell -command "& { iwr https://store.steampowered.com/about/?snr=1_4_4__global-header -OutFile %temp%\Steam.exe }"
echo %ESC%[92mSteam kuruluyor...%ESC%[0m
"%temp%\Steam.exe" /S
DEL /F /Q /A "%temp%\Steam.exe"
goto anamenux

:epicgames
cls
echo %ESC%[92mEpic Games indiriliyor...%ESC%[0m
wget --no-check-certificate "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi?trackingId=86883fb9bc9b4be3b50f92b1249799dc" -O %temp%\Epic.msi 
echo %ESC%[92mEpic Games kuruluyor...%ESC%[0m
"%temp%\Epic.msi" /qn /norestart
DEL /F /Q /A "%temp%\Epic.msi"
goto anamenux

:stremio
cls
echo %ESC%[92mStremio indiriliyor...%ESC%[0m
wget --no-check-certificate "https://www.strem.io/download?platform=windows&four=true" -O %temp%\stremio.exe 
echo %ESC%[92mStremio kuruluyor...%ESC%[0m
"%temp%\stremio.exe" /S
DEL /F /Q /A "%temp%\stremio.exe"
goto anamenux

:unlocker
cls
echo %ESC%[92mUnlocker indiriliyor...%ESC%[0m
powershell -command "& { iwr https://dw.uptodown.com/dwn/3-6uuXHJY606cjgIKBdovuirh9AkVxL9-C9VvNFVWww1dhcI2hmNdJrjdlqrUXsOe8TnFArQ-Lv0iT59rQ3y437TeHFmZXRBVFHP9hAh1Gy7ntWpKcqJb5_-lLfeCLmY/N-2k1nUwuHktiWWGj872ypYXVzF0cbOWFTphHKpEzCDsreIDR-6X-fMJ3JguAjQWaUNA735ucFvUeHzt6F2bw8y1gSoFOyJGm8jKSX5TDRQj3oPioK9Kzt5PHaExJC2F/UYREdG5HKCOngyJfv2cK3yNG27IcnYS5PxN2hF-EtqhU47AGsJ9AAkGGzAXSua-M3xBxckhDUXETwxBZaMw9PQ==/ -OutFile %temp%\unlocker.exe }"
echo %ESC%[92mUnlocker kuruluyor...%ESC%[0m
"%temp%\unlocker.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\unlocker.exe"
goto anamenux

:freedm
cls
echo %ESC%[92mFree Download Manager indiriliyor...%ESC%[0m
powershell -command "& { iwr https://dn3.freedownloadmanager.org/6/latest/fdm_x64_setup.exe -OutFile %temp%\fdm.exe }"
echo %ESC%[92mFree Download Manager kuruluyor...%ESC%[0m
"%temp%\fdm.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%temp%\fdm.exe"
goto anamenu

:winaio
cls
echo   ========================================================================================================
echo %ESC%[92m Kalntlar siliniyor...%ESC%[0m
echo   ========================================================================================================
Rem C++ 2005 x86 kaldrr.
MsiExec.exe /x {710f4c1c-cc18-4c49-8cbf-51240c89a1a2} /qn
Rem C++ 2005 x64 kaldrr.
MsiExec.exe /x {ad8a2fa1-06e7-4b0d-927d-6e54b3d31028} /qn
Rem C++ 2008 x86 kaldrr.
MsiExec.exe /x {9BE518E6-ECC6-35A9-88E4-87755C07200F} /qn
Rem C++ 2008 x64 kaldrr.
MsiExec.exe /x {5FCE6D76-F5DC-37AB-B2B8-22AB8CEDB1D4} /qn
Rem C++ 2010 x86 kaldrr.
MsiExec.exe /x {F0C3E5D1-1ADE-321E-8167-68EF0DE699A5} /qn
Rem C++ 2010 x64 kaldrr.
MsiExec.exe /x {1D8E6291-B0D5-35EC-8441-6616F567A0F7} /qn
Rem C++ 2012 x86 kaldrr.
"%ProgramData%\Package Cache\{33d1fd90-4274-48a1-9bc1-97e33d9c2d6f}\vcredist_x86.exe" /uninstall /quiet /norestart
Rem C++ 2012 x64 kaldrr.
"%ProgramData%\Package Cache\{ca67548a-5ebe-413a-b50c-4b9ceb6d66c6}\vcredist_x64.exe" /uninstall /quiet /norestart
Rem C++ 2013 x86 kaldrr.
"%ProgramData%\Package Cache\{9dff3540-fc85-4ed5-ac84-9e3c7fd8bece}\vcredist_x86.exe" /uninstall /quiet /norestart
Rem C++ 2013 x64 kaldrr.
"%ProgramData%\Package Cache\{042d26ef-3dbe-4c25-95d3-4c1b11b235a7}\vcredist_x64.exe" /uninstall /quiet /norestart
Rem C++ 2015 x86 kaldrr.
"%ProgramData%\Package Cache\{45231ab4-69fd-486a-859d-7a59fcd11013}\VC_redist.x86.exe" /uninstall /quiet /norestart
Rem C++ 2015 x64 kaldrr.
"%ProgramData%\Package Cache\{852adda4-4c78-4a38-b583-c0b360a329d6}\VC_redist.x64.exe" /uninstall /quiet /norestart
Rem Microsoft Windows Desktop Runtime 5.0.0 x86 kaldrr.
"%ProgramData%\Package Cache\{002e7010-bec1-490e-8734-484144fc061b}\windowsdesktop-runtime-5.0.0-win-x86.exe" /uninstall /quiet /norestart
Rem Microsoft Windows Desktop Runtime 5.0.0 x64 kaldrr.
"%ProgramData%\Package Cache\{b1b6fa8e-9e9e-4fc2-9a62-6cfdcc8f0878}\windowsdesktop-runtime-5.0.0-win-x64.exe" /uninstall /quiet /norestart
Rem Open AL 1.1 x86 kaldrr.
"%ProgramFiles%\OpenAL\oalinst.exe" /U /SILENT
Rem Open AL 1.1 x64 kaldrr.
"%ProgramFiles(x86)%\OpenAL\oalinst.exe" /U /SILENT

echo   ========================================================================================================
echo %ESC%[92mMicrosoft Visual C++ 2005 x86 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE -OutFile %temp%\05x86.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2005 x86 kuruluyor...%ESC%[0m
"%temp%\05x86.exe" /Q
DEL /F /Q /A "%temp%\05x86.exe"

echo   ========================================================================================================
echo %ESC%[92mMicrosoft Visual C++ 2005 x64 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE  -OutFile %temp%\05x64.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2005 x64 kuruluyor...%ESC%[0m
"%temp%\05x64.exe" /Q
DEL /F /Q /A "%temp%\05x64.exe"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft Visual C++ 2008 x86 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/1/1/1/1116b75a-9ec3-481a-a3c8-1777b5381140/vcredist_x86.exe -OutFile %temp%\08x86.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2008 x86 kuruluyor...%ESC%[0m
"%temp%\08x86.exe" /q
DEL /F /Q /A "%temp%\08x86.exe"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft Visual C++ 2008 x64 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/d/2/4/d242c3fb-da5a-4542-ad66-f9661d0a8d19/vcredist_x64.exe -OutFile %temp%\08x64.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2008 x64 kuruluyor...%ESC%[0m
"%temp%\08x64.exe" /q
DEL /F /Q /A "%temp%\08x64.exe"

echo   ========================================================================================================
echo %ESC%[92mMicrosoft Visual C++ 2010 x86 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/5/B/C/5BC5DBB3-652D-4DCE-B14A-475AB85EEF6E/vcredist_x86.exe -OutFile %temp%\10x86.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2010 x86 kuruluyor...%ESC%[0m
"%temp%\10x86.exe" /q /norestart
DEL /F /Q /A "%temp%\10x86.exe"

echo   ========================================================================================================
echo %ESC%[92mMicrosoft Visual C++ 2010 x64 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/3/2/2/3224B87F-CFA0-4E70-BDA3-3DE650EFEBA5/vcredist_x64.exe -OutFile %temp%\10x64.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2010 x64 kuruluyor...%ESC%[0m
"%temp%\10x64.exe" /q /norestart
DEL /F /Q /A "%temp%\10x64.exe"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft Visual C++ 2012 x86 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe -OutFile %temp%\12x86.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2012 x86 kuruluyor...%ESC%[0m
"%temp%\12x86.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\12x86.exe"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft Visual C++ 2012 x64 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe -OutFile %temp%\12x64.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2012 x64 kuruluyor...%ESC%[0m
"%temp%\12x64.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\12x64.exe"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft Visual C++ 2013 x86 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe -OutFile %temp%\13x86.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2013 x86 kuruluyor...%ESC%[0m
"%temp%\13x86.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\13x86.exe"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft Visual C++ 2013 x64 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe -OutFile %temp%\13x64.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2013 x64 kuruluyor...%ESC%[0m
"%temp%\13x64.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\13x64.exe"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft Visual C++ 2015-2019 x86 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x86.exe  -OutFile %temp%\15x86.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2015-2019 x86 kuruluyor...%ESC%[0m
"%temp%\15x86.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\15x86.exe"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft Visual C++ 2015-2019 x64 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x64.exe -OutFile %temp%\15x64.exe }"
echo %ESC%[92mMicrosoft Visual C++ 2015-2019 x86 kuruluyor...%ESC%[0m
"%temp%\15x64.exe" /install /quiet /norestart
DEL /F /Q /A "%temp%\15x64.exe"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft Silverlight indiriliyor...%ESC%[0m
powershell -command "& { iwr http://go.microsoft.com/fwlink/?LinkID=229321 -OutFile %temp%\silverlight.exe  }"
echo %ESC%[92mMicrosoft Silverlight kuruluyor...%ESC%[0m
"%temp%\silverlight.exe" /q /noupdate /ignorewarnings /doNotRequireDRMPrompt
DEL /F /Q /A "%temp%\silverlight.exe"
REG ADD "HKLM\SOFTWARE\Microsoft\Silverlight" /v UpdateConsentMode /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Silverlight" /v UpdateMode /t REG_DWORD /d 2 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Microsoft\Silverlight" /v UpdateConsentMode /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Microsoft\Silverlight" /v UpdateMode /t REG_DWORD /d 2 /f
REG ADD "HKCU\Software\Microsoft\Silverlight" /v UpdateMode /t REG_DWORD /d 2 /f
echo   ========================================================================================================

echo %ESC%[92mJava x64 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://javadl.oracle.com/webapps/download/AutoDL?BundleId=244068_89d678f2be164786b292527658ca1605 -OutFile %temp%\javax64.exe  }"
echo %ESC%[92mJava x64 kuruluyor...%ESC%[0m
"%temp%\javax64" INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable
DEL /F /Q /A "%temp%\javax64"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft XNA Framework 4.0 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/A/C/2/AC2C903B-E6E8-42C2-9FD7-BEBAC362A930/xnafx40_redist.msi -OutFile %temp%\xnafx40.msi }"
echo %ESC%[92mMicrosoft XNA Framework 4.0 kuruluyor...%ESC%[0m
"%temp%\xnafx40.msi" /qn
DEL /F /Q /A "%temp%\xnafx40.msi"
echo   ========================================================================================================

echo %ESC%[92mOpenAL indiriliyor...%ESC%[0m 
powershell -command "& { iwr https://openal.org/downloads/oalinst.zip -OutFile %temp%\oal.zip }"
echo %ESC%[92mOpenAL kuruluyor...%ESC%[0m
powershell -command "Expand-Archive -Force '%temp%\oal.zip' '%temp%'" 
"%temp%\oalinst.exe" /SILENT
DEL /F /Q /A "%temp%\oal.zip"
DEL /F /Q/ A "%temp%\oalinst.exe"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft Windows Desktop Runtime 5.0 x64 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.visualstudio.microsoft.com/download/pr/1b3a8899-127a-4465-a3c2-7ce5e4feb07b/1e153ad470768baa40ed3f57e6e7a9d8/windowsdesktop-runtime-5.0.0-win-x64.exe -OutFile %temp%\desktop6x64.exe }"
echo %ESC%[92mMicrosoft Windows Desktop Runtime 5.0 x64 kuruluyor...%ESC%[0m
"%temp%\desktop6x64.exe" /q /norestart
DEL /F /Q /A "%temp%\desktop6x64.exe"
echo   ========================================================================================================

echo %ESC%[92mMicrosoft Windows Desktop Runtime 5.0 x86 indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.visualstudio.microsoft.com/download/pr/b2780d75-e54a-448a-95fc-da9721b2b4c2/62310a9e9f0ba7b18741944cbae9f592/windowsdesktop-runtime-5.0.0-win-x86.exe -OutFile %temp%\desktop6x86.exe }"
echo %ESC%[92mMicrosoft Windows Desktop Runtime 5.0 x64 kuruluyor...%ESC%[0m
"%temp%\desktop6x86.exe" /q /norestart
DEL /F /Q /A "%temp%\desktop6x86.exe"
echo   ========================================================================================================

echo %ESC%[92mDirectX indiriliyor...%ESC%[0m
powershell -command "& { iwr https://download.microsoft.com/download/1/7/1/1718CCC4-6315-4D8E-9543-8E28A4E18C4C/dxwebsetup.exe -OutFile %temp%\directx.exe }"
echo %ESC%[92mDirectX kuruluyor...%ESC%[0m
"%temp%\directx.exe" /Q
DEL /F /Q /A "%temp%\directx.exe"
echo   ========================================================================================================
DEL /F /Q /A "C:\eula.1028.txt" 
DEL /F /Q /A "C:\eula.1031.txt"
DEL /F /Q /A "C:\eula.1033.txt"
DEL /F /Q /A "C:\eula.1036.txt"
DEL /F /Q /A "C:\eula.1040.txt"
DEL /F /Q /A "C:\eula.1041.txt"
DEL /F /Q /A "C:\eula.1042.txt"
DEL /F /Q /A "C:\eula.2052.txt"
DEL /F /Q /A "C:\eula.3082.txt"
DEL /F /Q /A "C:\globdata.ini"
DEL /F /Q /A "C:\install.exe
DEL /F /Q /A "C:\install.ini"
DEL /F /Q /A "C:\install.res.1028.dll"
DEL /F /Q /A "C:\install.res.1031.dll"
DEL /F /Q /A "C:\install.res.1033.dll"
DEL /F /Q /A "C:\install.res.1036.dll"
DEL /F /Q /A "C:\install.res.1040.dll"
DEL /F /Q /A "C:\install.res.1041.dll"
DEL /F /Q /A "C:\install.res.1042.dll"
DEL /F /Q /A "C:\install.res.2052.dll"
DEL /F /Q /A "C:\install.res.3082.dll"
DEL /F /Q /A "C:\VC_RED.cab"
DEL /F /Q /A "C:\VC_RED.MSI"
DEL /F /Q /A "C:\vcredist.bmp
DEL /F /Q /A "D:\eula.1028.txt"
DEL /F /Q /A "D:\eula.1031.txt"
DEL /F /Q /A "D:\eula.1033.txt"
DEL /F /Q /A "D:\eula.1036.txt"
DEL /F /Q /A "D:\eula.1040.txt"
DEL /F /Q /A "D:\eula.1041.txt"
DEL /F /Q /A "D:\eula.1042.txt"
DEL /F /Q /A "D:\eula.2052.txt"
DEL /F /Q /A "D:\eula.3082.txt"
DEL /F /Q /A "D:\globdata.ini"
DEL /F /Q /A "D:\install.exe
DEL /F /Q /A "D:\install.ini"
DEL /F /Q /A "D:\install.res.1028.dll"
DEL /F /Q /A "D:\install.res.1031.dll"
DEL /F /Q /A "D:\install.res.1033.dll"
DEL /F /Q /A "D:\install.res.1036.dll"
DEL /F /Q /A "D:\install.res.1040.dll"
DEL /F /Q /A "D:\install.res.1041.dll"
DEL /F /Q /A "D:\install.res.1042.dll"
DEL /F /Q /A "D:\install.res.2052.dll"
DEL /F /Q /A "D:\install.res.3082.dll"
DEL /F /Q /A "D:\VC_RED.cab"
DEL /F /Q /A "D:\VC_RED.MSI"
DEL /F /Q /A "D:\vcredist.bmp"

goto anamenux

:libreoffice
cls
echo %ESC%[92mLibre Office indiriliyor...%ESC%[0m
wget --no-check-certificate "https://ftp.linux.org.tr/tdf/libreoffice/stable/7.1.2/win/x86_64/LibreOffice_7.1.2_Win_x64.msi" -O %temp%\libre.msi 
echo %ESC%[92mLibre Office kuruluyor...%ESC%[0m
"%temp%\libre.msi" /qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL UI_LANGS=tr_tr 
DEL /F /Q /A "%temp%\libre.msi"
goto anamenux

:wgetinstall
cls
echo   =========================================================================================================
echo   %ESC%[91mKrmz numaral%ESC%%ESC%[92m iŸlemlerde wget.exe yklenmesi gerekmektedir. Bu iŸlem de kullanc adnza System32'de%ESC%[0m  
echo   %ESC%[92miŸlem yapma yetkisi verilecektir. Bu yetki ile indirilen wget.exe dosyas System32 i‡ine aktarlacaktr.%ESC%[0m    
echo   %ESC%[92mAntivirsler bu iŸlemi virs olarak g”rmektedir.%ESC%%ESC%[33m Wget.exe yklemek i‡in antivirs devre dŸ braknz.%ESC%[0m  
echo   %ESC%[7mKodlarn i‡eri§i;%ESC%[0m 
echo   =========================================================================================================
echo   %ESC%[33mAŸa§daki kod ile wget.exe indirilir.%ESC%[0m 
echo   %ESC%[36mpowershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.1/64/wget.exe -OutFile %temp%\wget.exe }"%ESC%[0m 
echo   %ESC%[33mAŸa§daki kod ile System32 klas”rne ulaŸm yetkisi verilir.%ESC%[0m 
echo   %ESC%[36mtakeown /f "%windir%\System32"%ESC%[0m 
echo   %ESC%[33mAŸa§daki kod ile kullanc adnza tam yetki verilir.%ESC%[0m 
echo   %ESC%[36mcacls "%windir%\System32" /G %username%:F %ESC%[0m 
echo   %ESC%[33mAŸa§daki kod ile indirilen wget.exe System32 i‡ine kopyalanr.%ESC%[0m 
echo   %ESC%[36mcopy "%temp%\wget.exe" "%windir%\System32"%ESC%[0m  
echo   =========================================================================================================
echo    %ESC%[92m1.%ESC%%ESC%[37m wget.exe'yi kurmaya devam et.%ESC%[0m 
echo    %ESC%[92m2.%ESC%%ESC%[37m Ana menye d”n.%ESC%[0m 
echo   =========================================================================================================
set /P wgetinstall= %ESC%[92mLtfen yapmak istedi§iniz iŸlemi tuŸlaynz:%ESC%[0m 
	if %wgetinstall%==1 goto wgetinstall2
	if %wgetinstall%==2 goto anamenux
else
	goto wgetinstall

:wgetinstall2
cls
echo wget.exe indiriliyor...

powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.1/64/wget.exe -OutFile %temp%\wget.exe }"
takeown /f "%windir%\System32"
cacls "%windir%\System32" /G %username%:F > echo Y
copy "%temp%\wget.exe" "%windir%\System32" 

goto anamenux

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:select
cls

echo       #######   ######   ##    ## #### ########  #######  ########  ######## ##    ## ##    ##  ######
echo      ##     ## ##    ##  ###   ##  ##     ##    ##     ## ##     ## ##       ###   ## ##   ##  ##    #
echo      ##     ## ##        ####  ##  ##     ##    ##     ## ##     ## ##       ####  ## ##  ##   ##
echo      ##     ## ##   #### ## ## ##  ##     ##    ##     ## ########  ######   ## ## ## #####      ###### 
echo      ##     ## ##    ##  ##  ####  ##     ##    ##     ## ##   ##   ##       ##  #### ##  ##         ##
echo      ##     ## ##    ##  ##   ###  ##     ##    ##     ## ##    ##  ##       ##   ### ##   ##  ##    ##
echo       #######   ######   ##    ## ####    ##     #######  ##     ## ######## ##    ## ##    ##  ###### 

echo     ....................................................................................................

echo                                    %ESC%[91mD˜KKAT! HATALI TUžLAMA YAPTINIZ...%ESC%[0m 
echo                                    %ESC%[91mD˜KKAT! HATALI TUžLAMA YAPTINIZ...%ESC%[0m 
echo                                    %ESC%[91mD˜KKAT! HATALI TUžLAMA YAPTINIZ...%ESC%[0m 

echo     ....................................................................................................

echo       #######   ######   ##    ## #### ########  #######  ########  ######## ##    ## ##    ##  ######
echo      ##     ## ##    ##  ###   ##  ##     ##    ##     ## ##     ## ##       ###   ## ##   ##  ##    #
echo      ##     ## ##        ####  ##  ##     ##    ##     ## ##     ## ##       ####  ## ##  ##   ##
echo      ##     ## ##   #### ## ## ##  ##     ##    ##     ## ########  ######   ## ## ## #####      ###### 
echo      ##     ## ##    ##  ##  ####  ##     ##    ##     ## ##   ##   ##       ##  #### ##  ##         ##
echo      ##     ## ##    ##  ##   ###  ##     ##    ##     ## ##    ##  ##       ##   ### ##   ##  ##    ##
echo       #######   ######   ##    ## ####    ##     #######  ##     ## ######## ##    ## ##    ##  ###### 

echo     ....................................................................................................

echo                                    %ESC%[91mD˜KKAT! HATALI TUžLAMA YAPTINIZ...%ESC%[0m 
echo                                    %ESC%[91mD˜KKAT! HATALI TUžLAMA YAPTINIZ...%ESC%[0m 
echo                                    %ESC%[91mD˜KKAT! HATALI TUžLAMA YAPTINIZ...%ESC%[0m 

echo     ....................................................................................................

echo       #######   ######   ##    ## #### ########  #######  ########  ######## ##    ## ##    ##  ######
echo      ##     ## ##    ##  ###   ##  ##     ##    ##     ## ##     ## ##       ###   ## ##   ##  ##    #
echo      ##     ## ##        ####  ##  ##     ##    ##     ## ##     ## ##       ####  ## ##  ##   ##
echo      ##     ## ##   #### ## ## ##  ##     ##    ##     ## ########  ######   ## ## ## #####      ###### 
echo      ##     ## ##    ##  ##  ####  ##     ##    ##     ## ##   ##   ##       ##  #### ##  ##         ##
echo      ##     ## ##    ##  ##   ###  ##     ##    ##     ## ##    ##  ##       ##   ### ##   ##  ##    ##
echo       #######   ######   ##    ## ####    ##     #######  ##     ## ######## ##    ## ##    ##  ###### 

echo     ....................................................................................................

echo                                    %ESC%[91mD˜KKAT! HATALI TUžLAMA YAPTINIZ...%ESC%[0m 
echo                                    %ESC%[91mD˜KKAT! HATALI TUžLAMA YAPTINIZ...%ESC%[0m 
echo                                    %ESC%[91mD˜KKAT! HATALI TUžLAMA YAPTINIZ...%ESC%[0m 

timeout /t 3 /nobreak
goto anamenux

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0