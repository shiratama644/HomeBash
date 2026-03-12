# 起動時のウェルカムバナー

_welcome_banner() {
    local reset='\e[0m'
    local bold='\e[1m'
    local cyan='\e[38;5;51m'
    local green='\e[38;5;82m'
    local yellow='\e[38;5;226m'
    local magenta='\e[38;5;213m'
    local gray='\e[38;5;245m'

    local cols
    cols=$(tput cols 2>/dev/null || echo 40)
    local line
    line=$(printf '%*s' "$cols" '' | tr ' ' '=')

    echo -e "${cyan}${bold}${line}${reset}"
    echo -e "  ${magenta}${bold}🐚 Termux HomeBash${reset}"
    echo -e "  ${green}📅 $(date '+%Y-%m-%d %H:%M')${reset}  ${yellow}$(uname -r 2>/dev/null | cut -d- -f1)${reset}"
    echo -e "  ${gray}ホーム: $HOME   シェル: ${SHELL:-bash}${reset}"
    echo -e "${cyan}${bold}${line}${reset}"
    echo -e "  ${gray}cdp${reset} = ${green}~/projects へ移動${reset}   ${gray}mkcd <dir>${reset} = ${green}作成して移動${reset}"
    echo -e "  ${gray}pkgup${reset} = ${green}パッケージ更新${reset}        ${gray}showpath${reset}   = ${green}PATH 一覧${reset}"
    echo -e "${cyan}${bold}${line}${reset}"
}

_welcome_banner
unset -f _welcome_banner
