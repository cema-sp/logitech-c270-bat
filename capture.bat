:: Camera IDs
:: 7&25d1bbbb&0
:: 7&f6a0945&0
:: 6&6571405&0
:: 7&3252b250&0
:: 6&32b5799d&0
:: 6&6571405&0

echo off
:: set prefix and suffix
for /F "delims== tokens=1,2" %%G in (config.conf) do set %%G=%%H

:: create index
set /A index=1
setlocal ENABLEDELAYEDEXPANSION

:: loop through file
for /F "tokens=*" %%l in (cameras.conf) do (
	echo on
	@start /b ffmpeg.exe -y -rtbufsize 256M -s 1280x960 -f dshow ^
		-i video="%prefix%%%l%suffix%" -q:v 1 -vframes 1 photo_0!index!.jpeg
	echo off
	set /A index+=1
)
endlocal

echo on
echo "Capturing photos"

pause
