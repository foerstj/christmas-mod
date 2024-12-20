:: name of mod
set mod=Christmas
:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

set copyright=CC-BY-SA 2024
set title=%mod% Mod
set author=Johannes Förstner

:: Compile main resource file without music
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\art" "%tmp%\Bits\art" /E /xf *.psd
robocopy "%bits%\world\contentdb" "%tmp%\Bits\world\contentdb" /E
robocopy "%bits%\world\global" "%tmp%\Bits\world\global" /E
:: no music! :: robocopy "%bits%\sound" "%tmp%\Bits\sound" /E
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod%-nomusic.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
