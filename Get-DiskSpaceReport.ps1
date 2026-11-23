param(
    [int]$ThresholdGB = 20
)

$drive = Get-PSDrive -Name C -ErrorAction Stop
$status = 'OK'

if ($drive.Free -lt ($ThresholdGB * 1GB)) {
    $status = 'Low space'
}

[pscustomobject]@{
    Drive       = $drive.Root
    FreeGB      = [math]::Round($drive.Free / 1GB, 2)
    ThresholdGB = $ThresholdGB
    Status      = $status
}