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
alias reload='source ~/.bashrc && echo "設定を再読み込みしました"'

# ディスク・プロセス確認
alias df='df -h'
alias du='du -h'
alias free='free -h'
alias ps='ps aux'
alias top='top -o %CPU'

# ネットワーク
alias myip='curl -s ifconfig.me && echo'
alias pingg='ping -c 4 8.8.8.8'
