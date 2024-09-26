# Aliases
alias l="ls -lh --color=auto"
alias ll="ls -lah --color=auto"
alias t="tmux"
alias k="kubectl"
alias lg="lazygit"

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

# Start ssh-agent
eval $(ssh-agent)

# Add tmuxifier binary to path
path+=('/home/patrick/.tmux/plugins/tmuxifier/bin')
export PATH

# Start tmuxifier
eval "$(tmuxifier init -)"

# Prompt Engine
eval "$(starship init zsh)"
