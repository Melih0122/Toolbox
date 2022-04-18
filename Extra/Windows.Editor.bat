:: ==============================================================================================================================
::                               NOTEPAD++ > Kodlama > Karakter Takm > Trke > OEM857
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
::  -------------------------------------------
::  Toolbox' hazrladงm sistemlerde temel programlar indirip, basit bir ekilde sistem zerinde dzenleme yapmas iin hazrladm.
::  Srekli olarak gncellenecektir. Toolbox' indirmek iin aaงdaki linkleri kullanabilirsiniz.
::
::  stek ve ”nerileriniz olursa, iletiim;
::  --------------------------------------
::  >> Discord: OgnitorenKs#2737 
::  >>    Mail: ognitorenks@gmail.com
::
::                                                >>   WEB PAGE   <<
::                                         --------------------------------
::                                         >>  ognitorenks.blogspot.com  <<

:: ==============================================================================================================================
echo off
cls
title OgnitorenKs Windows Edit”r

setlocal
call :ColorEnd
Call :ColorEnd2

:: ==============================================================================================================================
::  RENK HARTASI
::  -------------
:: %C%^[32m > ISO okuma b”lmlerinde bilgi b”lmlerinde kullanlyor. (Yeil)
:: %C%^[33m > Sar renkli b”lmler. Men iindeki sar renkli b”lmler
:: %C%^[36m > Mavi renkli b”lmler. Men iindeki mavi renkli b”lmler
:: %C%^[37m > ISO okuma b”lmlerinde kullanlyor                                                                                                        
:: %C%^[90m > Gri renkli b”lmler. Men iindeki gri renkli b”lmler(€ereveler dahil deงil)
:: %C%^[92m > Deงiken rengi (Yeil). Kullancdan bir deงer girmesi istenilen b”lmlere aittir.
:: %C%^[96m > kinci deงiken veya bilgi rengi (Ak Mavi) | Menye yansyan bilgi mesajlar. Ana ekrana decek olan ikinci deงiken b”lmlerine aittir.
::
:: %R%^[32m > lem (yeil) numara rengidir. Men iindeki ilem numaralardr.
:: %R%^[36m > Mende mavi renkli ilem numara rengidir. Ayrca menye d”n renk ayardr.
:: %R%^[100m > Balk b”lmlerinde arka plan dolduran renktir.
:: %R%^[1;97m > Balkta dolgu b”lmnn iinde yer alan yaz rengidir. 1; b”lm kaln yazmasn saงlar. 97m beyaz renk yazmasn saงlar.
:: %R%^[90m > €ereveleri ve | iaretlerinin rengini deงiir.
:: 
:: ==============================================================================================================================

Call :Location
set Mount=%Location%\Edit\Mount

:AdminKontrol
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo 
echo 
echo 
echo 
echo  %R%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ                                                         บ%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[41m               ! UYARI !          ! UYARI !              %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mบ                                                         บ%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[42m            Saง-Tk Y”netici olarak altrn           %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mบ                                                         บ%R%[0m
echo  %R%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo 
echo              %R%[92mKapatmak iin herhangi bir tua basnz%R%[0m
pause > nul
exit
)

:WindowsEditMenu
cls
mode con cols=53 lines=36
echo  %R%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m            OgnitorenKs Windows Edit”r           %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
echo  %R%[90mบ   %R%[32m 1.%C%[33m WIM / ESD Okuyucu                         %R%[90mบ%R%[0m
echo  %R%[90mบ   %R%[32m 2.%C%[33m AIO Windows Hazrla%C%[0m                       %R%[90mบ%R%[0m
echo  %R%[90mบ   %R%[32m 3.%C%[33m ISO Hazrla%C%[0m                               %R%[90mบ%R%[0m
echo  %R%[90mบ   %R%[32m 4.%C%[33m ESD to WIM%C%[90m [DNTR]%C%[0m                     %R%[90mบ%R%[0m
echo  %R%[90mบ   %R%[32m 5.%C%[33m WIM /Delete%C%[90m [SL]%C%[0m                         %R%[90mบ%R%[0m
echo  %R%[90mบ   %R%[32m 6.%C%[33m WIM Mount%C%[90m [YKLE]%C%[0m                         %R%[90mบ%R%[0m
echo  %R%[90mบ   %R%[32m 7.%C%[33m WIM Remount%C%[90m [YENDEN YKLE]%C%[0m               %R%[90mบ%R%[0m
echo  %R%[90mบ   %R%[32m 8.%C%[33m WIM Unmount%C%[90m [TOPLA]%C%[0m                       %R%[90mบ%R%[0m
echo  %R%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
echo  %R%[90mบ   %R%[36m 9.%C%[33m Regedit%C%[90m [YKLE]%C%[0m                           %R%[90mบ%R%[0m
echo  %R%[90mบ  %R%[32m 10.%C%[33m Regedit%C%[90m [TOPLA]%C%[0m                           %R%[90mบ%R%[0m 
echo  %R%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
echo  %R%[90mบ  %R%[32m 11.%C%[33m Dism Update%C%[90m [ONLINE]%C%[0m                      %R%[90mบ%R%[0m
echo  %R%[90mบ  %R%[36m 12.%C%[33m Dism Update%C%[90m [OFFLINE]%C%[0m                     %R%[90mบ%R%[0m
echo  %R%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
echo  %R%[90mบ  %R%[36m 13.%C%[33m Appx ykleyici%C%[90m [OFFLINE]%C%[0m                  %R%[90mบ%R%[0m
echo  %R%[90mบ  %R%[32m 14.%C%[33m Appx ykleyici%C%[90m [ONLINE]%C%[0m                   %R%[90mบ%R%[0m
echo  %R%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
echo  %R%[90mบ  %R%[32m 15.%C%[33m Driver Yedekle%C%[90m [ONLINE]%C%[0m                   %R%[90mบ%R%[0m
echo  %R%[90mบ  %R%[36m 16.%C%[33m Driver Ykle%C%[90m [OFFLINE]%C%[0m                    %R%[90mบ%R%[0m
echo  %R%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
echo  %R%[90mบ  %R%[32m 17.%C%[33m Setup Dzenle%C%[90m [OFFLINE]%C%[0m                   %R%[90mบ%R%[0m
echo  %R%[90mบ  %R%[36m 18.%C%[33m Yeni Simgeleri ykle%C%[90m [OFFLINE]%C%[0m            %R%[90mบ%R%[0m
echo  %R%[90mบ  %R%[36m 19.%C%[33m Gpedit.msc ekle%C%[90m[OFFLINE]%C%[0m                  %R%[90mบ%R%[0m
echo  %R%[90mบ  %R%[36m 20.%C%[33m Hyper-V ekle%C%[90m[OFFLINE]%C%[0m                     %R%[90mบ%R%[0m
echo  %R%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
echo  %R%[90mบ  %R%[36m 21.%C%[90m [M]%C%[33m Katlmsz Program / Ayar ekle        %R%[90mบ%R%[0m
echo  %R%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
echo  %R%[90mบ  %R%[36m 22.%R%[36m Mount yol tanmla%R%[0m                         %R%[90mบ%R%[0m
echo  %R%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
set /p WindowsEditMenu= %R%[92m lem : %R%[0m
	if %WindowsEditMenu%==1 (Call :WimReader)
	if %WindowsEditMenu%==2 (Call :AioImport)
	if %WindowsEditMenu%==3 (Call :ISOMaker)
	if %WindowsEditMenu%==4 (Call :esdtowimexport)
	if %WindowsEditMenu%==5 GOTO WimDelete
	if %WindowsEditMenu%==6 (Call :WimMount)
	if %WindowsEditMenu%==7 (Call :WimRemount)
	if %WindowsEditMenu%==8 (Call :WimUnmount)
	if %WindowsEditMenu%==9 (Call :RegYukle)
	if %WindowsEditMenu%==10 (Call :RegTopla)
	if %WindowsEditMenu%==11 (Call :OnDismUpdate)
	if %WindowsEditMenu%==12 (Call :OffDismUpdate)
	if %WindowsEditMenu%==13 (Call :OffAppx)
	if %WindowsEditMenu%==14 (Call :OnAppx)
	if %WindowsEditMenu%==15 (Call :Driveryedek)
	if %WindowsEditMenu%==16 (Call :Driveryukle)
	if %WindowsEditMenu%==17 (Call :SetupEdit)
	if %WindowsEditMenu%==18 (Call :Newico)
	if %WindowsEditMenu%==19 (Call :gpeditmsc)
	if %WindowsEditMenu%==20 (Call :HyperV)
	if %WindowsEditMenu%==21 (Call :katilimsiz)
	if %WindowsEditMenu%==22 (Call :degisken3)
) else
	goto WindowsEditMenu

:WimReader
cls
mode con cols=70 lines=15
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                        WIM / ESD Okuyucu                         %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
Call :degisken1

echo [%date% - %time%] ^| WimReader ^| "%MerkezWim%" dosyasnn ieriงi okundu. >> %Location%\Logs

mode con cols=99 lines=27
echo  %R%[90mษอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออป%R%[0m
Call :MerkezWim
echo  %R%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo                      %R%[92m Menye d”nmek iin herhangi bir tua basnz.%R%[0m
pause > NUL 
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:stop
:AioImport
mode con cols=70 lines=20
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                       AIO Windows Hazrla                        %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo   %C%[96m Ana Srm%R%[0m 
Call :degisken1

:aioimport2
echo   %C%[96m Eklenecek Srm%R%[0m 
Call :degisken2

cls
mode con cols=99 lines=40
echo  %R%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                                           ANA SRM                                         %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mฬอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออน%R%[0m
Call :MerkezWim
echo  %R%[90mฬอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออน%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                                        EKLENECEK SRM                                      %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mฬอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออน%R%[0m
echo  %R%[90mบ%R%[0m %R%[32mINDEX%R%[0m %R%[90mบ%R%[0m %R%[32mMMAR%R%[0m %R%[90mบ%R%[0m %R%[32m   SRM%R%[0m    %R%[90mบ%R%[0m  %R%[32mDL%R%[0m   %R%[90mบ%R%[0m    %R%[32mEDT%R%[0m     %R%[90mบ%R%[0m    %R%[32mSM%R%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%EkleWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Modified') do (
								echo  %R%[90mฬอออออออฮออออออออฮอออออออออออออฮออออออออฮอออออออออออออฮอออออออออออออออออออออออออออออออออออออออออน%R%[0m
								echo      %R%[32m%%a%R%[0m      %R%[33m%%b%R%[0m    %R%[36m %%d.%%e%R%[0m    %R%[33m%%f%R%[0m    %R%[36m%%h%R%[0m  %R%[37m %%g%R%[0m
								)
							)
						)
					)
				)
			)
		)
	)
)
echo  %R%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%R%[0m
set /p $selectindex=%R%[96m  €oklu Seim %R%[90mx,y%R%[0m :

echo %$selectindex% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
echo %$selectindex% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu

FOR %%a in (%$selectindex%) do ( 
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| FIND "Architecture"') do (
		FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| FIND "Name"') do (
		    Call :imagexexport "%EkleWim%" "%%a" %MerkezWim% "%%c %%b"
			)
		)
	)
)

cls
echo  %R%[90mษอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออป%R%[0m
Call :MerkezWim
echo  %R%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo 
echo %R%[92m Birletirme ilemi tamamland%R%[0m
echo %R%[92m Menye d”nmek iin herhangi bir tua basnz.%R%[0m
pause > NUL
goto :eof
:stop

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:ISOMaker
cls
mode con cols=70 lines=20
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                             ISO MAKER                            %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo  %R%[96m rnek:%R%[33m C:\Windows10Pro%R%[0m
set /p MerkezWim=%C%[92m   maj klas”r yolu : %C%[0m
	if %MerkezWim%==x GOTO WindowsEditMenu
	if %MerkezWim%==X GOTO WindowsEditMenu
echo  %R%[90mฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
set /p etiket=%C%[92m   Etiket ismi : %C%[0m
	if %etiket%==x GOTO WindowsEditMenu
	if %etiket%==X GOTO WindowsEditMenu
echo  %R%[90mฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
set /p isokayit=%C%[92m   ISO ismi : %C%[0m
	if %isokayit%==x GOTO WindowsEditMenu
	if %isokayit%==X GOTO WindowsEditMenu
 
mode con cols=85 lines=45
echo [%date% - %time%] ^| ISO Maker ^| maj:"%MerkezWim%" ^| Etiket ismi:"%etiket%" ^| ISO ismi:"%isokayit%" olarak ISO'ya dosyas oluturuldu. >> %Location%\Logs
::%Location%\Files\oscdimg.exe -b%MerkezWim%\boot\etfsboot.com -h -u2 -m -l%etiket% %MerkezWim%\ %Location%\Edit\%isokayit%.iso
::%Location%\Files\oscdimg.exe -m -o -u2 -udfver102 -bootdata:2#p0,e,bd%MerkezWim%\boot\etfsboot.com#pEF,e,bd%MerkezWim%\efi\microsoft\boot\efisys.bin %etiket% %isokayit%.iso
%Location%\Files\oscdimg.exe -m -o -u2 -udfver102 -bootdata:2#p0,e,b%MerkezWim%\boot\etfsboot.com#pEF,e,b%MerkezWim%\efi\microsoft\boot\efisys.bin -L%etiket% %MerkezWim%\ %Location%\Edit\%isokayit%.iso

powershell -command "Start-Process '%Location%\Edit'"
echo %R%[92m lem tamamland.%R%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:esdtowimexport
cls
mode con cols=70 lines=20
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                         ESD / WIM D”ntr                       %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
Call :degisken1
mode con cols=99 lines=30
echo  %R%[90mษอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออป%R%[0m
Call :MerkezWim
echo  %R%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%R%[0m
set /p $selectindex=%R%[96m  €oklu Seim %R%[90mx,y%R%[0m :

echo %$selectindex% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
echo %$selectindex% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu

FOR %%a in (%$selectindex%) do (
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Architecture"') do (
		FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Name"') do (
			echo [%date% - %time%] ^| ESDtoWIM ^| %MerkezWim% - %%a - %%c - %%b srm karld >> %Location%\Logs
			Call :esdtowim "%MerkezWim%" "%%a" "%%c" "%%b"
			)
		)
	)
)

powershell -command "Start-Process '%Location%\Edit\ESDtoWIM'"
echo %R%[92m lem tamamland.%R%[0m 
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:WimDelete
cls
mode con cols=70 lines=20
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                               WIM SL                            %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
Call :degisken1
mode con cols=99 lines=30
:WimDell
echo  %R%[90mษอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออป%R%[0m
Call :MerkezWim
echo  %R%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%R%[0m
set /p selectindex=%C%[92m lem : %C%[0m
	if %selectindex%==X goto WindowsEditMenu
	if %selectindex%==x goto WindowsEditMenu
echo [%date% - %time%] ^| WimDelete ^| Index="%selectindex%" silindi. "%MerkezWim%" >> %Location%\Logs
Powershell -command "Remove-WindowsImage -ImagePath '%MerkezWim%' -Index '%selectindex%' -CheckIntegrity"
:: Kullanlabilecek farkl y”ntemler
::%Location%\Files\imagex.exe /delete "%MerkezWim%" %selectindex% /check
::Dism /Delete-Image /ImageFile:%MerkezWim% /Index:%selectindex% /CheckIntegrity
cls
goto WimDell

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:WimMount
cls
mode con cols=70 lines=20
dir /b %Location%\Edit\Mount\Windows > NUL 2>&1
	if %errorlevel%==0 (echo %R%[32m Mevcut imaj toplanyor...%R%[0m 
						Call :WimRemount
						Call :WimUnmount)
RD /S /Q "%Location%\Edit\Mount" > NUL 2>&1
mkdir "%Location%\Edit\Mount" > NUL 2>&1
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                              WIM MOUNT                           %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
Call :degisken1
mode con cols=99 lines=30
echo  %R%[90mษอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออป%R%[0m
Call :MerkezWim
echo  %R%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%R%[0m
set /p selectindex= %C%[92m lem : %C%[0m
	if %selectindex%==X goto WindowsEditMenu
	if %selectindex%==x goto WindowsEditMenu
:: Aaงdaki FOR d”ngleri ile sistem "ismi" ile "mimarisi" alnmaktadr. 
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%selectindex% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%selectindex% ^| FIND "Name"') do ( set iname=%%c)
cls
:: Gerekletirilen ilemi g”stermektedir.
echo  %R%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo    %R%[32m Index%R%[33m %selectindex% %R%[32m%R%[33m (%iname% %iarc%)%R%[32m alyor...%R%[0m
echo  %R%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
Dism /Mount-Image /ImageFile:"%MerkezWim%" /MountDir:"%Location%\Edit\Mount" /Index:%selectindex%
::%Location%\Files\imagex.exe /mountrw %MerkezWim% %selectindex% "%Location%\Edit\Mount"
echo [%date% - %time%] ^| WimMount ^| "%selectindex%" - "%%c - %%b" srm Mount edildi. "%MerkezWim%" >> %Location%\Logs
echo %R%[92m lem tamamland.%R%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:WimRemount
mode con cols=70 lines=20
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                             WIM Remount                          %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo [%date% - %time%] ^| WimRemount ^| %Mount% yeniden ykleme ilemi yapld >> %Location%\Logs
Dism /Remount-Image /MountDir:"%Location%\Edit\Mount"
::%Location%\Files\imagex.exe /remount %Location%\Edit\Mount
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:WimUnmount
cls
mode con cols=70 lines=20
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                             WIM Unmount                          %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo [%date% - %time%] ^| WimUnmount ^| %Mount% klas”r topland >> %Location%\Logs
Dism /UnMount-Image /MountDir:%Location%\Edit\Mount /Commit
	if %errorlevel%==1 (echo  %R%[91m TOPLAMA LEM BAARISIZ! %R%[0m
						echo [%date% - %time%] ^| WimUnmount ^| HATA! %Mount% klas”r unmount yaplamyor >> %Location%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
						
::%Location%\Files\imagex.exe /unmount /commit %Location%\Edit\Mount
echo %R%[92m lem tamamland.%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:stop
:RegYukle
mode con cols=70 lines=20
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                            Regedit Ykle                         %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m

:Offreg
dir /b %Mount%\Windows\System32\config\SOFTWARE > NUL 2>&1
	if %errorlevel%==1 (echo  %R%[1;97m%R%[41m            Yol hatal! Regedit kaytlar bulunumad.               %R%[0m
						echo [%date% - %time%] ^| RegYukle ^| HATA! Regedit kaytlar yklenemedi. Mount="%Mount%" >> %Location%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)

echo [%date% - %time%] ^| RegYukle ^| %Mount% klas”rnden regedit kaytlar yklendi >> %Location%\Logs
reg load HKLM\OG_COMPONENTS "%Mount%\Windows\System32\config\COMPONENTS" >nul
reg load HKLM\OG_DEFAULT "%Mount%\Windows\System32\config\default" >nul
reg load HKLM\OG_NTUSER "%Mount%\Users\Default\ntuser.dat" >nul
reg load HKLM\OG_SOFTWARE "%Mount%\Windows\System32\config\SOFTWARE" >nul
reg load HKLM\OG_SYSTEM "%Mount%\Windows\System32\config\SYSTEM" >nul
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:RegTopla
cls
echo [%date% - %time%] ^| RegTopla ^| "%Mount%" klas”rnden regedit kaytlar topland >> %Location%\Logs
for /f "tokens=* delims=" %%a in ('reg query "HKLM" ^| findstr "{"') do (
	reg unload "%%a" >nul 2>&1
)
reg delete "HKLM\OG_SYSTEM\CurrentControlSet" /f >nul 2>&1
reg unload HKLM\OG_COMPONENTS >nul 2>&1
reg unload HKLM\OG_DRIVERS >nul 2>&1
reg unload HKLM\OG_DEFAULT >nul 2>&1
reg unload HKLM\OG_NTUSER >nul 2>&1
reg unload HKLM\OG_SCHEMA >nul 2>&1
reg unload HKLM\OG_SOFTWARE >nul 2>&1
reg unload HKLM\OG_SYSTEM >nul 2>&1
goto :eof
:stop

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:OnAppx
cls
mode con cols=70 lines=40
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                        Online Appx Ykleyici                     %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
for /f %%i in ('"dir /b %Location%\Edit\Appx\*"') do (
	echo [%date% - %time%] ^| OnlineAppxYukle ^| "%Location%\Edit\Appx\%%i" appx dosyas yklendi >> %Location%\Logs 
	PowerShell.exe -Command "Add-AppxPackage -Path %Location%\Edit\Appx\%%i"
)

echo %R%[92m lem tamamland.%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:OffAppx
cls
mode con cols=70 lines=40
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                        Offline Appx Ykleyici                    %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m

for /f %%i in ('"dir /b %Location%\Edit\Appx\*"') do (
	echo [%date% - %time%] ^| OfflineAppxYukle ^| "%Location%\Edit\Appx\%%i" appx dosyas yklendi >> %Location%\Logs 
	DISM /Image:%Mount% /Add-ProvisionedAppxPackage /PackagePath:%Location%\Edit\Appx\%%i /SkipLicense
)
Dism /Image:%Mount% /Optimize-ProvisionedAppxPackage
	if %errorlevel%==1 (echo [%date% - %time%] ^| OfflineAppxYukle ^| HATA! Optimize-ProvisionedAppxPackage ilemi hata verdi. Mount=%Mount% >> %Location%\Logs)
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:stop
:OffDismUpdate
cls
mode con cols=70 lines=40
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                         DISM Update Offline                      %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
	
:OffDism
for /f %%i in ('"dir /b %Location%\Edit\Update\*"') do (
	echo [%date% - %time%] ^| OfflineDismYukle ^| "%Location%\Edit\Update\%%i" update dosyas yklendi. Mount=%Mount% >> %Location%\Logs 
	DISM /Image:%Mount% /add-package /packagepath=%Location%\Edit\Update\%%i
)
echo %R%[92m WinSxS temizleniyor...%R%[0m
DISM /Image:%Mount% /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 (echo %R%[91m TEMZLEME LEM BAARISIZ%R%[0m
						echo [%date% - %time%] ^| OfflineDismYukle ^| WinSxS temizlenirken hata olutu. Mount=%Mount% >> %Location%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
echo %R%[92m Appx dosyalar optimize ediliyor...%R%[0m
Dism /Image:%Mount% /Optimize-ProvisionedAppxPackage
	if %errorlevel%==1 (echo [%date% - %time%] ^| OfflineDismYukle ^| Optimize-ProvisionedAppxPackage ileminde hata olutu. Mount=%Mount% >> %Location%\Logs)
echo %R%[92m lem tamamland.%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:OnDismUpdate
cls
mode con cols=70 lines=40
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                         DISM Update Online                      %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
for /f %%i in ('"dir /b %Location%\Edit\Update\*"') do (
	echo [%date% - %time%] ^| OnlineDismYukle ^| "%Location%\Edit\Update\%%i" update dosyas yklendi >> %Location%\Logs 
	DISM /Online /add-package /packagepath=%Location%\Edit\Update\%%i /norestart
)
echo %R%[92m WinSxS temizleniyor...%R%[0m
DISM /Online /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 ( echo  %R%[91m TEMZLEME LEM BAARISIZ! %R%[0m 
						 timeout /t 5 /nobreak > NUL
						 goto WindowsEditMenu)

echo %R%[92m lem tamamland.%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof
:stop

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:DriverYedek
cls
mode con cols=70 lines=40
RD /S /Q "%Location%\Edit\Driver\Yedek" > NUL 2>&1
mkdir "%Location%\Edit\Driver\Yedek" > NUL 2>&1
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                           Driver Yedekle                        %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo [%date% - %time%] ^| DriverYedek ^| Driverlar yedeklendi >> %Location%\Logs
Dism /Online /Export-Driver /Destination:%Location%\Edit\Driver\Yedek

powershell -command "Start-Process '%Location%\Edit\Driver\Yedek'"
echo %R%[92m lem tamamland.%R%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:DriverYukle
cls
mode con cols=70 lines=40
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                        Driver Ykle Offline                     %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo [%date% - %time%] ^| DriverYukle ^| Driver yklendi. Mount=%Mount% >> %Location%\Logs
Dism /Image:%Mount% /Add-Driver /Driver:%Location%\Edit\Driver /Recurse
	if %errorlevel%==1 (RD /S /Q "%Location%\Edit\Driver" > NUL 2>&1
						mkdir "%Location%\Edit\Driver" > NUL 2>&1
						echo [%date% - %time%] ^| DriverYukle ^| HATA! Driver yklenirken hata olutu. Mount=%Mount% >> %Location%\Logs
						goto DriverYukle)

echo  %R%[92m lem tamamland. %R%[0m 
timeout /t 2 /nobreak > NUL
goto :eof
:stop

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:SetupEdit
cls
mode con cols=70 lines=40
:: Setup dosyas kontrol edilir. Yok ise indirilir.
dir /b %Location%\Files\Setup10.zip > NUL 2>&1
	if %errorlevel%==1 (Call :SetupDownload)

:: Mount klas”rnn ieriงi kontorl edilir. Klas”r iinde eski sisteme ait kalntlar var ise ilem iptal edilir.	
dir /b "%Location%\Edit\Mount\Windows" > NUL 2>&1
	if %errorlevel%==0 (echo %R%[32m ncelikle ykl olan Mount klas”rn toplaynz.%R%[0m
						echo [%date% - %time%] ^| SetupEdit ^| HATA! Mount klas”rnde ykl sistem var >> %Location%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)

:: Hata alnmamas iin Mount klas”r silinip yeniden oluturulur.						
RD /S /Q "%Location%\Edit\Mount" > NUL 2>&1
mkdir "%Location%\Edit\Mount" > NUL 2>&1

echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                           Setup Dzenle                         %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
Call :degisken4

mode con cols=99 lines=30
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%index% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%index% ^| FIND "Name"') do ( set iname=%%c)
echo  %R%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo   %R%[92m Index%R%[33m %index% %R%[92m%R%[33m (%iname%)%R%[92m alyor...%R%[0m
echo  %R%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo [%date% - %time%] ^| SetupEdit ^| %MerkezWim% - %iname% karlyor >> %Location%\Logs
Dism /Mount-Image /ImageFile:"%MerkezWim%" /MountDir:"%Location%\Edit\Mount" /Index:%index%
:: %Location%\Files\imagex.exe /mountrw %MerkezWim% %index% "%Location%\Edit\Mount"

:: Aaงdaki Mount tanmlamas Reg ykleme b”lm iindir. O b”lmde Mount deงikenine setup dosyalarn kardงmz klas”rn yolunu tanmlyoruz
set Mount=%Location%\Edit\Mount

Call :PowerRun
cls
echo  %R%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo    %C%[96m lem yaplacak Windows srmn seiniz%C%[0m
echo  %R%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
set /p windowssetup=%R%[97m  %R%[92m [ Windows 11:%R%[1;97m 1 %R%[35m/%R%[92m Windows 10:%R%[1;97m 2 %R%[92m] : %R%[0m
	if %windowssetup%==1 (%PowerRun% powershell -command "Expand-Archive -Force '%Location%\Files\Setup10.zip' '%Location%\Edit\Mount'"
						  %PowerRun% powershell -command "Expand-Archive -Force '%Location%\Files\Setup11.zip' '%Location%\Edit\Mount'"
						  echo [%date% - %time%] ^| SetupEdit ^| Windows 11 setup dosyalar Setup imajna entegre edildi. >> %Location%\Logs
						  timeout /t 5 /nobreak > NUL)
	if %windowssetup%==2 (%PowerRun% powershell -command "Expand-Archive -Force '%Location%\Files\Setup10.zip' '%Location%\Edit\Mount'"
						  echo [%date% - %time%] ^| SetupEdit ^| Windows 10 setup dosyalar Setup imajna entegre edildi. >> %Location%\Logs
						  timeout /t 5 /nobreak > NUL)
echo 
echo  %R%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
echo    %C%[96m Men konumunu seiniz%C%[0m
echo  %R%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%R%[0m
set /p barkonum=%R%[97m   %R%[92m[%R%[92m Sol:%R%[1;97m 1 %R%[35m/%R%[92m st:%R%[1;97m 2 %R%[35m/%R%[92m Saง:%R%[1;97m 3 %R%[35m/%R%[92m Alt:%R%[1;97m 4 %R%[92m] : %R%[0m 
	if %barkonum%==1 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
	if %barkonum%==2 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
	if %barkonum%==3 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
	if %barkonum%==4 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
:setupunmount
echo  %R%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo    %R%[92m Setup dosyas toplanyor...%R%[0m
echo  %R%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
Dism /UnMount-Image /MountDir:"%Location%\Edit\Mount" /Commit
::%Location%\Files\imagex.exe /unmount /commit %Location%\Edit\Mount
echo  %R%[92m lem tamamland. %R%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

:SetupBar
echo [%date% - %time%] ^| SetupEdit ^| Lerup Launcher konumu "%~1" seildi >> %Location%\Logs
Call :RegTopla
Call :Offreg
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Location" /t REG_SZ /d %~1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "UseLargeIcons" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "UseLargeMenus" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "AlwaysOnTop" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "AutoHide" /t REG_SZ /d 0 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Center" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Buttons" /t REG_SZ /d "" /f > NUL 2>&1
Call :RegTopla
goto :eof
:stop

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Newico
cls
mode con cols=70 lines=40
dir /b %Location%\Files\Newico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :icodownload)
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                    Yeni Simgeleri Ykle Offline                 %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
Call :PowerRun
echo [%date% - %time%] ^| Newico ^| Yeni simgeler entegre edildi. Mount=%Mount% >> %Location%\Logs
%PowerRun% Powershell -command "Expand-Archive -Force '%Location%\Files\Newico.zip' '%Mount%\Windows'"

echo  %R%[92m lem tamamland. %R%[0m  
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:gpeditmsc
mode con cols=70 lines=40
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                        Gpedit.Msc Offline                        %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo [%date% - %time%] ^| Gpedit.msc ^| Gpedit.msc entegre edildi. Mount=%Mount% >> %Location%\Logs
FOR /f %%a IN ('"dir /b %Mount%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') do (Dism /Image:%Mount% /Add-Package:"%SystemRoot%\servicing\Packages\%%a")
FOR /f %%a IN ('"dir /b %Mount%\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum") do (Dism /Image:%Mount% /Add-Package:"%SystemRoot%\servicing\Packages\%%a")
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:HyperV
mode con cols=70 lines=40
echo  %R%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo  %R%[90mบ%R%[1;97m%R%[100m                          Hyper-V Offline                         %R%[0m%R%[90mบ%R%[0m
echo  %R%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo [%date% - %time%] ^| HyperV ^| Hyper-V entegre edildi. Mount=%Mount% >> %Location%\Logs
For /f %%a IN ('"dir /b %Mount%\Windows\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Image:%Mount% /Add-Package:"%Mount%\Windows\servicing\Packages\%%a")
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-All
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Tools-All
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Management-PowerShell
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Hypervisor
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Services
::DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Management-Clients
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:katilimsiz
powershell -command "Start-Process '%Location%\Extra\Katilimsiz.bat'
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Location
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
set Location=%Location:~0,-6%
goto :EOF

:MerkezWim
echo  %R%[90mบ%R%[0m %C%[32mINDEX%C%[0m %R%[90mบ%R%[0m %C%[32mMMAR%C%[0m %R%[90mบ%R%[0m %C%[32m   SRM%C%[0m    %R%[90mบ%R%[0m  %C%[32mDL%C%[0m   %R%[90mบ%R%[0m    %C%[32mEDT%C%[0m     %R%[90mบ%R%[0m    %C%[32mSM%C%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%MerkezWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Modified') do (
								echo  %R%[90mฬอออออออฮออออออออฮอออออออออออออฮออออออออฮอออออออออออออฮอออออออออออออออออออออออออออออออออออออออออน%R%[0m
								echo      %C%[92m%%a%C%[0m      %C%[33m%%b%C%[0m    %C%[36m %%d.%%e%C%[0m    %C%[33m%%f%C%[0m    %C%[36m%%h%C%[0m  %C%[37m %%g%C%[0m
								)
							)
						)
					)
				)
			)
		)
	)
)
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:degisken1
set /p MerkezWim=%C%[97m  %C%[92m Klas”r veya Dosya yolu : %C%[0m
	if %MerkezWim%==x GOTO menu
	if %MerkezWim%==X GOTO menu

echo %MerkezWim%\ > %Location%\Edit\Logs\Slash.txt
Find /C /I "\\" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set MerkezWim=%MerkezWim:~0,-1%
						echo [%date% - %time%] ^| degisken1 ^| ISO kalbndan yol verildi. %MerkezWim% >> %Location%\Logs
						DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL)
Find "boot.wim" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken1 ^| boot.wim dosyas tanmland. %MerkezWim% >> %Location%\Logs
						goto :eof)
Find "install" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken1 ^| install.wim dosya yolu direkt tanmland. %MerkezWim% >> %Location%\Logs
						goto :eof)
dir /b %MerkezWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set MerkezWim="%MerkezWim%\sources\install.wim")
	if %errorlevel%==1 (set MerkezWim="%MerkezWim%\sources\install.esd")
echo [%date% - %time%] ^| degisken1 ^| maj klas”r yolu verildi. %MerkezWim% >> %Location%\Logs
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:degisken2
set /p EkleWim=%C%[97m  %C%[92m Klas”r veya Dosya yolu : %C%[0m
	if %EkleWim%==x GOTO menu
	if %EkleWim%==X GOTO menu

echo %EkleWim%\ > %Location%\Edit\Logs\Slash.txt
Find /C /I "\\" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set EkleWim=%EkleWim:~0,-1%
						echo [%date% - %time%] ^| degisken2 ^| ISO kalbndan yol verildi. %EkleWim% >> %Location%\Logs
						DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL)
Find "install" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set EkleWim=%EkleWim%
						echo [%date% - %time%] ^| degisken2 ^| install.wim dosya yolu direkt tanmland. %EkleWim% >> %Location%\Logs
						DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL
						goto :eof)
dir /b %EkleWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set EkleWim="%EkleWim%\sources\install.wim")
	if %errorlevel%==1 (set EkleWim="%EkleWim%\sources\install.esd")
echo [%date% - %time%] ^| degisken2 ^| maj klas”r yolu verildi. %EkleWim% >> %Location%\Logs
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:degisken3
mode con cols=90 lines=20
echo 
echo  %C%[96m rnek:%C%[33m "C:\OgnitorenKs.Toolbox\Edit\Mount"%C%[0m
set /p Mount=%R%[97m  %R%[92m Imaj klas”r yolu : %R%[0m
	if %Mount%==x GOTO WindowsEditMenu
	if %Mount%==X GOTO WindowsEditMenu
echo [%date% - %time%] ^| degisken3 ^| Mount klas”r yolu tanmland. Mount=%Mount% >> %Location%\Logs
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:degisken4
set /p MerkezWim=%C%[97m  %C%[92m Klas”r veya Dosya yolu : %C%[0m
	if %MerkezWim%==x GOTO menu
	if %MerkezWim%==X GOTO menu
	
echo %MerkezWim%\ > %Location%\Edit\Logs\Slash.txt
Find /C /I "\\" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (echo %R%[91m HATA! ISO dosyas baงlanamaz.%R%[0m
						echo %R%[92m Klas”re karp deneyiniz.%R%[0m
						echo [%date% - %time%] ^| degisken4 ^| HATA! ^> ISO kalb baงlanmaya alt. "%MerkezWim%" >> %Location%\logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
Find "boot.wim" %Location%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%Location%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken4 ^| boot.wim dosya yolu tanmland. "%MerkezWim%" >> %Location%\logs
						goto :eof)
dir /b %MerkezWim%\sources\boot.wim > NUL 2>&1
	if %errorlevel%==0 (set MerkezWim="%MerkezWim%\sources\boot.wim")
	if %errorlevel%==1 (set MerkezWim="%MerkezWim%\boot.wim")
echo [%date% - %time%] ^| degisken4 ^| maj klas”r yolu verildi. "%MerkezWim%" >> %Location%\logs
Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:1 > %Location%\Edit\Logs\setupindex.txt
FIND "Setup" %Location%\Edit\Logs\setupindex.txt > NUL 2>&1
	if %errorlevel%==0 (set index=1)
	if %errorlevel%==1 (set index=2)
echo [%date% - %time%] ^| degisken4 ^| Setup index numaras "%index%" tespit edildi. "%MerkezWim%" >> %Location%\logs
DEL /F /Q /A "%Location%\Edit\Logs\setupindex.txt" > NUL 2>&1
cls
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PowerRun
set PowerRun=%Location%\Files\PowerRun.exe /SW:0 %SystemRoot%\system32\cmd.exe /c
goto :EOF


:SetupDownload
FOR /F "tokens=1" %%i in ('FIND "Setup.zip" %Location%\Extra\Links.txt') do set link=%%i
%Location%\Files\wget -q --no-check-certificate --show-progress "%link%" -O %Location%\Download\Setup.zip
powershell -command "Expand-Archive -Force '%Location%\Download\Setup.zip' '%Location%\Files'"
echo [%date% - %time%] ^| SetupDownload ^| Setup.zip dosyas indirildi >> %Location%\logs
goto :eof

:icodownload
FOR /F "tokens=1" %%i in ('FIND "Newico.zip" %Location%\Extra\Links.txt') do set link=%%i
%Location%\Files\wget -q --no-check-certificate --show-progress "%link%" -O %Location%\Files\Newico.zip
echo [%date% - %time%] ^| icodownload ^|  Newico.zip dosyas indirildi >> %Location%\logs
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:imagexexport
mode con cols=99 lines=30
echo  %R%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo    %R%[33m (%~4 %~5)%R%[32m birletirme ilemi gerekletiriliyor...%R%[0m
echo  %R%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
echo [%date% - %time%] ^| AIO Maker ^| "%~3" dosyasna "%~1" dosyasndan "%~4 %~5" srm entegre edildi >> %Location%\Logs
Dism /Export-Image /SourceImageFile:%~1 /SourceIndex:%~2 /DestinationImageFile:%~3 /DestinationName:"%~4" /Compress:Max
::%Location%\Files\imagex.exe /export "%~1" %~2 "%~3" "%~4 %~5"
goto :eof

::---------------------------------------------------------------------------------------------------------------------------------------------------------
::  %~1: Eklewim | %~2: %%a(indexnumaralar) | %~3: (MerkezWim) | %~4: %%c(Srm ismi) | %~5: %%b(Srm mimarisi)" |
:: ========================================================================================================================================================

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:esdtowim
cls
echo  %R%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%R%[0m
echo    %R%[32m Index%R%[33m %~2 %R%[32m%R%[33m (%~3 %~4)%R%[32m d”ntrlyor...%R%[0m
echo  %R%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%R%[0m
dir /b %Location%\Edit\ESDtoWIM\install.wim > NUL 2>&1
	if %errorlevel%==0 (echo ESDtoWIM ^| HATA! Mevcut install.wim dosyas zerine ekleme ilemi gerekletirildi %~1 %~2 %~3 %~4 >> %Location%\logs)
Dism /Export-Image /SourceImageFile:"%~1" /SourceIndex:%~2 /DestinationImageFile:%Location%\Edit\ESDtoWIM\install.wim /Compress:max /CheckIntegrity
timeout /t 1 /nobreak > NUL
goto :eof
::---------------------------------------------------------------------------------------------------------------------------------------------------------
::  %~1: MerkezWim | %~2: %%a(indexnumaralar) | %~3: %%c(Srm ismi) | %~4: %%b(Srm mimarisi)" |
:: ========================================================================================================================================================

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:key
reg add "%~1" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /f)
goto :eof

:dword
reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f)
goto :eof

:binary
reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f)
goto :eof

:sz
reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f)
goto :eof

:vesz
reg add "%~1" /ve /t REG_SZ /d "%~2" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /ve /t REG_SZ /d "%~2" /f)
goto :eof

:multisz
reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f)
goto :eof

:delete
reg delete "%~1" /f
	if %errorlevel%==1 (%PowerRun% reg delete "%~1" /f)
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set R=%%b
  exit /B 0
)
exit /B 0

:ColorEnd2
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set C=%%b
  exit /B 0
)
exit /B 0
