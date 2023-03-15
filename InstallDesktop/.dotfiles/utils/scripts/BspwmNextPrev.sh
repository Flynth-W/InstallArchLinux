#!/bin/sh

#	{bspc node -f {next,prev}.local.!hidden.window  \
#        bspc node -l below }
function main
{	
	#option ( prev,next )
	local option=$1
	# posision
  local layer=$(bspc query -T -d -n $window_id |jshon -e "client" -e "layer")
  local state="$(bspc query -T -d -n $window_id |jshon -e "client" -e "state")"

  local floating='"floating"'
  local below='"below"'

  if [ $state == $floating ]
  then
      if [ $layer != $below  ]
      then
          bspc node -l below 
      fi
  fi
  
  #bspc node focused.floating --layer below

  #cambiar de ventana

  bspc node -f $option.local.!hidden.window 
  state="$(bspc query -T -d -n $window_id |jshon -e "client" -e "state")"
  if [ $state == $floating ]
  then
      bspc node -l normal
  fi



}

main $1
