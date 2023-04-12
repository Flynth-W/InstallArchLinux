
function main 
{
  echo " chargin files ..." 
  local list="$HOME/.dotfiles/make/user/packages.json "
	local	packages=($(cat $list | jshon -k))
	for i in ${packages[*]}
	do
		echo "Load: "$i
		local cmd="sh $HOME/.dotfiles/make/user/loadConf/$i.sh "
		$cmd
	done
}

main $*
