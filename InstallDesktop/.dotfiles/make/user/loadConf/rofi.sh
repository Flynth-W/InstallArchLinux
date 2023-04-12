function main
{
	local theme=$1
	# crear enlace en .config
	rm -r $HOME/.config/rofi 
	ln -s $HOME/.dotfiles/config/rofi $HOME/.config/rofi

}
main $*
