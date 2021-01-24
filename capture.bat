@echo off
SET fileName="%~1"
if %fileName%=="" (
  echo "enter image file name without extension"
  exit
) else (
  adb shell screencap -p /sdcard/image.png
  adb pull /sdcard/image.png %fileName%.png
  adb shell rm /sdcard/image.png
)
