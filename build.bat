:: path of Bits dir
set bits=%~dp0.

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
