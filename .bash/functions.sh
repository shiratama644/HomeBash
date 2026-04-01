# ユーティリティ関数の定義

# mkdirしてそこへ移動
mkcd() {
    mkdir -p "$1" && [[ -d "$1" ]] && cd "$1" || return 1
}

# ~/projects へ移動 (projects ディレクトリがなければ作成)
cdp() {
    cd ~ && mkdir -p projects && cd projects
}

# コマンドの存在確認
has() {
    command -v "$1" &>/dev/null
}

# ファイルのバックアップ (元ファイル名 + .bak)
bak() {
    [[ -z "$1" ]] && { echo "使い方: bak <ファイル>" >&2; return 1; }
    [[ ! -e "$1" ]] && { echo "ファイルが存在しません: $1" >&2; return 1; }
    cp -i "$1" "${1}.bak"
}

# PATH の一覧を見やすく表示
showpath() {
    echo "$PATH" | tr ':' '\n'
}
