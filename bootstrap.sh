#!/bin/zsh

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install brew software
brew bundle --file ~/.dotfiles/Brewfile 

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Create symlinks
ln -s ~/.dotfiles/.config/nvim/lua/custom/ ~/.config/nvim/lua/custom/
ln -s ~/.dotfiles/.oh-my-zsh/custom/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
ln -s ~/.dotfiles/.ssh/conf.d/ ~/.ssh/conf.d/
ln -s ~/.dotfiles/.ssh/config ~/.shh/config
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/.zshrc ~/.zshrc
