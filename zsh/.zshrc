export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$HOME/Library/Python/3.9/lib/python/site-packages:$PATH"
export PATH="$HOME/Library/Python/3.9/bin/:$PATH"
export PATH="/usr/bin/python3/:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export VOLTA_HOME="$HOME/.volta"

# set dircolors
test -r "~/.dir_colors" && eval $(gdircolors ~/.dir_colors)

# prompt
PROMPT=$'%~ %B%F{209}\U00BB%f%b '
RPROMPT='%B%F{075}[%*]%f%b'

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
