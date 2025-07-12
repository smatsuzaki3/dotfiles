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

# Add ~/.local/bin to PATH
export PATH="$HOME/.local/bin:$PATH"

# fnm
FNM_PATH="/home/matsuzaki/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

if [[ -f "$HOME/.local/bin/env" ]]; then
    . "$HOME/.local/bin/env"
fi

# Oh My Zsh configuration

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliasは以下のファイルにて管理
# loaded after Oh My Zsh to override defaults
# https://blog-smatsuzaki.hatenablog.com/entry/2025/07/12/120109
source ~/.config/zsh/aliases.zsh
