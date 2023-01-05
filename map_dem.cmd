@echo off
set "VidhosticeSDK=%~dp0\Vidhostice SDK"
color a
cls
type "%VidhosticeSDK%\info.txt"

if not exist "%~1" goto error

:loop

if %~x1==.png (
    if exist "%~n1.obj" (
        echo File "%~n1.obj" already exists.
        choice /C YN /M "Override it? Press Y for Yes, N for No."
        echo.
        if errorlevel 2 goto break
    )
    echo Convert "%~1" to "%~n1.obj"
    echo.

    REM ImageMagick 7.1.0-9 Q16-HDRI x64 2021-10-03 https://imagemagick.org
    "%VidhosticeSDK%\convert.exe" "%~1" -depth 16 gray:temporary_data_r16

    REM https://github.com/ryobg/obj2hmap Very simple convertor of Wavefront's obj files to displacement map
    "%VidhosticeSDK%\hmap2obj.exe" temporary_data_r16 "%~n1.obj" 2049 2049 -2048 0 -2048 2048 255 2048 --absolute

    erase temporary_data_r16
)

if %~x1==.obj (
    if exist "%~n1.png" (
        echo File "%~n1.png" already exists.
        choice /C YN /M "Override it? Press Y for Yes, N for No."
        echo.
        if errorlevel 2 goto break
    )
    echo Convert "%~1" to "%~n1.png"
    echo.

    REM https://github.com/ryobg/obj2hmap Very simple convertor of Wavefront's obj files to displacement map
    "%VidhosticeSDK%\obj2hmap.exe" "%~1" temporary_data_r16 2049 0xFFFF 2049 y u16 0 255 

    REM ImageMagick 7.1.0-9 Q16-HDRI x64 2021-10-03 https://imagemagick.org
    "%VidhosticeSDK%\convert.exe" -size 2049x2049 -depth 16 gray:temporary_data_r16 "%~n1.png"

    erase temporary_data_r16
)
echo.

:break

shift
if exist "%~1" goto loop

goto end

:error
echo ERROR: Missing argument map_dem file
echo.

:end
echo END.
pause


REM https://stackoverflow.com/questions/22393031/get-image-dimensions-using-batch-script-imagemagick
REM
REM for /f "tokens=1-2" %%i in ('identify -ping -format "%%w %%h" logo:') do set W=%%i & set H=%%j
REM echo width: %W%
REM echo height: %H%

REM https://legacy.imagemagick.org/discourse-server/viewtopic.php?t=21871
REM
REM magick identify -format "%wx%h" map_dem.png
