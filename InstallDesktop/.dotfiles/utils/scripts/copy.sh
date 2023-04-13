#!/bin/sh

# use copy ::
#   - save path file or dir
#   $ copy ./file 
#   complemet $ paste h

function main
{
  local tmpPath="/tmp/file_path"
  #clean file
  true >| $tmpPath  

  local argPath=""
  for iterator in  $*
  do
    local path=$(pwd)
    local path=$( echo $path/$iterator " " ) ;
    argPath+=$path
  done
  echo  $argPath >> $tmpPath  

}
main $*
