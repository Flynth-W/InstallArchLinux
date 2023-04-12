function main
{
	# crear enlace en .config
	rm -r $HOME/.config/neofetch 
	ln -s $HOME/.dotfiles/config/neofetch $HOME/.config/neofetch

}
main $*
