# 環境変数の設定

# エディタ
export EDITOR='vim'
export VISUAL="$EDITOR"

# 言語・ロケール
export LANG='ja_JP.UTF-8'

# ヒストリ設定
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL='ignoreboth'   # 重複行と空白始まりを除外

# PATH: Termux のバイナリパスを優先
export PATH="$PREFIX/bin:$HOME/.local/bin:$PATH"

# less の設定
export LESS='-R -i -M'
export PAGER='less'
