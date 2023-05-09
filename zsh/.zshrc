export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/usr/local/bin/python3/:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# better history searching with arrow keys
# https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

export VOLTA_HOME="$HOME/.volta"

# source aliases
source ~/.alias

# set dircolors
test -r "~/.dir_colors" && eval $(gdircolors ~/.dir_colors)

# load zsh-vi-mode plugin
# https://github.com/jeffreytse/zsh-vi-mode
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# load zsh-autosuggestions plugin
# https://github.com/zsh-users/zsh-autosuggestions
source $(brew --prefix)/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# start in Insert Mode
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

ZVM_VI_ESCAPE_BINDKEY=jk

# the plugin will auto execute this zvm_after_select_vi_mode function
function zvm_after_select_vi_mode() {
  case $ZVM_MODE in
    $ZVM_MODE_NORMAL)
      export PROMPT=$'%B%F{blue}[N]%f%b %2~ %B%F{blue}\U00BB%f%b '
    ;;
    $ZVM_MODE_INSERT)
      export PROMPT=$'%B%F{green}[I]%f%b %2~ %B%F{blue}\U00BB%f%b '
    ;;
    $ZVM_MODE_VISUAL)
      export PROMPT=$'%B%F{magenta}[V]%f%b %2~ %B%F{blue}\U00BB%f%b '
    ;;
    $ZVM_MODE_VISUAL_LINE)
      export PROMPT=$'%B%F{magenta}[L]%f%b %2~ %B%F{blue}\U00BB%f%b '
    ;;
    $ZVM_MODE_REPLACE)
      export PROMPT=$'%B%F{red}[R]%f%b %2~ %B%F{blue}\U00BB%f%b '
    ;;
  esac
}

# show current time in right prompt
export RPROMPT='%B%F{blue}[%*]%f%b'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
