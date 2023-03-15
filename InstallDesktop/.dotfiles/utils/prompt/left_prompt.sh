function prompt_left
{
    local bgcolor="\e[48;2;0;30;50;2m"
    local fgcolor="\e[38;2;0;30;50;2m"
    local colorPath="\e[3m\e[38;5;50m"
    local colorOne="\e[1m\e[38;5;39m"
    local style="\e[3m"
    local path=$( sh $HOME/.dotfiles/utils/prompt/path.sh)
    echo -e "$bgcolor $colorPath$path $colorOne$(tput sgr0)$fgcolor$(tput sgr0) $style"
}
prompt_left $1
