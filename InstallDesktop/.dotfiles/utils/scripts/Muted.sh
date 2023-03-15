function muted
{
	local state=$(amixer | grep off)
  if [[ $state ]]
  then
      amixer sset Master on  
  else
      amixer sset Master off 
  fi
}
muted
