$desktop = [Environment]::GetFolderPath('Desktop')
$timestamp = Get-Date -Format 'yyyyMMdd-HHmmss-fff'
$reportPath = Join-Path $desktop "Windows-Inventory-$timestamp.csv"

Get-CimInstance -ClassName Win32_OperatingSystem |
    Select-Object Caption, Version, OSArchitecture |
    Export-Csv -LiteralPath $reportPath -NoTypeInformation -NoClobber -ErrorAction Stop

Write-Host "Report saved to $reportPath"