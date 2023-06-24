function main 
{
	local path="$HOME/.tmp"
  local args=($*)
  #delete 
  local lenth=${#args[@]}
  local options=${args[lenth-1]}

  case $options in
    -d)
      args=("${args[@]/-d}")
      rm -rf ${args[@]}
      ;;
    *)
      mv -b $* $path
      ;;
  esac
}

main $*
