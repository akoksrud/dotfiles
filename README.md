# dotfiles
My dotfiles repo

## Clone the repo
```bash
cd ~
git clone https://github.com/akoksrud/dotfiles
cd dotfiles
```

## Linux stuff
```bash
sudo apt install nano vim neovim eza bat fd-find fzf gcc unzip git curl
bash ./linux-dotfiles.sh

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

# Starship (.bashrc includes conditional that runs Sharship if present)
curl -sS https://starship.rs/install.sh | sh
mkdir ~/.config
curl https://starship.rs/presets/toml/gruvbox-rainbow.toml -o ~/.config/gruvbox-rainbow.toml
starship preset gruvbox-rainbow -o ~/.config/starship.toml

# If you have no nerd-font installed, use this preset instead
curl https://starship.rs/presets/toml/no-nerd-font.toml -o ~/.config/no-nerd-font.toml
starship preset no-nerd-font -o ~/.config/starship.toml
```

## Install Docker (Debian/Ubuntu) for lab/test purposes
```bash
# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/debian
Suites: $(. /etc/os-release && echo "$VERSION_CODENAME")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo groupadd docker
sudo usermod -aG docker $USER

# Reboot for changes to take effect
sudo reboot now

```

## Windows stuff
```pwsh
# Apps
winget install Microsoft.Powershell Microsoft.Git Notepad++.Notepad++ Starship.Starship Microsoft.Edit astral-sh.uv eza-community.eza junegunn.jzj sharkdp.fd Python.Python.3.14 Microsoft.VisualStudioCode Microsoft.PowerToys Microsoft.WindowsTerminal Neovim.Neovim

# Dotfiles script
.\windows-dotfiles.ps1

# Starship
Write-Output "Invoke-Expression (&starship init powershell)" >> $PROFILE

```
