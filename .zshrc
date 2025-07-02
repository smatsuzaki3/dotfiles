# ~/.zshrc: executed by zsh for interactive shells

# aliasは以下のファイルにて管理
source ~/.config/zsh/aliases.zsh

# History configuration
HISTSIZE=1000
HISTFILESIZE=2000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# History options
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Enable extended globbing
setopt EXTENDED_GLOB

# Auto-completion
autoload -Uz compinit
compinit

# Enable AUTO_CD to navigate to directories without typing 'cd'
setopt AUTO_CD

# Prompt configuration
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats 'git:(%b)'
setopt PROMPT_SUBST
PROMPT='%F{green}%n%f:%F{cyan}%1~%f %F{red}${vcs_info_msg_0_}%f$ '

# Terminal title
case $TERM in
    xterm*|rxvt*)
        precmd() {
            vcs_info
            print -Pn "\e]0;%n@%m: %~\a"
        }
        ;;
esac

# History timestamp format
export HISTTIMEFORMAT="%F %T "

# fnm
FNM_PATH="/home/matsuzaki/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

if [[ -f "$HOME/.local/bin/env" ]]; then
    . "$HOME/.local/bin/env"
fi

