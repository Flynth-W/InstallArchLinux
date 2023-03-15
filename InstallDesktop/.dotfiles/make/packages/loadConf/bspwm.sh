function main
{
	local theme=$1
	# crear enlace en .config
	rm -r $HOME/.config/bspwm 
	ln -s $HOME/.dotfiles/config/bspwm $HOME/.config/bspwm

}
main $*
