#!/bin/sh
#
# SCRIPT: path.sh
# AUTHOR: Josue Ladilao Cocarico Santos
# DATE: 15/06/2022
# REV: 1.1.A 
#
# PLATFORM: no use  plataform
#
# PURPOSE:  devuelve el directorio actual
#
# REV LIST:
#       DATE: null
#       BY:    null
#       MODIFICATION: null

function rigth_backslash
{   
    local path=$1
    local arrdir=(${path//"/"/ })
    local lenngth=${#arrdir[@]}
    if [ $lenngth == 0 ]
    then
        echo "/"
    else
        local dir=${arrdir[$lenngth -1]}
        echo $dir
    fi
}

function first_one
{

    local dir=$1
    if [[ "$dir" == *"/"* ]]; then
        local path=$( rigth_backslash $dir )   
        echo $path
    fi   

}


function dir_compuesto
{
    local path
    for i in $*
    do
        local sp=$( first_one $i )
        if [ ! $sp ]
        then
            path="$path $i"
        else
            path=$sp
        fi
    done

    echo $path
}

function dir_simple
{   local dir=$*
    local arrdir=(${dir//"/"/ })
    local lenngth=${#arrdir[@]}
    if [ $lenngth -eq 0 ]
    then
        echo $dir
        exit
    fi

    local dir=${arrdir[$lenngth -1]}
    echo $dir

}


function main(){
    local dir=($(pwd))
    local path

    if [ ${#dir[*]} -eq 1 ]
    then
        path=$( dir_simple $dir )
    else
        path=$( dir_compuesto ${dir[*]} )
    fi

    if [ "$path" == "$USER" ]
    then
        echo "~"
    else
        echo $path
    fi

}
main
