:: This script is supposed to be executed from your DS installation folder.
:: TankCreator is expected to be in a sibling dir.

:: name of mod
set mod=Christmas
:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

call "%bits%\cleanup.bat" %*

:: param
set mode=%1
echo %mode%

if "%mode%"=="light" (
  call "%bits%\build-nomusic.bat"
)
if "%mode%"=="" (
  call "%bits%\build-withmusic.bat"
)
if "%mode%"=="release" (
  call "%bits%\build-withmusic.bat"
  call "%bits%\build-nomusic.bat"
)
