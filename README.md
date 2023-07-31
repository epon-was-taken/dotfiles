# Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew
`xcode-select --install`

2. Clone repo into new hidden directory
```bash
# Uses HTTPS to clone the directory
git clone https://github.com/PatrickReinboth/.dotfiles.git ~/.dotfiles/ 
```
3. Install Brew and Software
```bash
# Preferrably done in a script

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install all software from Brewfile
brew bundle --file ~/.dotfiles/Brewfile
```
