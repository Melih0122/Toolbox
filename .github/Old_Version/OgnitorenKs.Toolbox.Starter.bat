::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJHGR50cpIRVoeR2FKWe7C7QQ6frHwO2Jq1kSRucxU5yV7ruBLOIc8nm1OLkq2HNOl9kJAjBLMCakYQM2pnZ+kG2JMtSgugzudmeO6EJ+EmZ75w==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZkk0
::ZQ05rAF9IBncCkqN+0xwdVsHAlbi
::ZQ05rAF9IAHYFVzEqQIfLxVdWAuQOWWRFfUo5+f37eWfwg==
::eg0/rx1wNQPfEVWB+kM9LVsJDCuFMmKuCacZ5sPor96IrUEfW/pf
::fBEirQZwNQPfEVWB+kM9LVsJDCuFMmKuCacZ5sPor96IrUEfW/pf
::cRolqwZ3JBvQF1fEqQIfLxVdWAuQOWWRFfUo5+f37eWfwg==
::dhA7uBVwLU+EWHEnKFE1MRJaDDG4CUWDJ4wwyYg=
::YQ03rBFzNR3SWATE20U+IQ9bXgGMF3j6MroT5Or094o=
::dhAmsQZ3MwfNWATE3OHsOx5NRQrCCVGPKIw90cTajw==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmsV54jLQJdQkS3Bl6UP5QlxMmb
::Zh4grVQjdCyDJGyX8VAjFDRTQg2WM3m/CJ4P1Mz+/OGTrV0he+UxcZvUyLGAC/Nd3krreZQizjRfgM5s
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
echo off
cls
mode con cols=15 lines=5
chcp 65001 >NUL 2>&1
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a
dir /b "%Location%\OgnitorenKs.Toolbox.bat" >NUL 2>&1
	if %errorlevel%==1 (goto error)
"%Location%\OgnitorenKs.Toolbox.bat"
exit

:error
Powershell -command (New-Object -ComObject Wscript.Shell).Popup("""HATA! 'OgnitorenKs.Toolbox.bat' dosyası bulunamadı""",0,"""HATA""",0x0)
goto :eof