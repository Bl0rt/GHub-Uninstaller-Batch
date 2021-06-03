@Echo off
Echo.
Echo.
Echo.
Echo.
Echo.
Echo IMPORTANT PLEASE MAKE SURE TO LOG INTO YOUR LOGITECH ACCOUNT AND SAVE ANY WANTED PROFILES VIA THE PROFILE SAVE
Echo.
Echo. 
Echo.
Echo. If you are returning after a restart please enter "2" for your selection.
Echo.
Echo.
Echo Or if you are finished and would like your settings automatically moved back to the correct folder,- 
Echo Please enter "C".
Echo.
Echo.
Echo If you would like to save your settings before uninstall please enter "Y" if not, enter "N"? 
Echo.
set /p PROGRAM= : 
goto %PROGRAM%
pause




:C

xcopy "C:\Users\%USERNAME%\Desktop\settings.json" "C:\Users\%USERNAME%\AppData\Local\LGHUB\settings.json"

Del "C:\Users\%USERNAME%\Desktop\settings.json"

Pause
Echo.
Echo.
Echo Complete!
Echo.
Echo Press enter to exit.
pause

Exit



:Y

xcopy "C:\Users\%USERNAME%\AppData\Local\LGHUB\settings.json" "C:\Users\%USERNAME%\Desktop"

Echo.
Echo There should now be a file on your desktop named "settings.json"
Echo Please do not move this folder as you may lose your settings. 
Echo I do not trust logitech on this one so please UPLOAD your profile through GHub before you continue deleting. 
Echo.
Echo. Press "Enter" to continue with the uninstall. 
pause

:N
Echo.
Echo.
Echo.
Echo The uninstaller will start shortly. Once finished please type "1" and press enter to continue complete uninstallation.
Echo.
Echo.
Echo.

cd C:\Program Files\LGHUB
start lghub_uninstaller.exe


Echo.
Echo Please make sure after running the uninstaller that all Logitech processes are ended in the task manager. 
Echo.
Echo. 
Echo.

set /p PROGRAM= Enter "1" to continue and completly uninstall, "2" to skip to installation or 0 to end and exit: 
goto %PROGRAM%


pause

:0

Exit


:1



DEL C:\Program Files\LGHUB
DEL C:\ProgramData\LGHUB
DEL C:\Users\%USERNAME%\AppData\Local\LGHUB
DEL C:\Users\%USERNAME%\AppData\Roaming\LGHUB
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{521c89be-637f-4274-a840-baaf7460c2b2}" /f
Echo Remaining Files have been deleted. 
Echo.
Echo.
Echo It is Highly reccomended that you restart. 
Echo Please enter "8" to go to restart instructions. 
Echo "0" To exit. 
Echo "2" to continue without restarting.

set /p PROGRAM= : 
goto %PROGRAM%
pause


:2


Echo.
Echo.
Echo If you would like to automatically download the latest version of GHub please enter "5" (Needs WinGet)
Echo If you would like to manually download the latest version of GHub please enter "3" 
Echo If you would like to Exit please enter "0"
set /p PROGRAM= : 
goto %PROGRAM%
pause


:3

start "" "https://www.logitechg.com/en-us/innovation/g-hub.html"

Exit


:5

Echo.
Echo.
Echo.
Echo. 
Echo You will need WinGet installed to complete the following.
Echo The latest verion can be found here https://github.com/microsoft/winget-cli/releases
Echo.
Echo If you have WinGet installed please. UPDATE Currently Logitech does not support this feature for GHub. 
Echo As of now the auto install will be held back until Logitech get themselves sorted. Please use the manual install. 
Echo Please enter "2" to go back or "0" to exit. 

set /p PROGRAM= : 
goto %PROGRAM%
pause


:F

Echo winget will go here when updated

Echo.
Echo.
Echo Please press enter when install is finished to exit program or "C" to install the saved settings folder. 
Echo. 

set /p PROGRAM= : 
goto %PROGRAM%
pause



:8 
Echo.
Echo.
Echo.
Echo Once the restart is complete, please start this program again and enter "2" for the first selection.
Echo.
Echo When restarting a popup will show that you are "Signing out" and will "Shut Down"
Echo I have tested this numerous times and all have restarted the computer normally. 
Echo The popup is due to the automation. 
Echo.
Echo Press enter to start restart.
Echo.
Echo.

pause

shutdown -r -t 20

Echo To cancel restart press enter. Do nothing to continue. 

pause

shutdown -a

Echo.
Echo.
Echo Enter 8 to begin restart again or 2 to continue without restarting. 
Echo. 

set /p PROGRAM= : 
goto %PROGRAM%
pause
