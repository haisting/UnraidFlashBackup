@echo on

REM Specify the source folder path
set "source_folder=\\ALEXSERVER\flash"

REM Specify the destination folder path
set "destination_path=C:\Users\alexh\Desktop\Unraid Flash Backups"

REM Get the current date
for /F "tokens=2-4 delims=/ " %%A in ('date /T') do (
  set "day=%%A"
  set "month=%%B"
  set "year=%%C"
)

REM Create the folder name using the date
set "folder_name=alexserverBackup_%year%-%month%-%day%"

REM Create the folder in the specified location
mkdir "%destination_path%\%folder_name%"

REM Copy the contents of the source folder to the destination folder
xcopy "%source_folder%\*" "%destination_path%\%folder_name%\" /E /I /Y

timeout 3

REM Zip the new folder
"C:\Program Files\7-Zip\7z.exe" a "%destination_path%\%folder_name%.zip" "%destination_path%\%folder_name%"

REM Remove the original folder
rd /s /q "%destination_path%\%folder_name%"