


function main
{
    bspc rule -a URxvt  state=floating   layer=above 
    bspc rule -a feh  state=floating   layer=normal 
    
    local optin=$1
    local name=$( date +"%Y.%m.%d-%H:%M:%S.png" )
    local dir="$HOME/.img/screenshot/"
    local path="$HOME/.img/screenshot/$name"

    case $optin in
        all )
            local cmd=" scrot -F $path "
            $cmd
        ;;
        select )
            local color="#0055aa"
            local scrotStyle=" -f --line color=$color --line style=dash "
            local cmd=" scrot -s $scrotStyle -F $path "
            $cmd
            local viewImg=" feh  $path " 
            $viewImg &
        ;;
    esac

    urxvt -geometry 20x2+660+5   -e sh nameScrenn.sh $path $dir
    bspc rule -a URxvt  state=tiled       layer=normal 
}

main $*
