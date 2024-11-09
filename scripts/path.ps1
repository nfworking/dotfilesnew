# Get the current directory
$currentDir = Get-Location

# Get the current PATH environment variable for the user
$envPath = [System.Environment]::GetEnvironmentVariable("PATH", "User")

# Check if the current directory is already in the PATH
if ($envPath -notlike "*$($currentDir)*") {
    # Add the current directory to the user's PATH
    [System.Environment]::SetEnvironmentVariable("PATH", "$envPath;$currentDir", "User")
    Write-Host "Directory '$currentDir' has been added to the user's PATH."
} else {
    Write-Host "Directory '$currentDir' is already in the user's PATH."
}
