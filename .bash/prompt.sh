# プロンプトの設定

# カラーコード (256色対応端末向け)
_c_reset='\[\e[0m\]'
_c_bold='\[\e[1m\]'
_c_green='\[\e[38;5;82m\]'
_c_cyan='\[\e[38;5;51m\]'
_c_yellow='\[\e[38;5;226m\]'
_c_blue='\[\e[38;5;39m\]'
_c_magenta='\[\e[38;5;213m\]'
_c_red='\[\e[38;5;196m\]'
_c_gray='\[\e[38;5;245m\]'

# 前コマンドの終了コードを PROMPT_COMMAND で保存
PROMPT_COMMAND='_LAST_EXIT=$?'

# git ブランチ・状態を表示するヘルパー関数
_ps1_git_info() {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return
    local status_symbol=''
    if ! git diff --quiet 2>/dev/null || ! git diff --cached --quiet 2>/dev/null; then
        status_symbol='*'
    fi
    printf ' \e[38;5;213m\ue0a0 %s%s\e[0m' "$branch" "$status_symbol"
}

# 前コマンドの終了コードが非ゼロなら赤で表示
_ps1_exit_code() {
    [[ $_LAST_EXIT -ne 0 ]] && printf '\e[38;5;196m[✘ %s] \e[0m' "$_LAST_EXIT"
}

# PS1: 2行プロンプト
#  行1: [終了コード] ユーザー@ホスト  パス  [gitブランチ]
#  行2: ❯ (プロンプト記号)
_c_user="${_c_bold}${_c_green}"
_c_host="${_c_cyan}"
_c_path="${_c_blue}"
_c_prompt="${_c_magenta}${_c_bold}"

PS1='\[\e[0m\]$(_ps1_exit_code)'"${_c_user}"'\u'"${_c_gray}"'@'"${_c_host}"'\h'"${_c_reset} '"${_c_path}"'\w'"${_c_reset}"'$(_ps1_git_info)
'"${_c_prompt}"'❯ '"${_c_reset}"

unset _c_reset _c_bold _c_green _c_cyan _c_yellow _c_blue _c_magenta _c_red _c_gray \
      _c_user _c_host _c_path _c_prompt
