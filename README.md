# dotfiles
My dotfiles repo

## Chezmoi
https://www.chezmoi.io/

### Install chezmoi and init from your repo on an empty machine
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

### Update your dotfiles
```bash
chezmoi update
```

## Linux stuff
```bash
sudo apt install nano vim neovim eza bat fd-find fzf 
```

## Windows stuff
```pwsh
winget install Microsoft.Powershell Microsoft.Git Notepad++.Notepad++ Starship.Starship Microsoft.Edit astral-sh.uv eza-community.eza junegunn.jzj sharkdp.fd Python.Python.3.14 Microsoft.VisualStudioCode Microsoft.PowerToys Microsoft.WindowsTerminal Neovim.Neovim
```

### $PROFILE (add as dotfile later)
`edit $PROFILE`

```pwsh
function ls_alF { eza -alF $args }
Set-Alias -Name ll -Value ls_alF
Invoke-Expression (&starship init powershell)
```
