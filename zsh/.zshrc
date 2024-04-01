export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# better history searching with arrow keys
# https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# source aliases
source ~/.alias
source ~/.alias_local

# History settings
export HISTFILE=~/.histfile
export HISTSIZE=1000000
export SAVEHIST=1000000
setopt HIST_IGNORE_ALL_DUPS  # do not put duplicated command into history list
setopt HIST_SAVE_NO_DUPS  # do not save duplicated command
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
setopt EXTENDED_HISTORY  # record command start time

# set dircolors
test -r "~/.dir_colors" && eval $(gdircolors ~/.dir_colors)

# load zsh-vi-mode plugin
# https://github.com/jeffreytse/zsh-vi-mode
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# load zsh-autosuggestions plugin
# https://github.com/zsh-users/zsh-autosuggestions
source $(brew --prefix)/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b) '
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

# start in Insert Mode
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
export PROMPT=$'\n%B%F{green}[I]%f%b %2~ ${vcs_info_msg_0_}\n%B%F{green}\U00BB\U00BB\U00BB%f%b '

# the plugin will auto execute this zvm_after_select_vi_mode function
function zvm_after_select_vi_mode() {
  case $ZVM_MODE in
    $ZVM_MODE_NORMAL)
      export PROMPT=$'\n%B%F{blue}[N]%f%b %2~ ${vcs_info_msg_0_}\n%B%F{blue}\U00BB\U00BB\U00BB%f%b '
    ;;
    $ZVM_MODE_INSERT)
      export PROMPT=$'\n%B%F{green}[I]%f%b %2~ ${vcs_info_msg_0_}\n%B%F{green}\U00BB\U00BB\U00BB%f%b '
    ;;
    $ZVM_MODE_VISUAL)
      export PROMPT=$'\n%B%F{magenta}[V]%f%b %2~ ${vcs_info_msg_0_}\n%B%F{magenta}\U00BB\U00BB\U00BB%f%b '
    ;;
    $ZVM_MODE_VISUAL_LINE)
      export PROMPT=$'\n%B%F{magenta}[L]%f%b %2~ ${vcs_info_msg_0_}\n%B%F{magenta}\U00BB\U00BB\U00BB%f%b '
    ;;
    $ZVM_MODE_REPLACE)
      export PROMPT=$'\n%B%F{red}[R]%f%b %2~ ${vcs_info_msg_0_}\n%B%F{red}\U00BB\U00BB\U00BB%f%b '
    ;;
  esac
}

# show current time in right prompt
export RPROMPT='%B%F{blue}[%*]%f%b'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# okta
source /Users/tatsumi.tagawa/.config/op/plugins.sh
