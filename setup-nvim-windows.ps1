# Neovim config setup for Windows
# Run from PowerShell: .\setup-nvim-windows.ps1

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$nvimConfigDest = "$env:LOCALAPPDATA\nvim"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$nvimSource = Join-Path $scriptDir "nvim"

Write-Host "`nNeovim config setup" -ForegroundColor Cyan
Write-Host "Source : $nvimSource"
Write-Host "Target : $nvimConfigDest`n"

# Verify the nvim source folder is present
if (-not (Test-Path $nvimSource)) {
    Write-Error "Could not find 'nvim' folder next to this script. Make sure you're running from the dotfiles repo root."
    exit 1
}

# Check for an existing config
if (Test-Path $nvimConfigDest) {
    $existing = Get-Item $nvimConfigDest
    if ($existing.LinkType -eq "Junction" -or $existing.LinkType -eq "SymbolicLink") {
        Write-Host "Existing symlink/junction found at $nvimConfigDest — removing it." -ForegroundColor Yellow
        Remove-Item $nvimConfigDest -Force
    } else {
        $backup = "$nvimConfigDest.bak"
        Write-Host "Existing config found — backing up to $backup" -ForegroundColor Yellow
        if (Test-Path $backup) { Remove-Item $backup -Recurse -Force }
        Rename-Item $nvimConfigDest $backup
    }
}

# Create junction (no admin rights required)
New-Item -ItemType Junction -Path $nvimConfigDest -Target $nvimSource | Out-Null

Write-Host "Done! Linked $nvimConfigDest -> $nvimSource" -ForegroundColor Green
Write-Host "`nNext steps:"
Write-Host "  1. Open a terminal and run: nvim"
Write-Host "  2. lazy.nvim will install itself and all plugins automatically on first launch."
