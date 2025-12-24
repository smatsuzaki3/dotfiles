# terraform
alias tf='terraform'

# lazygit
alias lg='lazygit'

# mise
alias mr='mise run'

# tldr
alias tldr='tldr -t base16'

# cat を置き換え : コピペの時に邪魔にならないよう、行番号の>表示は抑止する
alias cat='batcat --style=plain'

# claude code
alias c='claude'
alias claude="/home/matsuzaki/.claude/local/claude"

# gitを便利に
alias ga='git add'
alias gb='git branch'
alias gc='git checkout'
alias gm='git commit -m'
alias gp='git push origin HEAD'
alias gs='git status'
alias pull='git pull'

# cdを便利に
alias ~='cd ~'
alias ..='cd ..'
alias ...="cd ../.."
alias ....="cd ../../.."

# 隠しファイルも表示する
alias tree='tree -a'

# More ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alert alias (adapted for zsh)
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(fc -ln -1)"'

# Color support for ls and grep 

if [[ -x /usr/bin/dircolors ]]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
