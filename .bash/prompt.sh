# プロンプトの設定

# カラーコード
_c_reset='\[\e[0m\]'
_c_green='\[\e[32m\]'
_c_cyan='\[\e[36m\]'
_c_yellow='\[\e[33m\]'

# git ブランチを表示するヘルパー関数
_ps1_git_branch() {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return
    echo " (${branch})"
}

# PS1: ユーザー@ホスト:ディレクトリ [gitブランチ] $
PS1="${_c_green}\u@\h${_c_reset}:${_c_cyan}\w${_c_yellow}\$(_ps1_git_branch)${_c_reset}\$ "

unset _c_reset _c_green _c_cyan _c_yellow
