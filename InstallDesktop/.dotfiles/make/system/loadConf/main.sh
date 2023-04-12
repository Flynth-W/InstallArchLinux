
function main 
{
  mkdir $HOME/.config
  echo " chargin files ..." 
  local list="$HOME/.dotfiles/make/system/packages.json "
	local	packages=($(cat $list | jshon -k))
	for i in ${packages[*]}
	do
		echo "Load: "$i
		local cmd="sh $HOME/.dotfiles/make/system/loadConf/$i.sh "
		$cmd
	done
}

main $*
