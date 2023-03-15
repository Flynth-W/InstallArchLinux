function main 
{
	local path="$HOME/.tmp"
  mv $* $path
}

main $*
