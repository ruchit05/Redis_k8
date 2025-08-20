#Write-Host "⏹️ Stopping Minikube..."
minikube stop

#Write-Host "🗑️ Deleting Minikube cluster..."
minikube delete --all --purge

#Write-Host "🐳 Checking for Docker images related to Minikube..."
$images = docker images --format "{{.Repository}}:{{.Tag}}" | Where-Object { $_ -like "*minikube*" }

if ($images) {
    Write-Host "🗑️ Removing Minikube Docker images..."
    $images | ForEach-Object {
        Write-Host "Removing image: $_"
        docker rmi -f $_
    }
} else {
    Write-Host "✅ No Minikube images found in Docker."
}

#Write-Host "🛑 Stopping Docker Desktop..."
Stop-Process -Name "Docker Desktop" -Force -ErrorAction SilentlyContinue
Stop-Process -Name "com.docker.backend" -Force -ErrorAction SilentlyContinue

#Write-Host "✅ Docker Desktop stopped."

#Write-Host "✨ Cleanup complete!"
