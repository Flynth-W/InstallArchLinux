function main
{
	# directorio de descargas
	mkdir $HOME/Downloads
	# crear enlace en .config
	rm -r $HOME/.config/qutebrowser 
	ln -s $HOME/.dotfiles/config/qutebrowser $HOME/.config/qutebrowser

}
main $*
