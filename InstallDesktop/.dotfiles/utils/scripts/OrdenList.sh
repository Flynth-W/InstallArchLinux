function main
{
	local list=($(ls))
	for atrrib in ${list[*]}
	do
		echo -e $atrrib "\n"
	done
}

main
