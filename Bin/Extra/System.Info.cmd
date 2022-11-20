mode con cols=95 lines=44
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
%Lang% :Extra_1
echo.
echo                    %R%[33m████ ████ █   █ █ █████ ████ ████ ███ █   █ █  █ ████%R%[0m
echo                    %R%[33m█  █ █    ██  █ █   █   █  █ █  █ █   ██  █ █ █  █   %R%[0m
echo                    %R%[33m█  █ █ ██ █ █ █ █   █   █  █ ████ ██  █ █ █ ██   ████%R%[0m
echo                    %R%[33m█  █ █  █ █  ██ █   █   █  █ █ █  █   █  ██ █ █     █%R%[0m
echo                    %R%[33m████ ████ █   █ █   █   ████ █  █ ███ █   █ █  █ ████%R%[0m

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Information
bcdedit > %Logs%\Bcdedit.txt
chcp 437 > NUL 2>&1
Powershell -command "Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property Caption,InstallDate,OSArchitecture,RegisteredUser,CSName | format-list" > %Logs%\OS.txt
Powershell -command "Get-CimInstance -ClassName Win32_computerSystem | Select-Object -Property Name,Model,Manufacturer,PrimaryOwnerName,TotalPhysicalMemory | format-list" > %Logs%\ComputerSystem.txt
Powershell -command "Get-CimInstance -ClassName Win32_BIOS | Select-Object -Property Name | format-list" > %Logs%\Bios.txt
Powershell -command "Get-CimInstance -ClassName Win32_Processor | Select-Object -Property Name,CurrentClockSpeed,SocketDesignation,L2CacheSize,L3CacheSize,NumberOfCores,NumberOfLogicalProcessors | format-list" > %Logs%\CPU.txt
Powershell -command "Get-CimInstance -ClassName CIM_VideoController | Select-Object -Property Name,CurrentHorizontalResolution,CurrentVerticalResolution,CurrentRefreshRate,AdapterRAM,DriverDate,DriverVersion | format-list" > %Logs%\GPU.txt
Powershell -command "Get-CimInstance -ClassName Win32_DesktopMonitor | Select-Object -Property Name | format-list" > %Logs%\Monitor.txt
Powershell -command "Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -Property Speed,SMBIOSMemoryType | format-list" > %Logs%\Ram.txt
Powershell -command "Get-CimInstance -ClassName Win32_TimeZone | Select-Object -Property Caption | format-list" > %Logs%\utc.txt
chcp 65001 > NUL 2>&1
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

:Arayuz
cls
%Lang% :Extra_2
FOR /F "tokens=3" %%a in ('FIND "RegisteredUser" %Logs%\OS.txt') do (set Value1=%%a)
FOR /F "tokens=3" %%b in ('FIND "CSName" %Logs%\OS.txt') do (set Value2=%%b)
%Lang% :Extra_3

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
echo  %R%[90m├───────────────────────────────────────────────────────────────────────────────────────────┤%R%[0m
:: Format tarih verisi alınır
FOR /F "tokens=3" %%a in ('FIND "InstallDate" %Logs%\OS.txt') do set Value1=%%a
FOR /F "tokens=3" %%c in ('FIND "Caption" %Logs%\utc.txt') do set Value2=%%c
set Value2=%Value2:~1,-4%
for /f "tokens=2" %%a in ('echo %date%') do set Value3=%%a
for /f "tokens=1" %%b in ('echo %time%') do set Value4=%%b
set Time2=%Time2:~0,-3%
%Lang% :Extra_4

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
echo  %R%[90m├───────────────────────────────────────────────────────────────────────────────────────────┤%R%[0m
:: İşletim sistemi bulunur
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Caption" %Logs%\OS.txt') do set Value1=%%a
:: Microsoft yazan bölüm kaldırılır.
set Value1=%Value1:~11%
:: Sistem mimarisi bulunur
FOR /F "tokens=3" %%d in ('FIND "OSArchitecture" %Logs%\OS.txt') do set Value2=%%d
:: Sistem sürümü numarası İS derleme numarasıyla alınır.
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version"') do set Value3=%%f
:: NT çekirdek bölümü belirten kısmı kaldırılır.
set Value3=%Value3:~5%
:: İşletim sisteminin hangi disk yapısıyla kurulduğunu belirler.
FOR /F "tokens=3 delims= " %%e in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" ^| find "DisplayVersion"') do set Value4=%%e
FIND /C /I "winload.efi" %Logs%\Bcdedit.txt > NUL
	if %errorlevel%==0 (%Lang% :Extra_Value_1)
	if %errorlevel%==1 (%Lang% :Extra_Value_2)
:: Tüm değerler komut ekranına yazdırılır.
%Lang% :Extra_5

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: Anakart markası bulunur
FOR /F "tokens=3" %%a in ('FIND "Manufacturer" %Logs%\ComputerSystem.txt') do set Value1=%%a
:: Anakart modeli bulunur.
FOR /F "tokens=2 delims=':'" %%c in ('FIND "Model" %Logs%\ComputerSystem.txt') do set Value2=%%c
:: Anakart işlemci soket yapısı bulunur.
FOR /F "tokens=2 delims=':'" %%d in ('FIND "SocketDesignation" %Logs%\CPU.txt') do set Value3=%%d
:: Anakart bios sürümü öğrenilir.
FOR /F "tokens=2 delims=':'" %%e in ('FIND "Name" %Logs%\Bios.txt') do set Value4=%%e
:: Tüm değerler komut ekranına yazdırılır.
%Lang% :Extra_6

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: İşlemci modeli öğrenilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\CPU.txt') do set Value1=%%a
:: İşlemci çekirdek sayısı öğrenilir.
FOR /F "tokens=2 delims=':'" %%b in ('FIND "NumberOfCores" %Logs%\CPU.txt') do set Value2=%%b
:: İşlemci sanal çekirdek sayısı öğrenilir.
FOR /F "tokens=2 delims=':'" %%c in ('FIND "NumberOfLogicalProcessors" %Logs%\CPU.txt') do set Value3=%%c
:: İşlemci L2 önbellek miktarı öğrenilir.
FOR /F "tokens=2 delims=':'" %%d in ('FIND "L2CacheSize" %Logs%\CPU.txt') do set Value4=%%d
:: L2 hesabı yapılması için sondan 3 rakam atılır.
set Value4=%Value4:~0,-3%
:: İşlemci L3 önbellek miktarı öğrenilir.
FOR /F "tokens=2 delims=':'" %%e in ('FIND "L3CacheSize" %Logs%\CPU.txt') do set Value5=%%e
:: L3 hesabı yapılması için sondan 3 rakam atılır.
set Value5=%Value5:~0,-3%
:: İşlemci saat hızı bulunur.
FOR /F "tokens=2 delims=':'" %%e in ('FIND "CurrentClockSpeed" %Logs%\CPU.txt') do set Value6=%%e
:: Tüm değerler komut ekranına yazdırılır.
%Lang% :Extra_7

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: Ekran kartı modeli tespit edilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\GPU.txt') do set Value1=%%a
:: VRAM miktarı öğrenilir.
FOR /F "tokens=2 delims=':'" %%b in ('FIND "AdapterRAM" %Logs%\GPU.txt') do set Value2=%%b
:: VRAM miktarı GB olarak düzenlenir.
set Value2=%Value2:~0,-9%
:: Yüklü driver sürümü öğrenilir.. 
FOR /F "tokens=2 delims=':'" %%c in ('FIND "DriverVersion" %Logs%\GPU.txt') do set Value3=%%c
:: Driver sürümünün tarihi öğrenilir.
FOR /F "tokens=3" %%d in ('FIND "DriverDate" %Logs%\GPU.txt') do set Value4=%%d
:: Tüm değerler komut ekranına yazdırılır.
%Lang% :Extra_8

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: Monitör modeli öğrenilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\Monitor.txt') do set Value1=%%a
:: Monitör çözünürlüğü öğrenilir.
FOR /F "tokens=2 delims=':'" %%b in ('FIND "CurrentHorizontalResolution" %Logs%\GPU.txt') do set Value2=%%b
FOR /F "tokens=2 delims=':'" %%c in ('FIND "CurrentVerticalResolution" %Logs%\GPU.txt') do set Value3=%%c
:: Monitör HZ değeri öğrenilir.
FOR /F "tokens=2 delims=':'" %%d in ('FIND "CurrentRefreshRate" %Logs%\GPU.txt') do set Value4=%%d
:: Tüm değerler komut ekranına yazdırılır.
%Lang% :Extra_9

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: Ram soket yapısı öğrenilir.
FOR /F "tokens=3" %%b in ('FIND "SMBIOSMemoryType" %Logs%\Ram.txt') do (set Value1=%%b)
	if %Value1%==0 (set Value1=Bilinmiyor)
	if %Value1%==1 (set Value1=Diğer)
	if %Value1%==2 (set Value1=DRAM)
	if %Value1%==3 (set Value1=Senkron Ram)
	if %Value1%==4 (set Value1=Cache Ram)
	if %Value1%==5 (set Value1=EDO)
	if %Value1%==6 (set Value1=EDRAM)
	if %Value1%==7 (set Value1=VRAM)
	if %Value1%==8 (set Value1=SRAM)
	if %Value1%==9 (set Value1=RAM)
	if %Value1%==10 (set Value1=ROM)
	if %Value1%==11 (set Value1=Flash)
	if %Value1%==12 (set Value1=EEPROM)
	if %Value1%==13 (set Value1=FEPR0M)
	if %Value1%==14 (set Value1=EPROM)
	if %Value1%==15 (set Value1=CDRAM)
	if %Value1%==16 (set Value1=3DRAM)
	if %Value1%==17 (set Value1=SDRAM)
	if %Value1%==18 (set Value1=SGRAM)
	if %Value1%==19 (set Value1=RDRAM)
	if %Value1%==20 (set Value1=DDR)
	if %Value1%==21 (set Value1=DDR2)
	if %Value1%==22 (set Value1=DDR2 FB-DIMM)
	if %Value1%==24 (set Value1=DDR3)
	if %Value1%==25 (set Value1=FBD2)
	if %Value1%==26 (set Value1=DDR4)
:: RAM miktarı öğrenilir.
FOR /F "tokens=3" %%a in ('FIND "TotalPhysicalMemory" %Logs%\ComputerSystem.txt') do set Value2=%%a
:: GB olarak düzenlenir.
set Value2=%Value2:~0,-3%
set /a Value2=(%Value2%/1024/1024)
:: RAM MHZ hızı öğrenilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Speed" %Logs%\Ram.txt') do set Value3=%%a
:: Tüm değerler komut ekranına yazdırılır.
%Lang% :Extra_10

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
echo  %R%[90m├───────────────────────────────────────────────────────────────────────────────────────────┤%R%[0m
chcp 437 > NUL 2>&1
For /f "skip=3 tokens=*" %%a in ('PowerShell -command "Get-PhysicalDisk | Select-Object -Property MediaType,FriendlyName,Size | Format-Table"') do (
	echo   + %%a)
chcp 65001 > NUL 2>&1

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
echo  %R%[90m├───────────────────────────────────────────────────────────────────────────────────────────┤%R%[0m
:: RAM ile ilgili bölüm daha detaylı hale getirilir.
%Lang% :Extra_11
%Lang% :Extra_Value_3
chcp 437 > NUL 2>&1
FOR /F "skip=3 tokens=*" %%a IN ('PowerShell -command "Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -Property Manufacturer,PartNumber,Capacity,Speed"') DO (
	echo.  +%R%[32m %Value1%:%R%[37m %%a%R%[0m
)
chcp 65001 > NUL 2>&1

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
echo  %R%[90m├───────────────────────────────────────────────────────────────────────────────────────────┤%R%[0m
:: Ekran kartı bölümü daha detaylı hale getirilir.
%Lang% :Extra_12
%Lang% :Extra_Value_4
chcp 437 > NUL 2>&1
FOR /F "skip=3 tokens=*" %%a IN ('PowerShell -command "Get-CimInstance -ClassName win32_videocontroller | Select-Object -Property Name,AdapterRAM,DriverVersion | format-table"') DO (
	echo   +%R%[32m %Value1%:%R%[37m %%a%R%[0m
	)
)
chcp 65001 > NUL 2>&1
echo  %R%[90m├───────────────────────────────────────────────────────────────────────────────────────────┤%R%[0m

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

echo.
%Lang% :Extra_13
pause > NUL
goto :eof
