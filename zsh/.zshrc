export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/usr/local/bin/python3/:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export VOLTA_HOME="$HOME/.volta"

# set dircolors
test -r "~/.dir_colors" && eval $(gdircolors ~/.dir_colors)

# Vim mode prompt config from Jakob Gerhard Martinussen (JakobGM) #
# https://github.com/JakobGM/dotfiles/blob/master/autoload/vim.zsh #

bindkey -v

# Default prompt
export PROMPT=$'%B%F{002}[I]%f%b %2~ %B%F{209}\U00BB%f%b '

# And also a beam as the cursor
echo -ne '\e[5 q'

# Callback for vim mode change
function zle-keymap-select () {
    # Only supported in these terminals
    if [ "$TERM" = "xterm-256color" ] || [ "$TERM" = "xterm-kitty" ] || [ "$TERM" = "screen-256color" ]; then
        if [ $KEYMAP = vicmd ]; then
            # Command mode
            export PROMPT=$'%B%F{220}[N]%f%b %2~ %B%F{209}\U00BB%f%b '

            # Set block cursor
            echo -ne '\e[1 q'
        else
            # Insert mode
            export PROMPT=$'%B%F{002}[I]%f%b %2~ %B%F{209}\U00BB%f%b '

            # Set beam cursor
            echo -ne '\e[5 q'
        fi
    fi
}

# Bind the callback
zle -N zle-keymap-select

# Reduce latency when pressing <Esc>
export KEYTIMEOUT=1

# RPrompt
export RPROMPT='%B%F{075}[%*]%f%b'

# update time each second
TMOUT=1
TRAPALRM() {
  zle reset-prompt
}

# easier navigation
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ~='cd ~'

# better ls
# need coreutils to call gls
alias ls='gls --color=always --group-directories-first'
alias la='gls -A --color=always --group-directories-first'
alias ll='gls -Ahl --color=always --group-directories-first'

alias vim='nvim'

alias python='python3'
alias py='python3'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
