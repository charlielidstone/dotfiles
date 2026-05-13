@echo off
setlocal

set "NVIM_DEST=%LOCALAPPDATA%\nvim"
set "NVIM_SOURCE=%~dp0nvim"

echo.
echo Neovim config setup
echo Source : %NVIM_SOURCE%
echo Target : %NVIM_DEST%
echo.

if not exist "%NVIM_SOURCE%" (
    echo ERROR: Could not find 'nvim' folder next to this script.
    echo Make sure you're running from the dotfiles repo root.
    exit /b 1
)

if exist "%NVIM_DEST%" (
    rem Check if it's a junction/symlink by testing with fsutil
    fsutil reparsepoint query "%NVIM_DEST%" >nul 2>&1
    if not errorlevel 1 (
        echo Existing junction/symlink found - removing it.
        rmdir "%NVIM_DEST%"
    ) else (
        echo Existing config found - backing up to %NVIM_DEST%.bak
        if exist "%NVIM_DEST%.bak" rmdir /s /q "%NVIM_DEST%.bak"
        rename "%NVIM_DEST%" nvim.bak
    )
)

mklink /J "%NVIM_DEST%" "%NVIM_SOURCE%"
if errorlevel 1 (
    echo ERROR: Failed to create junction.
    exit /b 1
)

echo.
echo Done! Linked %NVIM_DEST% -^> %NVIM_SOURCE%
echo.
echo Next steps:
echo   1. Open a terminal and run: nvim
echo   2. lazy.nvim will install itself and all plugins automatically on first launch.

endlocal
