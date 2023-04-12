
function main 
{
  mkdir $HOME/.config
  echo " chargin files ..." 
  local list="$HOME/.dotfiles/make/packages/system/packages.json "
	local	packages=($(cat $list | jshon -k))
	for i in ${packages[*]}
	do
		echo "Load: "$i
		local cmd="sh $HOME/.dotfiles/make/packages/loadConf/$i.sh "
		$cmd
	done
}

main $*
