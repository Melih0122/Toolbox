::
:: English language
:: ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ►
:: #########################################################################################################
:: Routing is done
Call %*
goto :eof
:: #########################################################################################################
:: ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄

:Value_1
set Choice=Choice
goto :eof

:Value_2
set Choice=Multi Choice
goto :eof

:Value_3
set Choice=Convert disc letter
goto :eof

:Value_4
set Choice=Process
goto :eof

:Value_5
set Choice=User name
goto :eof

:Value_6
set Choice=Licence
goto :eof

:Value_8
set Choice=Enter a value in minutes
goto :eof

:Value_9
set Choice=Enter SHA-256 Value
goto :eof

:Value_10
set Choice=File path to check
goto :eof

:Value_11
set hashcontrol=%R%[1;97m%R%[42m                                    Hash values are the same                                   %R%[0m
goto :eof

:Value_12
set hashcontrol=%R%[1;97m%R%[41m                               ERROR! Hash values are different                                %R%[0m
goto :eof

:Menu_1
:: Kılavuz çizgisi
echo            %R%[90m┌────────────────────────────────────┬───────────────────────────────────────┐%R%[0m
echo            %R%[90m│%R%[32m  1-%R%[37m Application Installer %R%[90m[M]      │%R%[32m   2-%R%[37m Manage Services%R%[90m [M]              │%R%[0m
echo            %R%[90m├────────────────────────────────────┼───────────────────────────────────────┤
echo            %R%[90m│%R%[32m  3-%R%[33m Account-License Management %R%[90m[M] │%R%[32m  10-%R%[33m Ping Meter%R%[90m [*]                   │%R%[0m
echo            %R%[90m│%R%[32m  4-%R%[33m Timer PC Shutdown%R%[90m [M]          │%R%[32m  11-%R%[33m Post Update Cleaning             %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  5-%R%[33m Appx - Update Installer        %R%[90m│%R%[32m  12-%R%[33m Windows - Strore Repair          %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  6-%R%[33m SHA-256 Comparator             %R%[90m│%R%[32m  13-%R%[33m PC Cleaner                       %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  7-%R%[33m Fat32 to NTFS%R%[90m [M]              │%R%[32m%R%[90m%R%[90m                                       │%R%[0m
echo            %R%[90m│%R%[32m  8-%R%[33m System Info%R%[90m [*]                │%R%[32m%R%[90m%R%[90m                                       │%R%[0m
echo            %R%[90m│%R%[32m  9-%R%[33m Saved Wifi Information         %R%[90m│%R%[32m%R%[90m%R%[90m                                       │%R%[0m
echo            %R%[90m├────────────────────────────────────┼───────────────────────────────────────┤%R%[0m
echo            %R%[90m│%R%[32m  Z-%R%[36m Communication                  %R%[90m│%R%[32m   X-%R%[36m Clear and Close                  %R%[90m│%R%[0m
echo            %R%[90m└────────────────────────────────────┴───────────────────────────────────────┘%R%[0m
goto :eof

:Menu_2
:: Kılavuz çizgisi
set xognitorenksx=%R%[90m►
echo.
echo   %R%[90m┌────────────────────────────┬──────────────────────────────┬──────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[32m    1-%R%[33m All in One Runtimes  %R%[90m│%xognitorenksx% Compression                 %R%[90m│%xognitorenksx% Remote Connection               %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Message                   %R%[90m│%R%[32m   28-%R%[36m 7-Zip                  %R%[90m│%R%[32m   53-%R%[36m Teamviewer                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    2-%R%[36m Discord              %R%[90m│%R%[32m   29-%R%[36m Winrar                 %R%[90m│%R%[32m   54-%R%[36m AnyDesk                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    3-%R%[36m Whatsapp             %R%[90m│%xognitorenksx% Video-Audio Player          %R%[90m│%xognitorenksx% Taskbar / Start Menu            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    4-%R%[36m Signal               %R%[90m│%R%[32m   30-%R%[33m K-Lite Codec           %R%[90m│%R%[32m   55-%R%[33m OpenShell                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    5-%R%[36m Telegram             %R%[90m│%R%[32m   31-%R%[33m VLC Media Player       %R%[90m│%R%[32m   56-%R%[33m TaskbarX                   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    6-%R%[36m Zoom                 %R%[90m│%R%[32m   32-%R%[33m PotPlayer              %R%[90m│%xognitorenksx% Other                           %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Game Library              %R%[90m│%R%[32m   33-%R%[33m Aimp                   %R%[90m│%R%[32m   57-%R%[36m Mem Reduct                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    7-%R%[33m Epic Games           %R%[90m│%R%[32m   34-%R%[33m Spotify                %R%[90m│%R%[32m   58-%R%[36m MSI Afterburner            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    8-%R%[33m Steam                %R%[90m│%xognitorenksx% Download Tools              %R%[90m│%R%[32m   59-%R%[36m Everything                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    9-%R%[33m GOG Galaxy           %R%[90m│%R%[32m   35-%R%[36m Internet Download Man. %R%[90m│%R%[32m   60-%R%[36m Hamachi                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   10-%R%[33m Ubisoft Connect      %R%[90m│%R%[32m   36-%R%[36m Free Download Manager  %R%[90m│%R%[32m   61-%R%[36m Glasswire                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   11-%R%[33m EA Games/Origin      %R%[90m│%R%[32m   37-%R%[36m Qbittorrent            %R%[90m│%R%[32m   62-%R%[36m Stremio                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   12-%R%[33m Playnite             %R%[90m│%xognitorenksx% Documents                   %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Browser                   %R%[90m│%R%[32m   38-%R%[33m Libre Office           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   13-%R%[36m Google Chrome        %R%[90m│%R%[32m   39-%R%[33m Adobe Reader           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   14-%R%[36m Mozilla Firefox      %R%[90m│%R%[32m   40-%R%[33m PDF X-Change           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   15-%R%[36m Brave                %R%[90m│%R%[32m   41-%R%[33m Calibre                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   16-%R%[36m Microsoft Edge       %R%[90m│%xognitorenksx% Developer                   %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   17-%R%[36m OperaGX              %R%[90m│%R%[32m   42-%R%[33m Notepad++              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Multimedia                %R%[90m│%R%[32m   43-%R%[36m Python                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   18-%R%[33m Kdenlive             %R%[90m│%R%[32m   44-%R%[36m Visual Studio Code     %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   19-%R%[33m Openshot             %R%[90m│%R%[32m   45-%R%[36m Github                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   20-%R%[33m Shoutcut             %R%[90m│%R%[32m   46-%R%[36m Node.JS                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   21-%R%[33m Krita                %R%[90m│%R%[32m   47-%R%[36m Unity Hub              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   22-%R%[33m Gimp                 %R%[90m│%R%[32m   48-%R%[36m Blender                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   23-%R%[33m OBS Studio           %R%[90m│%xognitorenksx% Cleaning                    %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   24-%R%[33m ShareX               %R%[90m│%R%[32m   49-%R%[33m Unlocker               %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   25-%R%[33m Audacity             %R%[90m│%R%[32m   50-%R%[33m Wise Care 365          %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   26-%R%[33m HandBrake            %R%[90m│%R%[32m   51-%R%[33m Hibit Uninstaller      %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   27-%R%[33m FileConverter        %R%[90m│%R%[32m   52-%R%[33m Revo Uninstaller       %R%[90m│%R%[32m    X-%R%[37m Menu                       %R%[90m│%R%[0m
echo   %R%[90m└────────────────────────────┴──────────────────────────────┴──────────────────────────────────┘%R%[0m
goto :eof

:Menu2_1
echo  ►%R%[92m Selected:%R%[0m %multi%
goto :eof

:Menu_3
echo  %R%[90m┌────────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m       User Account Management               License Management         %R%[90m│%R%[0m
echo  %R%[90m├──────────────────────────────────────┬─────────────────────────────────┤%R%[0m
echo  %R%[90m│%R%[32m  1-%R%[33m Administrator Activate           %R%[90m│%R%[32m  8-%R%[36m Enter License%R%[90m [ipk]         │%R%[0m
echo  %R%[90m│%R%[32m  2-%R%[33m Administrator Close              %R%[90m│%R%[32m  9-%R%[36m License Status%R%[90m [dli]        │%R%[0m
echo  %R%[90m│%R%[32m  3-%R%[33m Add user to admin group          %R%[90m│%R%[32m 10-%R%[36m License Status Detailed%R%[90m[dlv]│%R%[0m
echo  %R%[90m│%R%[32m  4-%R%[33m Add New User                     %R%[90m│%R%[32m 11-%R%[36m License Term%R%[90m [xpr]          │%R%[0m
echo  %R%[90m│%R%[32m  5-%R%[33m Delete User                      %R%[90m│%R%[32m 12-%R%[36m License Remove%R%[90m [upk]        │%R%[0m
echo  %R%[90m│%R%[32m  6-%R%[33m I forgot / change my password    %R%[90m│%R%[32m 13-%R%[36m License Term Reset%R%[90m [rearm]  │%R%[0m
echo  %R%[90m│%R%[32m  7-%R%[33m Show Current Users%R%[90m [*]           │%R%[32m  X-%R%[37m Menu                        %R%[90m│%R%[0m
echo  %R%[90m└──────────────────────────────────────┴─────────────────────────────────┘%R%[0m
goto :eof

:Menu_4
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m            Automatic Computer Shutdown            %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│                 %R%[32m 0.%R%[33m 30%R%[90m [Minute]                   │%R%[0m
echo  %R%[90m│                 %R%[32m 1.%R%[33m  1%R%[90m [Clock]                    │%R%[0m
echo  %R%[90m│                 %R%[32m 2.%R%[33m  2%R%[90m [Clock]                    │%R%[0m
echo  %R%[90m│                 %R%[32m 3.%R%[33m  3%R%[90m [Clock]                    │%R%[0m
echo  %R%[90m│                 %R%[32m 4.%R%[33m  4%R%[90m [Clock]                    │%R%[0m
echo  %R%[90m│                 %R%[32m 5.%R%[33m  5%R%[90m [Clock]                    │%R%[0m
echo  %R%[90m│                 %R%[32m 6.%R%[33m  6%R%[90m [Clock]                    │%R%[0m
echo  %R%[90m│                 %R%[32m 7.%R%[33m  7%R%[90m [Clock]                    │%R%[0m
echo  %R%[90m│                 %R%[32m 8.%R%[33m  8%R%[90m [Clock]                    │%R%[0m
echo  %R%[90m│                 %R%[32m 9.%R%[33m  Manual                       %R%[90m│%R%[0m
echo  %R%[90m│                 %R%[32m X.%R%[37m  Menu                         %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %ShutDownTime%
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
goto :eof

:Menu4_Value_1
set ShutDownTime=%R%[90m│                %R%[32m 10.%R%[31m  Cancel                       %R%[90m│%R%[0m
goto :eof

:Menu4_Value_2
set ShutDownTime=%R%[90m│                                                   %R%[90m│%R%[0m
goto :eof

:Menu4_1
echo %R%[96m  Auto shutdown canceled%R%[0m
goto :eof

:Update_1
echo %R%[92m Checking for updates...%R%[0m
goto :eof

:Update_2
echo %R%[92m UPDATE %R%[0m
echo.
echo  •%R%[32m Installed Version:%R%[37m %version%%R%[0m
echo  •%R%[32m   Current Version:%R%[37m %NewVersion%%R%[0m
echo.
echo %R%[96m The update process begins...%R%[0m
goto :eof

:Chocolatey_1
echo  ► %R%[33m Chocolatey installing...%R%[0m
goto :eof

:Runtimes_1
echo    %R%[92m All in One Runtimes installing... %R%[0m
goto :eof

:Runtimes_2
echo    ►%R%[33m Net Framework 3.5%R%[0m installing...
goto :eof

:Runtimes_3
echo    ►%R%[33m Net Framework 4.5+%R%[0m installing...
goto :eof

:Runtimes_4
echo    ►%R%[33m DirectPlay%R%[0m installing...
goto :eof

:Repair_1
echo  %R%[90m┌────────────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                                    Windows / Store Repair                                      %R%[90m│%R%[0m
echo  %R%[90m└────────────────────────────────────────────────────────────────────────────────────────────────┘%R%[0m
goto :eof

:Repair_2
echo %R%[92m   Repairing icon errors...%R%[0m
goto :eof

:Repair_3
echo %R%[92m   The sfc /scannow command is running...%R%[0m
goto :eof

:Repair_4
echo %R%[92m   Cleaning WinSxS...%R%[0m
goto :eof

:Repair_5
echo %R%[92m   Running DISM /Online /Cleanup-Image /RestoreHealth command...%R%[0m
goto :eof

:Repair_6
echo %R%[92m   Cleaning up SoftwareDistribution...%R%[0m
goto :eof

:Repair_7
echo %R%[92m   Microsoft Store is being repaired...%R%[0m
goto :eof

:Repair_8
echo %R%[92m   Checking DLL files...%R%[0m
goto :eof

:Repair_9
echo %R%[92m   Resetting the store...%R%[0m
goto :eof

:Repair_10
echo %R%[92m   General Repair in progress...%R%[0m
goto :eof

:Clear_1
echo  %R%[90m┌────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                         PC Cleaner                         %R%[90m│%R%[0m
echo  %R%[90m└────────────────────────────────────────────────────────────┘%R%[0m
goto :eof

:Clear_2
echo %R%[92m   Icon and thumbnail memory clearing...%R%[0m
goto :eof

:Clear_3
echo %R%[92m   Cleaning the temp file...%R%[0m
goto :eof

:Clear_5
echo %R%[92m   Prefetch is clearing...%R%[0m
goto :eof

:Clear_6
echo %R%[92m   Cleaning up GPU Driver remnants...%R%[0m
goto :eof

:Clear_7
echo %R%[92m   Clearing the internet cache...%R%[0m
goto :eof

:Installer_1
echo  %R%[90m┌──────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                       Appx - Update Installer                    %R%[90m│%R%[0m
echo  %R%[90m└──────────────────────────────────────────────────────────────────┘%R%[0m
echo.
echo   %R%[37m From the folder window that opens%R%[0m
echo.
echo    •%R%[37m Download the update files to the %R%[33m'Update'%R%[37m folder.%R%[0m
echo    •%R%[37m Throw Appx files to %R%[33m'Appx'%R%[37m folder.%R%[0m
echo.
echo   %R%[32m Press any key to continue processing%R%[0m
goto :eof

:Converter_1
echo   %R%[90m┌──────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[92m                      Fat32 to NTFS                       %R%[90m│%R%[0m
echo   %R%[90m├──────────────────────────────────────────────────────────┤%R%[0m
echo      %R%[32m Letter    Name%R%[0m
goto :eof

:Hash_1
echo   %R%[1;97m%R%[46m                                    Hash values are compared                                    %R%[0m
goto :eof

:Hash_2
echo  ► Entered;
goto :eof

:Hash_3
echo  ► Found;
goto :eof

:Menu_Road
echo  %R%[96m Press any key to return to the menu...%R%[0m
goto :eof

:Wifi_1
echo  %R%[90m┌─────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                    Saved Wifi Information                   %R%[90m│%R%[0m
echo  %R%[90m│%R%[92m                          (Archley)                          %R%[90m│%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────────────────┤%R%[0m
goto :eof

:Service_Menu_1
echo  %R%[90m┌─────────────────────────────────────────┬─────────────────────────────────────────┐%R%[0m
echo  %R%[90m│► Services                               │► Features                               │%R%[0m
goto :eof
:Service_Menu_2
echo  %R%[90m│%R%[32m  1%DL% Bluetooth                    %R%[90m│%R%[32m 33%DR% Paint                        %R%[90m│%R%[0m
goto :eof
:Service_Menu_3
echo  %R%[90m│%R%[32m  2%DL% Telephone                    %R%[90m│%R%[32m 34%DR% Wordpad                      %R%[90m│%R%[0m
goto :eof
:Service_Menu_4
echo  %R%[90m│%R%[32m  3%DL% Printer                      %R%[90m│%R%[32m 35%DR% Notepad                      %R%[90m│%R%[0m
goto :eof
:Service_Menu_5
echo  %R%[90m│%R%[32m  4%DL% Scanner and Camera           %R%[90m│%R%[32m 36%DR% Step Recorder                %R%[90m│%R%[0m
goto :eof
:Service_Menu_6
echo  %R%[90m│%R%[32m  5%DL% Pen and Touch                %R%[90m│%R%[32m 37%DR% Powershell-ISE               %R%[90m│%R%[0m
goto :eof
:Service_Menu_7
echo  %R%[90m│%R%[32m  6%DL% Fax                          %R%[90m│%R%[32m 38%DR% Math expression recognizer   %R%[90m│%R%[0m
goto :eof
:Service_Menu_8
echo  %R%[90m│%R%[32m  7%DL% Bitlocker Drive Encryption   %R%[90m│%R%[32m 39%DR% Windows Media Player         %R%[90m│%R%[0m
goto :eof
:Service_Menu_9
echo  %R%[90m│%R%[32m  8%DL% Scheduled Networks           %R%[90m│%R%[32m 40%DR% Internet Explorer            %R%[90m│%R%[0m
goto :eof
:Service_Menu_10
echo  %R%[90m│%R%[32m  9%DL% IP Helper (IPV6)             %R%[90m│%R%[32m 41%DR% Infrastructure for Linux     %R%[90m│%R%[0m
goto :eof
:Service_Menu_11
echo  %R%[90m│%R%[32m 10%DL% Hotspot                      %R%[90m│%R%[32m 42%DR% Net Framework 3.5            %R%[90m│%R%[0m
goto :eof
:Service_Menu_12
echo  %R%[90m│%R%[32m 11%DL% Radio and Airplane Mode      %R%[90m│%R%[32m 43%DR% Net Framework 4.5            %R%[90m│%R%[0m
goto :eof
:Service_Menu_13
echo  %R%[90m│%R%[32m 12%DL% Windows Connect Now (WPS)    %R%[90m│%R%[32m 44%DR% DirectPlay                   %R%[90m│%R%[0m
goto :eof
:Service_Menu_14
echo  %R%[90m│%R%[32m 13%DL% Wifi                         %R%[90m│%R%[32m 45%DR% CompactOS%R%[90m Windows Compression│%R%[0m
goto :eof
:Service_Menu_15
echo  %R%[90m│%R%[32m 14%DL% Location                     %R%[90m│%R%[32m 46%DR% Old Photo Viewer             %R%[90m│%R%[0m
goto :eof
:Service_Menu_16
echo  %R%[90m│%R%[32m 15%DL% Miracast                     %R%[90m│%R%[32m 47%DR% Old ALT + TAB                %R%[90m│%R%[0m
goto :eof
:Service_Menu_17
echo  %R%[90m│%R%[32m 16%DL% Flow                         %R%[90m│%R%[32m 48%DR% Postpone updates to 2050     %R%[90m│%R%[0m
goto :eof
:Service_Menu_18
echo  %R%[90m│%R%[32m 17%DL% Remote Desktop               %R%[90m│► Optimization                           %R%[90m│%R%[0m
goto :eof
:Service_Menu_19
echo  %R%[90m│%R%[32m 18%DL% Quick Fetch (Sysmain)        %R%[90m│%R%[32m 49%DR% Svchost                      %R%[90m│%R%[0m
goto :eof
:Service_Menu_20
echo  %R%[90m│%R%[32m 19%DL% Quick Launch (Hibernate)     %R%[90m│%R%[32m 50%DR% Game Mode                    %R%[90m│%R%[0m
goto :eof
:Service_Menu_21
echo  %R%[90m│%R%[32m 20%DL% Windows Search               %R%[90m│%R%[32m 51%DR% CPU Core Sleep Mode          %R%[90m│%R%[0m
goto :eof
:Service_Menu_22
echo  %R%[90m│%R%[32m 21%DL% Xbox                         %R%[90m│%R%[32m 52%DR% Unnecessary Devices          %R%[90m│%R%[0m
goto :eof
:Service_Menu_23
echo  %R%[90m│%R%[32m 22%DL% Mixed Reality (VR)           %R%[90m│► Right-Click Manager                    %R%[90m│%R%[0m
goto :eof
:Service_Menu_24
echo  %R%[90m│%R%[32m 23%DL% Diagnostic Policy            %R%[90m│%R%[32m 53%DR% Take Ownership               %R%[90m│%R%[0m
goto :eof
:Service_Menu_25
echo  %R%[90m│%R%[32m 24%DL% Quick User Switch            %R%[90m│%R%[32m 54%DR% Manage                       %R%[90m│%R%[0m
goto :eof
:Service_Menu_26
echo  %R%[90m│%R%[32m 25%DL% Font Cache                   %R%[90m│%R%[32m 55%DR% Operating Options            %R%[90m│%R%[0m
goto :eof
:Service_Menu_27
echo  %R%[90m│%R%[32m 26%DL% Insider                      %R%[90m│%R%[32m 56%DR% Terminal%R%[90m (Win11)             │%R%[0m
goto :eof
:Service_Menu_28
echo  %R%[90m│%R%[32m 27%DL% Biometric                    %R%[90m│%R%[32m 57%DR% Old Menu%R%[90m (Win11)             │%R%[0m
goto :eof
:Service_Menu_29
echo  %R%[90m│%R%[32m 28%DL% Hyper-V                      %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_30
echo  %R%[90m│%R%[32m 29%DL% System Restore               %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_31
echo  %R%[90m│%R%[32m 30%DL% Install Driver - Update      %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_32
echo  %R%[90m│%R%[32m 31%DL% Memory Compression           %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_33
echo  %R%[90m│%R%[32m 32%DL% Disk Defragmentation         %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof

:Service_Menu_On_Off
:: Aç kapat olarak kullanılacak kısayollar yazılmalıdır
set E1=E
set D1=D
goto :eof

:Value_13
if %~1 EQU 0 (set Choice=opens)
if %~1 EQU 1 (set Choice=shutting down)
goto :eof

:Service_1
echo  ►%R%[96m Bluetooth service %Choice%...%R%[0m
goto :eof

:Service_2
echo  ►%R%[96m Phone service %Choice%...%R%[0m
goto :eof

:Service_3
echo  ►%R%[96m Printer service %Choice%...%R%[0m
goto :eof

:Service_4
echo  ►%R%[96m Scanner and Camera service %Choice%...%R%[0m
goto :eof

:Service_5
echo  ►%R%[96m Pen and Touch service %Choice%...%R%[0m
goto :eof

:Service_6
echo  ►%R%[96m Fax service %Choice%...%R%[0m
goto :eof

:Service_7
echo  ►%R%[96m Bitlocker service %Choice%...%R%[0m
goto :eof

:Service_8
echo  ►%R%[96m Scheduled Networks service %Choice%...%R%[0m
goto :eof

:Service_9
echo  ►%R%[96m IP Helper service %Choice%...%R%[0m
goto :eof

:Service_10
echo  ►%R%[96m Hotspot service %Choice%...%R%[0m
goto :eof

:Service_11
echo  ►%R%[96m Radio and Airplane Mode service %Choice%...%R%[0m
goto :eof

:Service_12
echo  ►%R%[96m Windows Connect Now service %Choice%...%R%[0m
goto :eof

:Service_13
echo  ►%R%[96m Wifi service %Choice%...%R%[0m
goto :eof

:Service_14
echo  ►%R%[96m Location service %Choice%...%R%[0m
goto :eof

:Service_15
echo  ►%R%[96m Miracast service %Choice%...%R%[0m
goto :eof

:Service_16
echo  ►%R%[96m Flow service %Choice%...%R%[0m
goto :eof

:Service_17
echo  ►%R%[96m Remote Desktop service %Choice%...%R%[0m
goto :eof

:Service_18
echo  ►%R%[96m Quick Fetch service %Choice%...%R%[0m
goto :eof

:Service_19
echo  ►%R%[96m Quick Launch %Choice%...%R%[0m
goto :eof

:Service_20
echo  ►%R%[96m Windows Search service %Choice%...%R%[0m
goto :eof

:Service_21
echo  ►%R%[96m Xbox service %Choice%...%R%[0m
goto :eof

:Service_22
echo  ►%R%[96m Mixed Reality service %Choice%...%R%[0m
goto :eof

:Service_23
echo  ►%R%[96m Diagnostic principle service %Choice%...%R%[0m
goto :eof

:Service_24
echo  ►%R%[96m Fast User Switching service %Choice%...%R%[0m
goto :eof

:Service_25
echo  ►%R%[96m Font Cache service %Choice%...%R%[0m
goto :eof

:Service_26
echo  ►%R%[96m Windows Insider service %Choice%...%R%[0m
goto :eof

:Service_27
echo  ►%R%[96m Windows Biometric service %Choice%...%R%[0m
goto :eof

:Service_28
echo  ►%R%[96m Hyper-V service %Choice%...%R%[0m
goto :eof

:Service_29
echo  ►%R%[96m System Restore service %Choice%...%R%[0m
goto :eof

:Service_30
echo  ►%R%[96m Install/Update Driver service %Choice%...%R%[0m
goto :eof

:Service_31
echo  ►%R%[96m Memory Compression service %Choice%...%R%[0m
goto :eof

:Service_32
echo  ►%R%[96m Disk Defragmentation service %Choice%...%R%[0m
goto :eof

:Service_33
echo  ►%R%[96m Paint %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_34
echo  ►%R%[96m WordPad %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_35
echo  ►%R%[96m Notepad %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_36
echo  ►%R%[96m Step Recorder %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_37
echo  ►%R%[96m Powershell-ISE %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_38
echo  ►%R%[96m Math expression recognizer %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_39
echo  ►%R%[96m Windows Media Player %Choice%...%R%[0m
goto :eof

:Service_40
echo  ►%R%[96m Internet Explorer %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_41
echo  ►%R%[96m Linux Infrastructure support for Windows %Choice%...%R%[0m
goto :eof

:Service_42
echo  ►%R%[96m Net Framework 3.5 %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_43
echo  ►%R%[96m Net Framework 4.5+ %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_44
echo  ►%R%[96m DirectPlay %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_45
echo  ►%R%[96m CompactOS %Choice%...%R%[0m
goto :eof

:Service_46
echo  ►%R%[96m Windows Photo Viewer %Choice%...%R%[0m
goto :eof

:Service_47
echo  ►%R%[96m Old Alt + Tab %Choice%...%R%[0m
goto :eof

:Service_48
echo  ►%R%[96m Postponing updates to 2050 %Choice%...%R%[0m
goto :eof

:Service_49
echo  ►%R%[96m Svchost Optimization %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_50
echo  ►%R%[96m Game Mode %Choice%...%R%[0m
goto :eof

:Service_51
echo  ►%R%[96m CPU Core Sleep Mode service %Choice%...%R%[0m
goto :eof

:Service_52
echo  ►%R%[96m Unnecessary Devices %Choice%...%R%[0m
goto :eof

:Service_53
set Value2=Take Ownership
echo  ►%R%[96m %Value2% %Choice%...%R%[0m
goto :eof

:Service_54
set Value2=Manage
set Value3=Control Panel
set Value4=Settings
set Value5=Power Management
set Value6=Task Manager
set Value7=Command Prompt
set Value8=Regedit
set Value9=Explorer Reset
set Value10=Temp Clear
set Value11=Clear Icon Cache
echo  ►%R%[96m %Value2% %Choice%...%R%[0m
goto :eof

:Service_55
set Value2=Operating options
set Value3=High
set Value4=Above Normal
set Value5=Normal
set Value6=Subnormal
set Value7=Low
echo  ►%R%[96m %Value2% %Choice%...%R%[0m
goto :eof

:Service_56
echo  ►%R%[96m Terminal %Choice%...%R%[0m
goto :eof
:Service56_1
echo %R%[91m Not available on Windows 10%R%[0m
goto :eof

:Service_57
echo  ►%R%[96m Legacy Windows menu %Choice%...%R%[0m
goto :eof

:Winget_1
echo  %R%[31m ERROR! WINGET NOT FOUND
echo.
echo  Please install "DesktopAppInstaller".%R%[0m
echo.
echo  Press any key for main menu...
goto :eof

:Error_1
echo %R%[31m ERROR 1
echo.
echo ERROR! There are Turkish characters in the folder path
echo.
echo Toolbox is closing...%R%[0m
timeout /t 4 /nobreak > NUL
goto :eof

:Error_2
echo %R%[31m ERROR 2
echo.
echo ERROR! There is a space in the folder path
echo.
echo Toolbox is closing...%R%[0m
timeout /t 4 /nobreak > NUL
goto :eof

:Error_6
echo %R%[31m ERROR 6
echo.
echo ERROR! System architecture is not x64
echo.
echo Toolbox is closing...%R%[0m
timeout /t 4 /nobreak > NUL
goto :eof


:Extra_Value_1
set Value5=UEFI-GPT
goto :eof

:Extra_Value_2
set Value5=BIOS-MBR
goto :eof

:Extra_Value_3
set Value1=RAM
goto :eof

:Extra_Value_4
set Value1=GPU
goto :eof

:Extra_1
echo                              %R%[92m Getting system and hardware information%R%[0m
echo.
echo                                        %R%[92m Please wait...%R%[0m
goto :eof

:Extra_2
echo  %R%[90m┌───────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                                         SYSTEM INFO                                       %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────────────────────────────────────────────┤%R%[0m
goto :eof

:Extra_3
echo   ►%R%[32m   PC-Name :%R%[37m %Value2% %R%[0m
echo   ►%R%[32m User-Name :%R%[37m %Value1% %R%[0m
goto :eof

:Extra_4
echo   ►%R%[32m Format Date:%R%[37m %Value1%%R%[90m ^|%R%[32m Time Zone:%R%[37m %Value2%%R%[90m ^|%R%[37m %Value3% - %Value4%%R%[0m
goto :eof

:Extra_5
echo   ►%R%[32m System:%R%[37m %Value1%%R%[90m ^| %R%[37mx%Value2%%R%[90m ^| %R%[37m%Value4%%R%[90m ^| %R%[37m%Value3%%R%[90m ^| %R%[37m%Value5%%R%[0m
goto :eof

:Extra_6
echo   ►%R%[32m Motherboard:%R%[37m %Value1%%Value2%%R%[90m ^|%R%[32m Socket:%R%[37m%Value3%%R%[90m ^|%R%[32m BIOS:%R%[37m%Value4%%R%[0m
goto :eof

:Extra_7
echo   ►%R%[32m CPU:%R%[37m%Value1% %R%[0m
echo   ►%R%[32m CPU Core:%R%[37m%Value2% %R%[90m^|%R%[32m Threads:%R%[37m%Value3% %R%[90m^|%R%[32m L2:%R%[37m%Value4%%R%[36m MB%R%[90m ^|%R%[32m L3:%R%[37m%Value5%%R%[36m MB%R%[90m ^|%R%[32m CPU MHZ:%R%[37m%Value6%%R%[0m
goto :eof

:Extra_8
echo   ►%R%[32m GPU:%R%[37m%Value1%%R%[90m ^|%R%[32m VRAM:%R%[37m%Value2%%R%[36m GB%R%[0m 
echo   ►%R%[32m GPU Driver:%R%[37m%Value3%%R%[90m ^| %R%[32mDriver Date:%R%[37m %Value4%%R%[0m
goto :eof

:Extra_9
echo   ►%R%[32m Monitor:%R%[37m%Value1% %R%[90m^|%R%[37m%Value4% %R%[36mHZ%R%[90m ^|%R%[37m%Value2% %R%[36mx%R%[37m%Value3%%R%[0m
goto :eof

:Extra_10
echo   ►%R%[32m RAM:%R%[37m %Value2% %R%[36mGB%R%[90m ^|%R%[37m%Value3% %R%[36m MHZ%R%[90m ^|%R%[32m Socket:%R%[37m %Value1% %R%[0m
goto :eof

:Extra_11
echo          %R%[32m Brand - Model - Capacity - MHZ%R%[0m
goto :eof

:Extra_12
echo         %R%[32m Model - VRAM - Driver%R%[0m
goto :eof

:Extra_13
echo %R%[92m Press any key for the main menu.%R%[0m
goto :eof

:Ping_1
echo  %R%[90m┌────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m            Ready Ping Measurements         %R%[90m│%R%[0m
echo  %R%[90m├────────────────────────────────────────────┤%R%[0m
goto :eof

:Ping_2
echo  %R%[90m├────────────────────────────────────────────┤%R%[0m
echo  %R%[32m                   X-%R%[37m Menu%R%[0m
echo  %R%[90m└────────────────────────────────────────────┘%R%[0m
goto :eof

:Ping_Value_1
set Choice=[Site/IP]
goto :eof

:After_1
echo %R%[92m Cleaning is done after the update.%R%[0m
echo %R%[92m Deleting Defender files...%R%[0m
goto :eof

:After_2
echo %R%[92m Services are organized...%R%[0m
goto :eof

:After_3
echo %R%[92m Regedit records are being edited.%R%[0m
goto :eof

:After_4
echo %R%[92m Adjustments are made in the task scheduler.%R%[0m
goto :eof