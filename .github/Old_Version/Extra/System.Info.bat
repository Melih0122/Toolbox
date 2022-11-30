:: ==============================================================================================================================
::                               NOTEPAD++ > Kodlama > Karakter Tak�m� > T�rk�e > OEM857
:: ==============================================================================================================================
::
::       �������   ������   ��    �� ���� ��������  �������  ��������  �������� ��    �� ��    ��  ������
::      ��     �� ��    ��  ���   ��  ��     ��    ��     �� ��     �� ��       ���   �� ��   ��  ��    �
::      ��     �� ��        ����  ��  ��     ��    ��     �� ��     �� ��       ����  �� ��  ��   ��
::      ��     �� ��   ���� �� �� ��  ��     ��    ��     �� ��������  ������   �� �� �� �����      ������ 
::      ��     �� ��    ��  ��  ����  ��     ��    ��     �� ��   ��   ��       ��  ���� ��  ��         ��
::      ��     �� ��    ��  ��   ���  ��     ��    ��     �� ��    ��  ��       ��   ��� ��   ��  ��    ��
::       �������   ������   ��    �� ����    ��     �������  ��     �� �������� ��    �� ��    ��  ������ 
::
::  Haz�rlayan: H�seyin UZUNYAYLA / OgnitorenKs
::  -------------------------------------------
::  Toolbox'� haz�rlad���m sistemlerde temel programlar� indirip, basit bir �ekilde sistem �zerinde d�zenleme yapmas� i�in haz�rlad�m.
::  S�rekli olarak g�ncellenecektir. Toolbox'� indirmek i�in a�a��daki linkleri kullanabilirsiniz.
::
::  �stek ve �nerileriniz olursa, ileti�im;
::  --------------------------------------
::  >> Discord: OgnitorenKs#2737 
::  >>    Mail: ognitorenks@gmail.com
::
::                                                >>   WEB PAGE   <<
::                                         --------------------------------
::                                         >>  ognitorenks.blogspot.com  <<
::
:: ==============================================================================================================================
echo off
cls
title      System Info / OgnitorenKs
mode con cols=95 lines=44

setlocal
Call :ColorEnd

:: ==============================================================================================================================
::  RENK HAR�TASI
::  -------------
:: %R%^[32m > Bilgi b�l�mlerinden kullan�l�r. Ye�il.
:: %R%^[37m > Sistem donan�m bilgi rengidir. 
:: %R%^[100m > Ba�l�k b�l�mlerinde arka plan� dolduran renktir.
:: %R%^[1;97m > Ba�l�kta dolgu b�l�m�n�n i�inde yer alan yaz� rengidir. 1; b�l�m� kal�n yazmas�n� sa�lar. 97m beyaz renk yazmas�n� sa�lar.
:: %R%^[90m > �er�eveleri ve | i�aretlerinin rengini de�i�ir.
:: 
:: ==============================================================================================================================

:Logs
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Location=%Location:~0,-6%
set Logs=%Location%\Edit\Logs
echo [%date% - %time%] ^| SistemHakkinda ^| Sistem hakk�nda b�l�m� �al��t�r�ld�. >> %Location%\Logs
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo                             %R%[92mGetting system and hardware information %R%[0m
echo 
echo                                         %R%[92m Please wait...%R%[0m
echo 
echo 
echo             	      %R%[33m��  ���� �   � � ���  ��  ����  ��� �   �   � ����%R%[0m
echo             	     %R%[33m�  � �    ��  � �  �  �  � �  �  �   ��  �  �  �   %R%[0m
echo             	     %R%[33m�  � � �� � � � �  �  �  � � �   ��  � � � �   ����%R%[0m
echo             	     %R%[33m�  � �  � �  �� �  �  �  � �  �  �   �  ��  �     �%R%[0m
echo             	      %R%[33m��  ���� �   � �  �   ��  �   � ��� �   �   � ����%R%[0m 

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

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

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:Arayuz
cls
echo  %R%[90m�������������������������������������������������������������������������������������������ͻ%R%[0m
echo  %R%[90m�%R%[97m%R%[100m                                        SYSTEM INFO                                        %R%[0m%R%[90m�%R%[0m
echo  %R%[90m�������������������������������������������������������������������������������������������͹%R%[0m
FOR /F "tokens=3" %%a in ('FIND "RegisteredUser" %Logs%\OS.txt') do (
	FOR /F "tokens=3" %%b in ('FIND "CSName" %Logs%\OS.txt') do (
		echo   %R%[32m   PC Name :%R%[37m %%b %R%[0m
		echo   %R%[32m User Name :%R%[37m %%a %R%[0m    
		)
	)
)

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

echo  %R%[90m�������������������������������������������������������������������������������������������͹%R%[0m
:: Format tarih verisi al�n�r
FOR /F "tokens=3" %%a in ('FIND "InstallDate" %Logs%\OS.txt') do set format=%%a
FOR /F "tokens=3" %%c in ('FIND "Caption" %Logs%\utc.txt') do set utcc=%%c
set utcc=%utcc:~1,-4%
for /f "tokens=2" %%a in ('echo %date%') do set Time1=%%a
for /f "tokens=1" %%b in ('echo %time%') do set Time2=%%b
set Time2=%Time2:~0,-3%

echo   %R%[32m Format Date:%R%[37m %format%%R%[90m / %R%[32mTime Zone:%R%[37m %utcc%%R%[90m /%R%[37m %Time1% - %Time2%%R%[0m

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

echo  %R%[90m�������������������������������������������������������������������������������������������͹%R%[0m
:: ��letim sistemi bulunur
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption=%%a
:: Microsoft yazan b�l�m kald�r�l�r.
set caption=%caption:~11%
:: Sistem mimarisi bulunur
FOR /F "tokens=3" %%d in ('FIND "OSArchitecture" %Logs%\OS.txt') do set osarch=%%d
:: Sistem s�r�m� numaras� �S derleme numaras�yla al�n�r.
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version"') do set isderleme=%%f
:: NT �ekirdek b�l�m� belirten k�sm� kald�r�l�r.
set isderleme=%isderleme:~5%
:: ��letim sisteminin hangi disk yap�s�yla kuruldu�unu belirler.
FOR /F "tokens=3 delims= " %%e in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" ^| find "DisplayVersion"') do set ImageBuild=%%e
FIND /C /I "winload.efi" %Logs%\Bcdedit.txt > NUL
	if %errorlevel%==0 set uefi=UEFI-GPT
	if %errorlevel%==1 set uefi=BIOS-MBR

:: T�m de�erler komut ekran�na yazd�r�l�r.
echo   %R%[32m OS:%R%[37m %caption%%R%[90m / %R%[37mx%osarch%%R%[90m / %R%[37m%ImageBuild%%R%[90m / %R%[37m%isderleme%%R%[90m / %R%[37m%uefi%%R%[0m


:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:: Anakart markas� bulunur
FOR /F "tokens=3" %%a in ('FIND "Manufacturer" %Logs%\ComputerSystem.txt') do set boardmarka=%%a
:: Anakart modeli bulunur.
FOR /F "tokens=2 delims=':'" %%c in ('FIND "Model" %Logs%\ComputerSystem.txt') do set board=%%c
:: Anakart i�lemci soket yap�s� bulunur.
FOR /F "tokens=2 delims=':'" %%d in ('FIND "SocketDesignation" %Logs%\CPU.txt') do set boardsoket=%%d
:: Anakart bios s�r�m� ��renilir.
FOR /F "tokens=2 delims=':'" %%e in ('FIND "Name" %Logs%\Bios.txt') do set bios=%%e

:: T�m de�erler komut ekran�na yazd�r�l�r.
echo   %R%[32m M.Board:%R%[37m %boardmarka%%board%%R%[90m / %R%[32mSocket:%R%[37m%boardsoket%%R%[90m / %R%[32mBios:%R%[37m%bios%%R%[0m

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:: ��lemci modeli ��renilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\CPU.txt') do set cpu=%%a
:: ��lemci �ekirdek say�s� ��renilir.
FOR /F "tokens=2 delims=':'" %%b in ('FIND "NumberOfCores" %Logs%\CPU.txt') do set cpucekirdek=%%b
:: ��lemci sanal �ekirdek say�s� ��renilir.
FOR /F "tokens=2 delims=':'" %%c in ('FIND "NumberOfLogicalProcessors" %Logs%\CPU.txt') do set cpusanalcekirdek=%%c
:: ��lemci L2 �nbellek miktar� ��renilir.
FOR /F "tokens=2 delims=':'" %%d in ('FIND "L2CacheSize" %Logs%\CPU.txt') do set cpuL2=%%d
:: L2 hesab� yap�lmas� i�in sondan 3 rakam at�l�r.
set cpuL2=%cpuL2:~0,-3%
:: ��lemci L3 �nbellek miktar� ��renilir.
FOR /F "tokens=2 delims=':'" %%e in ('FIND "L3CacheSize" %Logs%\CPU.txt') do set cpuL3=%%e
:: L3 hesab� yap�lmas� i�in sondan 3 rakam at�l�r.
set cpuL3=%cpuL3:~0,-3%
:: ��lemci saat h�z� bulunur.
FOR /F "tokens=2 delims=':'" %%e in ('FIND "CurrentClockSpeed" %Logs%\CPU.txt') do set cpuclock=%%e

:: T�m de�erler komut ekran�na yazd�r�l�r.
echo   %R%[32m CPU:%R%[37m%cpu% %R%[0m
echo   %R%[32m CPU Core:%R%[37m%cpucekirdek% %R%[90m/%R%[32m Threads:%R%[37m%cpusanalcekirdek% %R%[90m/%R%[32m L2:%R%[37m%cpuL2%%R%[36m MB%R%[90m /%R%[32m L3:%R%[37m%cpuL3%%R%[36m MB%R%[90m /%R%[32m CPU MHZ:%R%[37m%cpuclock%%R%[0m

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:: Ekran kart� modeli tespit edilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\GPU.txt') do set gpu=%%a
:: VRAM miktar� ��renilir.
FOR /F "tokens=2 delims=':'" %%b in ('FIND "AdapterRAM" %Logs%\GPU.txt') do set gpuram=%%b
:: VRAM miktar� GB olarak d�zenlenir.
set gpuram=%gpuram:~0,-9%
:: Y�kl� driver s�r�m� ��renilir.. 
FOR /F "tokens=2 delims=':'" %%c in ('FIND "DriverVersion" %Logs%\GPU.txt') do set gpudriver=%%c
:: Driver s�r�m�n�n tarihi ��renilir.
FOR /F "tokens=3" %%d in ('FIND "DriverDate" %Logs%\GPU.txt') do set gpudate=%%d

:: T�m de�erler komut ekran�na yazd�r�l�r.
echo   %R%[32m GPU:%R%[37m %gpu%%R%[90m /%R%[32m VRAM:%R%[37m%gpuram%%R%[36m GB%R%[0m 
echo   %R%[32m GPU Driver:%R%[37m %gpudriver%%R%[90m / %R%[32mDriver Date :%R%[37m %gpudate%%R%[0m

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:: Monit�r modeli ��renilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\Monitor.txt') do set monitorr=%%a
:: Monit�r ��z�n�rl��� ��renilir.
FOR /F "tokens=2 delims=':'" %%b in ('FIND "CurrentHorizontalResolution" %Logs%\GPU.txt') do set dikeyc=%%b
FOR /F "tokens=2 delims=':'" %%c in ('FIND "CurrentVerticalResolution" %Logs%\GPU.txt') do set yatayc=%%c
:: Monit�r HZ de�eri ��renilir.
FOR /F "tokens=2 delims=':'" %%d in ('FIND "CurrentRefreshRate" %Logs%\GPU.txt') do set refresh=%%d

:: T�m de�erler komut ekran�na yazd�r�l�r.
echo   %R%[32m Monitor:%R%[37m%monitorr% %R%[90m/%R%[37m%refresh% %R%[36mHZ%R%[90m / %R%[37m%dikeyc% %R%[36mx%R%[37m%yatayc%%R%[0m

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:: ------------------------------------------------------------------------------------------------------------
:: Ram soket yap�s�n� eklememde yard�mc� olan TECHNOPAT/SOSYAL'den Eray T�rkay'a [@470650] �ok te�ekk�r ederim.
:: ------------------------------------------------------------------------------------------------------------
:: Ram soket yap�s� ��renilir.
FOR /F "tokens=3" %%b in ('FIND "SMBIOSMemoryType" %Logs%\Ram.txt') do (set RamType=%%b)
	if %RamType%==0 (set RamType=Bilinmiyor)
	if %RamType%==1 (set RamType=Di�er)
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
:: RAM miktar� ��renilir.
FOR /F "tokens=3" %%a in ('FIND "TotalPhysicalMemory" %Logs%\ComputerSystem.txt') do set ramtotal=%%a
:: GB olarak d�zenlenir.
set ramtotal=%ramtotal:~0,-3%
set /a ramtotal=(%ramtotal%/1024/1024)
:: RAM MHZ h�z� ��renilir.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Speed" %Logs%\Ram.txt') do set ramspeed=%%a

:: T�m de�erler komut ekran�na yazd�r�l�r.
echo   %R%[32m RAM:%R%[37m %ramtotal% %R%[36mGB%R%[90m / %R%[37m%ramspeed% %R%[36m MHZ%R%[90m / %R%[32m Socket:%R%[37m %RamType% %R%[0m

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

echo  %R%[90m�������������������������������������������������������������������������������������������͹%R%[0m
For /f "skip=3 tokens=*" %%a in ('PowerShell "Get-PhysicalDisk | Select-Object -Property MediaType,FriendlyName,Size | Format-Table"') do (
	echo    %%a)
	
:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

echo  %R%[90m�������������������������������������������������������������������������������������������͹%R%[0m
:: RAM ile ilgili b�l�m daha detayl� hale getirilir.
echo          %R%[32m Marka            Model            Kapasite    MHZ%R%[0m
FOR /F "skip=3 tokens=*" %%a IN ('Powershell -command "Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -Property Manufacturer,PartNumber,Capacity,Speed"') DO (
	echo.  %R%[32m RAM:%R%[0m%R%[37m %%a%R%[0m
)

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

echo  %R%[90m�������������������������������������������������������������������������������������������͹%R%[0m
:: Ekran kart� b�l�m� daha detayl� hale getirilir.
echo         %R%[32m      Model              VRAM         Driver%R%[0m
FOR /F "skip=3 tokens=*" %%a IN ('Powershell -command "Get-CimInstance -ClassName win32_videocontroller | Select-Object -Property Name,AdapterRAM,DriverVersion | format-table"') DO (
	echo   %R%[32m GPU:%R%[0m%R%[37m %%a%R%[0m
	)
)
echo  %R%[90m�������������������������������������������������������������������������������������������͹%R%[0m

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

echo 
echo                               %R%[92m Press any key to turn it off%R%[0m
pause > NUL
exit

:: ����������������������������������������������������������������������������������������������������������������������������������������������������������

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set R=%%b
  exit /B 0
)
exit /B 0

