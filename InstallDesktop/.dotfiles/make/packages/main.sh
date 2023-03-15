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
  List=$HOME/.dotfiles/make/packages/packages.json
  echo $List
  View
	Installer
  
  sh $HOME/.dotfiles/make/packages/loadConf/main.sh
}

main $*
