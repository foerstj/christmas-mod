:: name of mod
set mod=A Christmas Mod
:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\DSLOA\%mod%.dsres"
del "%ds%\DSLOA\%mod%-nomusic.dsres"
