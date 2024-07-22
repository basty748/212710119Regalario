@echo off

:Menu
cls
echo Select a Windows utility to run:
echo 1. ipconfig
echo 2. tasklist
echo 3. taskkill
echo 4. chkdsk
echo 5. format
echo 6. defrag
echo 7. find
echo 8. attrib
set /p choice=Enter your choice (1-8): 

if %choice%==1 goto Ipconfig
if %choice%==2 goto Tasklist
if %choice%==3 goto Taskkill
if %choice%==4 goto Chkdsk
if %choice%==5 goto Format
if %choice%==6 goto Defrag
if %choice%==7 goto Find
if %choice%==8 goto Attrib
goto Menu

:Ipconfig
ipconfig
goto End

:Tasklist
tasklist
goto End

:Taskkill
set /p pid=Enter the PID to kill: 
taskkill /PID %pid%
goto End

:Chkdsk
set /p drive=Enter the drive letter to check (e.g., C:): 
chkdsk %drive%
goto End

:Format
set /p drive=Enter the drive letter to format (e.g., D:): 
format %drive%
goto End

:Defrag
set /p drive=Enter the drive letter to defrag (e.g., C:): 
defrag %drive%
goto End

:Find
set /p search=Enter the string to find: 
set /p file=Enter the file to search in: 
find "%search%" %file%
goto End

:Attrib
set /p file=Enter the file to change attributes: 
attrib %file%
goto End

:End
pause
goto Menu
