function sonud_video
{

    local url=$1
    local path=$2
    
    if [ ! $path ]
    then
        path="$HOME/Links/Multimedia/sv"
    else
        path="$path/sv"
    fi
    local sound="$HOME/.dotfiles/utils/download_YouTube/tool/sound.sh"
    local video="$HOME/.dotfiles/utils/download_YouTube/tool/video.sh"

    sh $sound $url "$path/sound"
    sh $video $url "$path/video"
}

sonud_video $*
