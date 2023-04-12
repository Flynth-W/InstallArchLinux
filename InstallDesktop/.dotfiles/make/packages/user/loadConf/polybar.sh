function main
{
	local theme=$1
	# crear enlace en .config
	rm -r $HOME/.config/polybar 
	ln -s $HOME/.dotfiles/config/polybar $HOME/.config/polybar

}
main $*
