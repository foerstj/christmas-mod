:: This script is supposed to be executed from your DS installation folder.
:: TankCreator is expected to be in a sibling dir.

:: name of mod
set mod=Christmas
:: path of DSLOA documents dir (where Bits are)
set doc_dsloa=%USERPROFILE%\Documents\Dungeon Siege LoA
:: path of DS installation
set ds=.
:: path of TankCreator
set tc=..\TankCreator

call "%doc_dsloa%"\Bits\cleanup.bat %*

:: param
set mode=%1
echo %mode%

if "%mode%"=="light" (
  call "%doc_dsloa%\Bits\build-nomusic.bat"
)
if "%mode%"=="" (
  call "%doc_dsloa%\Bits\build-withmusic.bat"
)
if "%mode%"=="release" (
  call "%doc_dsloa%\Bits\build-withmusic.bat"
  call "%doc_dsloa%\Bits\build-nomusic.bat"
)
