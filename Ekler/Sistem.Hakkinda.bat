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
::  Toolbox' hazrlad§m sistemlerde temel programlar indirip, basit bir Ÿekilde sistem zerinde dzenleme yapmas i‡in hazrladm.
::  Srekli olarak gncellenecektir. Toolbox' indirmek i‡in aŸa§daki linkleri kullanabilirsiniz.
::   https://www.technopat.net/sosyal/konu/ognitorenks-toolbox-kullanimi.1790250/
::
::  OgnitorenKs.Toolbox katlmsz kurulum dosyasn indirmek i‡in aŸa§daki "Toolbox.Update.bat" dosyasn indirip y”netici olarak ‡alŸtrn.
::   https://docs.google.com/uc?export=download&id=1JmrWYeNjVopcIP0n9iNkMUCEbQ2SIvpY
::
::  ˜stek ve ”nerileriniz olursa, iletiŸim;
::   Discord: OgnitorenKs#2737 
::   Mail: ognitorenks@gmail.com
::   Site: ognitorenks.blogspot.com (Bu b”lm Ÿu an aktif de§il)
::   Site: www.technopat.net\Sosyal (Yeni bir konu a‡p yada hazrlad§m konularda @OgnitorenKs yazarak etiketleyebilirsiniz) 
:: ==============================================================================================================================
echo off
cls
title      Sistem Hakknda / OgnitorenKs
mode con cols=95 lines=44

setlocal
call :setESC

:: ==============================================================================================================================
::  RENK HAR˜TASI
::  -------------
:: %ESC%^[32m > Bilgi b”lmlerinden kullanlr. YeŸil.
:: %ESC%^[37m > Sistem donanm bilgi rengidir. 
:: %ESC%^[100m > BaŸlk b”lmlerinde arka plan dolduran renktir.
:: %ESC%^[1;97m > BaŸlkta dolgu b”lmnn i‡inde yer alan yaz rengidir. 1; b”lm kaln yazmasn sa§lar. 97m beyaz renk yazmasn sa§lar.
:: %ESC%^[90m > €er‡eveleri ve | iŸaretlerinin rengini de§iŸir.
:: 
:: ==============================================================================================================================

:Logs
cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum=%%a
set konum=%konum:~0,-6%
set Logs=%konum%\Edit\Logs
echo [%date% - %time%] ^| SistemHakkinda ^| Sistem hakknda b”lm ‡alŸtrld. >> %konum%\Logs
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo                              %ESC%[92mSistem ve donanm bilgisi alnyor%ESC%[0m
echo 
echo                                    %ESC%[92m Ltfen bekleyiniz...%ESC%[0m
echo 
echo 
echo             	      %ESC%[33mþþ  þþþþ þ   þ þ þþþ  þþ  þþþþ  þþþ þ   þ   þ þþþþ%ESC%[0m
echo             	     %ESC%[33mþ  þ þ    þþ  þ þ  þ  þ  þ þ  þ  þ   þþ  þ  þ  þ   %ESC%[0m
echo             	     %ESC%[33mþ  þ þ þþ þ þ þ þ  þ  þ  þ þ þ   þþ  þ þ þ þ   þþþþ%ESC%[0m
echo             	     %ESC%[33mþ  þ þ  þ þ  þþ þ  þ  þ  þ þ  þ  þ   þ  þþ  þ     þ%ESC%[0m
echo             	      %ESC%[33mþþ  þþþþ þ   þ þ  þ   þþ  þ   þ þþþ þ   þ   þ þþþþ%ESC%[0m 

:Information
bcdedit > %Logs%\Bcdedit.txt
Powershell -command "Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property Caption,InstallDate,OSArchitecture,RegisteredUser,CSName | format-list" > %Logs%\OS.txt
Powershell -command "Get-CimInstance -ClassName Win32_computerSystem | Select-Object -Property Name,Model,Manufacturer,PrimaryOwnerName,TotalPhysicalMemory | format-list" > %Logs%\ComputerSystem.txt
Powershell -command "Get-CimInstance -ClassName Win32_BIOS | Select-Object -Property Name | format-list" > %Logs%\Bios.txt
Powershell -command "Get-CimInstance -ClassName Win32_Processor | Select-Object -Property Name,CurrentClockSpeed,SocketDesignation,L2CacheSize,L3CacheSize,NumberOfCores,NumberOfLogicalProcessors | format-list" > %Logs%\CPU.txt
Powershell -command "Get-CimInstance -ClassName CIM_VideoController | Select-Object -Property Name,CurrentHorizontalResolution,CurrentVerticalResolution,CurrentRefreshRate,AdapterRAM,DriverDate,DriverVersion | format-list" > %Logs%\GPU.txt
Powershell -command "Get-CimInstance -ClassName Win32_DesktopMonitor | Select-Object -Property Name | format-list" > %Logs%\Monitor.txt
Powershell -command "Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -Property Speed,SMBIOSMemoryType | format-list" > %Logs%\Ram.txt
Powershell -command "Get-CimInstance -ClassName Win32_TimeZone | Select-Object -Property Caption | format-list" > %Logs%\utc.txt

:Arayuz
cls
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[97m%ESC%%ESC%[100m                                       S˜STEM HAKKINDA                                     %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
FOR /F "tokens=3" %%a in ('FIND "RegisteredUser" %Logs%\OS.txt') do (
	FOR /F "tokens=3" %%b in ('FIND "CSName" %Logs%\OS.txt') do (
		echo   %ESC%[32m Bilgisayar:%ESC%%ESC%[37m %%b %ESC%[0m
		echo   %ESC%[32m Kullanc :%ESC%%ESC%[37m %%a %ESC%[0m    
		)
	)
)
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
:: Format tarih verisi alnr
FOR /F "tokens=3" %%a in ('FIND "InstallDate" %Logs%\OS.txt') do set format=%%a
FOR /F "tokens=3" %%c in ('FIND "Caption" %Logs%\utc.txt') do set utcc=%%c
echo   %ESC%[32m Format Tarihi:%ESC%%ESC%[37m %format%%ESC%[0m %ESC%[90m / %ESC%%ESC%[32mSaat Dilimi:%ESC%%ESC%[37m %utcc%%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
:: ˜Ÿletim sistemi bulunur
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption=%%a
:: Microsoft yazan b”lm kaldrlr.
set caption=%caption:~11%
:: Sistem mimarisi bulunur
FOR /F "tokens=3" %%d in ('FIND "OSArchitecture" %Logs%\OS.txt') do set osarch=%%d
:: Sistem srm numaras ˜S derleme numarasyla alnr.
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version"') do set isderleme=%%f
:: NT ‡ekirdek b”lm belirten ksm kaldrlr.
set isderleme=%isderleme:~5%
:: ˜Ÿletim sisteminin hangi disk yapsyla kuruldu§unu belirler.
FOR /F "tokens=3 delims= " %%e in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" ^| find "DisplayVersion"') do set ImageBuild=%%e
FIND /C /I "winload.efi" %Logs%\Bcdedit.txt > NUL
	if %errorlevel%==0 set uefi=UEFI-GPT
	if %errorlevel%==1 set uefi=BIOS-MBR
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m Sistem:%ESC%%ESC%[37m %caption%%ESC%%ESC%[90m / %ESC%%ESC%[37mx%osarch%%ESC%%ESC%[90m / %ESC%%ESC%[37m%ImageBuild%%ESC%%ESC%[90m / %ESC%%ESC%[37m%isderleme%%ESC%%ESC%[90m / %ESC%%ESC%[37m%uefi%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:: Anakart markas bulunur
FOR /F "tokens=3" %%a in ('FIND "Manufacturer" %Logs%\ComputerSystem.txt') do set boardmarka=%%a
:: Anakart modeli bulunur.
FOR /F "tokens=2 delims=':'" %%c in ('FIND "Model" %Logs%\ComputerSystem.txt') do set board=%%c
:: Anakart iŸlemci soket yaps bulunur.
FOR /F "tokens=2 delims=':'" %%d in ('FIND "SocketDesignation" %Logs%\CPU.txt') do set boardsoket=%%d
:: Anakart bios srm ”§renilir.
FOR /F "tokens=2 delims=':'" %%e in ('FIND "Name" %Logs%\Bios.txt') do set bios=%%e
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m Anakart:%ESC%%ESC%[37m %boardmarka%%board%%ESC%%ESC%[90m / %ESC%%ESC%[32mSoket:%ESC%%ESC%[37m%boardsoket%%ESC%%ESC%[90m / %ESC%%ESC%[32mBios:%ESC%%ESC%[37m%bios%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: ˜Ÿlemci modeli ”§renilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\CPU.txt') do set cpu=%%a
:: ˜Ÿlemci ‡ekirdek says ”§renilir.
FOR /F "tokens=2 delims=':'" %%b in ('FIND "NumberOfCores" %Logs%\CPU.txt') do set cpucekirdek=%%b
:: ˜Ÿlemci sanal ‡ekirdek says ”§renilir.
FOR /F "tokens=2 delims=':'" %%c in ('FIND "NumberOfLogicalProcessors" %Logs%\CPU.txt') do set cpusanalcekirdek=%%c
:: ˜Ÿlemci L2 ”nbellek miktar ”§renilir.
FOR /F "tokens=2 delims=':'" %%d in ('FIND "L2CacheSize" %Logs%\CPU.txt') do set cpuL2=%%d
:: L2 hesab yaplmas i‡in sondan 3 rakam atlr.
set cpuL2=%cpuL2:~0,-3%
:: ˜Ÿlemci L3 ”nbellek miktar ”§renilir.
FOR /F "tokens=2 delims=':'" %%e in ('FIND "L3CacheSize" %Logs%\CPU.txt') do set cpuL3=%%e
:: L3 hesab yaplmas i‡in sondan 3 rakam atlr.
set cpuL3=%cpuL3:~0,-3%
:: ˜Ÿlemci saat hz bulunur.
FOR /F "tokens=2 delims=':'" %%e in ('FIND "CurrentClockSpeed" %Logs%\CPU.txt') do set cpuclock=%%e
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m CPU:%ESC%%ESC%[37m%cpu% %ESC%[0m
echo   %ESC%[32m CPU €ekirdek:%ESC%%ESC%[37m%cpucekirdek% %ESC%%ESC%[90m/%ESC%%ESC%[32m Threads:%ESC%%ESC%[37m%cpusanalcekirdek% %ESC%%ESC%[90m/%ESC%%ESC%[32m L2:%ESC%%ESC%[37m%cpuL2%%ESC%%ESC%[36m MB%ESC%%ESC%[90m /%ESC%%ESC%[32m L3:%ESC%%ESC%[37m%cpuL3%%ESC%%ESC%[36m MB%ESC%%ESC%[90m /%ESC%%ESC%[32m CPU MHZ:%ESC%%ESC%[37m%cpuclock%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: Ekran kart modeli tespit edilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\GPU.txt') do set gpu=%%a
:: VRAM miktar ”§renilir.
FOR /F "tokens=2 delims=':'" %%b in ('FIND "AdapterRAM" %Logs%\GPU.txt') do set gpuram=%%b
:: VRAM miktar GB olarak dzenlenir.
set gpuram=%gpuram:~0,-9%
:: Ykl driver srm ”§renilir.. 
FOR /F "tokens=2 delims=':'" %%c in ('FIND "DriverVersion" %Logs%\GPU.txt') do set gpudriver=%%c
:: Driver srmnn tarihi ”§renilir.
FOR /F "tokens=3" %%d in ('FIND "DriverDate" %Logs%\GPU.txt') do set gpudate=%%d
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m GPU:%ESC%%ESC%[37m %gpu%%ESC%%ESC%[90m /%ESC%%ESC%[32m VRAM:%ESC%%ESC%[37m%gpuram%%ESC%%ESC%[36m GB%ESC%[0m 
echo   %ESC%[32m GPU Driver:%ESC%%ESC%[37m %gpudriver%%ESC%%ESC%[90m / %ESC%%ESC%[32mDriver Tarih :%ESC%%ESC%[37m %gpudate%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: Monit”r modeli ”§renilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\Monitor.txt') do set monitorr=%%a
:: Monit”r ‡”znrl§ ”§renilir.
FOR /F "tokens=2 delims=':'" %%b in ('FIND "CurrentHorizontalResolution" %Logs%\GPU.txt') do set dikeyc=%%b
FOR /F "tokens=2 delims=':'" %%c in ('FIND "CurrentVerticalResolution" %Logs%\GPU.txt') do set yatayc=%%c
:: Monit”r HZ de§eri ”§renilir.
FOR /F "tokens=2 delims=':'" %%d in ('FIND "CurrentRefreshRate" %Logs%\GPU.txt') do set refresh=%%d
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m Monit”r:%ESC%%ESC%[37m%monitorr% %ESC%%ESC%[90m/%ESC%%ESC%[37m%refresh% %ESC%%ESC%[36mHZ%ESC%%ESC%[90m / %ESC%%ESC%[37m%dikeyc% %ESC%%ESC%[36mx%ESC%%ESC%[37m%yatayc%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ	
:: ------------------------------------------------------------------------------------------------------------
:: Ram soket yapsn eklememde yardmc olan TECHNOPAT/SOSYAL'den Eray Trkay'a [@470650] ‡ok teŸekkr ederim.
:: ------------------------------------------------------------------------------------------------------------
:: Ram soket yaps ”§renilir.
FOR /F "tokens=3" %%b in ('FIND "SMBIOSMemoryType" %Logs%\Ram.txt') do (set RamType=%%b)
	if %RamType%==0 (set RamType=Bilinmiyor)
	if %RamType%==1 (set RamType=Di§er)
	if %RamType%==2 (set RamType=DRAM)
	if %RamType%==3 (set RamType=Senkron Ram)
	if %RamType%==4 (set RamType=Cache Ram)
	if %RamType%==5 (set RamType=EDO)
	if %RamType%==6 (set RamType=EDRAM)
	if %RamType%==7 (set RamType=VRAM)
	if %RamType%==8 (set RamType=SRAM)
	if %RamType%==9 (set RamType=RAM)
	if %RamType%==10 (set RamType=ROM)
	if %RamType%==11 (set RamType=Flash)
	if %RamType%==12 (set RamType=EEPROM)
	if %RamType%==13 (set RamType=FEPR0M)
	if %RamType%==14 (set RamType=EPROM)
	if %RamType%==15 (set RamType=CDRAM)
	if %RamType%==16 (set RamType=3DRAM)
	if %RamType%==17 (set RamType=SDRAM)
	if %RamType%==18 (set RamType=SGRAM)
	if %RamType%==19 (set RamType=RDRAM)
	if %RamType%==20 (set RamType=DDR)
	if %RamType%==21 (set RamType=DDR2)
	if %RamType%==22 (set RamType=DDR2 FB-DIMM)
	if %RamType%==24 (set RamType=DDR3)
	if %RamType%==25 (set RamType=FBD2)
	if %RamType%==26 (set RamType=DDR4)
:: RAM miktar ”§renilir.
FOR /F "tokens=3" %%a in ('FIND "TotalPhysicalMemory" %Logs%\ComputerSystem.txt') do set ramtotal=%%a
:: GB olarak dzenlenir.
set ramtotal=%ramtotal:~0,-3%
set /a ramtotal=(%ramtotal%/1024/1024)
:: RAM MHZ hz ”§renilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Speed" %Logs%\Ram.txt') do set ramspeed=%%a
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m RAM:%ESC%%ESC%[37m %ramtotal% %ESC%[36mGB%ESC%%ESC%[90m / %ESC%%ESC%[37m%ramspeed% %ESC%%ESC%[36m MHZ%ESC%%ESC%[90m / %ESC%%ESC%[32m Soket:%ESC%%ESC%[37m %RamType% %ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
For /f "skip=3 tokens=*" %%a in ('PowerShell "Get-PhysicalDisk | Select-Object -Property MediaType,FriendlyName,Size | Format-Table"') do (
	echo    %%a)
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
:: RAM ile ilgili b”lm daha detayl hale getirilir.
echo          %ESC%[32m Marka            Model            Kapasite    MHZ%ESC%[0m
FOR /F "skip=3 tokens=*" %%a IN ('Powershell -command "Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -Property Manufacturer,PartNumber,Capacity,Speed"') DO (
	echo.  %ESC%[32m RAM:%ESC%[0m%ESC%[37m %%a%ESC%[0m
)
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
:: Ekran kart b”lm daha detayl hale getirilir.
echo         %ESC%[32m      Model              VRAM         Driver%ESC%[0m
FOR /F "skip=3 tokens=*" %%a IN ('Powershell -command "Get-CimInstance -ClassName win32_videocontroller | Select-Object -Property Name,AdapterRAM,DriverVersion | format-table"') DO (
	echo   %ESC%[32m GPU:%ESC%[0m%ESC%[37m %%a%ESC%[0m
	)
)
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m

echo 
echo                           %ESC%[92m Kapatmak i‡in herhangi bir tuŸa basnz.%ESC%[0m
pause > NUL
exit

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0





:v1
cls
mode con cols=80 lines=25


echo  %ESC%[90mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo                                 %ESC%[32m S˜STEM HAKKINDA%ESC%[0m
echo  %ESC%[90m==============================================================================%ESC%[0m
FOR /F "tokens=2 delims='='" %%a in ('wmic os get RegisteredUser /value') do SET registereduser=%%a
echo  %ESC%[32m Kullanc:%ESC%%ESC%[37m %registereduser%%ESC%[0m   
FOR /F "tokens=2 delims='='" %%b in ('wmic os get CSName /value') do SET pcname=%%b
echo  %ESC%[32m Bilgisayar:%ESC%%ESC%[37m %pcname%%ESC%[0m  
echo  %ESC%[90m%ESC%[0m
FOR /F "tokens=2 delims='='" %%c in ('wmic os get Caption /value') do SET caption=%%c
set caption=%caption:~10%
FOR /F "tokens=2 delims='='" %%d in ('wmic os get OSArchitecture /value') do SET osarchitecture=%%d
FOR /F "tokens=2 delims='='" %%e in ('wmic os get BuildNumber /value') do SET buildnumber=%%e
FOR /F "tokens=3 delims= " %%c in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" ^| find "DisplayVersion"') do set ImageBuild=%%c
FOR /F "tokens=*" %%f in ('bcdedit ^| findstr /C:"winload.efi"') do (
	if %errorlevel%==0 set uefi=UEFI-GPT
	if %errorlevel%==1 set uefi=BIOS-MBR
)
echo  %ESC%[32m Sistem:%ESC%%ESC%[37m %caption%%ESC%%ESC%[90m / %ESC%%ESC%[37m%osarchitecture%%ESC%%ESC%[90m / %ESC%%ESC%[37m %ImageBuild% %ESC%[36m(%ESC%%ESC%[37m%buildnumber%%ESC%%ESC%[36m)%ESC%%ESC%[90m / %ESC%%ESC%[37m%uefi%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
FOR /F "tokens=2 delims='='" %%A in ('wmic baseboard get Manufacturer /value') do SET boardmarka=%%A
FOR /F "tokens=1" %%A in ('echo %boardmarka%') do SET boardmarka2=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic ComputerSystem Get Model /value') do SET board=%%A 
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu get SocketDesignation /value') do SET boardsoket=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic bios Get name /value') do SET bios=%%A
echo  %ESC%[32m Anakart:%ESC%%ESC%[37m %boardmarka2% %board%%ESC%%ESC%[90m / %ESC%%ESC%[32mSoket:%ESC%%ESC%[37m %boardsoket%%ESC%%ESC%[90m / %ESC%%ESC%[32mBios:%ESC%%ESC%[37m %bios%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get name /value') do SET cpu=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get NumberOfCores /value') do SET cpucekirdek=%%A 
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get NumberOfLogicalProcessors /value') do SET cpusanalcekirdek=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get L2CacheSize /value') do SET cpuL2=%%A
set cpuL2=%cpuL2:~0,-4%
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get L3CacheSize /value') do SET cpuL3=%%A
set cpuL3=%cpuL3:~0,-4%
echo  %ESC%[32m CPU:%ESC%%ESC%[37m %cpu% %ESC%[0m
echo  %ESC%[32m CPU €ekirdek:%ESC%%ESC%[37m %cpucekirdek%%ESC%%ESC%[90m/%ESC%%ESC%[32m Threads:%ESC%%ESC%[37m %cpusanalcekirdek% %ESC%%ESC%[90m/%ESC%%ESC%[32m L2:%ESC%%ESC%[37m %cpuL2%%ESC%%ESC%[36m MB%ESC%%ESC%[90m / %ESC%%ESC%[32m L3:%ESC%%ESC%[37m %cpuL3%%ESC%%ESC%[36m MB%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_videocontroller get name /value') do SET gpu=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_videocontroller get AdapterRAM /value') do SET gpuram=%%A
set gpuram=%gpuram:~0,-10%
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_videocontroller get DriverVersion /value') do SET gpudriver=%%A
FOR /F "delims='=','.' tokens=2" %%a in ('wmic path win32_videocontroller get DriverDate /value') do set gpudate=%%a
set gpudate=%gpudate:~0,-6%
set gpudyil=%gpudate:~0,-4%
set gpuday=%gpudate:~4,-2%
set gpudgun=%gpudate:~6%
echo  %ESC%[32m GPU:%ESC%%ESC%[37m %gpu%%ESC%%ESC%[90m / %ESC%%ESC%[32m VRAM:%ESC%%ESC%[37m %gpuram%%ESC%%ESC%[36m GB%ESC%[0m 
echo  %ESC%[32m GPU Driver:%ESC%%ESC%[37m %gpudriver% %ESC%%ESC%[32m Driver Tarih :%ESC%%ESC%[37m %gpudgun%.%gpuday%.%gpudyil%%ESC%[0m 
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
FOR /F "tokens=2 delims='='" %%A in ('wmic desktopmonitor get Caption /value') do SET monitor=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path Win32_VideoController get CurrentHorizontalResolution /value') do SET horizontalx=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path Win32_VideoController get CurrentVerticalResolution /value') do SET verticalx=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path Win32_VideoController get CurrentRefreshRate /value') do SET hertz=%%A
echo  %ESC%[32m Monit”r:%ESC%%ESC%[37m %monitor%%ESC%%ESC%[90m / %ESC%%ESC%[37m%hertz%%ESC%%ESC%[36m HZ%ESC%%ESC%[90m / %ESC%%ESC%[37m%horizontalx%%ESC%%ESC%[36m x%ESC%%ESC%[37m %verticalx%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
FOR /F "tokens=2 delims='='" %%A in ('WMIC ComputerSystem get TotalPhysicalMemory /value') do SET ramtotal=%%A
set ramtotal=%ramtotal:~0,-4%
set /a ramtotal2=(%ramtotal%/1024/1024)
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip get Speed /value') do SET ramspeed=%%A
echo  %ESC%[32m RAM:%ESC%%ESC%[37m %ramtotal2% %ESC%[36mGB%ESC%%ESC%[90m / %ESC%%ESC%[37m%ramspeed% %ESC%%ESC%[36m MHZ%ESC%[0m
echo  %ESC%[90m%ESC%[0m
echo       %ESC%[32m Slot       Kapasite    Marka              Model        MHZ%ESC%[0m
FOR /F "skip=1 tokens=*" %%a IN ('WMIC memorychip Get Manufacturer^,BankLabel^,Capacity^,PartNumber^,Speed') DO (
	echo.  %%a
)
echo  %ESC%[90mþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ%ESC%[0m
echo              %ESC%[32m Ekran kapatmak i‡in herhangi bir tuŸa basnz.%ESC%[0m
pause > NUL
exit

:v2

:Information
bcdedit > %Logs%\Bcdedit.txt
wmic os get RegisteredUser, CSName, Caption, OSArchitecture, BuildNumber /value > %Logs%\OS.txt
wmic.exe ComputerSystem Get Manufacturer, Model, TotalPhysicalMemory /value > %Logs%\ComputerSystem.txt
wmic cpu get SocketDesignation, name, NumberOfCores, NumberOfLogicalProcessors, L2CacheSize, L3CacheSize, CurrentClockSpeed /value > %Logs%\CPU.txt
wmic bios Get name /value > %Logs%\Bios.txt
wmic path win32_videocontroller get name, AdapterRAM, DriverVersion, DriverDate, CurrentHorizontalResolution, CurrentVerticalResolution, CurrentRefreshRate /value > %Logs%\GPU.txt
wmic desktopmonitor get Caption /value > %Logs%\Monitor.txt
wmic memorychip get Speed, SMBIOSMemoryType /value > %Logs%\Ram.txt
wmic path win32_operatingsystem get InstallDate /value > %Logs%\format.txt

:Arayuz
cls
echo  %ESC%[90mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»%ESC%[0m
echo  %ESC%[90mº%ESC%%ESC%[97m%ESC%%ESC%[100m                                       S˜STEM HAKKINDA                                     %ESC%[0m%ESC%[90mº%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
FOR /F "tokens=2 delims='='" %%a in ('FIND "RegisteredUser" %Logs%\OS.txt') do (
	FOR /F "tokens=2 delims='='" %%b in ('FIND "CSName" %Logs%\OS.txt') do (
		echo   %ESC%[32m Bilgisayar:%ESC%%ESC%[37m %%b %ESC%[0m
		echo   %ESC%[32m Kullanc :%ESC%%ESC%[37m %%a %ESC%[0m    
		)
	)
)
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
:: ------------------------------------------------------------------------------------------------------------
:: "Format Tarihi" b”lmn eklememde yardmc olan TECHNOPAT/SOSYAL'den Eray Trkay'a [@470650] ‡ok teŸekkr ederim.
:: ------------------------------------------------------------------------------------------------------------
:: Format tarih verisi alnr
FOR /F "tokens=2 delims='=''.'" %%a in ('FIND "InstallDate" %Logs%\format.txt') do set format=%%a
:: Alnan veriden lazm olmayan b”lm ‡karlr.
set format=%format:~0,-6%
:: Yl bulunur
set formatyil=%format:~0,-4%
:: Ay bulmak i‡in ilk yl b”lm kaldrlr.
set formatay=%format:~4,-2%
:: Gn almak i‡in yl ve ay kaldrlr.
set formatgun=%format:~6%
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m Format Tarihi:%ESC%%ESC%[37m %formatgun%.%formatay%.%formatyil%%ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
:: ˜Ÿletim sistemi bulunur
FOR /F "tokens=2 delims='='" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption=%%a
:: Microsoft yazan b”lm kaldrlr.
set caption=%caption:~10%
:: Sistem mimarisi bulunur
FOR /F "tokens=2 delims='='" %%b in ('FIND "OSArchitecture" %Logs%\OS.txt') do set osarchitecture=%%b
::FOR /F "tokens=2 delims='='" %%c in ('FIND "BuildNumber" %Logs%\OS.txt') do set buildnumber=%%c
:: Sistem srm numaras ˜S derleme numarasyla alnr.
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version"') do set isderleme=%%f
:: NT ‡ekirdek b”lm belirten ksm kaldrlr.
set isderleme=%isderleme:~5%
:: ˜Ÿletim sisteminin hangi disk yapsyla kuruldu§unu belirler.
FOR /F "tokens=3 delims= " %%e in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" ^| find "DisplayVersion"') do set ImageBuild=%%e
FIND /C /I "winload.efi" %Logs%\Bcdedit.txt > NUL
	if %errorlevel%==0 set uefi=UEFI-GPT
	if %errorlevel%==1 set uefi=BIOS-MBR
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m Sistem:%ESC%%ESC%[37m %caption%%ESC%%ESC%[90m / %ESC%%ESC%[37m%osarchitecture%%ESC%%ESC%[90m / %ESC%%ESC%[37m %ImageBuild% %ESC%%ESC%[90m / %ESC%%ESC%[37m%isderleme%%ESC%%ESC%[90m / %ESC%%ESC%[37m%uefi%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: Anakart markas bulunur
FOR /F "tokens=2 delims='='" %%a in ('FIND "Manufacturer" %Logs%\ComputerSystem.txt') do (
	FOR /F "tokens=1" %%b in ('echo %%a') do set boardmarka=%%b)
:: Anakart modeli bulunur.
FOR /F "tokens=2 delims='='" %%c in ('FIND "Model" %Logs%\ComputerSystem.txt') do set board=%%c 
:: Anakart iŸlemci soket yaps bulunur.
FOR /F "tokens=2 delims='='" %%d in ('FIND "SocketDesignation" %Logs%\CPU.txt') do set boardsoket=%%d
:: Anakart bios srm ”§renilir.
FOR /F "tokens=2 delims='='" %%e in ('FIND "Name" %Logs%\Bios.txt') do set bios=%%e
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m Anakart:%ESC%%ESC%[37m %boardmarka% %board%%ESC%%ESC%[90m / %ESC%%ESC%[32mSoket:%ESC%%ESC%[37m %boardsoket%%ESC%%ESC%[90m / %ESC%%ESC%[32mBios:%ESC%%ESC%[37m %bios%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: ˜Ÿlemci modeli ”§renilir.
FOR /F "tokens=2 delims='='" %%a in ('FIND "Name" %Logs%\CPU.txt') do set cpu=%%a
:: ˜Ÿlemci ‡ekirdek says ”§renilir.
FOR /F "tokens=2 delims='='" %%b in ('FIND "NumberOfCores" %Logs%\CPU.txt') do set cpucekirdek=%%b
:: ˜Ÿlemci sanal ‡ekirdek says ”§renilir.
FOR /F "tokens=2 delims='='" %%c in ('FIND "NumberOfLogicalProcessors" %Logs%\CPU.txt') do set cpusanalcekirdek=%%c
:: ˜Ÿlemci L2 ”nbellek miktar ”§renilir.
FOR /F "tokens=2 delims='='" %%d in ('FIND "L2CacheSize" %Logs%\CPU.txt') do set cpuL2=%%d
:: L2 hesab yaplmas i‡in sondan 3 rakam atlr.
set cpuL2=%cpuL2:~0,-3%
:: ˜Ÿlemci L3 ”nbellek miktar ”§renilir.
FOR /F "tokens=2 delims='='" %%e in ('FIND "L3CacheSize" %Logs%\CPU.txt') do set cpuL3=%%e
:: L3 hesab yaplmas i‡in sondan 3 rakam atlr.
set cpuL3=%cpuL3:~0,-3%
:: ˜Ÿlemci saat hz bulunur.
FOR /F "tokens=2 delims='='" %%e in ('FIND "CurrentClockSpeed" %Logs%\CPU.txt') do set cpuclock=%%e
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m CPU:%ESC%%ESC%[37m %cpu% %ESC%[0m
echo   %ESC%[32m CPU €ekirdek:%ESC%%ESC%[37m %cpucekirdek%%ESC%%ESC%[90m/%ESC%%ESC%[32m Threads:%ESC%%ESC%[37m %cpusanalcekirdek% %ESC%%ESC%[90m/%ESC%%ESC%[32m L2:%ESC%%ESC%[37m %cpuL2%%ESC%%ESC%[36m MB%ESC%%ESC%[90m /%ESC%%ESC%[32m L3:%ESC%%ESC%[37m %cpuL3%%ESC%%ESC%[36m MB%ESC%%ESC%[90m /%ESC%%ESC%[32m CPU MHZ:%ESC%%ESC%[37m %cpuclock%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: Ekran kart modeli tespit edilir.
FOR /F "tokens=2 delims='='" %%a in ('FIND "Name" %Logs%\GPU.txt') do set gpu=%%a
:: VRAM miktar ”§renilir.
FOR /F "tokens=2 delims='='" %%b in ('FIND "AdapterRAM" %Logs%\GPU.txt') do set gpuram=%%b
:: VRAM miktar GB olarak dzenlenir.
set gpuram=%gpuram:~0,-9%
:: Ykl driver srm ”§renilir.. 
FOR /F "tokens=2 delims='='" %%c in ('FIND "DriverVersion" %Logs%\GPU.txt') do set gpudriver=%%c
:: Driver srmnn tarihi ”§renilir.
FOR /F "delims='=','.' tokens=2" %%d in ('FIND "DriverDate" %Logs%\GPU.txt') do set gpudate=%%d
:: Driver tarihi i‡in son gereksiz son 6 rakam ‡karlr.
set gpudate=%gpudate:~0,-6%
:: Driver yl bulmak i‡in son 4 rakam ‡karlr.
set gpudyil=%gpudate:~0,-4%
:: Driver ay bulmak i‡in ilk 4 ve son rakam ‡karlr.
set gpuday=%gpudate:~4,-2%
:: Driver gn bulmak i‡in ilk 6 rakam ‡karlr.
set gpudgun=%gpudate:~6%
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m GPU:%ESC%%ESC%[37m %gpu%%ESC%%ESC%[90m /%ESC%%ESC%[32m VRAM:%ESC%%ESC%[37m %gpuram%%ESC%%ESC%[36m GB%ESC%[0m 
echo   %ESC%[32m GPU Driver:%ESC%%ESC%[37m %gpudriver%%ESC%%ESC%[90m / %ESC%%ESC%[32mDriver Tarih :%ESC%%ESC%[37m %gpudgun%.%gpuday%.%gpudyil%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: Monit”r modeli ”§renilir.
FOR /F "tokens=2 delims='='" %%a in ('FIND "Caption" %Logs%\Monitor.txt') do ( 
:: Monit”r ‡”znrl§ ”§renilir.
	FOR /F "tokens=2 delims='='" %%b in ('FIND "CurrentHorizontalResolution" %Logs%\GPU.txt') do (
		FOR /F "tokens=2 delims='='" %%c in ('FIND "CurrentVerticalResolution" %Logs%\GPU.txt') do (
:: Monit”r HZ de§eri ”§renilir.
			FOR /F "tokens=2 delims='='" %%d in ('FIND "CurrentRefreshRate" %Logs%\GPU.txt') do (
:: Tm de§erler komut ekranna yazdrlr.
				echo   %ESC%[32m Monit”r:%ESC%%ESC%[37m %%a %ESC%%ESC%[90m/ %ESC%%ESC%[37m%%d %ESC%%ESC%[36mHZ%ESC%%ESC%[90m / %ESC%%ESC%[37m%%b %ESC%%ESC%[36mx%ESC%%ESC%[37m %%c %ESC%[0m
				)
			)
		)
	)
)
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ	
:: ------------------------------------------------------------------------------------------------------------
:: Ram soket yapsn eklememde yardmc olan TECHNOPAT/SOSYAL'den Eray Trkay'a [@470650] ‡ok teŸekkr ederim.
:: ------------------------------------------------------------------------------------------------------------
:: Ram soket yaps ”§renilir.
FOR /F "tokens=2 delims='=' " %%b in ('FIND "SMBIOSMemoryType" %Logs%\Ram.txt') do (set RamType=%%b)
	if %RamType%==0 (set RamType=Bilinmiyor)
	if %RamType%==1 (set RamType=Di§er)
	if %RamType%==2 (set RamType=DRAM)
	if %RamType%==3 (set RamType=Senkron Ram)
	if %RamType%==4 (set RamType=Cache Ram)
	if %RamType%==5 (set RamType=EDO)
	if %RamType%==6 (set RamType=EDRAM)
	if %RamType%==7 (set RamType=VRAM)
	if %RamType%==8 (set RamType=SRAM)
	if %RamType%==9 (set RamType=RAM)
	if %RamType%==10 (set RamType=ROM)
	if %RamType%==11 (set RamType=Flash)
	if %RamType%==12 (set RamType=EEPROM)
	if %RamType%==13 (set RamType=FEPR0M)
	if %RamType%==14 (set RamType=EPROM)
	if %RamType%==15 (set RamType=CDRAM)
	if %RamType%==16 (set RamType=3DRAM)
	if %RamType%==17 (set RamType=SDRAM)
	if %RamType%==18 (set RamType=SGRAM)
	if %RamType%==19 (set RamType=RDRAM)
	if %RamType%==20 (set RamType=DDR)
	if %RamType%==21 (set RamType=DDR2)
	if %RamType%==22 (set RamType=DDR2 FB-DIMM)
	if %RamType%==24 (set RamType=DDR3)
	if %RamType%==25 (set RamType=FBD2)
	if %RamType%==26 (set RamType=DDR4)
:: RAM miktar ”§renilir.
FOR /F "tokens=2 delims='='" %%a in ('FIND "TotalPhysicalMemory" %Logs%\ComputerSystem.txt') do set ramtotal=%%a
:: GB olarak dzenlenir.
set ramtotal=%ramtotal:~0,-3%
set /a ramtotal2=(%ramtotal%/1024/1024)
:: RAM MHZ hz ”§renilir.
FOR /F "tokens=2 delims='='" %%a in ('FIND "Speed" %Logs%\Ram.txt') do set ramspeed=%%a
:: Tm de§erler komut ekranna yazdrlr.
echo   %ESC%[32m RAM:%ESC%%ESC%[37m %ramtotal2% %ESC%[36mGB%ESC%%ESC%[90m / %ESC%%ESC%[37m%ramspeed% %ESC%%ESC%[36m MHZ%ESC%%ESC%[90m / %ESC%%ESC%[32m Soket:%ESC%%ESC%[37m %RamType% %ESC%[0m
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
:: RAM ile ilgili b”lm daha detayl hale getirilir.
echo              %ESC%[32m Slot       Kapasite    Marka              Model        MHZ%ESC%[0m
FOR /F "skip=1 tokens=*" %%a IN ('WMIC memorychip Get Manufacturer^,BankLabel^,Capacity^,PartNumber^,Speed') DO (
	echo.  %ESC%[32m RAM:%ESC%[0m %ESC%[37m %%a%ESC%[0m
)
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m
:: Ekran kart b”lm daha detayl hale getirilir.
echo          %ESC%[32m  Kapasite       Driver              Model%ESC%[0m
FOR /F "skip=1 tokens=*" %%a IN ('wmic path win32_videocontroller get name^,AdapterRAM^,DriverVersion') DO (
	echo   %ESC%[32m GPU:%ESC%[0m %ESC%[37m %%a%ESC%[0m
	)
)
echo  %ESC%[90mÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹%ESC%[0m

echo 
echo                           %ESC%[92m Kapatmak i‡in herhangi bir tuŸa basnz.%ESC%[0m
pause > NUL
exit