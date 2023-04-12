export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/usr/local/bin/python3/:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export VOLTA_HOME="$HOME/.volta"

# set dircolors
test -r "~/.dir_colors" && eval $(gdircolors ~/.dir_colors)

# load zsh-vi-mode plugin
# https://github.com/jeffreytse/zsh-vi-mode
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# start in Insert Mode
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

ZVM_VI_ESCAPE_BINDKEY=jk

# the plugin will auto execute this zvm_after_select_vi_mode function
function zvm_after_select_vi_mode() {
  case $ZVM_MODE in
    $ZVM_MODE_NORMAL)
      export PROMPT=$'%B%F{197}[N]%f%b %2~ %B%F{209}\U00BB%f%b '
    ;;
    $ZVM_MODE_INSERT)
      export PROMPT=$'%B%F{114}[I]%f%b %2~ %B%F{209}\U00BB%f%b '
      # Something you want to do...
    ;;
    $ZVM_MODE_VISUAL)
      export PROMPT=$'%B%F{221}[V]%f%b %2~ %B%F{209}\U00BB%f%b '
      # Something you want to do...
    ;;
    $ZVM_MODE_VISUAL_LINE)
      export PROMPT=$'%B%F{123}[L]%f%b %2~ %B%F{209}\U00BB%f%b '
      # Something you want to do...
    ;;
    $ZVM_MODE_REPLACE)
      export PROMPT=$'%B%F{026}[R]%f%b %2~ %B%F{209}\U00BB%f%b '
      # Something you want to do...
    ;;
  esac
}

# show current time in right prompt
export RPROMPT='%B%F{075}[%*]%f%b'

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
alias vims='nvim ~/dotfiles/nvim/lua/tats/keymaps.lua'
alias vimo='nvim ~/dotfiles/nvim/lua/tats/options.lua'
alias vimp='nvim ~/dotfiles/nvim/lua/tats/plugins.lua'
alias nvims='nvim ~/dotfiles/nvim/lua/tats/keymaps.lua'
alias nvimo='nvim ~/dotfiles/nvim/lua/tats/options.lua'
alias nvimp='nvim ~/dotfiles/nvim/lua/tats/plugins.lua'

alias python='python3'
alias py='python3'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
