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

:: Compile resource file without music
rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\art" "%tmp%\Bits\art" /E
robocopy "%doc_dsloa%\Bits\world\contentdb" "%tmp%\Bits\world\contentdb" /E
robocopy "%doc_dsloa%\Bits\world\global" "%tmp%\Bits\world\global" /E
:: no music! :: robocopy "%doc_dsloa%\Bits\sound" "%tmp%\Bits\sound" /E
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\Resources\%mod%-nomusic.dsres" -copyright "CC-BY-SA 2021" -title "Christmas Mod" -author "Johannes Förstner"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
