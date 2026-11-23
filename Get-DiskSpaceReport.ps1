## Disk Space Report

[Get-DiskSpaceReport.ps1](Get-DiskSpaceReport.ps1) checks how much space is free on the C: drive. It displays `Low space` when free space is below the threshold and `OK` otherwise. The default threshold is 20 GB.

Save the script to your Windows desktop. To check against a custom threshold of 30 GB, run this in Windows PowerShell:

```powershell
& (Join-Path ([Environment]::GetFolderPath('Desktop')) 'Get-DiskSpaceReport.ps1') -ThresholdGB 30
```

Replace `30` with the threshold you want, or omit `-ThresholdGB 30` to use the default.

**Example output** (sample data)

| Drive | FreeGB | ThresholdGB | Status |
|---|---:|---:|---|
| C:\ | 12.5 | 30 | Low space |

Tested on Windows 11 Home with Windows PowerShell 5.1.
