@ECHO OFF
 
title Folder Locker
 
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
 
if NOT EXIST Locker goto MDLOCKER
 
:CONFIRM
 
echo Are you sure u want to Lock the folder(Y/N)
 
set/p "cho=>"
 
if %cho%==Y goto LOCK
 
if %cho%==y goto LOCK
 
if %cho%==n goto END
 
if %cho%==N goto END
 
echo Invalid choice.
 
goto CONFIRM
 
:LOCK
 
ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
 
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
 
echo Folder locked
 
goto End
 
:UNLOCK
 
echo Enter password to Unlock folder
 
:: Masked password input
set "psfile=%temp%\getpass.vbs"
echo Set objArgs = WScript.Arguments > "%psfile%"
echo strInput = InputBox("Enter password to Unlock folder", "Password") >> "%psfile%"
echo WScript.Echo strInput >> "%psfile%"
for /f "delims=" %%p in ('cscript //nologo "%psfile%"') do set "pass=%%p"
del "%psfile%"

if NOT %pass%==janiya goto FAIL

attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker

echo Folder Unlocked successfully
 
goto End
 
:FAIL
 
echo Invalid password
 
goto end
 
:MDLOCKER
 
md Locker
 
echo Locker created successfully
 
goto End
 
:End