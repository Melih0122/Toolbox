::                               NOTEPAD++ > Kodlama > Karakter Tak�m� > T�rk�e > OEM857
:: ==============================================================================================================================
::                                               HAZIRLAYAN 
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
::  Toolbox'� haz�rlad���m sistemlerde baz� konularda kullan�c�lara yard�mc� olmas� i�in haz�rlam��t�m.
::  Zamanla yapt���m geli�tirmeler sonucu Toolbox'a kullan�c� dostu bir�ok b�l�m ekledim.
::  Toolbox s�rekli olarak g�ncellenecektir. Toolbox'� indirebilece�iniz siteler;
::   www.technopat.net\Sosyal 
::   ognitorenks.blogspot.com (�u an bu b�l�m pasif, �al��malar�m devam ediyor.)
::  Bu iki site harici herhangi bir site de payla��m yapmayaca��m. Harici bir sayfa �zerinden indirmeyiniz
::  Farkl� istek ve �nerileriniz olursa, �leti�im;
::   Discord: OgnitorenKs#2737 
::   Mail: ognitorenks@gmail.com
::   
::   Site: ognitorenks.blogspot.com 
::   Site: www.technopat.net\Sosyal (Yeni bir konu a��p yada haz�rlad���m konularda @OgnitorenKs yazarak etiketleyebilirsiniz) 
:: ============================================================================================================================== 
echo off
cls
title OgnitorenKs Windows Edition

setlocal
call :setESC
Call :menuRGB

:: ==============================================================================================================================
::  RENK HAR�TASI
::  -------------
:: %RGB%^[32m > ISO okuma b�l�mlerinde bilgi b�l�mlerinde kullan�l�yor. (Ye�il)
:: %RGB%^[33m > Sar� renkli b�l�mler. Men� i�indeki sar� renkli b�l�mler
:: %RGB%^[36m > Mavi renkli b�l�mler. Men� i�indeki mavi renkli b�l�mler
:: %RGB%^[37m > ISO okuma b�l�mlerinde kullan�l�yor                                                                                                        
:: %RGB%^[90m > Gri renkli b�l�mler. Men� i�indeki gri renkli b�l�mler(�er�eveler dahil de�il)
:: %RGB%^[92m > De�i�ken rengi (Ye�il). Kullan�c�dan bir de�er girmesi istenilen b�l�mlere aittir.
:: %RGB%^[96m > �kinci de�i�ken veya bilgi rengi (A��k Mavi) | Men�ye yans�yan bilgi mesajlar�. Ana ekrana d��ecek olan ikinci de�i�ken b�l�mlerine aittir.
::
:: %ESC%^[32m > ��lem (ye�il) numara rengidir. Men� i�indeki i�lem numaralar�d�r.
:: %ESC%^[36m > Men�de mavi renkli i�lem numara rengidir. Ayr�ca men�ye d�n renk ayar�d�r.
:: %ESC%^[100m > Ba�l�k b�l�mlerinde arka plan� dolduran renktir.
:: %ESC%^[1;97m > Ba�l�kta dolgu b�l�m�n�n i�inde yer alan yaz� rengidir. 1; b�l�m� kal�n yazmas�n� sa�lar. 97m beyaz renk yazmas�n� sa�lar.
:: %ESC%^[90m > �er�eveleri ve | i�aretlerinin rengini de�i�ir.
:: 
:: ==============================================================================================================================

Call :konum2
set Mount=%konum2%\Edit\Mount

:AdminKontrol
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo  ___________________________________________________________
echo 
echo                           -------
echo                       %ESC%[91m***  UYARI ***%ESC%[0m
echo                           -------
echo 
echo              %ESC%[92mSa�-T�k Y�netici olarak �al��t�r�n�z...%ESC%[0m 
echo 
echo  ___________________________________________________________
echo 
echo             %ESC%[92mKapatmak i�in herhangi bir tu�a bas�n�z.%ESC%[0m 
pause > nul
exit
)

:WindowsEditMenu
cls
mode con cols=53 lines=42
echo  %ESC%[90m�������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m           OgnitorenKs Windows Edition           %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m�������������������������������������������������͹%ESC%[0m
echo  %ESC%[90m�   %ESC%[32m 1.%ESC%%RGB%[33m WIM / ESD Okuyucu%RGB%[0m                         %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�   %ESC%[32m 2.%ESC%%RGB%[33m AIO Windows Haz�rla%RGB%[0m                       %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�   %ESC%[32m 3.%ESC%%RGB%[33m ISO Haz�rla%RGB%[0m                               %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�   %ESC%[32m 4.%ESC%%RGB%[33m ESD to WIM%RGB%%RGB%[90m [D�N��T�R]%RGB%[0m                     %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�   %ESC%[32m 5.%ESC%%RGB%[33m WIM /Delete%RGB%%RGB%[90m [S�L]%RGB%[0m                         %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�   %ESC%[32m 6.%ESC%%RGB%[33m WIM Mount%RGB%%RGB%[90m [Y�KLE]%RGB%[0m                         %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�   %ESC%[32m 7.%ESC%%RGB%[33m WIM Remount%RGB%%RGB%[90m [YEN�DEN Y�KLE]%RGB%[0m               %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�   %ESC%[32m 8.%ESC%%RGB%[33m WIM Unmount%RGB%%RGB%[90m [TOPLA]%RGB%[0m                       %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�������������������������������������������������͹%ESC%[0m
echo  %ESC%[90m�   %ESC%[36m 9.%ESC%%RGB%[33m Regedit%RGB%%RGB%[90m [Y�KLE]%RGB%[0m                           %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[32m 10.%ESC%%RGB%[33m Regedit%RGB%%RGB%[90m [TOPLA]%RGB%[0m                           %ESC%[90m�%ESC%[0m 
echo  %ESC%[90m�  %ESC%[36m 11.%ESC%%RGB%[33m Win10 Haz�r Regedit Kay�tlar�%RGB%%RGB%[90m [EKLE]%RGB%[0m      %ESC%[90m�%ESC%[0m 
echo  %ESC%[90m�  %ESC%[36m 12.%ESC%%RGB%[33m Win11 Haz�r Regedit Kay�tlar�%RGB%%RGB%[90m [EKLE]%RGB%[0m      %ESC%[90m�%ESC%[0m 
echo  %ESC%[90m�������������������������������������������������͹%ESC%[0m
echo  %ESC%[90m�  %ESC%[32m 13.%ESC%%RGB%[33m Dism Update%RGB%%RGB%[90m [ONLINE]%RGB%[0m                      %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 14.%ESC%%RGB%[33m Dism Update%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                     %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�������������������������������������������������͹%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 15.%ESC%%RGB%[33m Appx y�kleyici%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                  %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[32m 16.%ESC%%RGB%[33m Appx y�kleyici%RGB%%RGB%[90m [ONLINE]%RGB%[0m                   %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�������������������������������������������������͹%ESC%[0m
echo  %ESC%[90m�  %ESC%[32m 17.%ESC%%RGB%[33m Driver Yedekle%RGB%%RGB%[90m [ONLINE]%RGB%[0m                   %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 18.%ESC%%RGB%[33m Driver Y�kle%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                    %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�������������������������������������������������͹%ESC%[0m
echo  %ESC%[90m�  %ESC%[32m 19.%ESC%%RGB%[33m Setup D�zenle%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                   %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 20.%ESC%%RGB%[33m Yeni Simgeleri y�kle%RGB%%RGB%[90m [OFFLINE]%RGB%[0m            %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 21.%ESC%%RGB%[33m Walpaper De�i�tir%RGB%%RGB%[90m [OFFLINE]%RGB%[0m               %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 22.%ESC%%RGB%[33m Telemetry engelle (Hosts)%RGB%%RGB%[90m[OFFLINE]%RGB%[0m        %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 23.%ESC%%RGB%[33m OneDrive Sil %RGB%%RGB%[90m[OFFLINE]%RGB%[0m                    %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 24.%ESC%%RGB%[33m Gpedit.msc ekle%RGB%%RGB%[90m[OFFLINE]%RGB%[0m                  %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 25.%ESC%%RGB%[33m Hyper-V ekle%RGB%%RGB%[90m[OFFLINE]%RGB%[0m                     %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 26.%ESC%%RGB%[33m Silinmesi gerekenler%RGB%%RGB%[90m[OFFLINE]%RGB%[0m             %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�������������������������������������������������͹%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 27.%ESC%%RGB%[33m Kat�l�ms�z program ve ayar ekle %RGB%%RGB%[90m[OFFLINE]%RGB%[0m %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 28.%ESC%%RGB%[33m Kat�l�ms�z program ve ayar ekle %RGB%%RGB%[90m[ONLINE]%RGB%[0m  %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�������������������������������������������������͹%ESC%[0m
echo  %ESC%[90m�  %ESC%[36m 29.%ESC%%ESC%[36m Mount yol tan�mla%ESC%[0m                         %ESC%[90m�%ESC%[0m
echo  %ESC%[90m�������������������������������������������������ͼ%ESC%[0m
set /p WindowsEditMenu= %ESC%[92m Yapmak istedi�iniz i�lem : %ESC%[0m
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
	if %WindowsEditMenu%==11 GOTO Windows10regedit
	if %WindowsEditMenu%==12 GOTO Windows11regedit
	if %WindowsEditMenu%==13 (Call :OnDismUpdate)
	if %WindowsEditMenu%==14 (Call :OffDismUpdate)
	if %WindowsEditMenu%==15 (Call :OffAppx)
	if %WindowsEditMenu%==16 (Call :OnAppx)
	if %WindowsEditMenu%==17 (Call :Driveryedek)
	if %WindowsEditMenu%==18 (Call :Driveryukle)
	if %WindowsEditMenu%==19 (Call :SetupEdit)
	if %WindowsEditMenu%==20 (Call :Newico)
	if %WindowsEditMenu%==21 (Call :walpaper)
	if %WindowsEditMenu%==22 (Call :Hosts)
	if %WindowsEditMenu%==23 (Call :OneDrivedel)
	if %WindowsEditMenu%==24 (Call :gpeditmsc)
	if %WindowsEditMenu%==25 (Call :HyperV)
	if %WindowsEditMenu%==26 (Call :delhard)
	if %WindowsEditMenu%==27 (Call :katilimsizoffline)
	if %WindowsEditMenu%==28 (Call :katilimsizonline)
	if %WindowsEditMenu%==29 (Call :degisken3)
else
	goto WindowsEditMenu

:WimReader
cls
mode con cols=70 lines=15
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        WIM / ESD Okuyucu                         %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
Call :degisken1
echo [%date% - %time%] ^| WimReader ^| %MerkezWim% dosyas�n�n i�eri�i okundu >> %konum2%\Logs
mode con cols=99 lines=27
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
Call :MerkezWim
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͼ%ESC%[0m
echo                      %ESC%[92m Men�ye d�nmek i�in herhangi bir tu�a bas�n�z.%ESC%[0m
pause > NUL 
goto :eof

:stop
:AioImport
mode con cols=70 lines=20
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                       AIO Windows Haz�rla                        %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
echo   %RGB%[96m Ana S�r�m%ESC%[0m 
Call :degisken1
:aioimport2
echo   %RGB%[96m Eklenecek S�r�m%ESC%[0m 
Call :degisken2
cls
mode con cols=99 lines=40
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%[1;97m%ESC%%ESC%[100m                                           ANA S�R�M                                         %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m�����������������������������������������������������������������������������������������������͹%ESC%[0m
Call :MerkezWim
echo  %ESC%[90m�����������������������������������������������������������������������������������������������͹%ESC%[0m
echo  %ESC%[90m�%ESC%[1;97m%ESC%%ESC%[100m                                        EKLENECEK S�R�M                                      %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m�����������������������������������������������������������������������������������������������͹%ESC%[0m
echo  %ESC%[90m�%ESC%[0m %ESC%[32mINDEX%ESC%[0m %ESC%[90m�%ESC%[0m %ESC%[32mM�MAR�%ESC%[0m %ESC%[90m�%ESC%[0m %ESC%[32m   S�R�M%ESC%[0m    %ESC%[90m�%ESC%[0m  %ESC%[32mD�L%ESC%[0m   %ESC%[90m�%ESC%[0m    %ESC%[32mED�T%ESC%[0m     %ESC%[90m�%ESC%[0m    %ESC%[32m�S�M%ESC%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%EkleWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%EkleWim% /Index:%%a ^| findstr /i Modified') do (
								echo  %ESC%[90m�����������������������������������������������������������������������������������������������͹%ESC%[0m
								echo      %ESC%[32m%%a%ESC%[0m      %ESC%[33m%%b%ESC%[0m    %ESC%[36m %%d.%%e%ESC%[0m    %ESC%[33m%%f%ESC%[0m    %ESC%[36m%%h%ESC%[0m  %ESC%[37m %%g%ESC%[0m
								)
							)
						)
					)
				)
			)
		)
	)
)
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͼ%ESC%[0m
set /p $selectindex= %RGB%[92m Eklenecek s�r�mleri se�iniz : %RGB%[0m

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
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
Call :MerkezWim
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͼ%ESC%[0m
echo 
echo %ESC%[92m Birle�tirme i�lemi tamamland�%ESC%[0m
echo %ESC%[92m Men�ye d�nmek i�in herhangi bir tu�a bas�n�z.%ESC%[0m
pause > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------
:stop
:ISOMaker
cls
mode con cols=70 lines=20
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                             ISO MAKER                            %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
echo  %ESC%[96m �rnek:%ESC%%ESC%[33m C:\Windows10Pro%ESC%[0m
set /p MerkezWim=%RGB%[92m   �maj klas�r yolu : %RGB%[0m
	if %MerkezWim%==x GOTO WindowsEditMenu
	if %MerkezWim%==X GOTO WindowsEditMenu
echo  %ESC%[90m������������������������������������������������������������������͹%ESC%[0m
set /p etiket=%RGB%[92m   Etiket ismi : %RGB%[0m
	if %etiket%==x GOTO WindowsEditMenu
	if %etiket%==X GOTO WindowsEditMenu
echo  %ESC%[90m������������������������������������������������������������������͹%ESC%[0m
set /p isokayit=%RGB%[92m   ISO ismi : %RGB%[0m
	if %isokayit%==x GOTO WindowsEditMenu
	if %isokayit%==X GOTO WindowsEditMenu
 
mode con cols=85 lines=45
echo [%date% - %time%] ^| ISO Maker ^| �maj:"%MerkezWim%" ^| Etiket ismi:"%etiket%" ^| ISO ismi:"%isokayit%" olarak ISO'ya dosyas� olu�turuldu. >> %konum2%\Logs
%konum2%\Files\oscdimg.exe -b%MerkezWim%\boot\etfsboot.com -h -u2 -m -l%etiket% %MerkezWim%\ %konum2%\Edit\%isokayit%.iso

powershell -command "Start-Process '%konum2%\Edit'"
echo %ESC%[92m ��lem tamamland�.%ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------

:esdtowimexport
cls
mode con cols=70 lines=20
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                         ESD / WIM D�n��t�r                       %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
Call :degisken1
mode con cols=99 lines=30
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
Call :MerkezWim
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͼ%ESC%[0m
set /p $selectindex= %RGB%[92m D�n��t�r�lecek s�r�mleri se�iniz : %RGB%[0m

echo %$selectindex% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
echo %$selectindex% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
	
FOR %%a in (%$selectindex%) do (
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Architecture"') do (
		FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Name"') do (
			echo [%date% - %time%] ^| ESDtoWIM ^| %MerkezWim% - %%a - %%c - %%b s�r�m� ��kar�ld� >> %konum2%\Logs
			Call :esdtowim "%MerkezWim%" "%%a" "%%c" "%%b"
			)
		)
	)
)

powershell -command "Start-Process '%konum2%\Edit\ESDtoWIM'"
echo %ESC%[92m ��lem tamamland�.%ESC%[0m 
timeout /t 3 /nobreak > NUL
goto :eof

:: ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

:WimDelete
cls
mode con cols=70 lines=20
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                               WIM S�L                            %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
Call :degisken1
mode con cols=99 lines=30
:WimDell
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
Call :MerkezWim
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͼ%ESC%[0m
set /p selectindex=%RGB%[92m Silinecek s�r�m� se�iniz : %RGB%[0m
	if %selectindex%==X goto WindowsEditMenu
	if %selectindex%==x goto WindowsEditMenu
echo [%date% - %time%] ^| WimDelete ^| Index="%selectindex%" silindi. "%MerkezWim%" >> %konum2%\Logs
Powershell -command "Remove-WindowsImage -ImagePath '%MerkezWim%' -Index '%selectindex%' -CheckIntegrity"
:: Kullan�labilecek farkl� y�ntemler
::%konum2%\Files\imagex.exe /delete "%MerkezWim%" %selectindex% /check
::Dism /Delete-Image /ImageFile:%MerkezWim% /Index:%selectindex% /CheckIntegrity
cls
goto WimDell


:WimMount
cls
mode con cols=70 lines=20
dir /b %konum2%\Edit\Mount\Windows > NUL 2>&1
	if %errorlevel%==0 (echo %ESC%[32m Mevcut imaj toplan�yor...%ESC%[0m 
						Call :WimRemount
						Call :WimUnmount)
RD /S /Q "%konum2%\Edit\Mount" > NUL 2>&1
mkdir "%konum2%\Edit\Mount" > NUL 2>&1
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                              WIM MOUNT                           %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
Call :degisken1
mode con cols=99 lines=30
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
Call :MerkezWim
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͼ%ESC%[0m
set /p selectindex= %RGB%[92m A��lacak s�r�m� se�iniz : %RGB%[0m
	if %selectindex%==X goto WindowsEditMenu
	if %selectindex%==x goto WindowsEditMenu
:: A�a��daki FOR d�ng�leri ile sistem "ismi" ile "mimarisi" al�nmaktad�r. 
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%selectindex% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%selectindex% ^| FIND "Name"') do ( set iname=%%c)
cls
:: Ger�ekle�tirilen i�lemi g�stermektedir.
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
echo    %ESC%[32m Index%ESC%%ESC%[33m %selectindex% %ESC%%ESC%[32m%ESC%%ESC%[33m (%iname% %iarc%)%ESC%%ESC%[32m a��l�yor...%ESC%[0m
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͼ%ESC%[0m
Dism /Mount-Image /ImageFile:"%MerkezWim%" /MountDir:"%konum2%\Edit\Mount" /Index:%selectindex%
::%konum2%\Files\imagex.exe /mountrw %MerkezWim% %selectindex% "%konum2%\Edit\Mount"
echo [%date% - %time%] ^| WimMount ^| "%selectindex%" - "%%c - %%b" s�r�m� Mount edildi. "%MerkezWim%" >> %konum2%\Logs
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:WimRemount
mode con cols=70 lines=20
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                             WIM Remount                          %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
echo [%date% - %time%] ^| WimRemount ^| %Mount% yeniden y�kleme i�lemi yap�ld� >> %konum2%\Logs
Dism /Remount-Image /MountDir:"%konum2%\Edit\Mount"
::%konum2%\Files\imagex.exe /remount %konum2%\Edit\Mount
goto :eof

:WimUnmount
cls
mode con cols=70 lines=20
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                             WIM Unmount                          %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
echo [%date% - %time%] ^| WimUnmount ^| %Mount% klas�r� topland� >> %konum2%\Logs
Dism /UnMount-Image /MountDir:%konum2%\Edit\Mount /Commit
	if %errorlevel%==1 (echo  %ESC%[91m TOPLAMA ��LEM� BA�ARISIZ! %ESC%[0m
						echo [%date% - %time%] ^| WimUnmount ^| HATA! %Mount% klas�r� unmount yap�lam�yor >> %konum2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
						
::%konum2%\Files\imagex.exe /unmount /commit %konum2%\Edit\Mount
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:stop
:RegYukle
mode con cols=70 lines=20
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                            Regedit Y�kle                         %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m

:Offreg
dir /b %Mount%\Windows\System32\config\SOFTWARE > NUL 2>&1
	if %errorlevel%==1 (echo  %ESC%[1;97m%ESC%%ESC%[41m            Yol hatal�! Regedit kay�tlar� bulunumad�.               %ESC%[0m
						echo [%date% - %time%] ^| RegYukle ^| HATA! Regedit kay�tlar� y�klenemedi. Mount="%Mount%" >> %konum2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)

echo [%date% - %time%] ^| RegYukle ^| %Mount% klas�r�nden regedit kay�tlar� y�klendi >> %konum2%\Logs
reg load HKLM\OG_COMPONENTS "%Mount%\Windows\System32\config\COMPONENTS" >nul
reg load HKLM\OG_DEFAULT "%Mount%\Windows\System32\config\default" >nul
reg load HKLM\OG_NTUSER "%Mount%\Users\Default\ntuser.dat" >nul
reg load HKLM\OG_SOFTWARE "%Mount%\Windows\System32\config\SOFTWARE" >nul
reg load HKLM\OG_SYSTEM "%Mount%\Windows\System32\config\SYSTEM" >nul
goto :eof

:RegTopla
cls
echo [%date% - %time%] ^| RegTopla ^| %Mount% klas�r�nden regedit kay�tlar� topland� >> %konum2%\Logs
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

:OnAppx
cls
mode con cols=70 lines=40
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        Online Appx Y�kleyici                     %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
for /f %%i in ('"dir /b %konum2%\Edit\Appx\*"') do (
	echo [%date% - %time%] ^| OnlineAppxYukle ^| "%konum2%\Edit\Appx\%%i" appx dosyas� y�klendi >> %konum2%\Logs 
	PowerShell.exe -Command "Add-AppxPackage -Path %konum2%\Edit\Appx\%%i"
)

echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:OffAppx
cls
mode con cols=70 lines=40
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        Offline Appx Y�kleyici                    %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m

for /f %%i in ('"dir /b %konum2%\Edit\Appx\*"') do (
	echo [%date% - %time%] ^| OfflineAppxYukle ^| "%konum2%\Edit\Appx\%%i" appx dosyas� y�klendi >> %konum2%\Logs 
	DISM /Image:%Mount% /Add-ProvisionedAppxPackage /PackagePath:%konum2%\Edit\Appx\%%i /SkipLicense
)
Dism /Image:%Mount% /Optimize-ProvisionedAppxPackage
	if %errorlevel%==1 (echo [%date% - %time%] ^| OfflineAppxYukle ^| HATA! Optimize-ProvisionedAppxPackage i�lemi hata verdi. Mount=%Mount% >> %konum2%\Logs)
goto :eof

:stop
:OffDismUpdate
cls
mode con cols=70 lines=40
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                         DISM Update Offline                      %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
	
:OffDism
for /f %%i in ('"dir /b %konum2%\Edit\Update\*"') do (
	echo [%date% - %time%] ^| OfflineDismYukle ^| "%konum2%\Edit\Update\%%i" update dosyas� y�klendi. Mount=%Mount% >> %konum2%\Logs 
	DISM /Image:%Mount% /add-package /packagepath="%konum2%\Edit\Update\%%i"
)
echo %ESC%[92m WinSxS temizleniyor...%ESC%[0m
DISM /Image:%Mount% /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 (echo %ESC%[91m TEM�ZLEME ��LEM� BA�ARISIZ%ESC%[0m
						echo [%date% - %time%] ^| OfflineDismYukle ^| WinSxS temizlenirken hata olu�tu. Mount=%Mount% >> %konum2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
echo %ESC%[92m Appx dosyalar optimize ediliyor...%ESC%[0m
Dism /Image:%Mount% /Optimize-ProvisionedAppxPackage
	if %errorlevel%==1 (echo [%date% - %time%] ^| OfflineDismYukle ^| Optimize-ProvisionedAppxPackage i�leminde hata olu�tu. Mount=%Mount% >> %konum2%\Logs)
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:OnDismUpdate
cls
mode con cols=70 lines=40
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                         DISM Update Online                      %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
for /f %%i in ('"dir /b %konum2%\Edit\Update\*"') do (
	echo [%date% - %time%] ^| OnlineDismYukle ^| "%konum2%\Edit\Update\%%i" update dosyas� y�klendi >> %konum2%\Logs 
	DISM /Online /add-package /packagepath="%konum2%\Edit\Update\%%i"
)
echo %ESC%[92m WinSxS temizleniyor...%ESC%[0m
DISM /Online /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 ( echo  %ESC%[91m TEM�ZLEME ��LEM� BA�ARISIZ! %ESC%[0m 
						 timeout /t 5 /nobreak > NUL
						 goto WindowsEditMenu)

echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:stop
:DriverYedek
cls
mode con cols=70 lines=40
RD /S /Q "%konum2%\Edit\Driver\Yedek" > NUL 2>&1
mkdir "%konum2%\Edit\Driver\Yedek" > NUL 2>&1
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                           Driver Yedekle                        %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
echo [%date% - %time%] ^| DriverYedek ^| Driverlar yedeklendi >> %konum2%\Logs
Dism /Online /Export-Driver /Destination:%konum2%\Edit\Driver\Yedek

powershell -command "Start-Process '%konum2%\Edit\Driver\Yedek'"
echo %ESC%[92m ��lem tamamland�.%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:DriverYukle
cls
mode con cols=70 lines=40
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        Driver Y�kle Offline                     %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
echo [%date% - %time%] ^| DriverYukle ^| Driver y�klendi. Mount=%Mount% >> %konum2%\Logs
Dism /Image:%Mount% /Add-Driver /Driver:%konum2%\Edit\Driver /Recurse
	if %errorlevel%==1 (RD /S /Q "%konum2%\Edit\Driver"
						mkdir "%konum2%\Edit\Driver"
						echo [%date% - %time%] ^| DriverYukle ^| HATA! Driver y�klenirken hata olu�tu. Mount=%Mount% >> %konum2%\Logs
						goto DriverYukle)

echo  %ESC%[92m ��lem tamamland�. %ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof
:stop
::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:SetupEdit
cls
mode con cols=70 lines=40
dir /b %konum2%\Files\Setup10.zip > NUL 2>&1
	if %errorlevel%==1 (Call :SetupDownload)
dir /b "%konum2%\Edit\Mount\Windows" > NUL 2>&1
	if %errorlevel%==0 (echo %ESC%[32m �ncelikle y�kl� olan Mount klas�r�n� toplay�n�z.%ESC%[0m
						echo [%date% - %time%] ^| SetupEdit ^| HATA! Mount klas�r�nde y�kl� sistem var >> %konum2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
RD /S /Q "%konum2%\Edit\Mount" > NUL 2>&1
mkdir "%konum2%\Edit\Mount" > NUL 2>&1
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                           Setup D�zenle                         %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
Call :degisken4

mode con cols=99 lines=30
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%index% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%index% ^| FIND "Name"') do ( set iname=%%c)
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
echo   %ESC%[92m Index%ESC%%ESC%[33m %index% %ESC%%ESC%[92m%ESC%%ESC%[33m (%iname%)%ESC%%ESC%[92m a��l�yor...%ESC%[0m
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͼ%ESC%[0m
echo [%date% - %time%] ^| SetupEdit ^| %MerkezWim% - %iname% ��kar�l�yor >> %konum2%\Logs
Dism /Mount-Image /ImageFile:"%MerkezWim%" /MountDir:"%konum2%\Edit\Mount" /Index:%index%
:: %konum2%\Files\imagex.exe /mountrw %MerkezWim% %index% "%konum2%\Edit\Mount"

:: A�a��daki Mount tan�mlamas� Reg y�kleme b�l�m� i�indir. O b�l�mde Mount de�i�kenine setup dosyalar�n� ��kard���m�z klas�r�n yolunu tan�ml�yoruz
set Mount=%konum2%\Edit\Mount

Call :PowerRun
cls
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
echo    %RGB%[96m ��lem yap�lacak Windows s�r�m�n� se�iniz%RGB%[0m
echo  %ESC%[90m�����������������������������������������������������������������������������������������������͹%ESC%[0m
set /p windowssetup=%ESC%[97m  %ESC%%ESC%[92m [ Windows 11:%ESC%%ESC%[1;97m 1 %ESC%%ESC%[35m/%ESC%%ESC%[92m Windows 10:%ESC%%ESC%[1;97m 2 %ESC%%ESC%[92m] : %ESC%[0m
	if %windowssetup%==1 (%PowerRun% powershell -command "Expand-Archive -Force '%konum2%\Files\Setup10.zip' '%konum2%\Edit\Mount'"
						  %PowerRun% powershell -command "Expand-Archive -Force '%konum2%\Files\Setup11.zip' '%konum2%\Edit\Mount'"
						  echo [%date% - %time%] ^| SetupEdit ^| Windows 11 setup dosyalar� Setup imaj�na entegre edildi. >> %konum2%\Logs
						  timeout /t 5 /nobreak > NUL)
	if %windowssetup%==2 (%PowerRun% powershell -command "Expand-Archive -Force '%konum2%\Files\Setup10.zip' '%konum2%\Edit\Mount'"
						  echo [%date% - %time%] ^| SetupEdit ^| Windows 10 setup dosyalar� Setup imaj�na entegre edildi. >> %konum2%\Logs
						  timeout /t 5 /nobreak > NUL)
echo 
echo  %ESC%[90m�����������������������������������������������������������������������������������������������͹%ESC%[0m
echo    %RGB%[96m Men� konumunu se�iniz%RGB%[0m
echo  %ESC%[90m�����������������������������������������������������������������������������������������������͹%ESC%[0m
set /p barkonum=%ESC%[97m   %ESC%%ESC%[92m[%ESC%%ESC%[92m Sol:%ESC%%ESC%[1;97m 1 %ESC%%ESC%[35m/%ESC%%ESC%[92m �st:%ESC%%ESC%[1;97m 2 %ESC%%ESC%[35m/%ESC%%ESC%[92m Sa�:%ESC%%ESC%[1;97m 3 %ESC%%ESC%[35m/%ESC%%ESC%[92m Alt:%ESC%%ESC%[1;97m 4 %ESC%%ESC%[92m] : %ESC%[0m 
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
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
echo    %ESC%[92m Setup dosyas� toplan�yor...%ESC%[0m
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͼ%ESC%[0m
Dism /UnMount-Image /MountDir:"%konum2%\Edit\Mount" /Commit
::%konum2%\Files\imagex.exe /unmount /commit %konum2%\Edit\Mount
echo  %ESC%[92m ��lem tamamland�. %ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

:SetupBar
echo [%date% - %time%] ^| SetupEdit ^| Lerup Launcher konumu %~1 se�ildi >> %konum2%\Logs
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
::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:Newico
cls
mode con cols=70 lines=40
dir /b %konum2%\Files\Newico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :icodownload)
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                    Yeni Simgeleri Y�kle Offline                 %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
Call :PowerRun
echo [%date% - %time%] ^| Newico ^| Yeni simgeler entegre edildi. Mount=%Mount% >> %konum2%\Logs
%PowerRun% Powershell -command "Expand-Archive -Force '%konum2%\Files\Newico.zip' '%Mount%'"

echo  %ESC%[92m ��lem tamamland�. %ESC%[0m  
timeout /t 2 /nobreak > NUL
goto :eof

::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:walpaper
cls
mode con cols=70 lines=40
Call :RegTopla
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                     Walpaper De�i�tir Offline                   %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
Call :PowerRun
echo [%date% - %time%] ^| Walpaper ^| Yeni duvar ka��tlar� y�klendi. Mount=%Mount% >> %konum2%\Logs
%PowerRun% Powershell -command "Expand-Archive -Force '%konum2%\Files\Walpaper.zip' '%Mount%\Windows\Web'"

echo  %ESC%[92m ��lem tamamland�. %ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

::------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:Hosts
echo [%date% - %time%] ^| Hosts ^| Yeni simgeler entegre edildi. Mount=%Mount% >> %konum2%\Logs
%PowerRun% copy /y "%konum2%\Files\Hosts" "%Mount%\Windows\System32\Drivers\etc"
goto :eof

::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:OneDrivedel
cls
mode con cols=70 lines=40
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                       OneDrive Sil Offline                       %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
Call :RegTopla
echo [%date% - %time%] ^| OneDrive ^| OneDrive silindi. Mount=%Mount% >> %konum2%\Logs
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDriveSetup.exe"
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDriveSettingSyncProvider.dll"
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDrive.ico"
Call :Offreg
reg delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f >nul 2>&1
Call :RegTopla
goto :eof

:gpeditmsc
mode con cols=70 lines=40
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        Gpedit.Msc Offline                        %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
echo [%date% - %time%] ^| Gpedit.msc ^| Gpedit.msc entegre edildi. Mount=%Mount% >> %konum2%\Logs
FOR /f %%a IN ('"dir /b %Mount%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') do (Dism /Image:%Mount% /Add-Package:"%SystemRoot%\servicing\Packages\%%a")
FOR /f %%a IN ('"dir /b %Mount%\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum") do (Dism /Image:%Mount% /Add-Package:"%SystemRoot%\servicing\Packages\%%a")
goto :eof


:HyperV
mode con cols=70 lines=40
echo  %ESC%[90m������������������������������������������������������������������ͻ%ESC%[0m
echo  %ESC%[90m�%ESC%%ESC%[1;97m%ESC%%ESC%[100m                          Hyper-V Offline                         %ESC%[0m%ESC%[90m�%ESC%[0m
echo  %ESC%[90m������������������������������������������������������������������ͼ%ESC%[0m
echo [%date% - %time%] ^| HyperV ^| Hyper-V entegre edildi. Mount=%Mount% >> %konum2%\Logs
For /f %%a IN ('"dir /b %Mount%\Windows\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Image:%Mount% /Add-Package:"%Mount%\Windows\servicing\Packages\%%a")
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-All
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Tools-All
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Management-PowerShell
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Hypervisor
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Services
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Management-Clients
goto :eof

:delhard
Call :PowerRun
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\MsSecFlt.sys" > NUL 
REM System Guard Runtime Monitor Agent (Sistem korumas�)
%PowerRun% DEL "%Mount%\Windows\System32\drivers\SgrmAgent.sys" > NUL 
REM Windows Defender
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\WdBoot.sys" > NUL 
REM Windows Defender
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\WdFilter.sys" > NUL 
REM Windows Defender
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\drivers\WdNisDrv.sys" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\smartscreen.exe" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\CompatTelRunner.exe" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\securityhealthhost.exe" > NUL 
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\securityhealthservice.exe" > NUL  
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\securityhealthsystray.exe" > NUL 2>&1
%PowerRun% DEL /F /Q /A "%Mount%\Windows\System32\SgrmBroker.exe" > NUL 2>&1
goto :eof

:: ����������������������������������������������������������������������������������������������������������������������������������

:Windows10regedit
echo [%date% - %time%] ^| Win10regedit ^| Windows 10 haz�r regedit kay�tlar� eklendi. Mount=%Mount% >> %konum2%\Logs
Call :PowerRun
Call :RegTopla
Call :Offreg
Call :sz "HKLM\OG_NTUSER\System\GameConfigStore" "GameDVR_Enabled" "0" & :: Oyun modu devre d��� b�rak�l�yor... 
Call :dword "HKLM\OG_NTUSER\System\GameConfigStore" "GameDVR_FSEBehavior" "2" & :: Tam ekran iyile�tirmeleri devre d��� b�rak�l�yor...
goto RegeditOrtak

:Windows11regedit
echo [%date% - %time%] ^| Win11regedit ^| Windows 11 haz�r regedit kay�tlar� eklendi. Mount=%Mount% >> %konum2%\Logs
Call :PowerRun
Call :RegTopla
Call :Offreg
Call :delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" & :: Terminal sa� t�ktan kald�r�l�yor...
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" "GlobalUserDisabled" "1" & :: Arka planda uygulamalar�n �al��mas�n� engelleniyor... 
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" "LetAppsRunInBackground" "2" & :: Arka planda uygulamalar�n �al��mas�n� engelleniyor... 
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "SeparateProcess" "0" & :: Windows 11 Explorer Ram kullan�m� sorun d�zeltiliyor...
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarMn" "0" & :: Sohbet ikonu kald�r�l�yor..
goto RegeditOrtak

:RegeditOrtak
:: Cortana 
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" "0" 
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" "0"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" "0"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaConsent" "0"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaceable" "1"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaced" "1"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "SearchboxTaskbarMode" "0"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" "1"
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI" "EnableCortana" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "HistoryViewEnabled" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaConsent" "0"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaceable" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "CortanaIsReplaced" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" "SearchboxTaskbarMode" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\PolicyManager\current\device\AboveLock" "AllowCortanaAboveLock" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\PolicyManager\current\device\Experience" "AllowCortana" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Speech_OneCore\Preferences" "ModelDownloadAllowed" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\InputPersonalization" "AllowInputPersonalization" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCloudSearch" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortana" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortanaAboveLock" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchPrivacy" "3"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchSafeSearch" "3"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" "AllowCortana" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" "AllowCortanaAboveLock" "0"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana ActionUriServer.exe" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|App=C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\ActionUriServer.exe|Name=Block Cortana ActionUriServer.exe|Desc=Block Cortana Outbound UDP/TCP Traffic|"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana Package" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|Name=Block Cortana Package|Desc=Block Cortana Outbound UDP/TCP Traffic|AppPkgId=S-1-15-2-1861897761-1695161497-2927542615-642690995-327840285-2659745135-2630312742|Platform=2:6:2|Platform2=GTEQ|"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana PlacesServer.exe" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|App=C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\PlacesServer.exe|Name=Block Cortana PlacesServer.exe|Desc=Block Cortana Outbound UDP/TCP Traffic|"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana RemindersServer.exe" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|App=C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\RemindersServer.exe|Name=Block Cortana RemindersServer.exe|Desc=Block Cortana Outbound UDP/TCP Traffic|"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana RemindersShareTargetApp.exe" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|App=C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\RemindersShareTargetApp.exe|Name=Block Cortana RemindersShareTargetApp.exe|Desc=Block Cortana Outbound UDP/TCP Traffic|"
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" "Block Cortana SearchUI.exe" "v2.26|Action=Block|Active=TRUE|Dir=Out|RA42=IntErnet|RA62=IntErnet|App=C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\SearchUI.exe|Name=Block Cortana SearchUI.exe|Desc=Block Cortana Outbound UDP/TCP Traffic|"
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Narrator\QuickStart" "SkipQuickStart" 1 &  :: Narrator QuickStart kapat�l�yor
:: 3.Parti programlar�n y�klenmesini engelle
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" "1"
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "ContentDeliveryAllowed" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "FeatureManagementEnabled" 0 
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEverEnabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "OemPreInstalledAppsEnabled" 0 
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEnabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SilentInstalledAppsEnabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-314559Enabled" 0 
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338387Enabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338388Enabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338389Enabled" 0 
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContentEnabled" 0
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPane RecommendionsEnabled" 0
:: Microsoft Store otomatik g�ncelle�tirmeler devre d��� b�rak�l�yor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\WindowsStore" "AutoDownload" "2"
:: �nerilen uygulamalar�n yeniden y�klenmesi engelleniyor
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" "1"
:: Windows Defender
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows Security Health\State" "AccountProtection_MicrosoftAccount_Disconnected" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" "DisableNotifications" "1"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" "DisableEnhancedNotifications" "1"
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows Security Health\State" "AccountProtection_MicrosoftAccount_Disconnected" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender" "DisableAntiSpyware" "1"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender" "DisableAntiVirus" "1"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender\Features" "TamperProtection" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender\Features" "TamperProtectionSource" "2"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender\Signature Updates" "FirstAuGracePeriod" "0"
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Defender\UX Configuration" "DisablePrivacyMode" "1"
Call :binary "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" "SecurityHealth" "030000000000000000000000"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\MRT" "DontOfferThroughWUAU" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\MRT" "DontReportInfectionInformation" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" "HideSystray" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender" "DisableAntiSpyware" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender" "PUAProtection" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender" "RandomizeScheduleTaskTimes" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions" "DisableAutoExclusions" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\MpEngine" "MpEnablePus" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" "LocalSettingOverridePurgeItemsAfterDelay" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" "PurgeItemsAfterDelay" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableBehaviorMonitoring" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableIOAVProtection" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableOnAccessProtection" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRealtimeMonitoring" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRoutinelyTakingAction" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableScanOnRealtimeEnable" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableScriptScanning" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" "Scan_ScheduleDay" "8"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" "Scan_ScheduleTime" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "AdditionalActionTimeOut" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "CriticalFailureTimeOut" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "DisableEnhancedNotifications" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "DisableGenericRePorts" 1
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" "NonCriticalTimeOut" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "AvgCPULoadFactor" "10"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableArchiveScanning" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableCatchupFullScan" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableCatchupQuickScan" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableRemovableDriveScanning" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableRestorePoint" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableScanningMappedNetworkDrivesForFullScan" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "DisableScanningNetworkFiles" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "PurgeItemsAfterDelay" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScanOnlyIfIdle" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScanParameters" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScheduleDay" 8
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Scan" "ScheduleTime" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "DisableUpdateOnStartupWithoutEngine" 1
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "ScheduleDay" 8
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "ScheduleTime" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" "SignatureUpdateCatchupInterval" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\SpyNet" "DisableBlockAtFirstSeen" "1"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "LocalSettingOverrideSpynetReporting" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReporting" "0"
Call :multisz "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReportingLocation" "0"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SubmitSamplesConsent" "2"
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\DefenderApiLogger" "Start" "0"
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\DefenderAuditLogger" "Start" "0"
:: SmartScreen
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" 0
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" 0
Call :dword "HKLM\OG_DEFAULT\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" 0
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" 0
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "PreventOverride" 0
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Policies\Microsoft\Edge" "SmartScreenEnabled" 0
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows Security Health\State" "AppAndBrowser_StoreAppsSmartScreenOff" 0
Call :sz "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "SmartScreenEnabled" "Off"
Call :sz "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "SmartScreenEnabled" "Off"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" "EnabledV9" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" "PreventOverride" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" "EnabledV9" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" "PreventOverride" 0
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\System" "EnableSmartScreen" "0"
Call :sz "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControl" "Anywhere"
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControlEnabled" "0"
:: Toplu REgler
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "AutoEndTasks" 1 & :: Kapatma i�leminde uygulamalar a��k ise otomatik kapat ve bekleme s�resi azalt�l�yor
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "HungAppTimeout" "1000" & :: Uygulamalar cevap vermedi�i zaman g�revi sonland�r se�ene�ine bas�lmadan �nceki bekleme s�resini k�salt�r.
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "WaitToKillAppTime" "2000" & :: Bilgisayar kapat�l�rken ya da oturumdan ��k�l�rken kullan�c� uygulamalar�n�n kapat�lmas� i�in sistem bekleme s�resini k�salt�r.
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "LowLevelHooksTimeout" "1000" & :: Cevap vermeyen hizmetlerin kapat�lmas�ndan �nceki sistem bekleme s�resini k�salt�r.
Call :sz "HKLM\OG_SYSTEM\ControlSet001\Control" "WaitToKillServiceTimeout" "2000" & :: Bilgisayar�n kapat�lmas� s�ras�nda durdurulacak hizmetler uyar�s� geldi�inde, uygulamalar�n kapanmas� i�in beklenen s�reyi k�salt�r.
Call :sz "HKLM\OG_NTUSER\Control Panel\Desktop" "MenuShowDelay" "8" & :: Men� g�sterimi bekleme s�resini azalt�r
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoLowDiskSpaceChecks" 1 & :: D���k Depolama alan� uyar�s� devre d��� b�rak�l�yor... 
Call :sz "HKLM\OG_NTUSER\Control Panel\Mouse" "MouseHoverTime" 8 & :: Farenizle birlikte bir nesnenin �zerine geldi�inizde g�r�len a��klaman�n ��k�� s�resini k�salt�r
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "LinkResolveIgnoreLinkInfo" 1 & :: Bilgisayar�n�zda mevcut olmayan programlara ait k�sayollar�n ba�lant�s�n�n Windows taraf�ndan bo�a vakit harcanarak aranmas�n� �nler
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveSearch" 1 & :: K�sayol ba�lant� sorununu ��zmek i�in Windows'un diski aramas�n� �nler
Call :dword "HKLM\OG_NTUSER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoResolveTrack" 1 & :: K�sayol ba�lant� sorununu ��zmek i�in Windows'un NTFS dosya sisteminin izleme �zelli�ini kullanmas�n� engeller
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Power" "HiberbootEnabled" 0 & :: Hiberboot Devre D��� b�rak�l�yor
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" 0 & :: Prefetch devre d��� b�rak�l�yor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" 0 & :: Prefetch devre d��� b�rak�l�yor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" 0 & :: Startup Delay (Ba�lang�� Gecikmesi) devre d��� b�rak�l�yor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" 0 & :: Qos Limiti Devre D��� b�rak�l�yor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB1" 0 & :: SMB 1-2 Devre D��� b�rak�l�yor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB2" 0 & :: SMB 1-2 Devre D��� b�rak�l�yor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\FileSystem" "LongPathsEnabled" 1 & :: Windows 255 Karakter S�n�r� devre d��� b�rak�l�yor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableSR" 1 & :: Sistem geri y�kleme kapat�l�yor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" 0 & :: Automatic Diagnostic Logger (Otomatik Te�his Kaydedici) devre d��� 
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management" "ClearPageFileAtShutdown" "1" & :: Kapatma s�ras�nda Pagefile dosyalar�n� temizle
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" "EnableActiveProbing" "0" & :: Kapatma s�ras�nda Pagefile dosyalar�n� temizle
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" "StartupDelayInMSec" "0" & :: :: Disabled Startup Delay
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnablePrefetcher" "0" & :: Prefetch Kapat
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" "EnableSuperFetch" "0" & :: Prefetch Kapat
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Psched" "NonBestEffortLimit" "0" & :: Qos Limit Kald�r
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB1" "0" & :: SMB1-2 Kapatma
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Services\LanmanServer\Parameters" "SMB2" "0" & :: SMB1-2 Kapatma
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\FileSystem" "LongPathsEnabled" "1" & :: Windows 255 Karakter S�n�r�n� Kald�rma
Call :sz "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" "ModRiskFileTypes" ".bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd" & :: Uygulamalar a��l�rken g�venlik uyar�lar� devre d��� b�rak�ls�n
Call :delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" & :: Metadata Tracking delete
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\System" "EnableActivityFeed" "0" & :: Timeline Kapat
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" "Start" "0" & :: Automatic Diagnostic Logger (Otomatik Te�his Kaydedici) devre d��� 
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\WMI\Autologger\SQMLogger" "Start" "0" & :: ��letim sistemi �ny�kleme i�leminde meydana gelen olaylar� kaydeder.
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy" "1" & :: Reklam kimli�i etkinli�i kapat�l�yor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices" "TCGSecurityActivationDisabled" "0" & :: Windows'un Geli�mi� Depolama ayg�tlar�n� etkinle�tirmesine izin verme
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" "1" & :: Windows Hata Raporlama devre d��� b�rak�l�yor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" "value" "0" & :: Wifi Hotspot Raporlama devre d��� b�rak�l�yor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" "value" "0" & :: G�venli Wifi noktalar�na otomatik ba�lan devre d��� b�rak�l�yor..
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" "0" & :: Windows Reklam Kimli�ini devre d��� b�rak�l�yor...
Call :dword "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "HideSCAHealth" "1" & :: G�venlik ve Bak�m simgesi devre d��� b�rak�l�yor...
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Session Manager\Power" "HiberbootEnabled" "0" & :: Hiberboot Devre D��� 
Call :dword "HKLM\OG_SYSTEM\ControlSet001\Control\Power" "HibernateEnabled" "0" & :: Haz�rda bekletme �zelli�i Devre D���
Call :dword "HKLM\OG_SOFTWARE\Microsoft\SQMClient\Windows" "CEIPEnable" "0" & :: M��teri Deneyim Program�n� devre d��� b�rak�r
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\SQMClient\Windows" "CEIPEnable" "0" & :: M��teri Deneyim Program�n� devre d��� b�rak�r
Call :binary "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "Link" "00000000" & :: K�sayol yaz�s� kald�r�l�yor...
Call :dword "HKLM\OG_SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" "DisableSR" "1" & :: Sistem geri y�kleme kapat�r
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Photos.8wekyb3d8bbwe" Disabled 1 & ::Foto�raflar uygulamas� arka planda �al��maz
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Photos.8wekyb3d8bbwe" SleepDisabled 1 & ::Foto�raflar uygulamas� arka planda �al��maz
Call :dword "HKLM\OG_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Photos.8wekyb3d8bbwe" DisabledByUser 1 & :: Foto�raflar uygulamas� arka planda �al��maz
:: eklentiler
Call :sz "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" "update_url" "https://clients2.google.com/service/update2/crx" & :: UBlock Origin
Call :sz "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" "update_url" "https://clients2.google.com/service/update2/crx" & :: HTTPS Everywhere 
Call :sz "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" "update_url" "https://clients2.google.com/service/update2/crx" & :: Clear URL's
:: Sahipli�i al
Call :vesz "HKLM\OG_SOFTWARE\Classes\*\shell\runas" "Sahipli�i Al" 
Call :sz "HKLM\OG_SOFTWARE\Classes\*\shell\runas" "Icon" "imageres.dll,73" 
Call :sz "HKLM\OG_SOFTWARE\Classes\*\shell\runas" "NoWorkingDirectory" "" 
Call :vesz "HKLM\OG_SOFTWARE\Classes\*\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F" 
Call :sz "HKLM\OG_SOFTWARE\Classes\*\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" && ica \"%%%%1\" /grant administrators:F"
Call :vesz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas" "Sahipli�i Al"
Call :sz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas" "Icon" "imageres.dll,73"
Call :sz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas" "NoWorkingDirectory" ""
Call :vesz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas\command" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t"
Call :sz "HKLM\OG_SOFTWARE\Classes\Directory\shell\runas\command" "IsolatedCommand" "cmd.exe /c takeown /f \"%%%%1\" /r /d y && ica \"%%%%1\" /grant administrators:F /t"
Call :sz "HKLM\OG_SOFTWARE\Classes\.bat\ShellNew" "NullFile" "" & :: Sa� t�k Yeni b�l�m�ne Bat dosyas� olu�turma ekle
::3D Nesneler
Call :delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
Call :delete "HKLM\OG_SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
timeout /t 7 /nobreak > NUL
Call :RegTopla
goto WindowsEditMenu

:: ����������������������������������������������������������������������������������������������������������������������������������
::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:katilimsizonline
powershell -command "Start-Process '%konum2%\Ekler\On.Katilimsiz.bat'
goto :eof

:katilimsizoffline
powershell -command "Start-Process '%konum2%\Ekler\Off.Katilimsiz.bat'
goto :eof

:konum2
cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum2=%%a
set konum2=%konum2:~0,-6%
goto :EOF

:MerkezWim
echo  %ESC%[90m�%ESC%[0m %RGB%[32mINDEX%RGB%[0m %ESC%[90m�%ESC%[0m %RGB%[32mM�MAR�%RGB%[0m %ESC%[90m�%ESC%[0m %RGB%[32m   S�R�M%RGB%[0m    %ESC%[90m�%ESC%[0m  %RGB%[32mD�L%RGB%[0m   %ESC%[90m�%ESC%[0m    %RGB%[32mED�T%RGB%[0m     %ESC%[90m�%ESC%[0m    %RGB%[32m�S�M%RGB%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%MerkezWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:%%a ^| findstr /i Modified') do (
								echo  %ESC%[90m�����������������������������������������������������������������������������������������������͹%ESC%[0m
								echo      %RGB%[92m%%a%RGB%[0m      %RGB%[33m%%b%RGB%[0m    %RGB%[36m %%d.%%e%RGB%[0m    %RGB%[33m%%f%RGB%[0m    %RGB%[36m%%h%RGB%[0m  %RGB%[37m %%g%RGB%[0m
								)
							)
						)
					)
				)
			)
		)
	)
)
GOTO :EOF

:degisken1
set /p MerkezWim=%RGB%[97m  %RGB%%RGB%[92m Klas�r veya Dosya yolu : %RGB%[0m
	if %MerkezWim%==x GOTO menu
	if %MerkezWim%==X GOTO menu
	
echo %MerkezWim%\ > %konum2%\Edit\Logs\Slash.txt
Find /C /I "\\" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set MerkezWim=%MerkezWim:~0,-1%
						echo [%date% - %time%] ^| degisken1 ^| ISO kal�b�ndan yol verildi. %MerkezWim% >> %konum2%\Logs
						DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL)
Find "boot.wim" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken1 ^| boot.wim dosyas� tan�mland�. %MerkezWim% >> %konum2%\Logs
						goto :eof)
Find "install" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken1 ^| install.wim dosya yolu direkt tan�mland�. %MerkezWim% >> %konum2%\Logs
						goto :eof)
dir /b %MerkezWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set MerkezWim="%MerkezWim%\sources\install.wim")
	if %errorlevel%==1 (set MerkezWim="%MerkezWim%\sources\install.esd")
echo [%date% - %time%] ^| degisken1 ^| �maj klas�r yolu verildi. %MerkezWim% >> %konum2%\Logs
goto :eof

:degisken2
set /p EkleWim=%RGB%[97m  %RGB%%RGB%[92m Klas�r veya Dosya yolu : %RGB%[0m
	if %EkleWim%==x GOTO menu
	if %EkleWim%==X GOTO menu

echo %EkleWim%\ > %konum2%\Edit\Logs\Slash.txt
Find /C /I "\\" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set EkleWim=%EkleWim:~0,-1%
						echo [%date% - %time%] ^| degisken2 ^| ISO kal�b�ndan yol verildi. %EkleWim% >> %konum2%\Logs
						DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL)
Find "install" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set EkleWim=%EkleWim%
						echo [%date% - %time%] ^| degisken2 ^| install.wim dosya yolu direkt tan�mland�. %EkleWim% >> %konum2%\Logs
						DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL
						goto :eof)
dir /b %EkleWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set EkleWim="%EkleWim%\sources\install.wim")
	if %errorlevel%==1 (set EkleWim="%EkleWim%\sources\install.esd")
echo [%date% - %time%] ^| degisken2 ^| �maj klas�r yolu verildi. %EkleWim% >> %konum2%\Logs
goto :eof

:degisken3
mode con cols=90 lines=20
echo 
echo  %RGB%[96m �rnek:%RGB%%RGB%[33m "C:\OgnitorenKs.Toolbox\Edit\Mount"%RGB%[0m
set /p Mount=%ESC%[97m  %ESC%%ESC%[92m Imaj klas�r yolu : %ESC%[0m
	if %Mount%==x GOTO WindowsEditMenu
	if %Mount%==X GOTO WindowsEditMenu
echo [%date% - %time%] ^| degisken3 ^| Mount klas�r yolu tan�mland�. Mount=%Mount% >> %konum2%\Logs
goto :eof

:degisken4
set /p MerkezWim=%RGB%[97m  %RGB%%RGB%[92m Klas�r veya Dosya yolu : %RGB%[0m
	if %MerkezWim%==x GOTO menu
	if %MerkezWim%==X GOTO menu
	
echo %MerkezWim%\ > %konum2%\Edit\Logs\Slash.txt
Find /C /I "\\" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (echo %ESC%[91m HATA! ISO dosyas� ba�lanamaz.
						echo %ESC%[92m Klas�re ��kar�p deneyiniz.
						echo [%date% - %time%] ^| degisken4 ^| HATA! ^> ISO kal�b� ba�lanmaya �al��t�. MerkezWim=%MerkezWim% >> %konum2%\logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
Find "boot.wim" %konum2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%konum2%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| degisken4 ^| boot.wim dosya yolu tan�mland�. MerkezWim=%MerkezWim% >> %konum2%\logs
						goto :eof)
dir /b %MerkezWim%\sources\boot.wim > NUL 2>&1
	if %errorlevel%==0 (set MerkezWim="%MerkezWim%\sources\boot.wim")
	if %errorlevel%==1 (set MerkezWim="%MerkezWim%\boot.wim")
echo [%date% - %time%] ^| degisken4 ^| �maj klas�r yolu verildi. MerkezWim=%MerkezWim% >> %konum2%\logs
Dism /Get-WimInfo /WimFile:%MerkezWim% /Index:1 > %konum2%\Edit\Logs\setupindex.txt
FIND "Setup" %konum2%\Edit\Logs\setupindex.txt > NUL 2>&1
	if %errorlevel%==0 (set index=1)
	if %errorlevel%==1 (set index=2)
echo [%date% - %time%] ^| degisken4 ^| Setup index numaras� %index% tespit edildi. MerkezWim=%MerkezWim% >> %konum2%\logs
DEL /F /Q /A "%konum2%\Edit\Logs\setupindex.txt" > NUL 2>&1
cls
goto :eof

::---------------------------------------------------------------------------------------------------------------------------------------------------------
:PowerRun
set PowerRun=%konum2%\Files\PowerRun.exe /SW:0 %SystemRoot%\system32\cmd.exe /c
goto :EOF


:SetupDownload
%konum2%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=1WSaIkfQdiBywEYGguZEy_8X_jcDu--sN" -O %konum2%\Download\Setup.zip
powershell -command "Expand-Archive -Force '%konum2%\Download\Setup.zip' '%konum2%\Files'"
echo [%date% - %time%] ^| SetupDownload ^| Setup.zip dosyas� indirildi >> %konum2%\logs
goto :eof

:icodownload
echo 
%konum2%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=1_Vcmp6xUwlqwuUdAjscS9bnGEi_XW24G" -O %konum2%\Files\Newico.zip
echo [%date% - %time%] ^| icodownload ^|  Newico.zip dosyas� indirildi >> %konum2%\logs
goto :eof

:: ========================================================================================================================================================
:imagexexport
mode con cols=99 lines=30
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
echo    %ESC%[33m (%~4 %~5)%ESC%%ESC%[32m birle�tirme i�lemi ger�ekle�tiriliyor...%ESC%[0m
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͼ%ESC%[0m
echo [%date% - %time%] ^| AIO Maker ^| "%~3" dosyas�na "%~1" dosyas�ndan "%~4 %~5" s�r�m� entegre edildi >> %konum2%\Logs
Dism /Export-Image /SourceImageFile:%~1 /SourceIndex:%~2 /DestinationImageFile:%~3 /DestinationName:"%~4" /Compress:Max
::%konum2%\Files\imagex.exe /export "%~1" %~2 "%~3" "%~4 %~5"
goto :eof

::---------------------------------------------------------------------------------------------------------------------------------------------------------
::  %~1: Eklewim | %~2: %%a(indexnumaralar�) | %~3: (MerkezWim) | %~4: %%c(S�r�m ismi) | %~5: %%b(S�r�m mimarisi)" |
:: ========================================================================================================================================================

:esdtowim
cls
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͻ%ESC%[0m
echo    %ESC%[32m Index%ESC%%ESC%[33m %~2 %ESC%%ESC%[32m%ESC%%ESC%[33m (%~3 %~4)%ESC%%ESC%[32m d�n��t�r�l�yor...%ESC%[0m
echo  %ESC%[90m�����������������������������������������������������������������������������������������������ͼ%ESC%[0m
dir /b %konum2%\Edit\ESDtoWIM\install.wim > NUL 2>&1
	if %errorlevel%==0 (echo ESDtoWIM ^| HATA! Mevcut install.wim dosyas� �zerine ekleme i�lemi ger�ekle�tirildi %~1 %~2 %~3 %~4 >> %konum2%\logs)
Dism /Export-Image /SourceImageFile:"%~1" /SourceIndex:%~2 /DestinationImageFile:%konum2%\Edit\ESDtoWIM\install.wim /Compress:max /CheckIntegrity
timeout /t 1 /nobreak > NUL
goto :eof
::---------------------------------------------------------------------------------------------------------------------------------------------------------
::  %~1: MerkezWim | %~2: %%a(indexnumaralar�) | %~3: %%c(S�r�m ismi) | %~4: %%b(S�r�m mimarisi)" |
:: ========================================================================================================================================================

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

::---------------------------------------------------------------------------------------------------------------------------------------------------------

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0

:menuRGB
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set RGB=%%b
  exit /B 0
)
exit /B 0


::---------------------------------------------------------------------------------------------------------------------------------------------------------


:PasifeAlinanlar
