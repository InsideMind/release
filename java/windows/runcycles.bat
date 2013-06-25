@echo off
setlocal
set tee="C:\program files (x86)\Git\bin\tee.exe"
cd /d %~dp0%
for /f %%i in (log/number);do set /a version=1+%%i
set file=log/%version%.txt
echo writing to %file%
echo %version% >log/number
cycles | %tee% %file%
