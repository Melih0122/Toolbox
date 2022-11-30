echo off
cls
title NonRemovable / OgnitorenKs

cd /d "%~dp0"

for /f %%a in ('"dir /b Python\Tools\NonRemovable\*"') do "Python\python.exe" "Python\Tools\NonRemovable\%%a"

exit

