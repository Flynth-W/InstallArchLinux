function main
{
	local theme=$1
	echo $theme
	# crear enlace en .config
	rm -r $HOME/.config/lsd 
	ln -s $HOME/.dotfiles/config/lsd $HOME/.config/lsd

}
main $*
