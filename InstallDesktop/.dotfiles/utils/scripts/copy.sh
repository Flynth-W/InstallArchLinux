#!/bin/sh

# use copy ::
#   - save path file or dir
#   $ copy ./file 
#   complemet $ paste h

function main
{
  
  local tmpPath="/tmp/file_path"
  local path=$(pwd)
  local path=$( echo $path/$1 ) ;
  echo $path >| $tmpPath  
}
main $*

