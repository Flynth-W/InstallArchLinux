function main
{
	local list_files=( $(ls -a) )
	for attribute in ${list_files[*]}
	do
		local size=$( du -sh $attribute )
		echo $size  >> sizes
	done
}
main 
