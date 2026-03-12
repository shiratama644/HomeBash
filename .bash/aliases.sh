# エイリアスの定義

# ディレクトリ一覧
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lah'
alias l='ls -CF'

# ナビゲーション
alias ..='cd ..'
alias ...='cd ../..'

# 安全な操作
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Termux 向け
alias pkgup='pkg update && pkg upgrade'
alias cls='clear'
