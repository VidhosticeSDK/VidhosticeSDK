@echo off
set VidhosticeSDK="%~dp0\Vidhostice SDK"
color a
cls
type %VidhosticeSDK%\info.txt

if not exist "%~1" goto error

:loop

set "TRUE="
if %~x1==.gdm  set TRUE=1
if %~x1==.grle set TRUE=1
if defined TRUE (
    if exist "%~n1.png" (
        echo File "%~n1.png" already exists.
        choice /C YN /M "Override it? Press Y for Yes, N for No."
        echo.
        if errorlevel 2 goto break
    )
    echo Convert "%~1" to "%~n1.png"
    echo.

    %VidhosticeSDK%\grleConverter.exe "%~1" -out "%~n1.png"
) else (
    echo soubor neni typu gdm ani grle
)
echo.

:break

shift
if exist "%~1" goto loop

goto end

:error
echo ERROR: Missing argument gdm or grle file
echo.

:end
echo END.
pause
