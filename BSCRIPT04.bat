@echo off
setlocal


set sourceDir=C:\*.txt
set archiveDir=Z:\archive


if not exist %archiveDir% mkdir %archiveDir%


for %%f in (%sourceDir%) do (
    xcopy "%%f" "%archiveDir%" /D /Y
)


for /f "tokens=*" %%f in ('dir %archiveDir%\*.txt /O:-S /B') do (
    echo %%f
)


choice /c yn /m "Do you want to delete old, large files in the archive? (y/n)"
if errorlevel 2 goto NoDelete
if errorlevel 1 goto YesDelete

:YesDelete
del %archiveDir%\*.txt
echo Old, large files deleted.
goto End

:NoDelete
echo No files were deleted.
goto End

:End
pause
