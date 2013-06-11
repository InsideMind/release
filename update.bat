@echo off

cd %~dp0%
set gitCmd="c:\Program Files (x86)\Git\bin\git.exe"
:: Needed so git can find any ssh keys
set HOME=%USERPROFILE%
call %gitCmd% add --all
call %gitCmd% commit -m "next version"
call %gitCmd% push

exit /B 0
