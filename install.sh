#!/bin/bash

if [ -d "$HOME/.config/nvim/" ]; then
    rm -R ~/.config/nvim/*
else
    mkdir -p ~/.config/nvim/
fi

if [ -d "$HOME/.cache/nvim/" ]; then
    rm -R ~/.cache/nvim
fi

cp -R src/* ~/.config/nvim
echo "NVIM BASIC IDE has been installed!"
