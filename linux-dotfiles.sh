#!/bin/bash
echo "Copying .bashrc to $(pwd ~)"
cp ./dot_bashrc ~/.bashrc
echo "Copying .nanorc to $(pwd ~)"
cp ./dot_nanorc ~/.nanorc
echo "Copying .vimrc to $(pwd ~)"
cp ./dot_vimrc ~/.vimrc

# Helper script for opening files in Windows from WSL
if [ -n "$WSL_DISTRO_NAME" ] || [ -n "$WSL_INTEROP" ]; then
mkdir -p ~/bin
cat > ~/bin/wsl-open <<'EOF'
#!/usr/bin/env bash
exec explorer.exe "$1"
EOF
chmod +x ~/bin/wsl-open
ln -sf ~/bin/wsl-open ~/bin/xdg-open
fi
