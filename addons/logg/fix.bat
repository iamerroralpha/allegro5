@echo off

if [%1] == [mingw]   goto mingw
if [%1] == [mingw32] goto mingw
if [%1] == []        goto help

:nosup
echo Platform not supported by logg.
goto end

:help
echo.
echo Usage: fix platform
echo.
echo Where platform is one of:
echo     mingw32
echo.
goto end

:mingw
echo Configuring logg for Windows/MinGW...
echo #generated by fix.bat        > Makefile
echo include Makefile.mingw      >> Makefile
goto end

:end

