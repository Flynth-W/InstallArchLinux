# not bgcolor
bgcolor="\e[48;2;0;30;50;2m"
fgcolor="\e[3m\e[38;5;50m"
function gitStatusAdd(){
    git status &>/dev/null;
    if [ $? -eq 0 ]
    then
        add=$(git status |grep "git add")
        if [[ $add != "" ]]
        then
            echo "\033[38;2;255;5;412m "
        fi
    fi
}

function gitStatusCommit(){
    git status &>/dev/null;
    if [ $? -eq 0 ]
    then
        commit=$(git status |grep "git restore")
        if [[ $commit != "" ]]
        then
            echo  "\033[38;2;0;255;412m "
        fi
    fi

}

style="\e[3m"
function gitBranch(){
    git branch &>/dev/null;
    if [ $? -eq 0 ] 
    then 
        Branch=$(git branch | grep ^* | sed s/\*\ //)
        colorBranch="\e[3m\033[38;5;123m$Branch "

        echo -e "$bgcolor$(gitStatusCommit)$(gitStatusAdd) $colorBranch $(tput sgr0)$style"
    else 
        if [[ "$(whoami)" == "root" ]]
        then
            echo -e "\e[48;5;16m\e[38;5;201m $(whoami) $(tput sgr0)\e[3m"
        else
            echo -e "$bgcolor$fgcolor $(whoami) $(tput sgr0)\e[3m"
        fi
    fi 
}
gitBranch

