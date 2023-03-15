#!/bin/sh

# use paste ::
#   - paste file
#   $ paste # cp here
#   $ paste ./url 
#   complemet $ copy

function main
{
  local file=$(cat /tmp/file_path)
  local path=$1;
  if [ !  $path ]
  then
    path="./";
  fi
  cp -a $file $path
}
main $*
