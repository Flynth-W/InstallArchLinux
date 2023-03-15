function main
{
	local theme=$1
	# crear enlace en .config
	rm -r $HOME/.config/zathura 
	ln -s $HOME/.dotfiles/config/zathura $HOME/.config/zathura

}
main $*
