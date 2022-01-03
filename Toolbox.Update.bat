echo off
cls
mode con cols=80 lines=30
title OgnitorenKs Toolbox Gncelleyici

setlocal
call :setESC

:: Konum bilgisi alnr.
cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum=%%a

:: Log dosyasna gncelleme iŸlemi yapld§ yazlr.
echo [%date% - %time%] ^| ToolboxUpdate ^| OgnitorenKs.Toolbox.bat gncelleŸtirme arac ‡alŸtrld. Konum="%konum%" >> %konum%\Logs

:: ˜nternet ba§lant durumu kontrol edilir.
ping -n 1 www.google.com.tr -w 20000 > NUL
	if %errorlevel%==1 (Call :netkontrol&exit)
	
:: wget.exe dosyas kontrol edilir.	
dir /b C:\OgnitorenKs.Toolbox\Files\wget.exe > NUL 2>&1
	if %errorlevel%==1 (Call :wget)	

:: C diski i‡inde OgnitorenKs.Toolbox klas”r a‡lr	
mkdir C:\OgnitorenKs.Toolbox > NUL 2>&1
Call :bosluk
echo                     %ESC%[92m OgnitorenKs Toolbox Gncelleniyor...%ESC%[0m
echo             
echo               [þþþþþþþþþþþþ                                    ]
Call :ogni
:: OgnitorenKs.Toolbox dosyalar indirilir.
C:\OgnitorenKs.Toolbox\Files\wget --no-check-certificate "https://docs.google.com/uc?export=download&id=1RGyfwovjOn2f-J-pvLoqma1UZmI_TKBN" -O C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip > NUL 2>&1
cls
Call :bosluk
echo                     %ESC%[92m OgnitorenKs Toolbox Gncelleniyor...%ESC%[0m
echo             
echo               [þþþþþþþþþþþþþþþþþþþþþþþþ                        ]
Call :ogni
:: ˜ndirilen OgnitorenKs.Toolbox.zip dosyas C:\OgnitorenKs.Toolbox klas”r i‡erisine ‡karlr.
powershell -command "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip' 'C:\OgnitorenKs.Toolbox'"
:: Ksayollar masastne g”nderilir.
move /y "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.lnk" "C:\Users\%username%\Desktop"
move /y "C:\OgnitorenKs.Toolbox\PowerChoice.lnk" "C:\Users\%username%\Desktop"
cls
Call :bosluk
echo                     %ESC%[92m OgnitorenKs Toolbox Gncelleniyor...%ESC%[0m
echo             
echo               [þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ            ]
Call :ogni
:: ˜ndirilen gncelleŸtirme dosya art§ silinir.
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip" > NUL 2>&1
cls
Call :bosluk
echo       %ESC%[92m OgnitorenKs Toolbox gncelleme iŸlemi baŸaryla tamamlanmŸtr.%ESC%[0m
echo 
echo               [þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ]
Call :ogni
timeout /t 5 /nobreak > NUL
exit

:bosluk
echo 
echo 
echo 
echo 
echo 
echo 
echo 
goto :eof
:ogni
echo 
echo               %ESC%[33mþþ  þþþþ þ   þ þ þþþ  þþ  þþþþ  þþþ þ   þ   þ þþþþ%ESC%[0m
echo              %ESC%[33mþ  þ þ    þþ  þ þ  þ  þ  þ þ  þ  þ   þþ  þ  þ  þ   %ESC%[0m
echo              %ESC%[33mþ  þ þ þþ þ þ þ þ  þ  þ  þ þ þ   þþ  þ þ þ þ   þþþþ%ESC%[0m
echo              %ESC%[33mþ  þ þ  þ þ  þþ þ  þ  þ  þ þ  þ  þ   þ  þþ  þ     þ%ESC%[0m
echo               %ESC%[33mþþ  þþþþ þ   þ þ  þ   þþ  þ   þ þþþ þ   þ   þ þþþþ%ESC%[0m 
goto :eof
:netkontrol
echo [%date% - %time%] ^| ToolboxUpdate ^| HATA! ˜nternet ba§lants yok. Konum="%konum%" >> %konum%\Logs
Call :bosluk
echo                        %ESC%[91m INTERNET BAGLANTISI SA¦LANAMADI%ESC%[0m
echo  
echo               [##################### HATA #####################]  
Call :ogni
timeout /t 7 /nobreak > NUL
goto :eof
:wget
echo [%date% - %time%] ^| ToolboxUpdate ^| Wget.exe dosyas yeniden indirildi. Konum="%konum%" >> %konum%\Logs
Call :bosluk
echo                  %ESC%[92m Wget dosyas bulunamad yeniden indiriliyor%ESC%[0m
echo  
echo               [##################### HATA #####################]  
Call :ogni
mkdir C:\OgnitorenKs.Toolbox\Files > NUL
powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.2/64/wget.exe -OutFile C:\OgnitorenKs.Toolbox\Files\wget.exe }"
timeout /t 1 /nobreak > NUL
cls
goto :eof


:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0

