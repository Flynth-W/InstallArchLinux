

function Installer
{
	local packages=($(cat $List | jshon -k))
	local pkgs="${packages[*]}"
	echo "sudo pacman -Sy $pkgs --noconfirm"
	sudo pacman -Sy $pkgs --noconfirm
}
function View
{	
	local msg=$1
	local packages=($(cat $List | jshon -k))
	local lenght=${#packages[*]}
	for (( i=0  ; i < $lenght ; i++ )) 
	do
		local pkg=${packages[$i]}
		echo -e "  " $pkg":"
		local description=( $(cat $List | jshon  -e $pkg -u) )
		echo "       " ${description[*]} 
	done
}



function main
{
  local List=$HOME/.dotfiles/make/system/packages.json
  local option=$1
  if [[  "$option" != "Install"   ]]
  then
    local messageOption="1)View\n2)Install\n"
    echo -e $messageOption
    read -p ':: ' option 
  fi 

  case $option in
      1 | View)
          View
      ;;
      2 | Install)
          Installer
          sh $HOME/.dotfiles/make/system/loadConf/main.sh
      ;;
      *)
          echo "undefine return"
      ;;
  esac
}
main $*
