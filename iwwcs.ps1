$exePath = "C:\Program Files\iManage\Work\iwwcs.exe"

# Loop indefinitely
while($true) {
    # Check if the process is running
    $process = Get-Process | Where-Object { $_.Path -eq $exePath }

    # If the process is not running, start it
    if (-not $process) {
        Start-Process -FilePath $exePath -NoNewWindow
        Write-Output "Process $exePath started at $(Get-Date)"
    }

    # Wait for a few seconds before checking again
    Start-Sleep -Seconds 5
}