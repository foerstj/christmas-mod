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

:: build
call "%bits%\build.bat" %*

::pause

:: Run it!
"%ds%\DSLOA.exe" nointro=true map=map_world

:: Cleanup resources so as not to confuse Siege Editor
call "%bits%\cleanup.bat" %*
