@ECHO off
CD /d %~dp0\package

ECHO.
ECHO Installing Microsoft Visual C++ Redist
ECHO.

IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (GOTO 64) ELSE (IF "%PROCESSOR_ARCHITEW6432%"=="AMD64" (GOTO 86))

:: Install x86 and x64 versions
:64

ECHO 2005
START /wait 2005\vcredist_x86.exe /q
START /wait 2005\vcredist_x64.exe /q
ECHO.

ECHO 2008
START /wait 2008\vcredist_x86.exe /qb
START /wait 2008\vcredist_x64.exe /qb
ECHO.

ECHO 2010
START /wait 2010\vcredist_x86.exe /passive /norestart
START /wait 2010\vcredist_x64.exe /passive /norestart

ECHO 2012
START /wait 2012\vcredist_x86.exe /passive /norestart
START /wait 2012\vcredist_x64.exe /passive /norestart
ECHO.

ECHO 2013
START /wait 2013\vcredist_x86.exe /passive /norestart
START /wait 2013\vcredist_x64.exe /passive /norestart
ECHO.

ECHO 2015, 2017 ^& 2019 ^& 2022...
START /wait "2022 - 2019 - 2017 - 2015\vcredist_x86.exe" /passive /norestart
START /wait "2022 - 2019 - 2017 - 2015\vcredist_x64.exe" /passive /norestart
ECHO.

GOTO 0

:: Install x86 versions
:86

ECHO 2005
START /wait 2005\vcredist_x86.exe /q

ECHO 2008
START /wait 2008\vcredist_x86.exe /qb

ECHO 2010
START /wait 2010\vcredist_x86.exe /passive /norestart

ECHO 2012
START /wait 2012\vcredist_x86.exe /passive /norestart

ECHO 2013
START /wait 2013\vcredist_x86.exe /passive /norestart

ECHO 2015, 2017, 2019 ^& 2022
START /wait "2022 - 2019 - 2017 - 2015\vcredist_x86.exe" /passive /norestart


:: End
:0

EXIT