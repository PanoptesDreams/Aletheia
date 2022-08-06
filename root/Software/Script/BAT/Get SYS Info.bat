::
:: Panoptes Operator | help@panoptes.live
::
:: August 8, 2022 | August 8, 2022
::
:: ▲ Gather system information
:: faulty
::

:: Hide command prompt, Name terminal window
@ECHO OFF
TITLE Current System Information
ECHO.


ECHO ==================
ECHO Operating System
ECHO ==================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"


ECHO ==================
ECHO Hardware
ECHO ==================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,sizewmic path win32_videocontroller get name
wmic path win32_VideoController get CurrentHorizontalResolution,CurrentVerticalResolution


ECHO ==================
ECHO Networking
ECHO ==================
ipconfig | findstr IPv4ipconfig

PAUSE