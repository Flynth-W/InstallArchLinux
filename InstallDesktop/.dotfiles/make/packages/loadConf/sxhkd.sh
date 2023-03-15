function main
{
	local theme=$1
	# crear enlace en .config
	rm -r $HOME/.config/sxhkd 
	ln -s $HOME/.dotfiles/config/sxhkd $HOME/.config/sxhkd

}
main $*
