::
:: Argus Operator | help@panoptes.live
::
:: June 10, 2022 | June 10, 2022
::
:: Resets Microsoft Store
::


:: Clear terminal, Hide working directory, Set working directory to current, Name terminal window
CLS
@ECHO OFF
CD /D %~dp0
TITLE Microsoft Store Reset


:1
:: Start


ECHO Resetting Microsoft Store to functioning state...

START /wait MSReset.exe

:: Pauses CMD and waits for button press to continue
PAUSE


:0
:: Tells CMD to Exit
EXIT