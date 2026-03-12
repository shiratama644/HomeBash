# 非対話シェルは即終了
[[ $- != *i* ]] && return

# --- bash オプション ---
shopt -s histappend      # ヒストリをファイルへ追記（上書きしない）
shopt -s checkwinsize    # コマンド実行後にウィンドウサイズを再チェック
shopt -s globstar        # ** でサブディレクトリを再帰的にマッチ
shopt -s cdspell         # cd のスペルミスを自動修正

# --- bash 補完 ---
if [[ -f "$PREFIX/share/bash-completion/bash_completion" ]]; then
    source "$PREFIX/share/bash-completion/bash_completion"
elif [[ -f /etc/bash_completion ]]; then
    source /etc/bash_completion
fi

# --- モジュール読み込み ---
if [[ -f "$HOME/.bash/.bootstrap" ]]; then
    source "$HOME/.bash/.bootstrap"
else
    echo "[.bashrc] 警告: $HOME/.bash/.bootstrap が見つかりません" >&2
fi
