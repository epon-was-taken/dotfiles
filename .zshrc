# Aliases
alias l="ls -lh --color"
alias ll='ls -lah --color'
alias lgit='lazygit'

# History Settings

HISTFILE=~/.zsh_history
HISTSIZE=100000000
SAVEHIST=100000000
HISTTIMEFORMAT="[%F %T]"

# Add commands to history immediatly instead on shell exit
setopt INC_APPEND_HISTORY

# Add timestamp to history
setopt EXTENDED_HISTORY

# Ignore duplicate commands in search
setopt HIST_FIND_NO_DUPS

# Prompt Engine
eval "$(oh-my-posh init zsh --config .config/ohmyposh/zen.toml)"

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
