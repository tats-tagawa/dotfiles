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

casks=(
  espanso
  firefox
  font-fira-code
  font-fira-code-nerd-font
  github
  google-chrome
  hammerspoon
  iina
  iterm2
  kap
  karabiner-elements
  mimestream
  netnewswire
  qlmarkdown
  raycast
  shortcat
  sioyek
  soundsource
  spotify
  the-unarchiver
  visual-studio-code
  zoom
)

echo "Installing formulaes..."
brew install ${formulaes[@]}

echo "Installing casks..."
brew install --cask ${casks[@]}

echo "All homebrew formulaes/casks instlled"
