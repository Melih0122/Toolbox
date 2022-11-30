echo off
cls
title Sistem Hakknda / OgnitorenKs

setlocal
call :setESC


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
exit

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0