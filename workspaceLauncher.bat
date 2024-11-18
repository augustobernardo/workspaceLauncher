@echo off

@REM it will check if the software is open, if it isn't, it will open it with message Starting, and wait an input to execute the next command
@REM if the software is open, it will show a message that the software is already open
@REM if you want to stop the loop, just close the cmd window

@REM Open VS Code
tasklist /FI "IMAGENAME eq Code.exe" 2>NUL | find /I /N "Code.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Code is already open
) else (
    echo Starting Code
    start "" "c:\Users\%USERNAME%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
)

@REM Open Chrome
tasklist /FI "IMAGENAME eq chrome.exe" 2>NUL | find /I /N "chrome.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Chrome is already open
) else (
    echo Starting Chrome
    start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
)

@REM Open Notepad++
tasklist /FI "IMAGENAME eq notepad++.exe" 2>NUL | find /I /N "notepad++.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Notepad++ is already open
) else (
    echo Starting Notepad++
    start "" "c:\Program Files (x86)\Notepad++\notepad++.exe"
)

@REM Open microsoft edge
tasklist /FI "IMAGENAME eq msedge.exe" 2>NUL | find /I /N "msedge.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Edge is already open
) else (
    echo Starting Edge
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
)

@REM Open Sap Logon - C:\Program Files (x86)\SAP\FrontEnd\SAPgui\saplogon.exe
tasklist /FI "IMAGENAME eq saplogon.exe" 2>NUL | find /I /N "saplogon.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Sap Logon is already open
) else (
    echo Starting Sap Logon
    start "" "C:\Program Files (x86)\SAP\FrontEnd\SAPgui\saplogon.exe"
)

pause