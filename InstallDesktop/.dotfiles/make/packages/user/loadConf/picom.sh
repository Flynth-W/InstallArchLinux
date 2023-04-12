function main
{
	local theme=$1
	# crear enlace en .config
	rm -r $HOME/.config/picom 
	ln -s $HOME/.dotfiles/config/picom $HOME/.config/picom

}
main $*
