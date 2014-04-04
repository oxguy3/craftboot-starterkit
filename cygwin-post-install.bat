@echo off
echo Please enter the directory where Cygwin is installed on your computer.
echo By default, Cygwin installs to "C:\cygwin" (32-bit) or "C:\cygwin64" (64-bit).
set /p CygwinInstallDir=Your Cygwin installation: 

if not exist %CygwinInstallDir%\bin\bash.exe (
echo Error: Could not find %CygwinInstallDir%\bin\bash.exe! Verify that Cygwin is installed at %CygwinInstallDir% with default packages! Shutting down...
pause
exit
)

>assoc .sh=bashscript
>ftype bashscript=%CygwinInstallDir%\bin\bash.exe --login -i -c 'cd "$(dirname "$(cygpath -u "%%1")")"; bash "$(cygpath -u "%%1")"'
pause