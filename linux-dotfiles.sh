#!/bin/bash
echo "Copying .bashrc to $(pwd ~)"
cp ./dot_bashrc ~/.bashrc
echo "Copying .nanorc to $(pwd ~)"
cp ./dot_nanorc ~/.nanorc
echo "Copying .vimrc to $(pwd ~)"
cp ./dot_vimrc ~/.vimrc
