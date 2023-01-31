# Oh my posh
oh-my-posh init pwsh | Invoke-Expression
# Color scheme URL
oh-my-posh init pwsh --config 'C:\Users\ogataj\Documents\WindowsPowerShell\omp-themes\catppuccin.omp.json' | Invoke-Expression

# Aliases ---------------------------------------------------------------------
Set-Alias c clear

# Functions -------------------------------------------------------------------
Function edit {
	vim $profile
}

Function Vedit {
	vim $home\_vimrc
}

Function yeet {
    Remove-Item -Recurse -Force $args[0]
}

# Load into home directory on start
cd $HOME
