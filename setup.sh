#!/usr/bin/zsh

# Install homebrew, formulaes and casks

echo "Checking if homebrew installed..."

if test ! $(which brew)
then
  echo "Homebrew not found..."
  echo "Installing Homebrew for you"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed"
fi

formulaes=(
  coreutils # Don't forget to add gnubin/gnuman to PATH
  curl
  ffmpeg
  gnutls
  lua
  lua-language-server
  luajit
  luarocks
  neovim
  nvm
  python
  ripgrep
  tmux
  trash
  tree
  tree-sitter
  yt-dlp
  zsh-vi-mode
  zsh-autosuggestions
)

echo "Installing formulaes..."
brew install ${formulaes[@]}
