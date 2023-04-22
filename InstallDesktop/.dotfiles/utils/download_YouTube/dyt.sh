#!/bin/sh
#
# SCRIPT: dyt.sh
# AUTHOR: ldsl
# DATE: 13/06/2022
# REV: 1.1.A 
#
# PLATFORM: no use  plataform
#
# PURPOSE:  hacer uso de " dy-dlp " de forma simple para mis nesesidades
#
# REV LIST:
#       DATE: null
#       BY:    null
#       MODIFICATION: null
function main 
{
    

    arg=$*
		if [[ $# -eq 0 ]]
		then
			cat $HOME/.dotfiles/utils/download_YouTube/doc.txt
			return 0
		fi
		
		if [[ $1 == "-h" ]]
		then
			cat $HOME/.dotfiles/utils/download_YouTube/doc.txt
			return 0
		fi
    local ruta_argumen="$HOME/.dotfiles/utils/download_YouTube/tool/arguments.sh"

    declare -A Arg="$(sh  $ruta_argumen  $* )"
    
    #for key in  "${!Arg[@]}" ; do
    #    echo key: $key, value: ${Arg[$key]}
    #done
    
    case ${Arg[format]} in
        sound )
            local sound="$HOME/.dotfiles/utils/download_YouTube/tool/sound.sh"
            sh $sound ${Arg[url]}   ${Arg[path]}  
            ;;
        video )
            local video="$HOME/.dotfiles/utils/download_YouTube/tool/video.sh"

            sh $video ${Arg[url]}   ${Arg[path]}  
            ;;
        * )
            local sv="$HOME/.dotfiles/utils/download_YouTube/tool/sound_video.sh"

            sh $sv ${Arg[url]}   ${Arg[path]}  
            ;;
    esac
}

main $*
