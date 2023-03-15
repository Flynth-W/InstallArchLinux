function main
{
	# crear enlace en .config
	rm -r $HOME/.config/nitrogen 
	ln -s $HOME/.dotfiles/config/nitrogen $HOME/.config/nitrogen
}
main $*
