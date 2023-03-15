
function main
{
	# Peacker lua
	git clone --depth 1 https://github.com/wbthomason/packer.nvim  ~/.local/share/nvim/site/pack/packer/start/packer.nvim 
	# crear enlace en .config
	rm -r $HOME/.config/nvim 
	ln -s $HOME/.dotfiles/config/nvim $HOME/.config/nvim

}
main $*
