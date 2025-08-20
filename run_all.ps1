# Change to the folder where scripts are stored
Set-Location -Path "C:\Users\Ruchit\Documents\Script"

# List of scripts in order
$scripts = @(
    "adoker&minikube-1.ps1",
    "bhelm-create-2.ps1",
    "cset-value-3.ps1",
    "dget-value-4.ps1"
)

foreach ($script in $scripts) {
    Write-Host "Running $script..." -ForegroundColor Cyan
    & ".\$script"
    if ($LASTEXITCODE -ne 0) {
        Write-Host "$script failed. Stopping execution." -ForegroundColor Red
        break
    }
}

Write-Host "✅ All scripts executed successfully!" -ForegroundColor Green
