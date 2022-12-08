::
:: Deutsche Sprache
:: ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ►
:: #########################################################################################################
:: Routing ist erledigt
Call %*
goto :eof
:: #########################################################################################################
:: ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄

:Value_1
set Choice=Auswahl
goto :eof

:Value_2
set Choice=Mehrfachauswahl
goto :eof

:Value_3
set Choice=Zu Konvertierender Disk-Buchstabe
goto :eof

:Value_4
set Choice=Prozess
goto :eof

:Value_5
set Choice=Benutzername
goto :eof

:Value_6
set Choice=Lizenz
goto :eof

:Value_7
set Choice=Anwendungsname
goto :eof

:Value_8
set Choice=Geben Sie einen Wert in Minuten ein
goto :eof

:Value_9
set Choice=Geben Sie Den Hash-Wert Ein
goto :eof

:Value_10
set Choice=Zu überprüfender Dateipfad
goto :eof

:Value_11
set hashcontrol=%R%[1;97m%R%[42m                             Hash-Werte gleich, Datei ohne Probleme                            %R%[0m
goto :eof

:Value_12
set hashcontrol=%R%[1;97m%R%[41m                             Fehler! Hash-Werte unterscheiden sich                             %R%[0m
goto :eof

:Menu_1
echo            %R%[90m┌────────────────────────────────────┬───────────────────────────────────────┐%R%[0m
echo            %R%[90m│%R%[32m  1-%R%[37m App Installer %R%[90m[M]              │%R%[32m   2-%R%[37m Dienste Verwalten%R%[90m [M]            │%R%[0m
echo            %R%[90m├────────────────────────────────────┼───────────────────────────────────────┤
echo            %R%[90m│%R%[32m  3-%R%[33m Konto-und Lizenzverwaltung%R%[90m [M] │%R%[32m  10-%R%[33m Ping-Messgerät%R%[90m [*]               │%R%[0m
echo            %R%[90m│%R%[32m  4-%R%[33m PC mit Timer Ausschalten%R%[90m [M]   │%R%[32m  11-%R%[33m Reinigung Nach Dem Update        %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  5-%R%[33m App-Update-Installer           %R%[90m│%R%[32m  12-%R%[33m Windows - Markt Reparieren       %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  6-%R%[33m SHA-256 Vergleich              %R%[90m│%R%[32m  13-%R%[33m Allgemeine Reinigung             %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  7-%R%[33m Fat32 zu NTFS%R%[90m [M]              │%R%[32m  14-%R%[33m Taskleiste Anpassen              %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  8-%R%[33m Über Das System%R%[90m [*]            │%R%[32m  15-%R%[33m Transaktionspriorität            %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  9-%R%[33m Registrierte Llogarafi-Inf.    %R%[90m│%R%[32m%R%[90m%R%[90m                                       │%R%[0m
echo            %R%[90m├────────────────────────────────────┼───────────────────────────────────────┤%R%[0m
echo            %R%[90m│%R%[32m  L-%R%[36m Spracheinstellung-Kontakt      %R%[90m│%R%[32m   X-%R%[36m Reinigen und schließen           %R%[90m│%R%[0m
echo            %R%[90m└────────────────────────────────────┴───────────────────────────────────────┘%R%[0m
goto :eof

:Menu_2
set xognitorenksx=%R%[90m►
echo.
echo   %R%[90m┌────────────────────────────┬──────────────────────────────┬──────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[32m    1-%R%[33m Alles In Einem       %R%[90m│%xognitorenksx% Kompression                 %R%[90m│%xognitorenksx% Remote Verbindung               %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Nachricht                 %R%[90m│%R%[32m   28-%R%[36m 7-Zip                  %R%[90m│%R%[32m   53-%R%[36m Teamviewer                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    2-%R%[36m Discord              %R%[90m│%R%[32m   29-%R%[36m Winrar                 %R%[90m│%R%[32m   54-%R%[36m AnyDesk                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    3-%R%[36m Whatsapp             %R%[90m│%xognitorenksx% Video-Audio Player          %R%[90m│%xognitorenksx% Taskleiste / StartSpeisekarte          %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    4-%R%[36m Signal               %R%[90m│%R%[32m   30-%R%[33m K-Lite Codec           %R%[90m│%R%[32m   55-%R%[33m OpenShell                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    5-%R%[36m Telegram             %R%[90m│%R%[32m   31-%R%[33m VLC Media Player       %R%[90m│%R%[32m   56-%R%[33m TaskbarX                   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    6-%R%[36m Zoom                 %R%[90m│%R%[32m   32-%R%[33m PotPlayer              %R%[90m│%xognitorenksx% Andere                          %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Spielbibliothek           %R%[90m│%R%[32m   33-%R%[33m Aimp                   %R%[90m│%R%[32m   57-%R%[36m Mem Reduct                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    7-%R%[33m Epic Games           %R%[90m│%R%[32m   34-%R%[33m Spotify                %R%[90m│%R%[32m   58-%R%[36m MSI Afterburner            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    8-%R%[33m Steam                %R%[90m│%xognitorenksx% Download Tools              %R%[90m│%R%[32m   59-%R%[36m Everything                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    9-%R%[33m GOG Galaxy           %R%[90m│%R%[32m   35-%R%[36m Internet Download Man. %R%[90m│%R%[32m   60-%R%[36m Hamachi                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   10-%R%[33m Ubisoft Connect      %R%[90m│%R%[32m   36-%R%[36m Free Download Manager  %R%[90m│%R%[32m   61-%R%[36m Glasswire                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   11-%R%[33m EA Games/Origin      %R%[90m│%R%[32m   37-%R%[36m Qbittorrent            %R%[90m│%R%[32m   62-%R%[36m Stremio                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   12-%R%[33m Playnite             %R%[90m│%xognitorenksx% Dokumente                   %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Browser                   %R%[90m│%R%[32m   38-%R%[33m Libre Office           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   13-%R%[36m Google Chrome        %R%[90m│%R%[32m   39-%R%[33m Adobe Reader           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   14-%R%[36m Mozilla Firefox      %R%[90m│%R%[32m   40-%R%[33m PDF X-Change           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   15-%R%[36m Brave                %R%[90m│%R%[32m   41-%R%[33m Calibre                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   16-%R%[36m Microsoft Edge       %R%[90m│%xognitorenksx% Entwicklung                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   17-%R%[36m OperaGX              %R%[90m│%R%[32m   42-%R%[33m Notepad++              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Multimedia                %R%[90m│%R%[32m   43-%R%[36m Python                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   18-%R%[33m Kdenlive             %R%[90m│%R%[32m   44-%R%[36m Visual Studio Code     %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   19-%R%[33m Openshot             %R%[90m│%R%[32m   45-%R%[36m Github                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   20-%R%[33m Shoutcut             %R%[90m│%R%[32m   46-%R%[36m Node.JS                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   21-%R%[33m Krita                %R%[90m│%R%[32m   47-%R%[36m Unity Hub              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   22-%R%[33m Gimp                 %R%[90m│%R%[32m   48-%R%[36m Blender                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   23-%R%[33m OBS Studio           %R%[90m│%xognitorenksx% Reinigung                   %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   24-%R%[33m ShareX               %R%[90m│%R%[32m   49-%R%[33m Unlocker               %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   25-%R%[33m Audacity             %R%[90m│%R%[32m   50-%R%[33m Wise Care 365          %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   26-%R%[33m HandBrake            %R%[90m│%R%[32m   51-%R%[33m Hibit Uninstaller      %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   27-%R%[33m FileConverter        %R%[90m│%R%[32m   52-%R%[33m Revo Uninstaller       %R%[90m│%R%[32m    X-%R%[37m Speisekarte                %R%[90m│%R%[0m
echo   %R%[90m└────────────────────────────┴──────────────────────────────┴──────────────────────────────────┘%R%[0m
goto :eof

:Menu2_1
echo  ►%R%[92m Ausgewählt:%R%[0m %multi%
goto :eof

:Menu_3
echo  %R%[90m┌───────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m      Benutzerkontenverwaltung                 Lizenzverwaltung         %R%[90m│%R%[0m
echo  %R%[90m├─────────────────────────────────────┬─────────────────────────────────┤%R%[0m
echo  %R%[90m│%R%[32m  1-%R%[33m Administrator Aktivieren         %R%[90m│%R%[32m  8-%R%[36m Lizenz Eingeben%R%[90m [ipk]       │%R%[0m
echo  %R%[90m│%R%[32m  2-%R%[33m Administrator Schließen          %R%[90m│%R%[32m  9-%R%[36m Lizenzstatus%R%[90m [dli]          │%R%[0m
echo  %R%[90m│%R%[32m  3-%R%[33m Administratorkonto hinzufügen    %R%[90m│%R%[32m 10-%R%[36m Lizenzdauer Im Detail%R%[90m [dlv] │%R%[0m
echo  %R%[90m│%R%[32m  4-%R%[33m Neuen Benutzer Hinzufügen        %R%[90m│%R%[32m 11-%R%[36m Lizenzlaufzeit%R%[90m [xpr]        │%R%[0m
echo  %R%[90m│%R%[32m  5-%R%[33m Benutzer Löschen                 %R%[90m│%R%[32m 12-%R%[36m Lizenz Löschen%R%[90m [upk]        │%R%[0m
echo  %R%[90m│%R%[32m  6-%R%[33m Passwort vergessen / ändern      %R%[90m│%R%[32m 13-%R%[36m Lizenz zurückgesetzt%R%[90m [rearm]│%R%[0m
echo  %R%[90m│%R%[32m  7-%R%[33m Vorhandene Benutzer Anzeigen%R%[90m [*] │%R%[32m  X-%R%[37m Speisekarte                 %R%[90m│%R%[0m
echo  %R%[90m└──────────────────────────────────────┴─────────────────────────────────┘%R%[0m
goto :eof

:Menu_4
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m            Automatische Computerabschaltung            %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│                 %R%[32m 0.%R%[33m 30%R%[90m [Minuten]                    │%R%[0m
echo  %R%[90m│                 %R%[32m 1.%R%[33m  1%R%[90m [Stunde]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 2.%R%[33m  2%R%[90m [Stunde]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 3.%R%[33m  3%R%[90m [Stunde]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 4.%R%[33m  4%R%[90m [Stunde]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 5.%R%[33m  5%R%[90m [Stunde]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 6.%R%[33m  6%R%[90m [Stunde]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 7.%R%[33m  7%R%[90m [Stunde]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 8.%R%[33m  8%R%[90m [Stunde]                     │%R%[0m
echo  %R%[90m│                 %R%[32m 9.%R%[33m  Manuel                         %R%[90m│%R%[0m
echo  %R%[90m│                 %R%[32m X.%R%[37m  Speisekarte                    %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %ShutDownTime%
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
goto :eof

:Menu4_Value_1
set ShutDownTime=%R%[90m│                %R%[32m 10.%R%[31m  Abbrechen                     %R%[90m│%R%[0m
goto :eof

:Menu4_Value_2
set ShutDownTime=%R%[90m│                                                   %R%[90m│%R%[0m
goto :eof

:Menu4_1
echo %R%[96m  Automatische Abschaltung abgebrochen%R%[0m
goto :eof

:Menu_5
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m             Arbeit Priorität Planer            %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
echo  %R%[90m│   %R%[32m 1.%R%[33m Hoch                                        %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%R%[33m Über Normal                                 %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 3.%R%[33m Normal sechs                                %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 4.%R%[33m Niedrig                                     %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Speisekarte                                 %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
goto :eof

:Menu5_1
echo %R%[90m  Task Manager - Details -
echo %R%[90m  Sie können die Namen der Anwendungen lernen.
echo %R%[90m  Sie können viel schreiben, indem Sie Leerzeichen hinterlassen.
goto :eof

:Update_1
echo %R%[92m Nach Updates suchen...%R%[0m
goto :eof

:Update_2
echo %R%[92m UPDATE %R%[0m
echo.
echo  • %R%[32m Installierte Version:%R%[37m %version%%R%[0m
echo  • %R%[32m Aktuelle Version:%R%[37m %NewVersion%%R%[0m
echo.
echo %R%[96m Beginn der Aktualisierung...%R%[0m
goto :eof

:Chocolatey_1
echo  ► %R%[33m Chocolatey wird geladen...%R%[0m
goto :eof

:Runtimes_1
echo    %R%[92m Alles In Einem Laden... %R%[0m
goto :eof

:Runtimes_2
echo    ►%R%[33m Net Framework 3.5%R%[0m Laden...
goto :eof

:Runtimes_3
echo    ►%R%[33m Net Framework 4.5+%R%[0m Laden...
goto :eof

:Runtimes_4
echo    ►%R%[33m DirectPlay%R%[0m Laden...
goto :eof

:Repair_1
echo  %R%[90m┌────────────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                                     Windows / Store Fix                                       %R%[90m│%R%[0m
echo  %R%[90m└────────────────────────────────────────────────────────────────────────────────────────────────┘%R%[0m
goto :eof

:Repair_2
echo %R%[92m   Symbolfehler werden repariert...%R%[0m
goto :eof

:Repair_3
echo %R%[92m   Sfc /scannow Befehl ausführen...%R%[0m
goto :eof

:Repair_4
echo %R%[92m   WinSxS Es wird gereinigt...%R%[0m
goto :eof

:Repair_5
echo %R%[92m   DISM /Online /Cleanup-Image /RestoreHealth Befehl ausführen...%R%[0m
goto :eof

:Repair_6
echo %R%[92m   SoftwareDistribution es wird gereinigt...%R%[0m
goto :eof

:Repair_7
echo %R%[92m   Microsoft Store es wird repariert...R%[0m
goto :eof

:Repair_8
echo %R%[92m   DLL Dateien werden überprüft...%R%[0m
goto :eof

:Repair_9
echo %R%[92m   Microsoft Store zurücksetzen oder...%R%[0m
goto :eof

:Repair_10
echo %R%[92m   Generalreparatur wird durchgeführt...%R%[0m
goto :eof

:Clear_1
echo  %R%[90m┌────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                       PC Reiniger                       %R%[90m│%R%[0m
echo  %R%[90m└────────────────────────────────────────────────────────────┘%R%[0m
goto :eof

:Clear_2
echo %R%[92m   Löschen des ICO und miniaturbildspeichers...%R%[0m
goto :eof

:Clear_3
echo %R%[92m   Temp Dateien werden gelöscht...%R%[0m
goto :eof

:Clear_5
echo %R%[92m   Prefetch wird gereinigt...%R%[0m
goto :eof

:Clear_6
echo %R%[92m   Der Grafikkartentreiber wird gereinigt...%R%[0m
goto :eof

:Clear_7
echo %R%[92m   Der Internet Cache wird gelöscht...%R%[0m
goto :eof

:Installer_1
echo  %R%[90m┌──────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                     Appx - Update Installer                  %R%[90m│%R%[0m
echo  %R%[90m└──────────────────────────────────────────────────────────────────┘%R%[0m
echo.
echo   %R%[37m Aus dem geöffneten Ordner%R%[0m
echo.
echo    •%R%[37m Update Dateien %R%[33m'Update'%R%[37m Ordner%R%[0m
echo    •%R%[37m Appx Dateien %R%[33m'Appx'%R%[37m in Ordner werfen%R%[0m
echo.
echo   %R%[32m Drücken Sie eine beliebige Taste, um den Vorgang fortzusetzen%R%[0m
goto :eof

:Converter_1
echo   %R%[90m┌──────────────────────────────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[92m                      Fat32 zu NTFS                       %R%[90m│%R%[0m
echo   %R%[90m├──────────────────────────────────────────────────────────┤%R%[0m
echo       %R%[32mBrief      Name%R%[0m
goto :eof

:Converter_2
echo       %R%[32m X.%R%[36m Speisekarte%R%[0m
goto :eof

:Hash_1
echo   %R%[1;97m%R%[46m                                 Hash Werte werden verglichen                               %R%[0m
goto :eof

:Hash_2
echo  ► Eingegeben;
goto :eof

:Hash_3
echo  ► Der;
goto :eof

:Menu_Road
echo  %R%[96m Drücken Sie eine beliebige Taste, um zum Speisekarte zurückzukehren...%R%[0m
goto :eof

:Wifi_1
echo  %R%[90m┌─────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m              Registrierte Llogarafi Informationen           %R%[90m│%R%[0m
echo  %R%[90m│%R%[92m                          (Archley)                          %R%[90m│%R%[0m
echo  %R%[90m├─────────────────────────────────────────────────────────────┤%R%[0m
goto :eof

:Service_Info
echo   %R%[90m█ = Geschlossen ^| %R%[32m♦%R%[90m = Offen ^| %R%[31m█%R%[90m = Entfernt ^| %R%[35m█%R%[90m = Inkompatibel Windows
goto :eof
:Service_Info_2
echo   %R%[90m█ = Geschlossen ^| %R%[32m♦%R%[90m = Offen ^| %R%[35m█%R%[90m = Inkompatibel Windows
goto :eof
:Service_Menu_1
echo  %R%[90m┌─────────────────────────────────────────┬─────────────────────────────────────────┐%R%[0m
echo  %R%[90m│► Dienstleistungen                              │► Eigenschaften                             │%R%[0m
goto :eof
:Service_Menu_2
echo  %R%[90m│%R%[32m  1%DL% Bluetooth                    %R%[90m│%R%[32m 33%DR% Paint                        %R%[90m│%R%[0m
goto :eof
:Service_Menu_3
echo  %R%[90m│%R%[32m  2%DL% Telefon                      %R%[90m│%R%[32m 34%DR% Wordpad                      %R%[90m│%R%[0m
goto :eof
:Service_Menu_4
echo  %R%[90m│%R%[32m  3%DL% Drucker                      %R%[90m│%R%[32m 35%DR% Notepad                      %R%[90m│%R%[0m
goto :eof
:Service_Menu_5
echo  %R%[90m│%R%[32m  4%DL% Scanner und Kamera           %R%[90m│%R%[32m 36%DR% Schritt Recorder             %R%[90m│%R%[0m
goto :eof
:Service_Menu_6
echo  %R%[90m│%R%[32m  5%DL% Stift und Touch              %R%[90m│%R%[32m 37%DR% Powershell-ISE               %R%[90m│%R%[0m
goto :eof
:Service_Menu_7
echo  %R%[90m│%R%[32m  6%DL% Faks                         %R%[90m│%R%[32m 38%DR% Erkennung math Ausdrücke     %R%[90m│%R%[0m
goto :eof
:Service_Menu_8
echo  %R%[90m│%R%[32m  7%DL% Bitlocker                    %R%[90m│%R%[32m 39%DR% Windows Media Player         %R%[90m│%R%[0m
goto :eof
:Service_Menu_9
echo  %R%[90m│%R%[32m  8%DL% Geplante Netzwerke           %R%[90m│%R%[32m 40%DR% Internet Explorer            %R%[90m│%R%[0m
goto :eof
:Service_Menu_10
echo  %R%[90m│%R%[32m  9%DL% IP Assistent (IPV6)          %R%[90m│%R%[32m 41%DR% Infrastruktur für Linux      %R%[90m│%R%[0m
goto :eof
:Service_Menu_11
echo  %R%[90m│%R%[32m 10%DL% Mobiler Hotspot              %R%[90m│%R%[32m 42%DR% Net Framework 3.5            %R%[90m│%R%[0m
goto :eof
:Service_Menu_12
echo  %R%[90m│%R%[32m 11%DL% Radio und Flugzeugmodus      %R%[90m│%R%[32m 43%DR% Net Framework 4.5            %R%[90m│%R%[0m
goto :eof
:Service_Menu_13
echo  %R%[90m│%R%[32m 12%DL% Windows Jetzt Verbinden (WPS)%R%[90m│%R%[32m 44%DR% DirectPlay                   %R%[90m│%R%[0m
goto :eof
:Service_Menu_14
echo  %R%[90m│%R%[32m 13%DL% WLAN                         %R%[90m│%R%[32m 45%DR% CompactOS%R%[90m Win Kompression    │%R%[0m
goto :eof
:Service_Menu_15
echo  %R%[90m│%R%[32m 14%DL% Standort                     %R%[90m│%R%[32m 46%DR% Alter Foto Viewer            %R%[90m│%R%[0m
goto :eof
:Service_Menu_16
echo  %R%[90m│%R%[32m 15%DL% Miracast                     %R%[90m│%R%[32m 47%DR% Zurück ALT + TAB             %R%[90m│%R%[0m
goto :eof
:Service_Menu_17
echo  %R%[90m│%R%[32m 16%DL% Fluss                        %R%[90m│%R%[32m 48%DR% Update 2050 verschieben      %R%[90m│%R%[0m
goto :eof
:Service_Menu_18
echo  %R%[90m│%R%[32m 17%DL% Remote Desktop               %R%[90m│► Optimierung                               %R%[90m│%R%[0m
goto :eof
:Service_Menu_19
echo  %R%[90m│%R%[32m 18%DL% Schnell Bringen (Sysmain)    %R%[90m│%R%[32m 49%DR% Svchost                      %R%[90m│%R%[0m
goto :eof
:Service_Menu_20
echo  %R%[90m│%R%[32m 19%DL% Schnellstart (Hibernate)     %R%[90m│%R%[32m 50%DR% Spielmodus                   %R%[90m│%R%[0m
goto :eof
:Service_Menu_21
echo  %R%[90m│%R%[32m 20%DL% Windows Search               %R%[90m│%R%[32m 51%DR% CPU Core Schlafmodus         %R%[90m│%R%[0m
goto :eof
:Service_Menu_22
echo  %R%[90m│%R%[32m 21%DL% Xbox                         %R%[90m│%R%[32m 52%DR% Unnötige Geräte              %R%[90m│%R%[0m
goto :eof
:Service_Menu_23
echo  %R%[90m│%R%[32m 22%DL% Karma Realität (VR)          %R%[90m│► Rechts Klick-Manager                      %R%[90m│%R%[0m
goto :eof
:Service_Menu_24
echo  %R%[90m│%R%[32m 23%DL% Diagnostisches Prinzip       %R%[90m│%R%[32m 53%DR% in Besitz nehmen             %R%[90m│%R%[0m
goto :eof
:Service_Menu_25
echo  %R%[90m│%R%[32m 24%DL% Schneller Benutzerwechsel    %R%[90m│%R%[32m 54%DR% Verwalten                    %R%[90m│%R%[0m
goto :eof
:Service_Menu_26
echo  %R%[90m│%R%[32m 25%DL% Schrift Cache                %R%[90m│%R%[32m 55%DR% Startoptionen                %R%[90m│%R%[0m
goto :eof
:Service_Menu_27
echo  %R%[90m│%R%[32m 26%DL% Insider                      %R%[90m│%R%[32m 56%DR% Terminal%R%[90m (Win11)             │%R%[0m
goto :eof
:Service_Menu_28
echo  %R%[90m│%R%[32m 27%DL% Biometrische                 %R%[90m│%R%[32m 57%DR% Altes Speisekarte%R%[90m (Win11)    │%R%[0m
goto :eof
:Service_Menu_29
echo  %R%[90m│%R%[32m 28%DL% Hyper-V                      %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_30
echo  %R%[90m│%R%[32m 29%DL% Systemwiederherstellung      %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_31
echo  %R%[90m│%R%[32m 30%DL% Treiber Installieren         %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_32
echo  %R%[90m│%R%[32m 31%DL% Speicherkompression          %R%[90m│%R%[32m                                         %R%[90m│%R%[0m
goto :eof
:Service_Menu_33
echo  %R%[90m│%R%[32m 32%DL% Disk Defragmentierung        %R%[90m│%R%[32m X-%R%[37m Speisekarte                   %R%[90m│%R%[0m
goto :eof

:Service_Menu_On_Off
:: Shortcuts, die als Öffnen und schließen verwendet werden sollen, müssen geschrieben werden
set E1=O
set D1=E
goto :eof

:Value_13
if %~1 EQU 0 (set Choice=öffnen)
if %~1 EQU 1 (set Choice=schließen)
goto :eof

:Service_1
echo  ►%R%[96m Bluetooth Service %Choice%...%R%[0m
goto :eof

:Service_2
echo  ►%R%[96m Telefon Service %Choice%...%R%[0m
goto :eof

:Service_3
echo  ►%R%[96m Drucker Services %Choice%...%R%[0m
goto :eof

:Service_4
echo  ►%R%[96m Scanner und Kamera Services %Choice%...%R%[0m
goto :eof

:Service_5
echo  ►%R%[96m Touch Tastatur und Stift Service %Choice%...%R%[0m
goto :eof

:Service_6
echo  ►%R%[96m Faks Service %Choice%...%R%[0m
goto :eof

:Service_7
echo  ►%R%[96m Bitlocker Service %Choice%...%R%[0m
goto :eof

:Service_8
echo  ►%R%[96m Geplante Netzwerke Service %Choice%...%R%[0m
goto :eof

:Service_9
echo  ►%R%[96m IP Assistent Service %Choice%...%R%[0m
goto :eof

:Service_10
echo  ►%R%[96m Mobiler Hotspot Service %Choice%...%R%[0m
goto :eof

:Service_11
echo  ►%R%[96m Radio und Flugzeugmodus Service %Choice%...%R%[0m
goto :eof

:Service_12
echo  ►%R%[96m Windows Jetzt Verbinden Service %Choice%...%R%[0m
goto :eof

:Service_13
echo  ►%R%[96m WLAN Service %Choice%...%R%[0m
goto :eof

:Service_14
echo  ►%R%[96m Standort Service %Choice%...%R%[0m
goto :eof

:Service_15
echo  ►%R%[96m Miracast Service %Choice%...%R%[0m
goto :eof

:Service_16
echo  ►%R%[96m Fluss Service %Choice%...%R%[0m
goto :eof

:Service_17
echo  ►%R%[96m Remote Desktop Services %Choice%...%R%[0m
goto :eof

:Service_18
echo  ►%R%[96m Schnell Bringen Service %Choice%...%R%[0m
goto :eof

:Service_19
echo  ►%R%[96m Schnellstart %Choice%...%R%[0m
goto :eof

:Service_20
echo  ►%R%[96m Windows Search Service %Choice%...%R%[0m
goto :eof

:Service_21
echo  ►%R%[96m Xbox Service %Choice%...%R%[0m
goto :eof

:Service_22
echo  ►%R%[96m Karma Realität Service %Choice%...%R%[0m
goto :eof

:Service_23
echo  ►%R%[96m Diagnostisches Prinzip Service %Choice%...%R%[0m
goto :eof

:Service_24
echo  ►%R%[96m Schneller Benutzerwechsel Service %Choice%...%R%[0m
goto :eof

:Service_25
echo  ►%R%[96m Schrift Cache Service %Choice%...%R%[0m
goto :eof

:Service_26
echo  ►%R%[96m Windows Insider Service %Choice%...%R%[0m
goto :eof

:Service_27
echo  ►%R%[96m Windows Biometrische Service %Choice%...%R%[0m
goto :eof

:Service_28
echo  ►%R%[96m Hyper-V Service %Choice%...%R%[0m
goto :eof

:Service_29
echo  ►%R%[96m Systemwiederherstellung Service %Choice%...%R%[0m
goto :eof

:Service_30
echo  ►%R%[96m Treiber Installieren/Aktualisieren Service %Choice%...%R%[0m
goto :eof

:Service_31
echo  ►%R%[96m Speicherkompression Service %Choice%...%R%[0m
goto :eof

:Service_32
echo  ►%R%[96m Disk Defragmentierung Service %Choice%...%R%[0m
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
echo  ►%R%[96m Schritt Recorder %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_37
echo  ►%R%[96m Powershell-ISE %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_38
echo  ►%R%[96m Mathematischer Ausdruck recognizer %Choice%...%R%[0m
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
echo  ►%R%[96m Infrastruktur für Linux %Choice%...%R%[0m
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
echo  ►%R%[96m Alter Foto Viewer %Choice%...%R%[0m
goto :eof

:Service_47
echo  ►%R%[96m zurück ALT + TAB %Choice%...%R%[0m
goto :eof

:Service_48
echo  ►%R%[96m Aktualisierungen auf 2050 verschieben %Choice%...%R%[0m
goto :eof

:Service_49
echo  ►%R%[96m Svchost Optimierung %Choice%...%R%[0m
timeout /t 1 /nobreak > NUL
goto :eof

:Service_50
echo  ►%R%[96m Spielmodus %Choice%...%R%[0m
goto :eof

:Service_51
echo  ►%R%[96m CPU Core Schlafmodus %Choice%...%R%[0m
goto :eof

:Service_52
echo  ►%R%[96m in Besitz nehmen %Choice%...%R%[0m
goto :eof

:Service_53
set Value2=in Besitz nehmen
echo  ►%R%[96m %Value2% %Choice%...%R%[0m
goto :eof

:Service_54
set Value2=verwalten
set Value3=Systemsteuerung
set Value4=Einstellungen
set Value5=Energie Management
set Value6=Task Manager
set Value7=Eingabeaufforderung
set Value8=Registrierung
set Value9=Explorer zurücksetzen
set Value10=Temp Löschen
set Value11=Zwischenspeicher Für Symbole Löschen
echo  ►%R%[96m %Value2% %Choice%...%R%[0m
goto :eof

:Service_55
set Value2=Startoptionen
set Value3=Hoch
set Value4=Über Normal
set Value5=Normal
set Value6=Normal Sechs
set Value7=Niedrig
echo  ►%R%[96m %Value2% %Choice%...%R%[0m
goto :eof

:Service_56
echo  ►%R%[96m Terminal %Choice%...%R%[0m
goto :eof
:Service56_1
echo %R%[91m Windows 10 auch nicht verwendet%R%[0m
goto :eof

:Service_57
echo  ►%R%[96m Alt Windows das Speisekarte %Choice%...%R%[0m
goto :eof

:Winget_1
echo  %R%[31m FEHLER! WINGET Nicht gefunden
echo.
echo  Bitte "DesktopAppInstaller"Installieren.%R%[0m
echo.
echo  Drücken Sie eine beliebige Taste für das HauptSpeisekarte...
goto :eof

:Error_1
echo %R%[31m ERROR 1
echo.
echo FEHLER! Es gibt Türkische Zeichen in ordnerposition
echo.
echo Toolbox schließen...%R%[0m
timeout /t 4 /nobreak > NUL
goto :eof

:Error_2
echo %R%[31m ERROR 2
echo.
echo FEHLER! Platz im Ordnerpfad
echo.
echo Toolbox schließen...%R%[0m
timeout /t 4 /nobreak > NUL
goto :eof

:Error_6
echo %R%[31m ERROR 6
echo.
echo FEHLER! Systemarchitektur ist nicht 64bit
echo.
echo Toolbox schließen...%R%[0m
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
echo                           %R%[92m Abrufen von System und Hardware Informationen%R%[0m
echo.
echo                                      %R%[92m Bitte warten...%R%[0m
goto :eof

:Extra_2
echo  %R%[90m┌───────────────────────────────────────────────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m                                       ÜBER DAS SYSTEM                                     %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────────────────────────────────────────────┤%R%[0m
goto :eof

:Extra_3
echo   ►%R%[32m Computer:%R%[37m %Value2% %R%[0m
echo   ►%R%[32m Benutzer :%R%[37m %Value1% %R%[0m
goto :eof

:Extra_4
echo   ►%R%[32m Installationsdatum:%R%[37m %Value1%%R%[90m ^| %R%[32mZeitzone:%R%[37m %Value2%%R%[90m ^|%R%[37m %DateDay% - %Value4%%R%[0m
goto :eof

:Extra_5
echo   ►%R%[32m System:%R%[37m %Value1%%R%[90m ^| %R%[37mx%Value2%%R%[90m ^| %R%[37m%Value4%%R%[90m ^| %R%[37m%Value3%%R%[90m ^| %R%[37m%Value5%%R%[0m
goto :eof

:Extra_6
echo   ►%R%[32m Motherboard:%R%[37m %Value1%%Value2%%R%[90m ^| %R%[32mSoket:%R%[37m%Value3%%R%[90m ^| %R%[32mBios:%R%[37m%Value4%%R%[0m
goto :eof

:Extra_7
echo   ►%R%[32m CPU:%R%[37m%Value1% %R%[0m
echo   ►%R%[32m CPU Core:%R%[37m%Value2% %R%[90m^|%R%[32m Threads:%R%[37m%Value3% %R%[90m^|%R%[32m L2:%R%[37m%Value4%%R%[36m MB%R%[90m ^|%R%[32m L3:%R%[37m%Value5%%R%[36m MB%R%[90m ^|%R%[32m CPU MHZ:%R%[37m%Value6%%R%[0m
goto :eof

:Extra_8
echo   ►%R%[32m GPU:%R%[37m%Value1%%R%[90m ^|%R%[32m VRAM:%R%[37m%Value2%%R%[36m GB%R%[0m 
echo   ►%R%[32m GPU Treiber:%R%[37m%Value3%%R%[90m ^| %R%[32mVeröffentlichungsdatum des Treibers:%R%[37m %Value4%%R%[0m
goto :eof

:Extra_9
echo   ►%R%[32m Monitor:%R%[37m%Value1% %R%[90m^|%R%[37m%Value4% %R%[36mHZ%R%[90m ^|%R%[37m%Value2% %R%[36mx%R%[37m%Value3%%R%[0m
goto :eof

:Extra_10
echo   ►%R%[32m RAM:%R%[37m %Value2% %R%[36mGB%R%[90m ^|%R%[37m%Value3% %R%[36m MHZ%R%[90m ^|%R%[32m Socket:%R%[37m %Value1% %R%[0m
goto :eof

:Extra_11
echo          %R%[32m Marke - Modell - Kapazität - MHZ%R%[0m
goto :eof

:Extra_12
echo         %R%[32m Modell - VRAM - Fahrer%R%[0m
goto :eof

:Extra_13
echo %R%[92m Drücken Sie eine beliebige Taste für das HauptSpeisekarte.%R%[0m
goto :eof

:Ping_1
echo  %R%[90m┌────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m             Fertige Ping Messungen           %R%[90m│%R%[0m
echo  %R%[90m├────────────────────────────────────────────┤%R%[0m
goto :eof

:Ping_2
echo  %R%[90m├────────────────────────────────────────────┤%R%[0m
echo  %R%[32m                   X-%R%[37m Speisekarte%R%[0m
echo  %R%[90m└────────────────────────────────────────────┘%R%[0m
goto :eof

:Ping_Value_1
set Choice=[Website/IP]
goto :eof

:After_1
echo %R%[92m Nach dem Update erfolgt die Reinigung.%R%[0m
echo %R%[92m Defender Dateien werden gelöscht...%R%[0m
goto :eof

:After_2
echo %R%[92m Dienstleistungen werden organisiert...%R%[0m
goto :eof

:After_3
echo %R%[92m Registrierungseinstellungen Werden Bearbeitet.%R%[0m
goto :eof

:After_4
echo %R%[92m Änderungen am Aufgabenplaner werden vorgenommen.%R%[0m
goto :eof

:Lang_1
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│   %R%[32m 0.%R%[33m Kontakt                                    %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 1.%R%[33m Turkish (tr-TR)                            %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 2.%R%[33m English (en-US)                            %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 3.%R%[33m German (de-DE)                             %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m 4.%R%[33m automatisch                                %R%[90m│%R%[0m
echo  %R%[90m│   %R%[32m X.%R%[36m Speisekarte                                %R%[90m│%R%[0m
echo  %R%[90m└───────────────────────────────────────────────────┘%R%[0m
goto :eof

:CheckOS_1
echo %R%[31m Win10 Nicht im System ausgeführt%R%[0m
goto :eof

:CheckOS_2
echo %R%[31m Win11 Nicht im System ausgeführt%R%[0m
goto :eof

:Taskbar_1
echo  %R%[90m┌───────────────────────────────────────────────────┐%R%[0m
echo  %R%[90m│%R%[92m             Taskleiste Anpassen             %R%[90m│%R%[0m
echo  %R%[90m├───────────────────────────────────────────────────┤%R%[0m
goto :eof
:Taskbar_2
echo  %R%[90m│ %R%[32m 1%DR% Symbole neben der Uhr anzeigen%R%[90m Win10   │%R%[0m
goto :eof
:Taskbar_3
echo  %R%[90m│ %R%[32m 2%DR% Benachrichtigungsbereich%R%[90m Win10         │%R%[0m
goto :eof
:Taskbar_4
echo  %R%[90m│ %R%[32m 3%DR% Taskleiste Wetter                      %R%[90m│%R%[0m
goto :eof
:Taskbar_5
echo  %R%[90m│ %R%[32m 4%DR% Taskleiste links ausrichten%R%[90m Win11      │%R%[0m
echo  %R%[90m│ %R%[32m X -%R%[37m Speisekarte                       %R%[90m│%R%[0m
goto :eof

:Process_1
echo          %R%[37m Prozess abgeschlossen%R%[0m
goto :eof

:Process_2
echo          %R%[37m Prozess abgeschlossen%R%[0m
echo.
echo            %R%[33m Neustarten %R%[96m'R'%R%[0m
echo          %R%[33m Weitermachen %R%[96m'X'%R%[0m
echo               %R%[33m eintippen%R%[0m
goto :eof