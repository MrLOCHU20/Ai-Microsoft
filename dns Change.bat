@echo off

:: Check for admin rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Requesting administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit
)

echo Running as Administrator...
echo Changing DNS for all active network adapters...

for /f "skip=3 tokens=1*" %%A in ('netsh interface show interface') do (
    if /I "%%B"=="Connected" (
        echo Setting DNS for interface: %%A

        netsh interface ipv4 set dns name="%%A" static 94.140.14.14 primary
        netsh interface ipv4 add dns name="%%A" 94.140.15.15 index=2
    )
)

echo.
echo DNS successfully updated!
pause