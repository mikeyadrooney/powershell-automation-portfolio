# PowerShell Automation Portfolio

PowerShell scripts for Windows inventory, reporting, and automation.

## Windows Inventory Report

`Get-WindowsInventory.ps1` collects the Windows edition, version, and OS architecture of the PC it runs on. It saves a timestamped CSV on the desktop so each run creates a separate report.

**Tested on:** Windows 11 Home with Windows PowerShell 5.1.

### How to run it

Save `Get-WindowsInventory.ps1` to your Windows desktop. Open Windows PowerShell and run:

```powershell
& (Join-Path ([Environment]::GetFolderPath('Desktop')) 'Get-WindowsInventory.ps1')
```

### How to verify the result

PowerShell prints `Report saved to` followed by the file path. Open the new `Windows-Inventory-*.csv` file on your desktop. It should contain one data row under `Caption`, `Version`, and `OSArchitecture`.
