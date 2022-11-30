:: ==============================================================================================================================
::                               NOTEPAD++ > Encoding > Character Set > Turkish > OEM857
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
::  Created: Huseyin UZUNYAYLA / OgnitorenKs
::  Contact;
::  >> Discord: OgnitorenKs#2737 
::  >>    Mail: ognitorenks@gmail.com
::                                                >>   WEB PAGE   <<
::                                         --------------------------------
::                                         >>  ognitorenks.blogspot.com  <<
:: ==============================================================================================================================
echo off
cls
mode con cols=80 lines=30
title OgnitorenKs Toolbox Setup

:: Color Start
setlocal
Call :ColorEnd

cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a

:netkonroll
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (Call :netkontrol&goto exit)
	
RD /S /Q "C:\OgnitorenKs.Toolbox" > NUL 2>&1

dir /b C:\OgnitorenKs.Toolbox\Files\wget.exe > NUL 2>&1
	if %errorlevel%==1 (Call :wget)	

mkdir C:\OgnitorenKs.Toolbox > NUL 2>&1
Call :space
echo                       %ESC%[92m OgnitorenKs Toolbox Installing...%ESC%[0m
echo             
echo               [þþþþþþþþþþþþ                                    ]
Call :ogni
C:\OgnitorenKs.Toolbox\Files\wget --no-check-certificate "https://docs.google.com/uc?export=download&id=1vIa4FYNI6YS5l53Awusw4zS2IRvd6VFf" -O C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip > NUL 2>&1
cls
Call :space
echo                       %ESC%[92m OgnitorenKs Toolbox Installing...%ESC%[0m
echo             
echo               [þþþþþþþþþþþþþþþþþþþþþþþþ                        ]
Call :ogni
powershell -command "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip' 'C:\OgnitorenKs.Toolbox'"
move /y "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.lnk" "C:\Users\%username%\Desktop" > NUL 2>&1
cls
Call :space
echo                       %ESC%[92m OgnitorenKs Toolbox Installing...%ESC%[0m
echo             
echo               [þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ            ]
Call :ogni
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip" > NUL 2>&1
DEL /F /Q /A "C:\users\%username%\Desktop\OgnitorenKs.Toolbox.Setup.lnk" > NUL 2>&1
cls
Call :space
echo                  %ESC%[92m OgnitorenKs Toolbox installation completed%ESC%[0m
echo 
echo               [þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ]
Call :ogni
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Ekler\OgnitorenKs.Toolbox.Setup.bat" > NUL 2>&1
timeout /t 3 /nobreak > NUL
exit

:space
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
Call :space
echo                          %ESC%[91m INTERNET CONNECTION FAILED %ESC%[0m
echo  
echo               [################################################]  
Call :ogni
timeout /t 7 /nobreak > NUL
goto :eof
:wget
Call :space
echo                      %ESC%[92m Downloading installation files...%ESC%[0m
echo   
echo               [################################################]  
Call :ogni
mkdir C:\OgnitorenKs.Toolbox\Files > NUL 2>&1
powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.3/64/wget.exe -OutFile C:\OgnitorenKs.Toolbox\Files\wget.exe }"
timeout /t 1 /nobreak > NUL
cls
goto :eof

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0

