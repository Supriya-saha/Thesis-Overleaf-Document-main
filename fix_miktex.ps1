Write-Host "Starting MiKTeX maintenance..."
try {
    Write-Host "Step 1: Refreshing file name database..."
    initexmf --update-fndb
    Write-Host "Step 1: Success."

    Write-Host "Step 2: Recreating symbolic links..."
    initexmf --mklinks
    Write-Host "Step 2: Success."

    Write-Host "Step 3: Updating font maps..."
    updmap
    Write-Host "Step 3: Success."

    Write-Host "MiKTeX maintenance complete. Please restart VS Code and try building again."
} catch {
    Write-Host "An error occurred during MiKTeX maintenance:"
    Write-Host $_
}
Start-Sleep -Seconds 10
