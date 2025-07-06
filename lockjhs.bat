::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDFVQg2WNFivFLQL7e3p7tajp14WQO0vRIPU3bvAKeMcig==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJgZksaHErQXA==
::ZQ05rAF9IBncCkqN+0xwdVsEAlTMbCXrZg==
::ZQ05rAF9IAHYFVzEqQI6KRVARESRKXm7EbAZ+umb
::eg0/rx1wNQPfEVWB+kM9LVsJDC6DMn+yRoYJ+uns6u+Voy0=
::fBEirQZwNQPfEVWB+kM9LVsJDC6qDws=
::cRolqwZ3JBvQF1fEqQIaKRVARESxKXm7EbAZ+umb
::dhA7uBVwLU+EWHO3tHA1OBpGQgPCH260ErAOiA==
::YQ03rBFzNR3SWATE3moDSA==
::dhAmsQZ3MwfNWATE3moDSA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDFVQg2WNFivFLQL7e3p7tajp14WQO0vRJ/ayrGcbuUL7yU=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@ECHO OFF
 
title Folder Locker
 
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
 
if NOT EXIST Locker goto MDLOCKER
 
:CONFIRM

:: Create VBS script for confirmation input box
set "confirmfile=%temp%\confirm.vbs"
echo Set objArgs = WScript.Arguments > "%confirmfile%"
echo strInput = InputBox("Are you sure you want to Lock the folder?", "Confirm Lock", "Y") >> "%confirmfile%"
echo WScript.Echo strInput >> "%confirmfile%"
for /f "delims=" %%c in ('cscript //nologo "%confirmfile%"') do set "cho=%%c"
del "%confirmfile%"

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

if NOT %pass%==Password89 goto FAIL

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

icacls lockjhs.bat /remove:d Everyone
