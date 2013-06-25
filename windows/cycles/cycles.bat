@echo off
setlocal
set PATH=C:\program files (x86)\Java\jre7\bin;%PATH%

:: 
:: update the code
::
cd /d %~dp0
if exist isChecking goto :eof
echo %date% %time% >isChecking
set git="C:\program files (x86)\Git\bin\git.exe"
cd release
call %git% pull

::
:: check if we are running
::
cd /d %~dp0
if exist isRunning (
   echo already running
   erase isChecking
   goto :eof
)

::
:: start the app
::
echo %date% %time% >isRunning
erase isChecking
if exist current rmdir /q /s current
xcopy /e /i release current
call current\java\cycles.bat -port 2609 -publicLogHost build1.xenfund.com
erase isRunning
