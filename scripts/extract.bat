@echo off
setlocal

:: Prompt for the .7z file path
set /p zip_file="Enter the path to the .7z file: "

:: Check if the file exists
if not exist "%zip_file%" (
    echo File not found!
    exit /b
)

:: Prompt for the destination folder
set /p dest_folder="Enter the destination folder: "

:: Check if the destination folder exists, if not, create it
if not exist "%dest_folder%" (
    echo Destination folder not found! Creating it...
    mkdir "%dest_folder%"
)

:: Extract the .7z file to the destination folder
7z e "%zip_file%" -o"%dest_folder%"

:: Print success message
echo Extraction complete.
pause
