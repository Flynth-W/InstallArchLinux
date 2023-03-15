function sound
{
    local url=$1
    local path=$2
    
    if [ ! $path ]
    then
        path="$HOME/Links/Multimedia/sound"
    fi
    # forman : download.flac
    yt-dlp -P $path -x --audio-format flac "$url" 
}

# sound $path $url 
sound  $*

