
function main
{

	# crear enlace en .config
	rm -r $HOME/.config/nvim 
	ln -s $HOME/.dotfiles/config/nvim $HOME/.config/nvim

}
main $*
