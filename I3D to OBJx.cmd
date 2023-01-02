@echo off
set VidhosticeSDK="%~dp0\Vidhostice SDK"
color a
cls
type %VidhosticeSDK%\info.txt

if not exist "%~1" goto error

:loop

if %~x1==.shapes (
    echo Shape file "%~1"
    %VidhosticeSDK%\I3DShapesTool.exe -v "%~1"
    echo.
    if exist "%~n1" (
        %VidhosticeSDK%\i3d_to_mtl.py "%~n1"
    )
) else (
    echo Shape file "%~1.shapes"
    %VidhosticeSDK%\I3DShapesTool.exe -v "%~1.shapes"
    echo.
    %VidhosticeSDK%\i3d_to_mtl.py "%~1"
)
echo.

shift
if exist "%~1" goto loop

goto end

:error
echo ERROR: Missing argument shape file
echo.

:end
echo END.
pause
