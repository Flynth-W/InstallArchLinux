function main 
{
	local path="$HOME/.tmp"
  local args=($*)
  #delete 
  local lenth=${#args[@]}
  local options=${args[lenth-1]}

  case $options in
    -d)
      echo "delete"
      args=("${args[@]/-d}")
      rm -rf ${args[@]}
      ;;
    *)
      echo "move to ~/.tmp"
      mv $* $path
      ;;
  esac
}

main $*
