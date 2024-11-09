do {
    Clear-Host
    Write-Host "Please enter a number:"
    Write-Host "1. Install dotfiles and setup git projects"
    Write-Host "2. Install Scoop"
    Write-Host "3. Install Required Scoop Apps"
    Write-Host "4. Exit"
    
    # Capture user input
    $choice = Read-Host "Enter your choice"

    switch ($choice) {
        "1" {
       
            ~/.config/remotescripts/first.ps1
        }
        "2" {
	~/.config/remotescripts/second.ps1            

	                
        }
        "3" {
            ~/.config/remotescripts/third.ps1
        }
        "4" {
            Write-Host "Exiting..."
            break
        }
        default {
            Write-Host "Invalid choice. Please try again."
        }
    }

    # Pause before looping back
    Pause
} while ($choice -ne "4")
