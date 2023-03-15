images_route=(
  $HOME/Links/img/wallpapers/random/wp11242725-yofukashi-no-uta-wallpapers.jpg
  $HOME/Links/img/wallpapers/random/wp11242727-yofukashi-no-uta-wallpapers.jpg
)

function _num
{
  local num=$1
  local   n=$2
  local one=1
  local next=$(( $num  + 1 )) 

  if [[ $next > $n ]]
  then
    echo 0
  else
    echo $next
  fi
}




i=0

while [ true ]
do
    echo "while "
    feh --bg-scale  ${images_route[$i]}
    sleep 1h
    i=$( _num $i 1)
done
