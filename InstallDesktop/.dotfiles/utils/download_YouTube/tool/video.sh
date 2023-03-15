
function sound
{
    local url=$1
    local path=$2
    
    if [ ! $path ]
    then
        path="$HOME/Links/Multimedia/video"
    fi
    # forman : download.flac
    yt-dlp -P $path  "$url" 
}

# sound $path $url 
sound  $*
