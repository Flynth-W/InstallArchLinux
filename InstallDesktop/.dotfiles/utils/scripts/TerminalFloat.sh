

function main
{

    bspc rule -a URxvt  state=floating   layer=normal 
    
    urxvt &
    sleep 1
    bspc rule -a URxvt  state=tiled       layer=normal 

}
main 

