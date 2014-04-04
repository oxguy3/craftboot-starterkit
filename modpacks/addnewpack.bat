@echo off

set /p CBPackDirName=Directory name for new modpack? 
if exist %CBPackDirName%/ (
echo Error: There is already a modpack with that name! Shutting down...
pause
exit
)
mkdir %CBPackDirName%
mkdir %CBPackDirName%/dist
mkdir %CBPackDirName%/src
xcopy /s meta/modpack.json %CBPackDirName%/modpack.json

set /p CBUseForge=Using Forge? (y/n) 
if "%CBUseForge"=="y" (
echo "Available versions of Forge:"
dir /b %AppData%/.minecraft/versions/*Forge*/
set /p CBForgeVersion=Version of Forge to use? (enter full name as listed)
::COPY THE FILES AND SHIT YO
)
pause