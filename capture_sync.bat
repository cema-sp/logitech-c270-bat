@echo off
set video=%1
set count=%2
@echo on

GOTO CASE_%count%
:CASE_6
	ffmpeg.exe -y -rtbufsize 256M -s 1280x960 -f dshow ^
		-video_device_number 5 -i video=%video% -q:v 1 -vframes 1 photo_06.jpeg
:CASE_5
	ffmpeg.exe -y -rtbufsize 256M -s 1280x960 -f dshow ^
		-video_device_number 4 -i video=%video% -q:v 1 -vframes 1 photo_05.jpeg
:CASE_4
	ffmpeg.exe -y -rtbufsize 256M -s 1280x960 -f dshow ^
		-video_device_number 3 -i video=%video% -q:v 1 -vframes 1 photo_04.jpeg
:CASE_3
	ffmpeg.exe -y -rtbufsize 256M -s 1280x960 -f dshow ^
		-video_device_number 2 -i video=%video% -q:v 1 -vframes 1 photo_03.jpeg
:CASE_2
	ffmpeg.exe -y -rtbufsize 256M -s 1280x960 -f dshow ^
		-video_device_number 1 -i video=%video% -q:v 1 -vframes 1 photo_02.jpeg
:CASE_1
:DEFAULT_CASE
	ffmpeg.exe -y -rtbufsize 256M -s 1280x960 -f dshow ^
		-video_device_number 0 -i video=%video% -q:v 1 -vframes 1 photo_01.jpeg
:END_CASE

@echo "Capturing %count% photos"

pause
