function changeName
{
    local path=$1
    local dir=$2
    local png=".png"
    local name="$3$png"
    local cmd=" mv $path $dir$name"
    $cmd

}
function main
{
    local  path=$1
    local  dir=$2
    read -p 'nombre:' name 
    

    kill $( pgrep feh | tail -1 )
    if [ $name == "d" ]
    then
        rm $path
    else
        $(changeName $path $dir $name)
    fi

}
main $*
