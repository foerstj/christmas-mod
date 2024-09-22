:: This script is supposed to be executed from your DS installation folder.
:: TankCreator is expected to be in a sibling dir.

:: name of mod
set mod=Christmas
:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\DSLOA\%mod%.dsres"
del "%ds%\DSLOA\%mod%-nomusic.dsres"
