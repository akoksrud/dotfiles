# dotfiles
My dotfiles repo

## Chezmoi
https://www.chezmoi.io/

### Install chezmoi and init from your repo on an empty machine
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

### Chezmoi commands
```bash
# Download dotfiles from repo
chezmoi update

#Edit files
chezmoi edit $FILE

# Add new file
chezmoi add $FILE

# Re-add files if you have edited directly (not using chezmoi edit)
chezmoi re-add

# View managed files
```

## Linux stuff
```bash
sudo apt install nano vim neovim eza bat fd-find fzf gcc unzip

# Unstable Neovim with NvChad
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt upgrade
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
# Run :MasonInstallAll command after lazy.nvim finishes downloading plugins.
# Delete the .git folder from nvim folder.
# Plugins: -> :Mason
# Cheatsheet: <space>+c+h
# Themes: <space>+t+h
```

## Windows stuff
```pwsh
winget install Microsoft.Powershell Microsoft.Git Notepad++.Notepad++ Starship.Starship Microsoft.Edit astral-sh.uv eza-community.eza junegunn.jzj sharkdp.fd Python.Python.3.14 Microsoft.VisualStudioCode Microsoft.PowerToys Microsoft.WindowsTerminal Neovim.Neovim
```

### $PROFILE (add as dotfile later)
`edit $PROFILE`

```pwsh
function ls_alF { eza -al --group-directories-first --icons=always $args }
Set-Alias -Name ll -Value ls_alF
Invoke-Expression (&starship init powershell)
```
